<?php
/**
 * Created by PhpStorm.
 * User: cnx
 * Date: 17.03.2017
 * Time: 9:41
 */

namespace app\assets;
use yii\web\AssetBundle;

class SnowAssetsBundle extends AssetBundle
{
    public $sourcePath = '@app/assets/snow';
    public $css = ['snow.css'];
    public $depends = ['app\\assets\\ApplicationUiAssetBundle'];
}