<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 12px;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .header h2 {
            margin: 0;
        }

        .info-empresa {
            text-align: center;
            margin-bottom: 20px;
        }

        .info-empresa p {
            margin: 2px 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        table,
        th,
        td {
            border: 1px solid black;
        }

        th,
        td {
            padding: 5px;
            text-align: left;
        }

        th {
            background-color: #ddd;
        }
    </style>
</head>

<body>
    <div class="header">
        <h2>{{ $datosEmpresa['nombre'] }}</h2>
    </div>

    <div class="info-empresa">
        <p>Dirección: {{ $datosEmpresa['direccion'] }}</p>
        <p>Teléfono: {{ $datosEmpresa['telefono'] }}</p>
        <p>Email: {{ $datosEmpresa['email'] }}</p>
        <p>Fecha: {{ $datosEmpresa['fecha'] }}</p>
    </div>

    <table>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Precio sin IVA</th>
                <th>Precio con IVA</th>
                <th>Dimensiones</th>
                <th>Unidad</th>
                {{-- <th>Fabricante</th>
                <th>Categoría</th> --}}
            </tr>
        </thead>
        <tbody>
            @foreach ($productos as $producto)
                <tr>
                    <td>{{ $producto->nombre }}</td>
                    <td>{{ number_format($producto->precio_maq_noiva, 2) }}</td>
                    <td>{{ number_format($producto->precio_maq_iva, 2) }}</td>
                    <td>{{ $producto->dimensiones }}</td>
                    <td>{{ $producto->unid_dimension }}</td>
                    {{-- <td>{{ $producto->fabricante()->nombre }}</td>
                    <td>{{ $producto->categoria()->nombre }}</td> --}}
                </tr>
            @endforeach
        </tbody>
    </table>
</body>

</html>
