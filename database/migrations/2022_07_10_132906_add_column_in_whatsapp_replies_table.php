<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('whatsapp_replies', function (Blueprint $table) {
            $table->enum('isActive', [1, 0])->default(0)->after('link_media');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('whatsapp_replies', function (Blueprint $table) {
            $table->removeColumn('isActive');
        });
    }
};
