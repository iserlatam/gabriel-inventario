<?php

namespace App\Filament\Resources\ProductoResource\Pages;

use App\Filament\Resources\ProductoResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Filament\Support\Colors\Color;

class ListProductos extends ListRecords
{
    protected static string $resource = ProductoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
            Actions\Action::make('pdf')
                    ->label('Exportar productos a PDF')
                    ->color(Color::hex('#F40F02'))
                    ->icon('heroicon-s-document')
                    ->url(route('productos.exportar')),
        ];
    }
}
