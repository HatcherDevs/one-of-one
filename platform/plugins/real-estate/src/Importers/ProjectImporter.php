<?php

namespace Botble\RealEstate\Importers;

use Botble\ACL\Models\User;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Events\CreatedContentEvent;
use Botble\DataSynchronize\Contracts\Importer\WithMapping;
use Botble\DataSynchronize\Importer\ImportColumn;
use Botble\DataSynchronize\Importer\Importer;
use Botble\Location\Models\City;
use Botble\Location\Models\Country;
use Botble\Location\Models\State;
use Botble\RealEstate\Enums\ProjectStatusEnum;
use Botble\RealEstate\Models\Category;
use Botble\RealEstate\Models\Facility;
use Botble\RealEstate\Models\Feature;
use Botble\RealEstate\Models\Investor;
use Botble\RealEstate\Models\Project;
use Botble\Slug\Facades\SlugHelper;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class ProjectImporter extends Importer implements WithMapping
{
    public function getLabel(): string
    {
        return trans('plugins/real-estate::project.projects');
    }

    public function columns(): array
    {
        return [
            ImportColumn::make('name')
                ->rules(['required', 'string', 'max:255']),
            ImportColumn::make('description')
                ->rules(['nullable', 'string']),
            ImportColumn::make('content')
                ->rules(['nullable', 'string']),
            ImportColumn::make('images')
                ->rules(['nullable', 'array']),
            ImportColumn::make('location')
                ->rules(['nullable', 'string']),
            ImportColumn::make('investor_id')
                ->rules(['nullable', 'string']),
            ImportColumn::make('number_block')
                ->rules(['nullable', 'integer', 'min:0']),
            ImportColumn::make('number_floor')
                ->rules(['nullable', 'integer', 'min:0']),
            ImportColumn::make('number_flat')
                ->rules(['nullable', 'integer', 'min:0']),
            ImportColumn::make('is_featured')
                ->boolean()
                ->rules(['nullable', 'boolean']),
            ImportColumn::make('date_finish')
                ->rules(['nullable', 'date']),
            ImportColumn::make('date_sell')
                ->rules(['nullable', 'date']),
            ImportColumn::make('price_from')
                ->rules(['nullable', 'numeric', 'min:0']),
            ImportColumn::make('price_to')
                ->rules(['nullable', 'numeric', 'min:0']),
            ImportColumn::make('currency_id')
                ->rules(['nullable', 'string']),
            ImportColumn::make('city_id')
                ->rules(['nullable', 'string']),
            ImportColumn::make('country_id')
                ->rules(['nullable', 'string']),
            ImportColumn::make('state_id')
                ->rules(['nullable', 'string']),
            ImportColumn::make('author_id')
                ->rules(['nullable', 'integer']),
            ImportColumn::make('author_type')
                ->rules(['nullable', 'string']),
            ImportColumn::make('longitude')
                ->rules(['nullable', 'numeric']),
            ImportColumn::make('latitude')
                ->rules(['nullable', 'numeric']),
            ImportColumn::make('status')
                ->rules(['nullable', 'string', Rule::in(ProjectStatusEnum::values())]),
            ImportColumn::make('categories')
                ->rules(['nullable', 'array']),
            ImportColumn::make('features')
                ->rules(['nullable', 'array']),
            ImportColumn::make('facilities')
                ->rules(['nullable', 'array']),
            ImportColumn::make('custom_fields')
                ->rules(['nullable', 'array']),
            ImportColumn::make('unique_id')
                ->rules(['nullable', 'string']),
            ImportColumn::make('video_url')
                ->rules(['nullable', 'url']),
            ImportColumn::make('video_thumbnail')
                ->rules(['nullable', 'string']),
        ];
    }

    public function getModel(): string
    {
        return Project::class;
    }

    public function chunkSize(): int
    {
        return 10;
    }

    public function getValidateUrl(): string
    {
        return route('tools.data-synchronize.import.projects.validate');
    }

    public function getImportUrl(): string
    {
        return route('tools.data-synchronize.import.projects.store');
    }

    public function getDownloadExampleUrl(): ?string
    {
        return route('tools.data-synchronize.import.projects.download-example');
    }

    public function getExportUrl(): ?string
    {
        return Auth::user()->hasPermission('project.export')
            ? route('tools.data-synchronize.export.projects.store')
            : null;
    }

    public function examples(): array
    {
        $projects = Project::query()
            ->take(3)
            ->with(['investor', 'categories', 'features', 'facilities', 'customFields', 'slugable'])
            ->get()
            ->map(function (Project $project) { // @phpstan-ignore-line
                return [
                    'name' => $project->name,
                    'description' => Str::limit($project->description, 100),
                    'content' => Str::limit($project->content, 200),
                    'images' => is_array($project->images) ? implode(',', $project->images) : '',
                    'location' => $project->location,
                    'investor' => $project->investor?->name ?: $project->investor_id,
                    'number_block' => $project->number_block,
                    'number_floor' => $project->number_floor,
                    'number_flat' => $project->number_flat,
                    'is_featured' => $project->is_featured ? 'Yes' : 'No',
                    'date_finish' => $project->date_finish?->format('Y-m-d'),
                    'date_sell' => $project->date_sell?->format('Y-m-d'),
                    'price_from' => $project->price_from,
                    'price_to' => $project->price_to,
                    'currency' => $project->currency?->title ?: cms_currency()->getDefaultCurrency()->title,
                    'city_name' => $project->city_name,
                    'country_name' => $project->country_name,
                    'state_name' => $project->state_name,
                    'author_id' => $project->author_id,
                    'author_type' => $project->author_type,
                    'longitude' => $project->longitude,
                    'latitude' => $project->latitude,
                    'status' => $project->status,
                    'categories' => $project->categories->pluck('name')->implode(', '),
                    'features' => $project->features->pluck('name')->implode(', '),
                    'facilities' => $project->facilities->map(function ($facility) {
                        return $facility->name . ':' . $facility->pivot->distance;
                    })->implode(', '),
                    'custom_fields' => $project->customFields->map(function ($field) {
                        return $field->name . ':' . $field->value;
                    })->implode(', '),
                    'unique_id' => $project->unique_id ?: null,
                    'video_url' => $project->getMetaData('video_url', true),
                    'video_thumbnail' => $project->getMetaData('video_thumbnail', true),
                ];
            });

        if ($projects->isNotEmpty()) {
            return $projects->all();
        }

        return [
            [
                'name' => 'Sunset Heights Residential Complex',
                'description' => 'Modern residential complex with luxury amenities and stunning city views.',
                'content' => 'Sunset Heights offers contemporary living with state-of-the-art facilities, including a fitness center, swimming pool, and landscaped gardens.',
                'images' => 'https://via.placeholder.com/800x600,https://via.placeholder.com/800x600',
                'location' => '789 Sunset Boulevard, Beverly Hills, CA',
                'investor' => 'Premium Developments Inc.',
                'number_block' => 3,
                'number_floor' => 15,
                'number_flat' => 120,
                'is_featured' => 'Yes',
                'date_finish' => '2024-12-31',
                'date_sell' => '2024-06-01',
                'price_from' => 500000,
                'price_to' => 1500000,
                'currency' => 'USD',
                'city_name' => 'Beverly Hills',
                'country_name' => 'United States',
                'state_name' => 'California',
                'author_id' => 1,
                'author_type' => User::class,
                'longitude' => -118.4004,
                'latitude' => 34.0736,
                'status' => BaseStatusEnum::PUBLISHED,
                'categories' => 'Residential, Luxury',
                'features' => 'Swimming Pool, Gym, Parking',
                'facilities' => 'Hospital:1.5km, School:0.8km, Shopping Center:2km',
                'custom_fields' => 'Total Units:120, Completion:95%',
                'unique_id' => 'PROJ-001',
                'video_url' => 'https://www.youtube.com/watch?v=example',
                'video_thumbnail' => 'https://via.placeholder.com/400x300',
            ],
            [
                'name' => 'Green Valley Commercial Center',
                'description' => 'Mixed-use development combining retail, office, and residential spaces.',
                'content' => 'Green Valley is a sustainable development featuring eco-friendly design, energy-efficient systems, and green spaces throughout.',
                'images' => 'https://via.placeholder.com/800x600',
                'location' => '456 Green Valley Road, Austin, TX',
                'investor' => 'EcoBuilders LLC',
                'number_block' => 2,
                'number_floor' => 8,
                'number_flat' => 80,
                'is_featured' => 'No',
                'date_finish' => '2025-06-30',
                'date_sell' => '2024-09-01',
                'price_from' => 300000,
                'price_to' => 800000,
                'currency' => 'USD',
                'city_name' => 'Austin',
                'country_name' => 'United States',
                'state_name' => 'Texas',
                'author_id' => 1,
                'author_type' => User::class,
                'longitude' => -97.7431,
                'latitude' => 30.2672,
                'status' => BaseStatusEnum::PUBLISHED,
                'categories' => 'Commercial, Mixed-Use',
                'features' => 'Solar Panels, Green Roof, Electric Car Charging',
                'facilities' => 'Bus Stop:0.3km, University:2.5km, Park:0.5km',
                'custom_fields' => 'LEED Certified:Gold, Parking Spaces:200',
                'unique_id' => 'PROJ-002',
                'video_url' => '',
                'video_thumbnail' => '',
            ],
        ];
    }

    public function map(mixed $row): array
    {
        $categories = [];
        $features = [];
        $facilities = [];
        $customFields = [];

        // Parse categories
        if ($categoriesStr = Arr::get($row, 'categories')) {
            $categories = $this->parseIdsFromString($categoriesStr, Category::class);
        }

        // Parse features
        if ($featuresStr = Arr::get($row, 'features')) {
            $features = $this->parseIdsFromString($featuresStr, Feature::class);
        }

        // Parse facilities with distances
        if ($facilitiesStr = Arr::get($row, 'facilities')) {
            $facilitiesArray = explode(',', $facilitiesStr);
            foreach ($facilitiesArray as $facility) {
                $facilityExplode = explode(':', trim($facility));
                if (count($facilityExplode) === 2) {
                    $facilityName = trim($facilityExplode[0]);
                    $distance = trim($facilityExplode[1]);
                    $facilityModel = Facility::query()->firstOrCreate(['name' => $facilityName]);
                    if ($facilityModel) {
                        $facilities[$facilityModel->id] = $distance;
                    }
                }
            }
        }

        // Parse custom fields
        if ($customFieldsStr = Arr::get($row, 'custom_fields')) {
            $fieldsArray = explode(',', $customFieldsStr);
            foreach ($fieldsArray as $field) {
                $fieldExplode = explode(':', trim($field));
                if (count($fieldExplode) === 2) {
                    $customFields[] = [
                        'name' => trim($fieldExplode[0]),
                        'value' => trim($fieldExplode[1]),
                    ];
                }
            }
        }

        // Convert investor name to ID
        $investorId = null;
        if ($investorName = Arr::get($row, 'investor')) {
            $investor = Investor::query()->where('name', $investorName)->first();
            if ($investor) {
                $investorId = $investor->id;
            }
        }

        // Convert location names to IDs
        $countryId = null;
        $stateId = null;
        $cityId = null;

        if (is_plugin_active('location')) {
            if ($countryName = Arr::get($row, 'country_name')) {
                $country = Country::query()->where('name', $countryName)->first();
                if ($country) {
                    $countryId = $country->id;
                }
            }

            if ($stateName = Arr::get($row, 'state_name')) {
                $state = State::query()->where('name', $stateName)->first();
                if ($state) {
                    $stateId = $state->id;
                }
            }

            if ($cityName = Arr::get($row, 'city_name')) {
                $city = City::query()->where('name', $cityName)->first();
                if ($city) {
                    $cityId = $city->id;
                }
            }
        }

        // Process images
        $images = [];
        if ($imagesStr = Arr::get($row, 'images')) {
            $images = array_filter(explode(',', $imagesStr));
        }

        return [
            ...$row,
            'categories' => $categories,
            'features' => $features,
            'facilities' => $facilities,
            'custom_fields' => $customFields,
            'investor_id' => $investorId,
            'country_id' => $countryId,
            'state_id' => $stateId,
            'city_id' => $cityId,
            'images' => $images,
            'is_featured' => $this->convertToBoolean(Arr::get($row, 'is_featured')),
        ];
    }

    public function handle(array $data): int
    {
        $count = 0;

        foreach ($data as $row) {
            $uniqueId = Arr::get($row, 'unique_id');
            $project = null;

            // Try to find existing project by unique_id or name
            if ($uniqueId) {
                $project = Project::query()->where('unique_id', $uniqueId)->first();
            }

            if (! $project) {
                $project = Project::query()->where('name', Arr::get($row, 'name'))->first();
            }

            // Prepare data for saving
            $projectData = Arr::except($row, ['categories', 'features', 'facilities', 'custom_fields', 'video_url', 'video_thumbnail']);

            $projectData['unique_id'] = $uniqueId ?: null;

            if (! $project) {
                $project = new Project();
                $count++;
            }

            // Set default author if not provided
            if (! Arr::get($projectData, 'author_id')) {
                $projectData['author_id'] = Auth::id();
                $projectData['author_type'] = User::class;
            }

            $project->forceFill($projectData);
            $project->save();

            // Create slug
            if ($project->wasRecentlyCreated) {
                SlugHelper::createSlug($project);
            }

            // Sync relationships
            if ($categories = Arr::get($row, 'categories')) {
                $project->categories()->sync($categories);
            }

            if ($features = Arr::get($row, 'features')) {
                $project->features()->sync($features);
            }

            // Handle facilities with distances
            if ($facilities = Arr::get($row, 'facilities')) {
                $project->facilities()->detach();
                foreach ($facilities as $facilityId => $distance) {
                    $project->facilities()->attach($facilityId, ['distance' => $distance]);
                }
            }

            // Handle custom fields
            if ($customFields = Arr::get($row, 'custom_fields')) {
                $project->customFields()->delete();
                foreach ($customFields as $field) {
                    $project->customFields()->create([
                        'name' => $field['name'],
                        'value' => $field['value'],
                    ]);
                }
            }

            // Handle video metadata
            $project->metadata()->whereIn('meta_key', ['video_url', 'video_thumbnail'])->delete();

            if ($videoUrl = Arr::get($row, 'video_url')) {
                $project->metadata()->create([
                    'meta_key' => 'video_url',
                    'meta_value' => $videoUrl,
                ]);
            }

            if ($videoThumbnail = Arr::get($row, 'video_thumbnail')) {
                $project->metadata()->create([
                    'meta_key' => 'video_thumbnail',
                    'meta_value' => $videoThumbnail,
                ]);
            }

            // Fire event
            $request = new Request();
            $request->merge([
                ...$row,
                'slug' => Str::slug($project->name),
                'is_slug_editable' => true,
            ]);

            event(new CreatedContentEvent(PROJECT_MODULE_SCREEN_NAME, $request, $project));
        }

        return $count;
    }

    protected function parseIdsFromString(string $items, string $modelClass): array
    {
        return str($items)
            ->explode(',')
            ->map(function ($item) use ($modelClass) {
                $model = $modelClass::query()->firstOrCreate(['name' => trim($item)]);

                if (SlugHelper::isSupportedModel($modelClass) && $model->wasRecentlyCreated) {
                    SlugHelper::createSlug($model);
                }

                return $model->getKey();
            })
            ->all();
    }

    protected function convertToBoolean($value): bool
    {
        if (is_bool($value)) {
            return $value;
        }

        return in_array(strtolower($value), ['yes', '1', 'true', 'on']);
    }
}
