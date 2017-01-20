<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 20.01.2017
 * Time: 11:49
 */

namespace app\models\customer;

use yii\db\ActiveRecord;

class CustomerRecord extends ActiveRecord
{
    public static function tableName()
    {
        return 'customer';
    }

    public function rules()
    {
        return [
            ['id', 'number'],
            ['name', 'required'],
            ['name', 'string', 'max' => 256],
            ['birth_date', 'date', 'format' => 'Y-m-d'],
            ['notes', 'safe']
        ];
    }
}