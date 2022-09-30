<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHorariosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('horarios', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_config')
                  ->nullable()
                  ->constrained('configuracions')
                  ->cascadeOnUpdate()
                  ->nullOnDelete();

            $table->foreignId('id_personal')
                  ->nullable()
                  ->constrained('personals')
                  ->cascadeOnUpdate()
                  ->nullOnDelete();

            $table->foreignId('id_tipo_trabajo')
                  ->nullable()
                  ->constrained('tipo_trabajos')
                  ->cascadeOnUpdate()
                  ->nullOnDelete();

            $table->string('d_lunes',50);
            $table->string('d_martes',50);
            $table->string('d_miercoles',50);
            $table->string('d_jueves',50);
            $table->string('d_viernes',50);
            $table->string('d_sabado',50);
            $table->string('d_domingo',50);
            $table->string('observacion');
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
        Schema::dropIfExists('horarios');
    }
}
