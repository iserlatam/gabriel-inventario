<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProductoResource\Pages;
use App\Filament\Resources\ProductoResource\RelationManagers;
use App\Models\Producto;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ProductoResource extends Resource
{
    protected static ?string $model = Producto::class;

    protected static ?string $navigationIcon = 'heroicon-o-shopping-bag';

    protected static ?string $activeNavigationIcon = 'heroicon-s-shopping-bag';

    protected static ?int $navigationSort = 1;

    protected static ?string $recordTitleAttribute = 'nombre';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Split::make([
                    Forms\Components\Section::make('Detalles del producto')
                        ->columns(2)
                        ->schema([
                            Forms\Components\TextInput::make('nombre')
                                ->required()
                                ->maxLength(50),
                            Forms\Components\TextInput::make('dimensiones')
                                ->maxLength(50)
                                ->helperText('El orden para escribir las medidas es: ancho * alto * largo. Ejemplo: 24*12')
                                ->default(null),
                            Forms\Components\Select::make('unid_dimension')
                                ->label('Unidad de medida')
                                ->options([
                                    'mm' => 'mm',
                                    'cm' => 'cm',
                                    'm' => 'm',
                                    'ml' => 'ml',
                                    'pulgadas' => 'pulgadas',
                                ])
                                ->default('mm'),
                            Forms\Components\Textarea::make('descripcion')
                                ->maxLength(255)
                                ->default(null)
                                ->columnSpanFull(),
                            Forms\Components\Textarea::make('img_url')
                                ->label('URL de la imagen de referencia')
                                ->columnSpanFull(),
                        ]),
                    Forms\Components\Section::make('Detalles de stock')
                        ->schema([
                            Forms\Components\TextInput::make('cantidad')
                                ->maxLength(255)
                                ->default(1),
                            Forms\Components\Grid::make(2)
                                ->schema([
                                    Forms\Components\Select::make('categoria_id')
                                        ->relationship('categoria', 'nombre')
                                        ->label('Categoria')
                                        ->default(null),
                                    Forms\Components\Select::make('fabricante_id')
                                        ->relationship('fabricante', 'nombre')
                                        ->label('Fabricante')
                                        ->default(null),
                                ]),
                            Forms\Components\TextInput::make('precio_maq_noiva')
                                ->label('PRECIO SIN IVA VENDEDOR')
                                ->helperText('SOLO LA MAQUINA')
                                ->numeric()
                                ->default(0),
                            Forms\Components\TextInput::make('precio_maq_iva')
                                ->label('PRECIO CON IVA VENDEDOR')
                                ->helperText('SOLO LA MAQUINA')
                                ->numeric()
                                ->default(null),
                            Forms\Components\TextInput::make('precio_maqsello_noiva')
                                ->label('PRECIO SIN IVA FINAL')
                                ->helperText('MAQUINA Y SELLO')
                                ->numeric()
                                ->default(null),
                            Forms\Components\TextInput::make('precio_maqsello_iva')
                                ->label('PRECIO CON IVA VENDEDOR')
                                ->helperText('MAQUINA Y SELLO')
                                ->numeric()
                                ->default(null),
                        ])->grow(false)
                ])
                    ->columnSpanFull()
                    ->from('md'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nombre')
                    ->searchable(),
                Tables\Columns\TextInputColumn::make('cantidad')
                    ->searchable(),
                Tables\Columns\TextColumn::make('precio_maq_noiva')
                    ->label('Precio MAQUINA sin iva')
                    ->money('COP')
                    ->sortable(),
                // Tables\Columns\TextColumn::make('precio_maq_iva')
                //     ->numeric()
                //     ->sortable(),
                Tables\Columns\TextColumn::make('precio_maqsello_noiva')
                    ->label('Precio MAQUINA SELLO sin iva')
                    ->money('COP')
                    ->sortable(),
                // Tables\Columns\TextColumn::make('precio_maqsello_iva')
                //     ->numeric()
                //     ->sortable(),
                Tables\Columns\ImageColumn::make('img_url')
                    ->label('Imagen de referencia'),
                Tables\Columns\TextColumn::make('fabricante.nombre')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('categoria.nombre')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Fecha de creacion')
                    ->date()
                    ->sortable(),
            ])
            ->filters([
                SelectFilter::make('categoria_id')
                    ->label('Filtrar por categoria')
                    ->relationship('categoria', 'nombre'),
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
            'index' => Pages\ListProductos::route('/'),
            'create' => Pages\CreateProducto::route('/create'),
            'edit' => Pages\EditProducto::route('/{record}/edit'),
        ];
    }
}
