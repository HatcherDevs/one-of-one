<?php

namespace Botble\RealEstate\Http\Controllers;

use Botble\DataSynchronize\Exporter\Exporter;
use Botble\DataSynchronize\Http\Controllers\ExportController;
use Botble\RealEstate\Exporters\PropertyExporter;

class ExportPropertyController extends ExportController
{
    protected function getExporter(): Exporter
    {
        return PropertyExporter::make();
    }
}
