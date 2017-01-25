<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 19.01.2017
 * Time: 16:44
 */

namespace app\models\customer;


class Phone
{
    public $number;

    public function __construct($number)
    {
        $this->number = $number;
    }
}