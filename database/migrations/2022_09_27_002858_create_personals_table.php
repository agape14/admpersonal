<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePersonalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('personals', function (Blueprint $table) {
            $table->id();
            $table->string('nombres',100);
            $table->string('apellido_pat',100);
            $table->string('apellido_mat',100);
            $table->boolean('estado')->default(false);
            //$table->integer('id_especialidad')->nullable();
            $table->foreignId('id_especialidad')
                  ->nullable()
                  ->constrained('especialidades')
                  ->cascadeOnUpdate()
                  ->nullOnDelete();

            $table->foreignId('id_tipotrabajo')
                  ->nullable()
                  ->constrained('tipo_trabajos')
                  ->cascadeOnUpdate()
                  ->nullOnDelete();
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
        Schema::dropIfExists('personals');
    }
}
