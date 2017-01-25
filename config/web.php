<?php
return [
    'id' => 'crmapp',
    'basePath' =>realpath(__DIR__. '/../'),
    'components' => [
        'request' => [
            'cookieValidationKey' => '123',
        ],
        'db' => require(__DIR__ . '/db.php'),
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false
        ]
    ],];