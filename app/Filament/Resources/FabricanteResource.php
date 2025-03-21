<?php

namespace App\Filament\Resources;

use App\Filament\Resources\FabricanteResource\Pages;
use App\Filament\Resources\FabricanteResource\RelationManagers;
use App\Models\Fabricante;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class FabricanteResource extends Resource
{
    protected static ?string $model = Fabricante::class;

    protected static ?string $navigationIcon = 'heroicon-o-building-storefront';

    protected static ?string $activeNavigationIcon = 'heroicon-s-building-storefront';

    protected static ?int $navigationSort = 3;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('nombre')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nombre')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListFabricantes::route('/'),
            // 'create' => Pages\CreateFabricante::route('/create'),
            // 'edit' => Pages\EditFabricante::route('/{record}/edit'),
        ];
    }
}
