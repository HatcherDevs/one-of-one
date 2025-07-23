<?php

namespace Botble\RealEstate\Http\Controllers;

use Botble\DataSynchronize\Exporter\Exporter;
use Botble\DataSynchronize\Http\Controllers\ExportController;
use Botble\RealEstate\Exporters\ProjectExporter;

class ExportProjectController extends ExportController
{
    protected function getExporter(): Exporter
    {
        return ProjectExporter::make();
    }
}
