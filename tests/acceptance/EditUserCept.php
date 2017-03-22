<?php
use Step\Acceptance\CRMUsersManagementSteps;
$I = new CRMUsersManagementSteps($scenario);
//$I = new AcceptanceTester\CRMUsersManagementSteps($scenario);
$I->wantTo('edit existing Service record');

$I->amInListUsersUi();
$I->clickOnRegisterNewServiceButton();
$I->seeIAmInAddServiceUi();
$first_service = $I->imagineService();
$I->fillServiceDataForm($first_service);
$I->submitServiceDataForm();

$I->amInListUsersUi();
$I->seeEditButtonBesideService($first_service);
$I->clickEditButtonBesideService($first_service);

$I->seeEditServiceUi();
$new_data = $I->imagineService();
$I->fillServiceDataForm($new_data);
$I->submitServiceDataForm();

$I->amInListUsersUi();
$I->seeServiceInList($new_data);
$I->dontSeeServiceInList($first_service);

