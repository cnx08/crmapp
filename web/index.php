<?php
define('YII_DEBUG', true);

require(__DIR__.'/../vendor/autoload.php');
//Including the Yii framework itself
require(__DIR__. '/../vendor/yiisoft/yii2/Yii.php');
//Getting the configuration
$config = require(__DIR__. '/../config/web.php');
//Making and launching the application immediatly
(new yii\web\Application($config))->run();