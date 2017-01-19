<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 19.01.2017
 * Time: 16:39
 */

namespace app\models\customer;


class Customer
{
    public $name;
    public $birth_date;
    public $notes = '';
    public $phones = [];

    public function __construct($name, $birth_date)
    {
        $this->name = $name;
        $this->birth_date = $birth_date;
    }
}