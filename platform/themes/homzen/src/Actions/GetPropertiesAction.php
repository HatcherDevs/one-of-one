<?php

namespace Theme\Homzen\Actions;

use Botble\RealEstate\Facades\RealEstateHelper;
use Botble\RealEstate\Models\Property;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;

class GetPropertiesAction
{
    /**
     * @return \Illuminate\Database\Eloquent\Collection<\Botble\RealEstate\Models\Property|\Illuminate\Database\Eloquent\Model>
     */
    public function handle(
        ?int $limit = 4,
        ?string $categoryId = null,
        ?string $type = null,
        bool $featured = false,
        array $categoryIds = []
    ): Collection {
        $model = Property::query()
            ->where(RealEstateHelper::getPropertyDisplayQueryConditions())
            ->when(
                $featured,
                fn (Builder $query, string $type) => $query->where('is_featured', $featured) // @phpstan-ignore-line
            )
            ->when(
                $type,
                fn (Builder $query, string $type) => $query->where('type', $type)
            )
            ->when(
                $categoryId,
                fn (Builder $query, string $categoryId) => $query->whereRelation('categories', 'id', $categoryId)
            )
            ->when($categoryIds, function (Builder $query, array $categoryIds) {
                return $query->whereHas('categories', fn (Builder $query) => $query->whereIn('id', $categoryIds));
            })
            ->take($limit);

        // Sort by featured properties if the setting is enabled
        if (RealEstateHelper::isEnabledKeepFeaturedPropertiesOnTop()) {
            // First sort by featured status (featured properties first)
            $model = $model->orderByDesc('is_featured');

            // Then sort by featured_priority only for properties where is_featured = 1
            $model = $model->orderByRaw('CASE WHEN is_featured = 1 THEN featured_priority ELSE 0 END DESC');
        }

        return $model
            ->latest()
            ->with([...RealEstateHelper::getPropertyRelationsQuery(), 'author'])
            ->get();
    }
}
