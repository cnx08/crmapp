<?php

use yii\db\Migration;

class m170127_101756_init_services_table extends Migration
{
    public function up()
    {
        $this->createTable(
            'service',
            [
                'id' =>'pk',
                'name' => 'string unique',
                'hourly_rate' => 'integer',
            ]
        );
    }

    public function down()
    {
        $this->dropTable('service');
    }

    /*
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
    }

    public function safeDown()
    {
    }
    */
}
