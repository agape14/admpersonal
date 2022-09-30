<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVisitasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('visitas', function (Blueprint $table) {
            $table->id();
            $table->date('fecha_visita');
            $table->time('hora_ingreso');
            $table->time('hora_salida');
            $table->string('nombres_completos');
            $table->foreignId('id_oficina')
                  ->nullable()
                  ->constrained('oficinas')
                  ->cascadeOnUpdate()
                  ->nullOnDelete();
                  $table->text('motivo_visita');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('visitas');
    }
}
