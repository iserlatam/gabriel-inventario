<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;

class ProductoPdfController extends Controller
{
    public function exportar()
    {
        $productos = Producto::with(['fabricante', 'categoria'])->get();

        $datosEmpresa = [
            'nombre' => 'Sellos LaFe',
            'direccion' => 'Cra 4 # ',
            'telefono' => '318 7582488',
            'email' => 'selloslafe@gmail.com',
            'fecha' => now()->format('d/m/Y'),
        ];

        $pdf = Pdf::loadView('pdf-views.exportProducts', compact('productos', 'datosEmpresa'));

        return $pdf->stream("LISTA_PRODUCTOS_SELLOSLAFE_" . now()->format('d_m_y') . 'pdf');
    }
}
