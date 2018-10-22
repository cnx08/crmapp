<?php

use yii\db\Migration;

class m170120_081013_unit_phone_table extends Migration
{
    public function up()
    {
        $this->createTable(
            'phone',
            [
                'id' => 'pk',
                'customer_id' => 'int unique',
                'number' => 'string',
            ]
        );
        $this->addForeignKey('customer_phone_numbers', 'phone', 'customer_id', 'customer', 'id');
    }

    public function down()
    {
        $this->dropForeignKey('customer_phone_numbers', 'phone');
        $this->dropTable('phone');
        $this->dropTable('phone2');
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
