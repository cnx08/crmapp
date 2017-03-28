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
        ],
        'view' => [
            'renderers' => [
                'md' => [
                    'class' => 'app\utilities\MarkdownRenderer'
                ]
            ],
            'theme' => [
                'class' => yii\base\Theme::className(),
                'basePath' => '@app/themes/snowy'
            ]
        ],
        'response' => [
            'formatters' => [
                'yaml' => [
                    'class' => 'app\utilities\YamlResponseFormatter'
                ]
            ]
        ],
        'user' => [
            'identityClass' => 'app\models\user\UserRecord'
        ]
    ],
    'modules' => [
        'gii' => [
            'class' => 'yii\gii\Module',
            'allowedIPs' => ['*']
        ]
    ],

    'extensions' => require(__DIR__.'/../vendor/yiisoft/extensions.php')
];