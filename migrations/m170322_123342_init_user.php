<?php

use yii\db\Migration;

class m170322_123342_init_user extends Migration
{
    public function up()
    {
        $this->createTable(
            'user',
            [
                'id' => 'pk',
                'username' => 'string UNIQUE',
                'password' => 'string'
            ]
        );
    }

    public function down()
    {
        $this->dropTable('user');
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
