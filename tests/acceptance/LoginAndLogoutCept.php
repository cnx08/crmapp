<?php
use Step\Acceptance\CRMUsersManagementSteps;
use Step\Acceptance\CRMUserSteps;

$I = new CRMUsersManagementSteps($scenario);
$I->wantTo('check that login and logout work');

$I->amGoingTo('Register new User');
$I->amInListUsersUi();
$I->clickOnregisterNewUserButton();
$I->seeIAmInAddUserUi();
$user = $I->imagineUser();
$I->fillUserDataForm($user);
$I->submitUserDataForm();

$I = new CRMUserSteps($scenario);
$I->amGoingTo('login');

$I->seeLink('login');
$I->click("login");
$I->seeIAmInLoginFormUi();
$I->fillLoginForm($user);
$I->submitLoginForm();

$I->seeIAmAtHomepage();
$I->dontSeeLink('login');

$I->seeUsername($user);
$I->seeLink('logout');

$I->amGoingTo('logout from arbitraty page');
$I->amInQueryCustomerUi();
$I->click('logout');

$I->seeIAmAtHomepage();
$I->dontSeeUsername($user);
$I->dontSeeLink('logout');
$I->seeLink('login');