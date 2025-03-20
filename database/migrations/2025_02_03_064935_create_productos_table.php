<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->string('descripcion')->nullable();
            $table->integer('precio_maq_noiva')->nullable();
            $table->integer('precio_maq_iva')->nullable();
            $table->integer('precio_maqsello_noiva')->nullable();
            $table->integer('precio_maqsello_iva')->nullable();
            $table->text('img_url')->nullable();
            $table->string('cantidad')->nullable();
            $table->string('dimensiones')->nullable();
            $table->string('unid_dimension')->default('mm')->nullable();
            $table->foreignId('fabricante_id')->nullable();
            $table->foreignId('categoria_id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('productos');
    }
};
