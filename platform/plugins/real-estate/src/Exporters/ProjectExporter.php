<?php

namespace Botble\RealEstate\Exporters;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\DataSynchronize\Exporter\ExportColumn;
use Botble\DataSynchronize\Exporter\ExportCounter;
use Botble\DataSynchronize\Exporter\Exporter;
use Botble\Media\Facades\RvMedia;
use Botble\RealEstate\Models\Project;
use Illuminate\Support\Collection;

class ProjectExporter extends Exporter
{
    public function getLabel(): string
    {
        return trans('plugins/real-estate::project.projects');
    }

    public function columns(): array
    {
        return [
            ExportColumn::make('name'),
            ExportColumn::make('description'),
            ExportColumn::make('content'),
            ExportColumn::make('images'),
            ExportColumn::make('location'),
            ExportColumn::make('investor')
                ->label('Investor'),
            ExportColumn::make('number_block')
                ->label('Number Block'),
            ExportColumn::make('number_floor')
                ->label('Number Floor'),
            ExportColumn::make('number_flat')
                ->label('Number Flat'),
            ExportColumn::make('is_featured')
                ->label('Is Featured?')
                ->boolean(),
            ExportColumn::make('date_finish')
                ->label('Date Finish'),
            ExportColumn::make('date_sell')
                ->label('Date Sell'),
            ExportColumn::make('price_from')
                ->label('Price from'),
            ExportColumn::make('price_to')
                ->label('Price to'),
            ExportColumn::make('currency')
                ->label('Currency'),
            ExportColumn::make('city_name')
                ->label('City'),
            ExportColumn::make('country_name')
                ->label('Country'),
            ExportColumn::make('state_name')
                ->label('State'),
            ExportColumn::make('author_id')
                ->label('Author ID'),
            ExportColumn::make('author_type')
                ->label('Author Type'),
            ExportColumn::make('longitude'),
            ExportColumn::make('latitude'),
            ExportColumn::make('status')
                ->dropdown(BaseStatusEnum::values()),
            ExportColumn::make('categories'),
            ExportColumn::make('features'),
            ExportColumn::make('facilities'),
            ExportColumn::make('custom_fields')
                ->label('Custom Fields'),
            ExportColumn::make('unique_id')
                ->label('Unique ID'),
            ExportColumn::make('video_url')
                ->label('Video URL'),
            ExportColumn::make('video_thumbnail')
                ->label('Video Thumbnail'),
        ];
    }

    public function counters(): array
    {
        return [
            ExportCounter::make()
                ->label(trans('plugins/real-estate::project.export.total'))
                ->value(Project::query()->count()),
        ];
    }

    public function hasDataToExport(): bool
    {
        return Project::query()->exists();
    }

    public function collection(): Collection
    {
        return Project::query()
            ->with([
                'investor',
                'categories',
                'features',
                'facilities',
                'customFields',
                'metadata',
                'slugable',
            ])
            ->get()
            ->transform(fn (Project $project) => [ // @phpstan-ignore-line
                ...$project->toArray(),
                'investor' => $project->investor?->name ?: $project->investor_id,
                'currency' => $project->currency?->title ?: cms_currency()->getDefaultCurrency()->title,
                'images' => is_array($project->images) ? implode(',', array_map(fn ($image) => RvMedia::getImageUrl($image), $project->images)) : '',
                'categories' => $project->categories->pluck('name')->implode(', '),
                'features' => $project->features->pluck('name')->implode(', '),
                'facilities' => $project->facilities->map(function ($facility) {
                    return $facility->name . ':' . $facility->pivot->distance;
                })->implode(', '),
                'custom_fields' => $project->customFields->map(function ($field) {
                    return $field->name . ':' . $field->value;
                })->implode(', '),
                'video_url' => $project->getMetaData('video_url', true),
                'video_thumbnail' => $project->getMetaData('video_thumbnail', true),
            ]);
    }
}
