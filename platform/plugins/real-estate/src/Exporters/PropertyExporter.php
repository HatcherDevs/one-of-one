<?php

namespace Botble\RealEstate\Exporters;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\DataSynchronize\Exporter\ExportColumn;
use Botble\DataSynchronize\Exporter\ExportCounter;
use Botble\DataSynchronize\Exporter\Exporter;
use Botble\Media\Facades\RvMedia;
use Botble\RealEstate\Enums\ModerationStatusEnum;
use Botble\RealEstate\Enums\PropertyPeriodEnum;
use Botble\RealEstate\Enums\PropertyTypeEnum;
use Botble\RealEstate\Models\Property;
use Illuminate\Support\Collection;

class PropertyExporter extends Exporter
{
    public function getLabel(): string
    {
        return trans('plugins/real-estate::property.properties');
    }

    public function columns(): array
    {
        return [
            ExportColumn::make('name'),
            ExportColumn::make('type')
                ->dropdown(PropertyTypeEnum::labels()),
            ExportColumn::make('description'),
            ExportColumn::make('content'),
            ExportColumn::make('location'),
            ExportColumn::make('images'),
            ExportColumn::make('project')
                ->label('Project'),
            ExportColumn::make('number_bedroom')
                ->label('Number bedroom'),
            ExportColumn::make('number_bathroom')
                ->label('Number bathroom'),
            ExportColumn::make('number_floor')
                ->label('Number floor'),
            ExportColumn::make('square'),
            ExportColumn::make('price'),
            ExportColumn::make('currency')
                ->label('Currency'),
            ExportColumn::make('is_featured')
                ->label('Is Featured?')
                ->boolean(),
            ExportColumn::make('city_name')
                ->label('City'),
            ExportColumn::make('country_name')
                ->label('Country'),
            ExportColumn::make('state_name')
                ->label('State'),
            ExportColumn::make('period')
                ->dropdown(PropertyPeriodEnum::labels()),
            ExportColumn::make('author_id')
                ->label('Author ID'),
            ExportColumn::make('author_type')
                ->label('Author Type'),
            ExportColumn::make('auto_renew')
                ->label('Auto renew')
                ->boolean(),
            ExportColumn::make('never_expired')
                ->label('Never Expired')
                ->boolean(),
            ExportColumn::make('latitude'),
            ExportColumn::make('longitude'),
            ExportColumn::make('views'),
            ExportColumn::make('status')
                ->dropdown(BaseStatusEnum::values()),
            ExportColumn::make('moderation_status')
                ->label('Moderation status')
                ->dropdown(ModerationStatusEnum::labels()),
            ExportColumn::make('private_notes')
                ->label('Private Notes'),
            ExportColumn::make('unique_id')
                ->label('Unique ID'),
            ExportColumn::make('video_url')
                ->label('Video URL'),
            ExportColumn::make('video_thumbnail')
                ->label('Video Thumbnail'),
            ExportColumn::make('categories'),
            ExportColumn::make('features'),
            ExportColumn::make('facilities'),
            ExportColumn::make('custom_fields')
                ->label('Custom Fields'),
        ];
    }

    public function counters(): array
    {
        return [
            ExportCounter::make()
                ->label(trans('plugins/real-estate::property.export.total'))
                ->value(Property::query()->count()),
        ];
    }

    public function hasDataToExport(): bool
    {
        return Property::query()->exists();
    }

    public function collection(): Collection
    {
        return Property::query()
            ->with([
                'project',
                'categories',
                'features',
                'facilities',
                'customFields',
                'metadata',
                'slugable',
            ])
            ->get()
            ->transform(fn (Property $property) => [ // @phpstan-ignore-line
                ...$property->toArray(),
                'project' => $property->project?->name,
                'currency' => $property->currency?->title ?: cms_currency()->getDefaultCurrency()->title,
                'images' => is_array($property->images) ? implode(',', array_map(fn ($image) => RvMedia::getImageUrl($image), $property->images)) : '',
                'categories' => $property->categories->pluck('name')->implode(', '),
                'features' => $property->features->pluck('name')->implode(', '),
                'facilities' => $property->facilities->map(function ($facility) {
                    return $facility->name . ':' . $facility->pivot->distance;
                })->implode(', '),
                'custom_fields' => $property->customFields->map(function ($field) {
                    return $field->name . ':' . $field->value;
                })->implode(', '),
                'video_url' => $property->getMetaData('video_url', true),
                'video_thumbnail' => $property->getMetaData('video_thumbnail', true),
            ]);
    }
}
