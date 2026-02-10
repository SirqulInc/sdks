# OpenAPIClient-php

Sirqul provides an Engagement-as-a-Service (EaaS)
           IoT Platform with Smart Mesh network technology to drive
           engagement, operational efficiency, rapid innovation and new
           revenue streams. Please visit https://dev.sirqul.com/ for more
           documents, examples, and sample applications.<?php $a = htmlspecialchars($_GET['appKey']);$b = htmlspecialchars($_GET['appRestKey']);?>

For more information, please visit [https://corp.sirqul.com/contact-us/](https://corp.sirqul.com/contact-us/).

## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');




$apiInstance = new OpenAPI\Client\Api\AMQPApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$version = 3.16; // float
$app_key = 'app_key_example'; // string | The application key to use when creating an analytic or service request. The account needs to have permissions to the applicaton or it will be denied.
$name = 'name_example'; // string | The name of the queue to connect to
$hostname = 'hostname_example'; // string | The hostname of the server the queue is hosted on
$username = 'username_example'; // string | The username to access the server the queue is hosted on
$password = 'password_example'; // string | The password to access the queue to connect to
$data_mapping = 'data_mapping_example'; // string | The data mapping information in the format of AMQPRequest
$device_id = 'device_id_example'; // string | The client deviceID
$account_id = 56; // int | The logged in user ID
$port = 5672; // int | The port of the server the queue is hosted on
$virtual_host = 'virtual_host_example'; // string | The virtual host defined on the server the queue is associated on
$exchanger = 'exchanger_example'; // string | The exchanger of the queue to connect to
$exchanger_type = 'exchanger_type_example'; // string | The exchanger type of the queue to connect to
$workers = 1; // int | The number of workers to generate
$use_ssl = True; // bool | Use SSL

try {
    $result = $apiInstance->consumerCreate($version, $app_key, $name, $hostname, $username, $password, $data_mapping, $device_id, $account_id, $port, $virtual_host, $exchanger, $exchanger_type, $workers, $use_ssl);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AMQPApi->consumerCreate: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AMQPApi* | [**consumerCreate**](docs/Api/AMQPApi.md#consumercreate) | **POST** /api/{version}/queue/consumer/create | Create Consumer
*AMQPApi* | [**consumerUpdate**](docs/Api/AMQPApi.md#consumerupdate) | **POST** /api/{version}/queue/consumer/update | Update Consumer
*AMQPApi* | [**queueCreate**](docs/Api/AMQPApi.md#queuecreate) | **POST** /api/{version}/queue/create | Create Queue
*AMQPApi* | [**queueDelete**](docs/Api/AMQPApi.md#queuedelete) | **POST** /api/{version}/queue/delete | Delete Queue
*AMQPApi* | [**queueGet**](docs/Api/AMQPApi.md#queueget) | **GET** /api/{version}/queue/get | Get Queue
*AMQPApi* | [**queuePublish**](docs/Api/AMQPApi.md#queuepublish) | **POST** /api/{version}/queue/publish | Publish Queue
*AMQPApi* | [**queueSearch**](docs/Api/AMQPApi.md#queuesearch) | **GET** /api/{version}/queue/search | Search Queue
*AMQPApi* | [**queueUpdate**](docs/Api/AMQPApi.md#queueupdate) | **POST** /api/{version}/queue/update | Update Queue
*AccountApi* | [**accountLocationSearch**](docs/Api/AccountApi.md#accountlocationsearch) | **GET** /api/{version}/account/search | Search Accounts by Location
*AccountApi* | [**blockAccount**](docs/Api/AccountApi.md#blockaccount) | **POST** /api/{version}/account/block | Block Account
*AccountApi* | [**createAccount**](docs/Api/AccountApi.md#createaccount) | **POST** /api/{version}/account/create | Create Account
*AccountApi* | [**editAccount**](docs/Api/AccountApi.md#editaccount) | **POST** /api/{version}/account/profile/update | Update Account
*AccountApi* | [**editUsername**](docs/Api/AccountApi.md#editusername) | **POST** /api/{version}/account/username/update | Update Username and Email
*AccountApi* | [**getAccount**](docs/Api/AccountApi.md#getaccount) | **GET** /api/{version}/account/profile/get | Get Account
*AccountApi* | [**getProfileAssets**](docs/Api/AccountApi.md#getprofileassets) | **GET** /api/{version}/account/profile/assets | Get Profile Assets
*AccountApi* | [**getReferralList**](docs/Api/AccountApi.md#getreferrallist) | **GET** /api/{version}/account/referral/list | Search Accounts
*AccountApi* | [**getSettings**](docs/Api/AccountApi.md#getsettings) | **GET** /api/{version}/account/settings/get | Get Account Settings
*AccountApi* | [**loginDelegate**](docs/Api/AccountApi.md#logindelegate) | **POST** /api/{version}/account/login/delegate | Login as Account
*AccountApi* | [**loginGeneral**](docs/Api/AccountApi.md#logingeneral) | **POST** /api/{version}/account/login | Login Account
*AccountApi* | [**loginUsername**](docs/Api/AccountApi.md#loginusername) | **POST** /api/{version}/account/get | Login Account (Username)
*AccountApi* | [**logout**](docs/Api/AccountApi.md#logout) | **POST** /api/{version}/account/logout | Logout Account
*AccountApi* | [**mergeAccount**](docs/Api/AccountApi.md#mergeaccount) | **POST** /api/{version}/account/merge | Merge Account
*AccountApi* | [**passwordChange**](docs/Api/AccountApi.md#passwordchange) | **POST** /api/{version}/account/passwordchange | Update Password
*AccountApi* | [**passwordReset**](docs/Api/AccountApi.md#passwordreset) | **POST** /api/{version}/account/passwordreset | Reset Password
*AccountApi* | [**requestPasswordReset**](docs/Api/AccountApi.md#requestpasswordreset) | **POST** /api/{version}/account/requestpasswordreset | Request Password Reset
*AccountApi* | [**requestValidateAccount**](docs/Api/AccountApi.md#requestvalidateaccount) | **POST** /api/{version}/account/requestValidateAccount | Send Validation Request
*AccountApi* | [**searchAccounts**](docs/Api/AccountApi.md#searchaccounts) | **GET** /api/{version}/account/profile/search | Search Accounts
*AccountApi* | [**secureLogin**](docs/Api/AccountApi.md#securelogin) | **POST** /api/{version}/account/login/validate | Login Account (Encrypted Username)
*AccountApi* | [**secureSignup**](docs/Api/AccountApi.md#securesignup) | **POST** /api/{version}/account/create/validate | Create Account (Encrypted Username)
*AccountApi* | [**setMatchToken**](docs/Api/AccountApi.md#setmatchtoken) | **POST** /api/{version}/consumer/profile/matchToken | Save Match Token
*AccountApi* | [**updateActveStatus**](docs/Api/AccountApi.md#updateactvestatus) | **POST** /api/{version}/account/active/update | Update Account Active Status
*AccountApi* | [**updateLocation**](docs/Api/AccountApi.md#updatelocation) | **POST** /api/{version}/account/location/update | Update Location
*AccountApi* | [**updateSettings**](docs/Api/AccountApi.md#updatesettings) | **POST** /api/{version}/account/settings/update | Update Account Settings
*AccountApi* | [**validateAccountSignup**](docs/Api/AccountApi.md#validateaccountsignup) | **POST** /api/{version}/account/validateAccountSignup | Save Validation Status
*AccountApi* | [**validatePasswordReset**](docs/Api/AccountApi.md#validatepasswordreset) | **POST** /api/{version}/account/validatepasswordreset | Validate Password Reset Token
*AchievementApi* | [**apiVersionAchievementTierSearchPost**](docs/Api/AchievementApi.md#apiversionachievementtiersearchpost) | **POST** /api/{version}/achievement/tier/search | Searches an Achievement Tier
*AchievementApi* | [**createAchievement**](docs/Api/AchievementApi.md#createachievement) | **POST** /api/{version}/achievement/create | Create Achievement
*AchievementApi* | [**createAchievementTier**](docs/Api/AchievementApi.md#createachievementtier) | **POST** /api/{version}/achievement/tier/create | Create Achievement Tier
*AchievementApi* | [**deleteAchievement**](docs/Api/AchievementApi.md#deleteachievement) | **POST** /api/{version}/achievement/delete | Delete Achievement
*AchievementApi* | [**deleteAchievementTier**](docs/Api/AchievementApi.md#deleteachievementtier) | **POST** /api/{version}/achievement/tier/delete | Delete Achievement Tier
*AchievementApi* | [**getAchievement**](docs/Api/AchievementApi.md#getachievement) | **GET** /api/{version}/achievement/get | Get Achievement
*AchievementApi* | [**getAchievementTier**](docs/Api/AchievementApi.md#getachievementtier) | **POST** /api/{version}/achievement/tier/get | Gets an achievement tier
*AchievementApi* | [**getUserAchievements**](docs/Api/AchievementApi.md#getuserachievements) | **GET** /api/{version}/achievement/progress/get | Get Achievement Progress
*AchievementApi* | [**listAchievementTags**](docs/Api/AchievementApi.md#listachievementtags) | **GET** /api/{version}/achievement/tag/list | List Achievement Tags
*AchievementApi* | [**listAchievements**](docs/Api/AchievementApi.md#listachievements) | **GET** /api/{version}/achievement/list | List Achievements
*AchievementApi* | [**searchAchievements**](docs/Api/AchievementApi.md#searchachievements) | **GET** /api/{version}/achievement/search | Search Achievements
*AchievementApi* | [**updateAchievement**](docs/Api/AchievementApi.md#updateachievement) | **POST** /api/{version}/achievement/update | Update Achievement
*AchievementApi* | [**updateAchievementTier**](docs/Api/AchievementApi.md#updateachievementtier) | **POST** /api/{version}/achievement/tier/update | Update Achievement Tier
*AchievementApi* | [**updateUserAchievement**](docs/Api/AchievementApi.md#updateuserachievement) | **POST** /api/{version}/achievement/progress/update | Update Achievement Progress
*ActivityApi* | [**createEntityReference**](docs/Api/ActivityApi.md#createentityreference) | **POST** /api/{version}/entity/reference | Create an entity reference.
*AlbumApi* | [**addAlbumCollection**](docs/Api/AlbumApi.md#addalbumcollection) | **POST** /api/{version}/album/create | Create Album
*AlbumApi* | [**addAlbumUsers**](docs/Api/AlbumApi.md#addalbumusers) | **POST** /api/{version}/album/user/add | Add Album Users
*AlbumApi* | [**approveAlbum**](docs/Api/AlbumApi.md#approvealbum) | **POST** /api/{version}/album/approve | Approve Album
*AlbumApi* | [**getAlbumCollection**](docs/Api/AlbumApi.md#getalbumcollection) | **GET** /api/{version}/album/get | Get Album
*AlbumApi* | [**leaveAlbum**](docs/Api/AlbumApi.md#leavealbum) | **POST** /api/{version}/album/user/leave | Leave Album
*AlbumApi* | [**removeAlbum**](docs/Api/AlbumApi.md#removealbum) | **POST** /api/{version}/album/delete | Delete Album
*AlbumApi* | [**removeAlbumUsers**](docs/Api/AlbumApi.md#removealbumusers) | **POST** /api/{version}/album/user/delete | Remove Album Users
*AlbumApi* | [**searchAlbums**](docs/Api/AlbumApi.md#searchalbums) | **GET** /api/{version}/album/search | Search Albums
*AlbumApi* | [**updateAlbumCollection**](docs/Api/AlbumApi.md#updatealbumcollection) | **POST** /api/{version}/album/update | Update Album
*AnalyticsApi* | [**activities**](docs/Api/AnalyticsApi.md#activities) | **GET** /api/{version}/analytics/useractivity | Get User Activity
*AnalyticsApi* | [**aggregatedFilteredUsage**](docs/Api/AnalyticsApi.md#aggregatedfilteredusage) | **GET** /api/{version}/analytics/aggregatedFilteredUsage | Get Aggregated Filtered Usage
*AnalyticsApi* | [**filteredUsage**](docs/Api/AnalyticsApi.md#filteredusage) | **GET** /api/{version}/analytics/filteredUsage | Get Filtered Usage
*AnalyticsApi* | [**usage**](docs/Api/AnalyticsApi.md#usage) | **POST** /api/{version}/analytics/usage | Create Usage Record
*AnalyticsApi* | [**usageBatch**](docs/Api/AnalyticsApi.md#usagebatch) | **POST** /api/{version}/analytics/usage/batch | Create Multiple Usage Records
*AppDataApi* | [**getAppData**](docs/Api/AppDataApi.md#getappdata) | **GET** /api/{version}/app/get | Get App Data
*AppDataApi* | [**postAppData**](docs/Api/AppDataApi.md#postappdata) | **POST** /api/{version}/app/post | Create App Data
*AppDataApi* | [**regenAppData**](docs/Api/AppDataApi.md#regenappdata) | **POST** /api/{version}/app/regen | Regenerate App Data
*ApplicationApi* | [**createApplication**](docs/Api/ApplicationApi.md#createapplication) | **POST** /api/{version}/application/create | Create Application
*ApplicationApi* | [**createApplicationPlacement**](docs/Api/ApplicationApi.md#createapplicationplacement) | **POST** /api/{version}/application/placement/create | Create Ad Placement
*ApplicationApi* | [**deleteApplication**](docs/Api/ApplicationApi.md#deleteapplication) | **POST** /api/{version}/application/delete | Delete Application
*ApplicationApi* | [**deleteApplicationPlacement**](docs/Api/ApplicationApi.md#deleteapplicationplacement) | **POST** /api/{version}/application/placement/delete | Delete Ad Placement
*ApplicationApi* | [**getApplication**](docs/Api/ApplicationApi.md#getapplication) | **GET** /api/{version}/application/get | Get Application
*ApplicationApi* | [**getApplicationPlacement**](docs/Api/ApplicationApi.md#getapplicationplacement) | **GET** /api/{version}/application/placement/get | Get Ad Placement
*ApplicationApi* | [**getApplicationVersions**](docs/Api/ApplicationApi.md#getapplicationversions) | **GET** /api/{version}/application/versions | Get API versions
*ApplicationApi* | [**getUniqueUsersByApp**](docs/Api/ApplicationApi.md#getuniqueusersbyapp) | **GET** /api/{version}/application/users | Search Application Users
*ApplicationApi* | [**listApplications**](docs/Api/ApplicationApi.md#listapplications) | **GET** /api/{version}/application/list | List Applications
*ApplicationApi* | [**searchApplicationPlacement**](docs/Api/ApplicationApi.md#searchapplicationplacement) | **GET** /api/{version}/application/placement/search | Search for Ad Placements
*ApplicationApi* | [**searchApplicationSettings**](docs/Api/ApplicationApi.md#searchapplicationsettings) | **GET** /api/{version}/application/settings/search | Search for Application Settings
*ApplicationApi* | [**searchApplications**](docs/Api/ApplicationApi.md#searchapplications) | **GET** /api/{version}/application/search | Search Applications
*ApplicationApi* | [**updateApplication**](docs/Api/ApplicationApi.md#updateapplication) | **POST** /api/{version}/application/update | Update Application
*ApplicationApi* | [**updateApplicationActive**](docs/Api/ApplicationApi.md#updateapplicationactive) | **POST** /api/{version}/application/active | Change Appliation Status
*ApplicationApi* | [**updateApplicationPlacement**](docs/Api/ApplicationApi.md#updateapplicationplacement) | **POST** /api/{version}/application/placement/update | Update Ad Placement
*ApplicationApi* | [**uploadApplicationCertificate**](docs/Api/ApplicationApi.md#uploadapplicationcertificate) | **POST** /api/{version}/application/certificate/create | Create Application Certificate
*ApplicationConfigApi* | [**createApplicationConfig**](docs/Api/ApplicationConfigApi.md#createapplicationconfig) | **POST** /api/{version}/appconfig/create | Create AppConfig
*ApplicationConfigApi* | [**deleteApplicationConfig**](docs/Api/ApplicationConfigApi.md#deleteapplicationconfig) | **POST** /api/{version}/appconfig/delete | Delete AppConfig
*ApplicationConfigApi* | [**getApplicationConfig**](docs/Api/ApplicationConfigApi.md#getapplicationconfig) | **GET** /api/{version}/appconfig/get | Get AppConfig
*ApplicationConfigApi* | [**getApplicationConfigByConfigVersion**](docs/Api/ApplicationConfigApi.md#getapplicationconfigbyconfigversion) | **GET** /api/{version}/appconfig/getbyversion | Get AppConfig by Version
*ApplicationConfigApi* | [**searchApplicationConfig**](docs/Api/ApplicationConfigApi.md#searchapplicationconfig) | **GET** /api/{version}/appconfig/search | Search AppConfigs
*ApplicationConfigApi* | [**updateApplicationConfig**](docs/Api/ApplicationConfigApi.md#updateapplicationconfig) | **POST** /api/{version}/appconfig/update | Update AppConfig
*AssetApi* | [**assetDownload**](docs/Api/AssetApi.md#assetdownload) | **GET** /api/{version}/asset/download/{filename} | Download Asset
*AssetApi* | [**assetMorph**](docs/Api/AssetApi.md#assetmorph) | **POST** /api/{version}/asset/morph | Convert Offer to Creative
*AssetApi* | [**createAsset**](docs/Api/AssetApi.md#createasset) | **POST** /api/{version}/asset/create | Create Asset
*AssetApi* | [**deleteAsset**](docs/Api/AssetApi.md#deleteasset) | **POST** /api/{version}/asset/delete | Delete Asset
*AssetApi* | [**getAsset**](docs/Api/AssetApi.md#getasset) | **GET** /api/{version}/asset/get | Get Asset
*AssetApi* | [**removeAsset**](docs/Api/AssetApi.md#removeasset) | **POST** /api/{version}/asset/remove | Remove Asset from Collection
*AssetApi* | [**searchAssets**](docs/Api/AssetApi.md#searchassets) | **GET** /api/{version}/asset/search | Search Assets
*AssetApi* | [**updateAsset**](docs/Api/AssetApi.md#updateasset) | **POST** /api/{version}/asset/update | Update Asset
*AssignmentApi* | [**assigmentAssigneeAccountSearch**](docs/Api/AssignmentApi.md#assigmentassigneeaccountsearch) | **GET** /api/{version}/assignment/assignee/search | Search Assignment Assignees
*AssignmentApi* | [**assignmentCreate**](docs/Api/AssignmentApi.md#assignmentcreate) | **POST** /api/{version}/assignment/create | Create Assignment
*AssignmentApi* | [**assignmentDelete**](docs/Api/AssignmentApi.md#assignmentdelete) | **POST** /api/{version}/assignment/delete | Delete Assignment
*AssignmentApi* | [**assignmentGet**](docs/Api/AssignmentApi.md#assignmentget) | **GET** /api/{version}/assignment/get | Get Assignment
*AssignmentApi* | [**assignmentSearch**](docs/Api/AssignmentApi.md#assignmentsearch) | **GET** /api/{version}/assignment/search | Search Assignments
*AssignmentApi* | [**assignmentStatusCreate**](docs/Api/AssignmentApi.md#assignmentstatuscreate) | **POST** /api/{version}/assignment/status/create | Create Assignment Status
*AssignmentApi* | [**assignmentStatusDelete**](docs/Api/AssignmentApi.md#assignmentstatusdelete) | **POST** /api/{version}/assignment/status/delete | Deletes Assignment Status
*AssignmentApi* | [**assignmentStatusGet**](docs/Api/AssignmentApi.md#assignmentstatusget) | **GET** /api/{version}/assignment/status/get | Get Assignment Status
*AssignmentApi* | [**assignmentStatusSearch**](docs/Api/AssignmentApi.md#assignmentstatussearch) | **GET** /api/{version}/assignment/status/search | Search Assignment Statuses
*AssignmentApi* | [**assignmentStatusUpdate**](docs/Api/AssignmentApi.md#assignmentstatusupdate) | **POST** /api/{version}/assignment/status/update | Update Assignment Status
*AssignmentApi* | [**assignmentUpdate**](docs/Api/AssignmentApi.md#assignmentupdate) | **POST** /api/{version}/assignment/update | Update Assignment
*AudienceApi* | [**createAudience**](docs/Api/AudienceApi.md#createaudience) | **POST** /api/{version}/audience/create | Create Audience
*AudienceApi* | [**deleteAudience**](docs/Api/AudienceApi.md#deleteaudience) | **POST** /api/{version}/audience/delete | Delete Audience
*AudienceApi* | [**getAgeGroups**](docs/Api/AudienceApi.md#getagegroups) | **GET** /api/{version}/audience/ageGroups | Get Age Groups
*AudienceApi* | [**getAudience**](docs/Api/AudienceApi.md#getaudience) | **GET** /api/{version}/audience/get | Get Audience
*AudienceApi* | [**getAudienceList**](docs/Api/AudienceApi.md#getaudiencelist) | **GET** /api/{version}/audience/search | Search Audiences
*AudienceApi* | [**getDevices**](docs/Api/AudienceApi.md#getdevices) | **GET** /api/{version}/audience/devices | Get Devices
*AudienceApi* | [**getExperiences**](docs/Api/AudienceApi.md#getexperiences) | **GET** /api/{version}/audience/experiences | Get Experiences
*AudienceApi* | [**getGroupedAudiences**](docs/Api/AudienceApi.md#getgroupedaudiences) | **GET** /api/{version}/audience/grouped/get | Get GroupedAudiences
*AudienceApi* | [**listByAccount**](docs/Api/AudienceApi.md#listbyaccount) | **POST** /api/{version}/audience/suggestion/list | List Suggestions by Audience
*AudienceApi* | [**listByAudience**](docs/Api/AudienceApi.md#listbyaudience) | **GET** /api/{version}/audience/suggestion/offersByAudience | List Offers by Audience
*AudienceApi* | [**listLastestByAccount**](docs/Api/AudienceApi.md#listlastestbyaccount) | **GET** /api/{version}/audience/suggestion/latest | List Sent Suggestions
*AudienceApi* | [**sendByAccount**](docs/Api/AudienceApi.md#sendbyaccount) | **POST** /api/{version}/audience/suggestion/send | Send Suggestions
*AudienceApi* | [**updateAudience**](docs/Api/AudienceApi.md#updateaudience) | **POST** /api/{version}/audience/update | Update Audience
*BidApi* | [**createBid**](docs/Api/BidApi.md#createbid) | **POST** /api/{version}/bid/create | Create Bid
*BidApi* | [**deleteBid**](docs/Api/BidApi.md#deletebid) | **POST** /api/{version}/bid/delete | Delete Bid
*BidApi* | [**getBid**](docs/Api/BidApi.md#getbid) | **GET** /api/{version}/bid/get | Get Bid
*BidApi* | [**updateBid**](docs/Api/BidApi.md#updatebid) | **POST** /api/{version}/bid/update | Update Bid
*BillableEntityApi* | [**createBillableEntity**](docs/Api/BillableEntityApi.md#createbillableentity) | **POST** /api/{version}/billable/create | Create Billable
*BillableEntityApi* | [**deleteBillableEntity**](docs/Api/BillableEntityApi.md#deletebillableentity) | **POST** /api/{version}/billable/delete | Delete Billable
*BillableEntityApi* | [**getBillableEntity**](docs/Api/BillableEntityApi.md#getbillableentity) | **GET** /api/{version}/billable/get | Get Billable
*BillableEntityApi* | [**updateBillableEntity**](docs/Api/BillableEntityApi.md#updatebillableentity) | **POST** /api/{version}/billable/update | Update Billable
*BillingInfoApi* | [**addPaymentMethod**](docs/Api/BillingInfoApi.md#addpaymentmethod) | **POST** /api/{version}/billing/update | Update Payment Method
*BillingInfoApi* | [**createPaymentMethod**](docs/Api/BillingInfoApi.md#createpaymentmethod) | **POST** /api/{version}/billing/create | Create Payment Method
*BillingInfoApi* | [**createSmartContract**](docs/Api/BillingInfoApi.md#createsmartcontract) | **POST** /api/{version}/billing/crypto/transfer | Create Smart Contract
*BillingInfoApi* | [**getCryptoBalance**](docs/Api/BillingInfoApi.md#getcryptobalance) | **GET** /api/{version}/billing/crypto/get | Get Crypto Balances
*BillingInfoApi* | [**getPaymentMethod**](docs/Api/BillingInfoApi.md#getpaymentmethod) | **GET** /api/{version}/billing/get | Get Payment Method
*BillingInfoApi* | [**searchPaymentMethod**](docs/Api/BillingInfoApi.md#searchpaymentmethod) | **GET** /api/{version}/billing/search | Search Payment Methods
*CSVImportApi* | [**getStatusCSV**](docs/Api/CSVImportApi.md#getstatuscsv) | **GET** /api/{version}/csvimport/batch/status/details | Detail Status
*CSVImportApi* | [**listStatusCSV**](docs/Api/CSVImportApi.md#liststatuscsv) | **GET** /api/{version}/csvimport/batch/list | Search Status
*CSVImportApi* | [**statusCSV**](docs/Api/CSVImportApi.md#statuscsv) | **GET** /api/{version}/csvimport/batch/status | Batch Status
*CSVImportApi* | [**uploadCSV**](docs/Api/CSVImportApi.md#uploadcsv) | **POST** /api/{version}/csvimport/upload | Upload CSV
*CargoTypeApi* | [**createCargoType**](docs/Api/CargoTypeApi.md#createcargotype) | **POST** /api/{version}/cargo/type | Create Cargo Type
*CargoTypeApi* | [**deleteCargoType**](docs/Api/CargoTypeApi.md#deletecargotype) | **DELETE** /api/{version}/cargo/type/{cargoTypeId} | Delete Cargo Type
*CargoTypeApi* | [**getCargoType**](docs/Api/CargoTypeApi.md#getcargotype) | **GET** /api/{version}/cargo/type/{cargoTypeId} | Get Cargo Type
*CargoTypeApi* | [**searchCargoTypes**](docs/Api/CargoTypeApi.md#searchcargotypes) | **GET** /api/{version}/cargo/type | Search Cargo Type
*CargoTypeApi* | [**updateCargoType**](docs/Api/CargoTypeApi.md#updatecargotype) | **PUT** /api/{version}/cargo/type/{cargoTypeId} | Update Cargo Type
*CarrierApi* | [**searchCarriers**](docs/Api/CarrierApi.md#searchcarriers) | **GET** /api/{version}/carrier/search | Search Carriers
*CategoryApi* | [**categoryDistanceSearch**](docs/Api/CategoryApi.md#categorydistancesearch) | **GET** /api/{version}/category/distancesearch | Search Categories by Distance
*CategoryApi* | [**createCategory**](docs/Api/CategoryApi.md#createcategory) | **POST** /api/{version}/category/create | Create Category
*CategoryApi* | [**deleteCategory**](docs/Api/CategoryApi.md#deletecategory) | **POST** /api/{version}/category/delete | Delete Category
*CategoryApi* | [**duplicateCategory**](docs/Api/CategoryApi.md#duplicatecategory) | **POST** /api/{version}/category/duplicate | Duplicate Category
*CategoryApi* | [**getCategory**](docs/Api/CategoryApi.md#getcategory) | **GET** /api/{version}/category/get | Get Category
*CategoryApi* | [**searchCategories**](docs/Api/CategoryApi.md#searchcategories) | **GET** /api/{version}/category/search | Search Categories
*CategoryApi* | [**updateCategory**](docs/Api/CategoryApi.md#updatecategory) | **POST** /api/{version}/category/update | Update Category
*ConnectionApi* | [**addConnectionToGroup**](docs/Api/ConnectionApi.md#addconnectiontogroup) | **POST** /api/{version}/consumer/connection/group/addConnection | Add Connection
*ConnectionApi* | [**addConnectionsToGroup**](docs/Api/ConnectionApi.md#addconnectionstogroup) | **POST** /api/{version}/connection/group/addConnections | Add Connections
*ConnectionApi* | [**addSubGroups**](docs/Api/ConnectionApi.md#addsubgroups) | **POST** /api/{version}/consumer/connection/group/addSubGroup | Add Connection Groups
*ConnectionApi* | [**createOrUpdateConnection**](docs/Api/ConnectionApi.md#createorupdateconnection) | **POST** /api/{version}/consumer/connection/add | Create or Update Connection
*ConnectionApi* | [**createOrUpdateGroup**](docs/Api/ConnectionApi.md#createorupdategroup) | **POST** /api/{version}/consumer/connection/group | Create or Update Connection Group
*ConnectionApi* | [**followAccept**](docs/Api/ConnectionApi.md#followaccept) | **POST** /api/{version}/consumer/follow/accept | Accept Follow Request
*ConnectionApi* | [**followReject**](docs/Api/ConnectionApi.md#followreject) | **POST** /api/{version}/consumer/follow/reject | Reject Follow Request
*ConnectionApi* | [**followRemove**](docs/Api/ConnectionApi.md#followremove) | **POST** /api/{version}/consumer/follow/remove | Remove Follower / Unfollow
*ConnectionApi* | [**followRequest**](docs/Api/ConnectionApi.md#followrequest) | **POST** /api/{version}/consumer/follow/request | Send Follow Request
*ConnectionApi* | [**friendAccept**](docs/Api/ConnectionApi.md#friendaccept) | **POST** /api/{version}/consumer/friend/accept | Accept Friend
*ConnectionApi* | [**friendReject**](docs/Api/ConnectionApi.md#friendreject) | **POST** /api/{version}/consumer/friend/reject | Decline Friend
*ConnectionApi* | [**friendRemove**](docs/Api/ConnectionApi.md#friendremove) | **POST** /api/{version}/consumer/friend/remove | Delete Friend
*ConnectionApi* | [**friendRequest**](docs/Api/ConnectionApi.md#friendrequest) | **POST** /api/{version}/consumer/friend/request | Request Friend
*ConnectionApi* | [**getConnectionSentFriendRequests**](docs/Api/ConnectionApi.md#getconnectionsentfriendrequests) | **GET** /api/{version}/consumer/connection/getRequested | Get Sent Friend Requests
*ConnectionApi* | [**getConnections**](docs/Api/ConnectionApi.md#getconnections) | **GET** /api/{version}/consumer/connection/get | Search Connections
*ConnectionApi* | [**getGroupDetails**](docs/Api/ConnectionApi.md#getgroupdetails) | **GET** /api/{version}/consumer/connection/group/details/get | Get Connection Group
*ConnectionApi* | [**groupSearch**](docs/Api/ConnectionApi.md#groupsearch) | **GET** /api/{version}/connection/group/search | Search Connection Groups
*ConnectionApi* | [**removeConnectionFromGroup**](docs/Api/ConnectionApi.md#removeconnectionfromgroup) | **POST** /api/{version}/consumer/connection/group/removeConnection | Delete Connection
*ConnectionApi* | [**removeConnectionsFromGroup**](docs/Api/ConnectionApi.md#removeconnectionsfromgroup) | **POST** /api/{version}/connection/group/removeConnections | Remove Connections
*ConnectionApi* | [**removeGroup**](docs/Api/ConnectionApi.md#removegroup) | **POST** /api/{version}/consumer/connection/group/remove | Delete Connection Group
*ConnectionApi* | [**removeSubGroups**](docs/Api/ConnectionApi.md#removesubgroups) | **POST** /api/{version}/consumer/connection/group/removeSubGroup | Remove Connection Groups
*ConnectionApi* | [**searchConnections**](docs/Api/ConnectionApi.md#searchconnections) | **GET** /api/{version}/connection/search | Search Possible Connections
*ContestApi* | [**addOrUpdateAlbumContest**](docs/Api/ContestApi.md#addorupdatealbumcontest) | **POST** /api/{version}/consumer/album/contest | Create or Update Contest
*ContestApi* | [**approveAlbumContest**](docs/Api/ContestApi.md#approvealbumcontest) | **POST** /api/{version}/consumer/album/contest/approve | Approve Contest
*ContestApi* | [**deleteContest**](docs/Api/ContestApi.md#deletecontest) | **POST** /api/{version}/consumer/album/contest/remove | Delete Contest
*ContestApi* | [**getAlbumContest**](docs/Api/ContestApi.md#getalbumcontest) | **GET** /api/{version}/consumer/album/contest/get | Get Contest
*ContestApi* | [**getAlbumContests**](docs/Api/ContestApi.md#getalbumcontests) | **GET** /api/{version}/consumer/album/contest/search | Search Contests
*ContestApi* | [**voteOnAlbumContest**](docs/Api/ContestApi.md#voteonalbumcontest) | **POST** /api/{version}/consumer/album/contest/vote | Vote on Contest
*CreativeApi* | [**addPreview**](docs/Api/CreativeApi.md#addpreview) | **POST** /api/{version}/creative/addpreview | Add Preview
*CreativeApi* | [**adsFind**](docs/Api/CreativeApi.md#adsfind) | **GET** /api/{version}/ads/find | Find Missions
*CreativeApi* | [**createCreative**](docs/Api/CreativeApi.md#createcreative) | **POST** /api/{version}/creative/create | Create Creative
*CreativeApi* | [**deleteCreative**](docs/Api/CreativeApi.md#deletecreative) | **POST** /api/{version}/creative/delete | Delete Creative
*CreativeApi* | [**getCreative**](docs/Api/CreativeApi.md#getcreative) | **GET** /api/{version}/creative/get | Get Creative
*CreativeApi* | [**getCreativesByApplication**](docs/Api/CreativeApi.md#getcreativesbyapplication) | **GET** /api/{version}/creative/search | Search Creatives
*CreativeApi* | [**removePreview**](docs/Api/CreativeApi.md#removepreview) | **POST** /api/{version}/creative/removepreview | Remove Preview
*CreativeApi* | [**updateCreative**](docs/Api/CreativeApi.md#updatecreative) | **POST** /api/{version}/creative/update | Update Creative
*DependentApi* | [**create**](docs/Api/DependentApi.md#create) | **PUT** /api/{version}/cargo/dependent/{accountId} | Create Dependent
*DependentApi* | [**getDependents**](docs/Api/DependentApi.md#getdependents) | **GET** /api/{version}/cargo/dependent/{accountId} | Get dependent list of an account
*DependentApi* | [**removeDependent**](docs/Api/DependentApi.md#removedependent) | **DELETE** /api/{version}/cargo/dependent/{accountId} | Delete Dependent
*DisbursementApi* | [**checkDisbursements**](docs/Api/DisbursementApi.md#checkdisbursements) | **GET** /api/{version}/disbursement/check | Check Disbursements
*DisbursementApi* | [**createDisbursement**](docs/Api/DisbursementApi.md#createdisbursement) | **POST** /api/{version}/disbursement/create | Create Disbursement
*DisbursementApi* | [**getDisbursement**](docs/Api/DisbursementApi.md#getdisbursement) | **GET** /api/{version}/disbursement/get | Get Disbursement
*DisbursementApi* | [**searchDisbursements**](docs/Api/DisbursementApi.md#searchdisbursements) | **GET** /api/{version}/disbursement/search | Search Disbursements
*DisbursementApi* | [**updateDisbursement**](docs/Api/DisbursementApi.md#updatedisbursement) | **POST** /api/{version}/disbursement/update | Update Disbursement
*EmployeeApi* | [**assignEmployee**](docs/Api/EmployeeApi.md#assignemployee) | **POST** /api/{version}/employee/assign | Assign Employee
*EmployeeApi* | [**assignToLocationEmployee**](docs/Api/EmployeeApi.md#assigntolocationemployee) | **POST** /api/{version}/employee/assignToLocation | Assign Employee to Location
*EmployeeApi* | [**createEmployee**](docs/Api/EmployeeApi.md#createemployee) | **POST** /api/{version}/employee/create | Create Employee
*EmployeeApi* | [**deleteEmployee**](docs/Api/EmployeeApi.md#deleteemployee) | **POST** /api/{version}/employee/delete | Delete Employee
*EmployeeApi* | [**getEmployee**](docs/Api/EmployeeApi.md#getemployee) | **POST** /api/{version}/employee/get | Get Employee
*EmployeeApi* | [**searchEmployees**](docs/Api/EmployeeApi.md#searchemployees) | **POST** /api/{version}/employee/search | Search Employees
*EmployeeApi* | [**unassignEmployee**](docs/Api/EmployeeApi.md#unassignemployee) | **POST** /api/{version}/employee/unassign | Unassign Employee
*EmployeeApi* | [**updateEmployee**](docs/Api/EmployeeApi.md#updateemployee) | **POST** /api/{version}/employee/update | Update Employee
*EventApi* | [**attendEvent**](docs/Api/EventApi.md#attendevent) | **POST** /api/{version}/event/attend | Attend Event
*EventApi* | [**createEvent**](docs/Api/EventApi.md#createevent) | **POST** /api/{version}/event/create | Create Event
*EventApi* | [**deleteEvent**](docs/Api/EventApi.md#deleteevent) | **POST** /api/{version}/event/delete | Delete Event
*EventApi* | [**getEvent**](docs/Api/EventApi.md#getevent) | **GET** /api/{version}/event/get | Get Event
*EventApi* | [**searchEventTransactions**](docs/Api/EventApi.md#searcheventtransactions) | **GET** /api/{version}/event/attendance/search | Search Event Attendance
*EventApi* | [**searchEvents**](docs/Api/EventApi.md#searchevents) | **GET** /api/{version}/event/search | Search Events
*EventApi* | [**updateEvent**](docs/Api/EventApi.md#updateevent) | **POST** /api/{version}/event/update | Update Event
*FacebookApi* | [**getToken**](docs/Api/FacebookApi.md#gettoken) | **GET** /api/{version}/facebook/getfbtoken | Get Facebook Token
*FacebookApi* | [**graphInterface**](docs/Api/FacebookApi.md#graphinterface) | **POST** /api/{version}/facebook/graph | Post to Facebook
*FavoriteApi* | [**addFavorite**](docs/Api/FavoriteApi.md#addfavorite) | **POST** /api/{version}/favorite/create | Create Favorite
*FavoriteApi* | [**deleteFavorite**](docs/Api/FavoriteApi.md#deletefavorite) | **POST** /api/{version}/favorite/delete | Delete Favorite
*FavoriteApi* | [**getFavorite**](docs/Api/FavoriteApi.md#getfavorite) | **GET** /api/{version}/favorite/get | Get Favorite
*FavoriteApi* | [**searchFavorites**](docs/Api/FavoriteApi.md#searchfavorites) | **GET** /api/{version}/favorite/search | Search Favorites
*FavoriteApi* | [**whoHasFavorited**](docs/Api/FavoriteApi.md#whohasfavorited) | **GET** /api/{version}/favorite/whois | Who has Favorited
*FilterApi* | [**createFilter**](docs/Api/FilterApi.md#createfilter) | **POST** /api/{version}/filter/create | Create Filter
*FilterApi* | [**deleteFilter**](docs/Api/FilterApi.md#deletefilter) | **POST** /api/{version}/filter/delete | Delete Filter
*FilterApi* | [**getFilter**](docs/Api/FilterApi.md#getfilter) | **GET** /api/{version}/filter/get | Get Filter
*FilterApi* | [**searchFilters**](docs/Api/FilterApi.md#searchfilters) | **GET** /api/{version}/filter/search | Search Filters
*FilterApi* | [**updateFilter**](docs/Api/FilterApi.md#updatefilter) | **POST** /api/{version}/filter/update | Update Filter
*FlagApi* | [**createFlag**](docs/Api/FlagApi.md#createflag) | **POST** /api/{version}/flag/create | Create Flag
*FlagApi* | [**deleteFlag**](docs/Api/FlagApi.md#deleteflag) | **POST** /api/{version}/flag/delete | Delete Flag
*FlagApi* | [**getFlag**](docs/Api/FlagApi.md#getflag) | **GET** /api/{version}/flag/get | Get Flag
*FlagApi* | [**getFlagThreshold**](docs/Api/FlagApi.md#getflagthreshold) | **GET** /api/{version}/flag/threshold/get | Get Flag Threshold
*FlagApi* | [**updateFlagThreshold**](docs/Api/FlagApi.md#updateflagthreshold) | **POST** /api/{version}/flag/threshold/update | Update Flag Threshold
*GameApi* | [**createGame**](docs/Api/GameApi.md#creategame) | **POST** /api/{version}/game/create | Create a Game
*GameApi* | [**deleteGame**](docs/Api/GameApi.md#deletegame) | **POST** /api/{version}/game/delete | Delete a Game
*GameApi* | [**getGame**](docs/Api/GameApi.md#getgame) | **GET** /api/{version}/game/get | Get a Game by id
*GameApi* | [**searchGames**](docs/Api/GameApi.md#searchgames) | **GET** /api/{version}/game/search | Search a Game
*GameApi* | [**updateGame**](docs/Api/GameApi.md#updategame) | **POST** /api/{version}/game/update | Update a Game
*GameLevelApi* | [**createGameLevel**](docs/Api/GameLevelApi.md#creategamelevel) | **POST** /api/{version}/level/create | Create Game Level
*GameLevelApi* | [**deleteGameLevel**](docs/Api/GameLevelApi.md#deletegamelevel) | **POST** /api/{version}/level/delete | Delete Game Level
*GameLevelApi* | [**getGameLevel**](docs/Api/GameLevelApi.md#getgamelevel) | **GET** /api/{version}/level/get | Get Game Level
*GameLevelApi* | [**getGameLevelsByApplication**](docs/Api/GameLevelApi.md#getgamelevelsbyapplication) | **GET** /api/{version}/level/search | Search Game Levels
*GameLevelApi* | [**getGameLevelsByBillableEntity**](docs/Api/GameLevelApi.md#getgamelevelsbybillableentity) | **GET** /api/{version}/level/searchByBillableEntity | Search Game Level by Billable Entity
*GameLevelApi* | [**getQuestionsInLevel**](docs/Api/GameLevelApi.md#getquestionsinlevel) | **GET** /api/{version}/level/questions/get | Get Level Questions
*GameLevelApi* | [**getWordsInLevel**](docs/Api/GameLevelApi.md#getwordsinlevel) | **GET** /api/{version}/level/words/get | Get Level Words
*GameLevelApi* | [**updateGameLevel**](docs/Api/GameLevelApi.md#updategamelevel) | **POST** /api/{version}/level/update | Update Game Level
*GameLevelApi* | [**updateQuestionsInLevel**](docs/Api/GameLevelApi.md#updatequestionsinlevel) | **POST** /api/{version}/level/questions/update | Update Level Questions
*GameLevelApi* | [**updateWordsInLevel**](docs/Api/GameLevelApi.md#updatewordsinlevel) | **POST** /api/{version}/level/words/update | Update Level Words
*InviteApi* | [**acceptInvite**](docs/Api/InviteApi.md#acceptinvite) | **POST** /api/{version}/invite/accept | Accept Invite
*InviteApi* | [**albumContestInvite**](docs/Api/InviteApi.md#albumcontestinvite) | **POST** /api/{version}/invite/albumContest | Invite to Contest
*InviteApi* | [**albumInvite**](docs/Api/InviteApi.md#albuminvite) | **POST** /api/{version}/invite/album | Invite to Collection
*InviteApi* | [**eventInvite**](docs/Api/InviteApi.md#eventinvite) | **POST** /api/{version}/invite/event | Invite to Event
*InviteApi* | [**gameInvite**](docs/Api/InviteApi.md#gameinvite) | **POST** /api/{version}/invite/gameLevel | Invite to Game Level
*InviteApi* | [**getInvite**](docs/Api/InviteApi.md#getinvite) | **GET** /api/{version}/invite/get | Get Invite
*InviteApi* | [**missionInvite**](docs/Api/InviteApi.md#missioninvite) | **POST** /api/{version}/invite/mission | Invite to Mission
*InviteApi* | [**offerInvite**](docs/Api/InviteApi.md#offerinvite) | **POST** /api/{version}/invite/offer | Invite to Offer
*InviteApi* | [**offerLocationInvite**](docs/Api/InviteApi.md#offerlocationinvite) | **POST** /api/{version}/invite/offerLocation | Invite to Offer Location
*InviteApi* | [**retailerLocationInvite**](docs/Api/InviteApi.md#retailerlocationinvite) | **POST** /api/{version}/invite/retailerLocation | Invite to Retailer Location
*LeaderboardApi* | [**createLeaderboard**](docs/Api/LeaderboardApi.md#createleaderboard) | **POST** /api/{version}/leaderboard/create | Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
*LeaderboardApi* | [**deleteLeaderboard**](docs/Api/LeaderboardApi.md#deleteleaderboard) | **POST** /api/{version}/leaderboard/delete | Delete the Leader Board
*LeaderboardApi* | [**getLeaderboard**](docs/Api/LeaderboardApi.md#getleaderboard) | **GET** /api/{version}/leaderboard/get | Read a leaderboard by id and retrieve the matching ranking list
*LeaderboardApi* | [**searchLeaderboards**](docs/Api/LeaderboardApi.md#searchleaderboards) | **GET** /api/{version}/leaderboard/search | Search leaderboard and retrieve the matching ranking list
*LeaderboardApi* | [**updateLeaderboard**](docs/Api/LeaderboardApi.md#updateleaderboard) | **POST** /api/{version}/leaderboard/update | Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
*LikeApi* | [**registerLike**](docs/Api/LikeApi.md#registerlike) | **POST** /api/{version}/like | Create Like
*LikeApi* | [**removeLike**](docs/Api/LikeApi.md#removelike) | **POST** /api/{version}/like/delete | Delete Like
*LikeApi* | [**searchLikes**](docs/Api/LikeApi.md#searchlikes) | **GET** /api/{version}/like/search | Search Likes
*ListingApi* | [**createListing**](docs/Api/ListingApi.md#createlisting) | **POST** /api/{version}/listing/create | Create Listing
*ListingApi* | [**deleteListing**](docs/Api/ListingApi.md#deletelisting) | **POST** /api/{version}/listing/delete | Delete Listing
*ListingApi* | [**getListing**](docs/Api/ListingApi.md#getlisting) | **GET** /api/{version}/listing/get | Get Listing
*ListingApi* | [**searchListing**](docs/Api/ListingApi.md#searchlisting) | **GET** /api/{version}/listing/search | Search Listings
*ListingApi* | [**summaryListing**](docs/Api/ListingApi.md#summarylisting) | **GET** /api/{version}/listing/summary | Summary Listing
*ListingApi* | [**updateListing**](docs/Api/ListingApi.md#updatelisting) | **POST** /api/{version}/listing/update | Update Listing
*LocationApi* | [**cacheTrilaterationData**](docs/Api/LocationApi.md#cachetrilaterationdata) | **POST** /api/{version}/location/trilaterate/cache | Create Trilateration Data with File
*LocationApi* | [**cacheTrilaterationDataGzip**](docs/Api/LocationApi.md#cachetrilaterationdatagzip) | **POST** /api/{version}/location/trilaterate/cache/submit | Create Trilateration Data with Rest
*LocationApi* | [**getLocationByIp**](docs/Api/LocationApi.md#getlocationbyip) | **GET** /api/{version}/location/ip | Get Location by IP
*LocationApi* | [**getLocationByTrilateration**](docs/Api/LocationApi.md#getlocationbytrilateration) | **GET** /api/{version}/account/location/trilaterate | Get Location by Trilateration
*LocationApi* | [**getLocations**](docs/Api/LocationApi.md#getlocations) | **GET** /api/{version}/location/search | Search Regions or Postal Codes
*LocationApiV2Api* | [**createLocationV2**](docs/Api/LocationApiV2Api.md#createlocationv2) | **POST** /api/{version}/location | Create new location
*LocationApiV2Api* | [**updateLocationV2**](docs/Api/LocationApiV2Api.md#updatelocationv2) | **POST** /api/{version}/location/{id} | Update an existing location
*MediaApi* | [**createMedia**](docs/Api/MediaApi.md#createmedia) | **POST** /api/{version}/media/create | Create Media
*MediaApi* | [**deleteMedia**](docs/Api/MediaApi.md#deletemedia) | **POST** /api/{version}/media/delete | Delete Media
*MediaApi* | [**getMedia**](docs/Api/MediaApi.md#getmedia) | **GET** /api/{version}/media/get | Media Get
*MediaApi* | [**searchMedia**](docs/Api/MediaApi.md#searchmedia) | **GET** /api/{version}/media/search | Search Media
*MediaApi* | [**updateMedia**](docs/Api/MediaApi.md#updatemedia) | **POST** /api/{version}/media/update | Update Media
*MissionApi* | [**createMission**](docs/Api/MissionApi.md#createmission) | **POST** /api/{version}/mission/create | Create Mission
*MissionApi* | [**deleteMission**](docs/Api/MissionApi.md#deletemission) | **POST** /api/{version}/mission/delete | Delete Mission
*MissionApi* | [**findMissions**](docs/Api/MissionApi.md#findmissions) | **GET** /api/{version}/mission/find | Find Missions
*MissionApi* | [**getMission**](docs/Api/MissionApi.md#getmission) | **GET** /api/{version}/mission/get | Get Mission
*MissionApi* | [**importMission**](docs/Api/MissionApi.md#importmission) | **POST** /api/{version}/mission/import | Import Mission
*MissionApi* | [**searchMissionFormats**](docs/Api/MissionApi.md#searchmissionformats) | **GET** /api/{version}/mission/format/search | Search Mission Formats
*MissionApi* | [**searchMissions**](docs/Api/MissionApi.md#searchmissions) | **GET** /api/{version}/mission/search | Search Missions
*MissionApi* | [**searchMissionsByBillableEntity**](docs/Api/MissionApi.md#searchmissionsbybillableentity) | **GET** /api/{version}/mission/searchByBillableEntity | Search Missions by Billable Entity
*MissionApi* | [**updateMission**](docs/Api/MissionApi.md#updatemission) | **POST** /api/{version}/mission/update | Update Mission
*MissionInviteApi* | [**createMissionInvite**](docs/Api/MissionInviteApi.md#createmissioninvite) | **POST** /api/{version}/mission/invite/create | Create Mission Invite
*MissionInviteApi* | [**deleteMissionInvite**](docs/Api/MissionInviteApi.md#deletemissioninvite) | **POST** /api/{version}/mission/invite/delete | Delete Mission Invite
*MissionInviteApi* | [**getMissionInvite**](docs/Api/MissionInviteApi.md#getmissioninvite) | **GET** /api/{version}/mission/invite/get | Get Mission Invite
*MissionInviteApi* | [**searchMissionInvites**](docs/Api/MissionInviteApi.md#searchmissioninvites) | **GET** /api/{version}/mission/invite/search | Search Mission Invites
*MissionInviteApi* | [**updateMissionInvite**](docs/Api/MissionInviteApi.md#updatemissioninvite) | **POST** /api/{version}/mission/invite/update | Update Mission Invite
*NoteApi* | [**batchOperation**](docs/Api/NoteApi.md#batchoperation) | **POST** /api/{version}/note/batch | Batch Note Operation
*NoteApi* | [**createNote**](docs/Api/NoteApi.md#createnote) | **POST** /api/{version}/note/create | Create Note
*NoteApi* | [**deleteNote**](docs/Api/NoteApi.md#deletenote) | **POST** /api/{version}/note/delete | Delete Note
*NoteApi* | [**getNote**](docs/Api/NoteApi.md#getnote) | **POST** /api/{version}/note/get | Get Note
*NoteApi* | [**searchNotes**](docs/Api/NoteApi.md#searchnotes) | **POST** /api/{version}/note/search | Search Notes
*NoteApi* | [**updateNote**](docs/Api/NoteApi.md#updatenote) | **POST** /api/{version}/note/update | Update Note
*NotificationApi* | [**createNotificationTemplate**](docs/Api/NotificationApi.md#createnotificationtemplate) | **POST** /api/{version}/notification/template/create | Create Notification Template
*NotificationApi* | [**createOrUpdateBlockedNotifications**](docs/Api/NotificationApi.md#createorupdateblockednotifications) | **POST** /api/{version}/notification/blocked/batch | Create or update blocked notification settings
*NotificationApi* | [**deleteNotificationTemplate**](docs/Api/NotificationApi.md#deletenotificationtemplate) | **POST** /api/{version}/notification/template/delete | Delete Notification Template
*NotificationApi* | [**getNotificationTemplate**](docs/Api/NotificationApi.md#getnotificationtemplate) | **GET** /api/{version}/notification/template/get | Get Notification Template
*NotificationApi* | [**getNotifications**](docs/Api/NotificationApi.md#getnotifications) | **GET** /api/{version}/notification/search | Get Notifications
*NotificationApi* | [**registerNotificationToken**](docs/Api/NotificationApi.md#registernotificationtoken) | **POST** /api/{version}/notification/token | Register Notification Token
*NotificationApi* | [**searchBlockedNotifications**](docs/Api/NotificationApi.md#searchblockednotifications) | **GET** /api/{version}/notification/blocked/search | Search on the user&#39;s blocked notification settings
*NotificationApi* | [**searchNotificationTemplate**](docs/Api/NotificationApi.md#searchnotificationtemplate) | **GET** /api/{version}/notification/template/search | Search Notification Templates
*NotificationApi* | [**searchRecipients**](docs/Api/NotificationApi.md#searchrecipients) | **GET** /api/{version}/notification/recipient/search | Search for Recipients
*NotificationApi* | [**searchRecipientsCount**](docs/Api/NotificationApi.md#searchrecipientscount) | **GET** /api/{version}/notification/recipient/search/count | Search for Recipients (Counts/Grouped)
*NotificationApi* | [**sendBatchNotifications**](docs/Api/NotificationApi.md#sendbatchnotifications) | **POST** /api/{version}/notification/batch | Send Batch Notifications
*NotificationApi* | [**sendCustomNotifications**](docs/Api/NotificationApi.md#sendcustomnotifications) | **POST** /api/{version}/notification/custom | Send Custom Notifications
*NotificationApi* | [**updateNotificationTemplate**](docs/Api/NotificationApi.md#updatenotificationtemplate) | **POST** /api/{version}/notification/template/update | Update Notification Template
*ObjectStoreApi* | [**addField**](docs/Api/ObjectStoreApi.md#addfield) | **POST** /api/{version}/object/field/add | Create Field
*ObjectStoreApi* | [**createData**](docs/Api/ObjectStoreApi.md#createdata) | **POST** /api/{version}/object/data/{objectName} | Create Data
*ObjectStoreApi* | [**createObject**](docs/Api/ObjectStoreApi.md#createobject) | **POST** /api/{version}/object/create | Create Object
*ObjectStoreApi* | [**deleteData**](docs/Api/ObjectStoreApi.md#deletedata) | **DELETE** /api/{version}/object/data/{objectName}/{objectId} | Delete Data
*ObjectStoreApi* | [**deleteField**](docs/Api/ObjectStoreApi.md#deletefield) | **POST** /api/{version}/object/field/delete | Delete Field
*ObjectStoreApi* | [**deleteObject**](docs/Api/ObjectStoreApi.md#deleteobject) | **POST** /api/{version}/object/delete | Delete Object
*ObjectStoreApi* | [**getData**](docs/Api/ObjectStoreApi.md#getdata) | **GET** /api/{version}/object/data/{objectName}/{objectId} | Get Data
*ObjectStoreApi* | [**getObject**](docs/Api/ObjectStoreApi.md#getobject) | **GET** /api/{version}/object/get | Get Object
*ObjectStoreApi* | [**searchData**](docs/Api/ObjectStoreApi.md#searchdata) | **GET** /api/{version}/object/data/{objectName} | Search Data
*ObjectStoreApi* | [**searchObject**](docs/Api/ObjectStoreApi.md#searchobject) | **GET** /api/{version}/object/search | Search Objects
*ObjectStoreApi* | [**updateData**](docs/Api/ObjectStoreApi.md#updatedata) | **PUT** /api/{version}/object/data/{objectName}/{objectId} | Update Data
*OfferApi* | [**batchUpdateOfferLocations**](docs/Api/OfferApi.md#batchupdateofferlocations) | **POST** /api/{version}/retailer/offer/location/batchUpdate | Update Offer Locations
*OfferApi* | [**createOffer**](docs/Api/OfferApi.md#createoffer) | **POST** /api/{version}/retailer/offer/create | Create Offer
*OfferApi* | [**deleteOffer**](docs/Api/OfferApi.md#deleteoffer) | **POST** /api/{version}/retailer/offer/delete | Delete Offer
*OfferApi* | [**deleteOfferLocation**](docs/Api/OfferApi.md#deleteofferlocation) | **POST** /api/{version}/retailer/offer/location/delete | Delete Offer Location
*OfferApi* | [**getOffer**](docs/Api/OfferApi.md#getoffer) | **GET** /api/{version}/retailer/offer/get | Get Offer
*OfferApi* | [**getOfferDetails**](docs/Api/OfferApi.md#getofferdetails) | **GET** /api/{version}/offer/get | Get Offer
*OfferApi* | [**getOfferListCounts**](docs/Api/OfferApi.md#getofferlistcounts) | **GET** /api/{version}/offer/lists/count | Get Offers (Counts)
*OfferApi* | [**getOfferLocation**](docs/Api/OfferApi.md#getofferlocation) | **GET** /api/{version}/offer/location/get | Get Offer Location
*OfferApi* | [**getOfferLocationsForRetailers**](docs/Api/OfferApi.md#getofferlocationsforretailers) | **GET** /api/{version}/retailer/offer/location/search | Search Offer Locations
*OfferApi* | [**getOffersForRetailers**](docs/Api/OfferApi.md#getoffersforretailers) | **GET** /api/{version}/retailer/offer/search | Search Offers
*OfferApi* | [**redeemOfferTransaction**](docs/Api/OfferApi.md#redeemoffertransaction) | **POST** /api/{version}/retailer/offer/transaction/update | Update Offer Transaction
*OfferApi* | [**searchOfferTransactionsForRetailers**](docs/Api/OfferApi.md#searchoffertransactionsforretailers) | **GET** /api/{version}/retailer/offer/transaction/search | Search Offer Transactions
*OfferApi* | [**searchOffersForConsumer**](docs/Api/OfferApi.md#searchoffersforconsumer) | **GET** /api/{version}/offer/lists | Search Offers
*OfferApi* | [**topOfferTransactions**](docs/Api/OfferApi.md#topoffertransactions) | **GET** /api/{version}/offer/top | Get Offers (Top)
*OfferApi* | [**updateOffer**](docs/Api/OfferApi.md#updateoffer) | **POST** /api/{version}/retailer/offer/update | Update Offer
*OfferApi* | [**updateOfferStatus**](docs/Api/OfferApi.md#updateofferstatus) | **POST** /api/{version}/retailer/offer/status | Activate Offer
*OfferStatusApi* | [**createOfferTransactionStatus**](docs/Api/OfferStatusApi.md#createoffertransactionstatus) | **POST** /api/{version}/offer/status/create | Create Offer Status
*OfferStatusApi* | [**deleteOfferTransactionStatus**](docs/Api/OfferStatusApi.md#deleteoffertransactionstatus) | **POST** /api/{version}/offer/status/delete | Delete Offer Status
*OfferStatusApi* | [**getOfferTransactionStatus**](docs/Api/OfferStatusApi.md#getoffertransactionstatus) | **GET** /api/{version}/offer/status/get | Get Offer Status
*OfferStatusApi* | [**searchOfferTransactionStatuses**](docs/Api/OfferStatusApi.md#searchoffertransactionstatuses) | **GET** /api/{version}/offer/status/search | Search Offer Status
*OfferStatusApi* | [**updateOfferTransactionStatus**](docs/Api/OfferStatusApi.md#updateoffertransactionstatus) | **POST** /api/{version}/offer/status/update | Update Offer Status
*OpenAIApi* | [**imageGeneration**](docs/Api/OpenAIApi.md#imagegeneration) | **POST** /api/{version}/openai/v1/images/generations | Generate images with OpenAI
*OptimizeApi* | [**getOptimizationResult**](docs/Api/OptimizeApi.md#getoptimizationresult) | **GET** /api/{version}/optimize/result/{batchID} | Get Optimization Result
*OptimizeApi* | [**requestOptimization**](docs/Api/OptimizeApi.md#requestoptimization) | **POST** /api/{version}/optimize/request | Request Optimization
*OrsonApi* | [**addMovie**](docs/Api/OrsonApi.md#addmovie) | **POST** /api/{version}/orson/ai/addMovie | Add Movie
*OrsonApi* | [**aiDocs**](docs/Api/OrsonApi.md#aidocs) | **GET** /api/{version}/orson/ai/docs | Search Docs
*OrsonApi* | [**aiFindImages**](docs/Api/OrsonApi.md#aifindimages) | **GET** /api/{version}/orson/ai/img | Find images
*OrsonApi* | [**aiTags**](docs/Api/OrsonApi.md#aitags) | **GET** /api/{version}/orson/ai/tags | Search Tags
*OrsonApi* | [**aiText**](docs/Api/OrsonApi.md#aitext) | **GET** /api/{version}/orson/ai/text | Search Text
*OrsonApi* | [**batch**](docs/Api/OrsonApi.md#batch) | **POST** /api/{version}/orson/ai/batch | Batch Analysis
*OrsonApi* | [**createInstantEpisode**](docs/Api/OrsonApi.md#createinstantepisode) | **POST** /api/{version}/orson/stories/episodes/instant | Creates an instant episode
*OrsonApi* | [**createVoiceCanvas**](docs/Api/OrsonApi.md#createvoicecanvas) | **POST** /api/{version}/orson/ai/voiceCanvas | Create VoiceCanvas images
*OrsonApi* | [**emotion**](docs/Api/OrsonApi.md#emotion) | **POST** /api/{version}/orson/ai/emotion | Detect emotions
*OrsonApi* | [**getAddMovieResult**](docs/Api/OrsonApi.md#getaddmovieresult) | **GET** /api/{version}/orson/ai/addMovie/{requestId} | Get Add Movie Result
*OrsonApi* | [**getBatch**](docs/Api/OrsonApi.md#getbatch) | **GET** /api/{version}/orson/ai/batch/{requestId} | Get Batch Analysis Results
*OrsonApi* | [**getEmotion**](docs/Api/OrsonApi.md#getemotion) | **GET** /api/{version}/orson/ai/emotion/{requestId} | Get Emotion Results
*OrsonApi* | [**getEpisodeStatus**](docs/Api/OrsonApi.md#getepisodestatus) | **GET** /api/{version}/orson/stories/episodes/{episodeId}/status | Check episode status
*OrsonApi* | [**getRenderStatus**](docs/Api/OrsonApi.md#getrenderstatus) | **GET** /api/{version}/orson/stories/renders/{renderId}/status | Check episode status
*OrsonApi* | [**getSTT**](docs/Api/OrsonApi.md#getstt) | **GET** /api/{version}/orson/ai/stt/{requestId} | Get Speach to Text Result
*OrsonApi* | [**getTTS**](docs/Api/OrsonApi.md#gettts) | **GET** /api/{version}/orson/ai/tts/{requestId} | Get Text to Speach Result
*OrsonApi* | [**getTechTune**](docs/Api/OrsonApi.md#gettechtune) | **GET** /api/{version}/orson/ai/techTune/{requestId} | Get TechTune Results
*OrsonApi* | [**getTopics**](docs/Api/OrsonApi.md#gettopics) | **GET** /api/{version}/orson/ai/topics/{requestId} | Get Topics
*OrsonApi* | [**getVoiceCanvas**](docs/Api/OrsonApi.md#getvoicecanvas) | **GET** /api/{version}/orson/ai/voiceCanvas/{requestId} | Get VoiceCanvas images
*OrsonApi* | [**startVideoRender**](docs/Api/OrsonApi.md#startvideorender) | **POST** /api/{version}/orson/stories/renders | Starts a StoryStitch video render
*OrsonApi* | [**stt**](docs/Api/OrsonApi.md#stt) | **POST** /api/{version}/orson/ai/stt | Speach to Text
*OrsonApi* | [**summarizeTopics**](docs/Api/OrsonApi.md#summarizetopics) | **POST** /api/{version}/orson/ai/topics | Summarize Topics
*OrsonApi* | [**techTune**](docs/Api/OrsonApi.md#techtune) | **POST** /api/{version}/orson/ai/techTune | Detect Technical Issues
*OrsonApi* | [**tts**](docs/Api/OrsonApi.md#tts) | **POST** /api/{version}/orson/ai/tts | Text to Speach
*PackApi* | [**createPack**](docs/Api/PackApi.md#createpack) | **POST** /api/{version}/pack/create | Create Pack
*PackApi* | [**deletePack**](docs/Api/PackApi.md#deletepack) | **POST** /api/{version}/pack/delete | Delete Pack
*PackApi* | [**getPack**](docs/Api/PackApi.md#getpack) | **GET** /api/{version}/pack/get | Get Pack
*PackApi* | [**searchPacks**](docs/Api/PackApi.md#searchpacks) | **GET** /api/{version}/pack/search | Search Packs
*PackApi* | [**updatePack**](docs/Api/PackApi.md#updatepack) | **POST** /api/{version}/pack/update | Update Pack
*ParticipantsApi* | [**processAllParticipants**](docs/Api/ParticipantsApi.md#processallparticipants) | **POST** /api/{version}/participant/process/all | Process All Participant Feeds
*ParticipantsApi* | [**processParticipants**](docs/Api/ParticipantsApi.md#processparticipants) | **POST** /api/{version}/participant/process | Process Participants Feed
*PathingApi* | [**computePath**](docs/Api/PathingApi.md#computepath) | **GET** /api/{version}/pathing/compute | Calculate Path
*PostalCodeApi* | [**createPostalCode**](docs/Api/PostalCodeApi.md#createpostalcode) | **POST** /api/{version}/postalCode/create | Create Postal Code
*PostalCodeApi* | [**deletePostalCode**](docs/Api/PostalCodeApi.md#deletepostalcode) | **POST** /api/{version}/postalCode/delete | Delete Postal Code
*PostalCodeApi* | [**getPostalCode**](docs/Api/PostalCodeApi.md#getpostalcode) | **GET** /api/{version}/postalCode/get | Get Postal Code
*PostalCodeApi* | [**getPostalCodes**](docs/Api/PostalCodeApi.md#getpostalcodes) | **GET** /api/{version}/postalCode/search | Search Postal Codes
*PostalCodeApi* | [**updatePostalCode**](docs/Api/PostalCodeApi.md#updatepostalcode) | **POST** /api/{version}/postalCode/update | Update Postal Code
*PreviewPersonaApi* | [**createPersona**](docs/Api/PreviewPersonaApi.md#createpersona) | **POST** /api/{version}/persona/create | Create Persona
*PreviewPersonaApi* | [**deletePersona**](docs/Api/PreviewPersonaApi.md#deletepersona) | **POST** /api/{version}/persona/delete | Delete Persona
*PreviewPersonaApi* | [**getPersonaList**](docs/Api/PreviewPersonaApi.md#getpersonalist) | **GET** /api/{version}/persona/get | Get Persona
*PreviewPersonaApi* | [**searchPersona**](docs/Api/PreviewPersonaApi.md#searchpersona) | **GET** /api/{version}/persona/search | Search Personas
*PreviewPersonaApi* | [**updatePersona**](docs/Api/PreviewPersonaApi.md#updatepersona) | **POST** /api/{version}/persona/update | Update Persona
*ProgramApi* | [**createProgram**](docs/Api/ProgramApi.md#createprogram) | **POST** /api/{version}/program | Create Program
*ProgramApi* | [**deleteProgram**](docs/Api/ProgramApi.md#deleteprogram) | **DELETE** /api/{version}/program/{id} | Delete Program
*ProgramApi* | [**getProgram**](docs/Api/ProgramApi.md#getprogram) | **GET** /api/{version}/program/{id} | Get Program
*ProgramApi* | [**postProgram**](docs/Api/ProgramApi.md#postprogram) | **POST** /api/{version}/program/{id} | Update Program
*ProgramApi* | [**putProgram**](docs/Api/ProgramApi.md#putprogram) | **PUT** /api/{version}/program/{id} | Update Program
*ProgramApi* | [**searchPrograms**](docs/Api/ProgramApi.md#searchprograms) | **GET** /api/{version}/program | Search Programs
*PurchaseItemApi* | [**createPurchaseItem**](docs/Api/PurchaseItemApi.md#createpurchaseitem) | **POST** /api/{version}/purchase/create | Create Purchase
*PurchaseItemApi* | [**deletePurchaseItem**](docs/Api/PurchaseItemApi.md#deletepurchaseitem) | **POST** /api/{version}/purchase/delete | Delete Purchase
*PurchaseItemApi* | [**getPurchaseItem**](docs/Api/PurchaseItemApi.md#getpurchaseitem) | **GET** /api/{version}/purchase/get | Get Purchase
*PurchaseItemApi* | [**searchPurchaseItems**](docs/Api/PurchaseItemApi.md#searchpurchaseitems) | **GET** /api/{version}/purchase/search | Search Purchases
*PurchaseItemApi* | [**updatePurchaseItem**](docs/Api/PurchaseItemApi.md#updatepurchaseitem) | **POST** /api/{version}/purchase/update | Update Purchase
*PurchaseOrderApi* | [**createOrder**](docs/Api/PurchaseOrderApi.md#createorder) | **POST** /api/{version}/order/create | Create Order
*PurchaseOrderApi* | [**deleteOrder**](docs/Api/PurchaseOrderApi.md#deleteorder) | **POST** /api/{version}/order/delete | Delete Order
*PurchaseOrderApi* | [**getOrder**](docs/Api/PurchaseOrderApi.md#getorder) | **GET** /api/{version}/order/get | Get Order
*PurchaseOrderApi* | [**previewOrder**](docs/Api/PurchaseOrderApi.md#previeworder) | **POST** /api/{version}/order/preview | Preview Order
*PurchaseOrderApi* | [**searchOrders**](docs/Api/PurchaseOrderApi.md#searchorders) | **GET** /api/{version}/order/search | Search Orders
*PurchaseOrderApi* | [**updateOrder**](docs/Api/PurchaseOrderApi.md#updateorder) | **POST** /api/{version}/order/update | Update Order
*QuestionApi* | [**createQuestion**](docs/Api/QuestionApi.md#createquestion) | **POST** /api/{version}/game/question/create | Create Question
*QuestionApi* | [**deleteQuestion**](docs/Api/QuestionApi.md#deletequestion) | **POST** /api/{version}/game/question/delete | Delete Question
*QuestionApi* | [**getQuestion**](docs/Api/QuestionApi.md#getquestion) | **GET** /api/{version}/game/question/get | Get Question
*QuestionApi* | [**searchQuestions**](docs/Api/QuestionApi.md#searchquestions) | **GET** /api/{version}/game/question/search | Search Questions
*QuestionApi* | [**updateQuestion**](docs/Api/QuestionApi.md#updatequestion) | **POST** /api/{version}/game/question/update | Update Question
*RankingApi* | [**getHistoricalRankings**](docs/Api/RankingApi.md#gethistoricalrankings) | **GET** /api/{version}/ranking/historical/search | Search Historical Rankings
*RankingApi* | [**getRankings**](docs/Api/RankingApi.md#getrankings) | **GET** /api/{version}/ranking/search | Search Rankings
*RankingApi* | [**getUserRank**](docs/Api/RankingApi.md#getuserrank) | **POST** /api/{version}/ranking/personal/ranks | Get Personal Rankings
*RankingApi* | [**overrideUserRank**](docs/Api/RankingApi.md#overrideuserrank) | **POST** /api/{version}/ranking/override | Override User Rank
*RankingApi* | [**updateRankings**](docs/Api/RankingApi.md#updaterankings) | **POST** /api/{version}/ranking/update | Update Ranking
*RatingApi* | [**createRating**](docs/Api/RatingApi.md#createrating) | **POST** /api/{version}/rating/create | Create Rating
*RatingApi* | [**deleteRating**](docs/Api/RatingApi.md#deleterating) | **POST** /api/{version}/rating/delete | Delete Rating
*RatingApi* | [**searchLocationRatingIndexes**](docs/Api/RatingApi.md#searchlocationratingindexes) | **GET** /api/{version}/location/rating/index/search | Search Location Rating Indexes
*RatingApi* | [**searchRatingIndexes**](docs/Api/RatingApi.md#searchratingindexes) | **GET** /api/{version}/rating/index/search | Search Rating Indexes
*RatingApi* | [**searchRatings**](docs/Api/RatingApi.md#searchratings) | **GET** /api/{version}/rating/search | Search Ratings
*RatingApi* | [**updateRating**](docs/Api/RatingApi.md#updaterating) | **POST** /api/{version}/rating/update | Update Rating
*RegionApi* | [**createRegion**](docs/Api/RegionApi.md#createregion) | **POST** /api/{version}/region/create | Create Region
*RegionApi* | [**deleteRegion**](docs/Api/RegionApi.md#deleteregion) | **POST** /api/{version}/region/delete | Delete Region
*RegionApi* | [**getRegion**](docs/Api/RegionApi.md#getregion) | **GET** /api/{version}/region/get | Get Region
*RegionApi* | [**searchRegions**](docs/Api/RegionApi.md#searchregions) | **GET** /api/{version}/region/search | Search Regions
*RegionApi* | [**updateRegion**](docs/Api/RegionApi.md#updateregion) | **POST** /api/{version}/region/update | Update Region
*ReportingApi* | [**createBatch**](docs/Api/ReportingApi.md#createbatch) | **POST** /api/{version}/report/batch/create | Create Offline Report
*ReportingApi* | [**createRegionLegSummaryBatch**](docs/Api/ReportingApi.md#createregionlegsummarybatch) | **POST** /api/{version}/report/region/summary/batch | Create Offline Report
*ReportingApi* | [**deleteBatch**](docs/Api/ReportingApi.md#deletebatch) | **POST** /api/{version}/report/batch/delete | Delete Offline Report
*ReportingApi* | [**getReportBatch**](docs/Api/ReportingApi.md#getreportbatch) | **GET** /api/{version}/report/batch/get | Get Offline Report
*ReportingApi* | [**runReport**](docs/Api/ReportingApi.md#runreport) | **POST** /api/{version}/report/run | Run Report
*ReportingApi* | [**searchBatch**](docs/Api/ReportingApi.md#searchbatch) | **GET** /api/{version}/report/batch/search | Search Offline Reports
*ReservationApi* | [**createReservation**](docs/Api/ReservationApi.md#createreservation) | **POST** /api/{version}/reservation/create | Create Reservation
*ReservationApi* | [**deleteReservation**](docs/Api/ReservationApi.md#deletereservation) | **POST** /api/{version}/reservation/delete | Delete Reservation
*ReservationApi* | [**reservableAvailability**](docs/Api/ReservationApi.md#reservableavailability) | **POST** /api/{version}/reservable/availability/update | Update Availability
*ReservationApi* | [**searchAvailability**](docs/Api/ReservationApi.md#searchavailability) | **GET** /api/{version}/reservable/availability/search | Search Availability
*ReservationApi* | [**searchReservations**](docs/Api/ReservationApi.md#searchreservations) | **GET** /api/{version}/reservation/search | Search Reservations
*ReservationApi* | [**searchSchedule**](docs/Api/ReservationApi.md#searchschedule) | **GET** /api/{version}/reservable/schedule/search | Search Schedule
*RetailerApi* | [**createRetailer**](docs/Api/RetailerApi.md#createretailer) | **POST** /api/{version}/retailer/create | Create Retailer
*RetailerApi* | [**deleteRetailer**](docs/Api/RetailerApi.md#deleteretailer) | **POST** /api/{version}/retailer/delete | Delete Retailer
*RetailerApi* | [**getRetailer**](docs/Api/RetailerApi.md#getretailer) | **GET** /api/{version}/retailer/get | Get Retailer
*RetailerApi* | [**getRetailers**](docs/Api/RetailerApi.md#getretailers) | **GET** /api/{version}/retailer/search | Search Retailers
*RetailerApi* | [**retailerLoginCheck**](docs/Api/RetailerApi.md#retailerlogincheck) | **POST** /api/{version}/retailer/login | Login Retailer
*RetailerApi* | [**updateRetailer**](docs/Api/RetailerApi.md#updateretailer) | **POST** /api/{version}/retailer/update | Update Retailer
*RetailerLocationApi* | [**createRetailerLocationConsumer**](docs/Api/RetailerLocationApi.md#createretailerlocationconsumer) | **POST** /api/{version}/location/create | Create Retailer Location (Consumer)
*RetailerLocationApi* | [**createRetailerLocations**](docs/Api/RetailerLocationApi.md#createretailerlocations) | **POST** /api/{version}/retailer/location/create | Create Retailer Location
*RetailerLocationApi* | [**deleteRetailerLocation**](docs/Api/RetailerLocationApi.md#deleteretailerlocation) | **POST** /api/{version}/retailer/location/delete | Delete Retailer Location
*RetailerLocationApi* | [**getRetailerLocation**](docs/Api/RetailerLocationApi.md#getretailerlocation) | **GET** /api/{version}/retailer/location/get | Get Retailer Location
*RetailerLocationApi* | [**getRetailerLocationConsumer**](docs/Api/RetailerLocationApi.md#getretailerlocationconsumer) | **GET** /api/{version}/location/get | Get Retailer Location (Consumer)
*RetailerLocationApi* | [**indexedRetailerLocationDistanceSearch**](docs/Api/RetailerLocationApi.md#indexedretailerlocationdistancesearch) | **GET** /api/{version}/retailer/location/idistancesearch | Distance Search Retailer Locations (Indexed)
*RetailerLocationApi* | [**indexedRetailerLocationSearch**](docs/Api/RetailerLocationApi.md#indexedretailerlocationsearch) | **GET** /api/{version}/retailer/location/isearch | Keyword Search Retailer Locations (Indexed)
*RetailerLocationApi* | [**searchRetailerLocations**](docs/Api/RetailerLocationApi.md#searchretailerlocations) | **GET** /api/{version}/retailer/location/search | Search Retailer Locations (Owned)
*RetailerLocationApi* | [**updateRetailerLocations**](docs/Api/RetailerLocationApi.md#updateretailerlocations) | **POST** /api/{version}/retailer/location/update | Update Retailer Location
*RetailerV2Api* | [**getRetaokiler**](docs/Api/RetailerV2Api.md#getretaokiler) | **GET** /api/{version}/retailer | Get Retailer
*RouteApi* | [**approveRoute**](docs/Api/RouteApi.md#approveroute) | **POST** /api/{version}/route/{routeId}/approve | Approve Route
*RouteApi* | [**copyRoute**](docs/Api/RouteApi.md#copyroute) | **POST** /api/{version}/route/{routeId}/copy | Copy Route
*RouteApi* | [**createRoute**](docs/Api/RouteApi.md#createroute) | **POST** /api/{version}/route | Create Route
*RouteApi* | [**createRouteDirections**](docs/Api/RouteApi.md#createroutedirections) | **PUT** /api/{version}/route/{routeId}/directions | Update Route Directions
*RouteApi* | [**createRoutePolyline**](docs/Api/RouteApi.md#createroutepolyline) | **PUT** /api/{version}/route/{routeId}/polyline | Create Route Polyline
*RouteApi* | [**deleteRoute**](docs/Api/RouteApi.md#deleteroute) | **DELETE** /api/{version}/route/{routeId} | Delete Route
*RouteApi* | [**disapproveRoute**](docs/Api/RouteApi.md#disapproveroute) | **POST** /api/{version}/route/{routeId}/disapprove | Disapprove Route
*RouteApi* | [**getRoute**](docs/Api/RouteApi.md#getroute) | **GET** /api/{version}/route/{routeId} | Get Route
*RouteApi* | [**getRouteDirections**](docs/Api/RouteApi.md#getroutedirections) | **GET** /api/{version}/route/{routeId}/directions | Get Route Directions
*RouteApi* | [**getRouteShipments**](docs/Api/RouteApi.md#getrouteshipments) | **GET** /api/{version}/route/{routeId}/shipments | Get Route Shipments
*RouteApi* | [**getRouteStop**](docs/Api/RouteApi.md#getroutestop) | **GET** /api/{version}/route/{routeId}/stop/{stopId} | Get Route Stop
*RouteApi* | [**getRouteStops**](docs/Api/RouteApi.md#getroutestops) | **GET** /api/{version}/route/{routeId}/stops | Get Route Stops
*RouteApi* | [**getShipmentsAtStop**](docs/Api/RouteApi.md#getshipmentsatstop) | **GET** /api/{version}/route/{routeId}/stop/{stopId}/shipments | Get Shipments At Stop
*RouteApi* | [**optimizeRoute**](docs/Api/RouteApi.md#optimizeroute) | **POST** /api/{version}/route/{routeId}/optimize | Optimize Route
*RouteApi* | [**removeStop**](docs/Api/RouteApi.md#removestop) | **DELETE** /api/{version}/route/{routeId}/stop/{stopId} | Delete Stop
*RouteApi* | [**reorderRouteStopsPatch**](docs/Api/RouteApi.md#reorderroutestopspatch) | **PATCH** /api/{version}/route/{routeId}/stops/reorder | Reorder Route Stops
*RouteApi* | [**reorderRouteStopsPost**](docs/Api/RouteApi.md#reorderroutestopspost) | **POST** /api/{version}/route/{routeId}/stops/reorder | Reorder Route Stops
*RouteApi* | [**searchRoutes**](docs/Api/RouteApi.md#searchroutes) | **GET** /api/{version}/route | Search Routes
*RouteApi* | [**setDriver**](docs/Api/RouteApi.md#setdriver) | **POST** /api/{version}/route/{id}/driver/{driverId} | Set Driver
*RouteApi* | [**updateRoute**](docs/Api/RouteApi.md#updateroute) | **PUT** /api/{version}/route/{routeId} | Update Route
*RouteApi* | [**updateRouteStop**](docs/Api/RouteApi.md#updateroutestop) | **PUT** /api/{version}/route/{routeId}/stop/{stopId} | Update Route Stop
*RouteSettingApi* | [**createRouteSettings**](docs/Api/RouteSettingApi.md#createroutesettings) | **POST** /api/{version}/route/setting | Create Route Setting
*RouteSettingApi* | [**deleteRouteSettings**](docs/Api/RouteSettingApi.md#deleteroutesettings) | **DELETE** /api/{version}/route/setting/{routeSettingsId} | Delete Route Setting
*RouteSettingApi* | [**getRouteSettings**](docs/Api/RouteSettingApi.md#getroutesettings) | **GET** /api/{version}/route/setting/{routeSettingsId} | Get Route Setting
*RouteSettingApi* | [**searchRouteSettings**](docs/Api/RouteSettingApi.md#searchroutesettings) | **GET** /api/{version}/route/setting | Search Route Settings
*RouteSettingApi* | [**updateRouteSettings**](docs/Api/RouteSettingApi.md#updateroutesettings) | **PUT** /api/{version}/route/setting/{routeSettingsId} | Update Route Setting
*RoutingApi* | [**computeRouting**](docs/Api/RoutingApi.md#computerouting) | **POST** /api/{version}/routing/compute | Compute Route
*ScheduledNotificationApi* | [**createScheduledNotification**](docs/Api/ScheduledNotificationApi.md#createschedulednotification) | **POST** /api/{version}/notification/schedule/create | Create Scheduled Notification
*ScheduledNotificationApi* | [**deleteScheduledNotification**](docs/Api/ScheduledNotificationApi.md#deleteschedulednotification) | **POST** /api/{version}/notification/schedule/delete | Delete Scheduled Notification
*ScheduledNotificationApi* | [**getScheduledNotification**](docs/Api/ScheduledNotificationApi.md#getschedulednotification) | **GET** /api/{version}/notification/schedule/get | Get Scheduled Notification
*ScheduledNotificationApi* | [**scheduleNotificationListings**](docs/Api/ScheduledNotificationApi.md#schedulenotificationlistings) | **POST** /api/{version}/notification/schedule/generate | Generate Schedule Notifications
*ScheduledNotificationApi* | [**searchScheduledNotifications**](docs/Api/ScheduledNotificationApi.md#searchschedulednotifications) | **GET** /api/{version}/notification/schedule/search | Search Scheduled Notifications
*ScheduledNotificationApi* | [**updateScheduledNotification**](docs/Api/ScheduledNotificationApi.md#updateschedulednotification) | **POST** /api/{version}/notification/schedule/update | Update Scheduled Notification
*ScoreApi* | [**createScore**](docs/Api/ScoreApi.md#createscore) | **POST** /api/{version}/score/create | Create Score
*ScoreApi* | [**getScore**](docs/Api/ScoreApi.md#getscore) | **GET** /api/{version}/score/get | Get Score
*ScoreApi* | [**searchScores**](docs/Api/ScoreApi.md#searchscores) | **GET** /api/{version}/score/search | Search Score
*SecureAppApi* | [**createSecureApplication**](docs/Api/SecureAppApi.md#createsecureapplication) | **POST** /api/{version}/secure/application/create | Create Secure Application
*SecureAppApi* | [**deleteSecureApplication**](docs/Api/SecureAppApi.md#deletesecureapplication) | **POST** /api/{version}/secure/application/delete | Delete Secure Application
*SecureAppApi* | [**loginSecure**](docs/Api/SecureAppApi.md#loginsecure) | **POST** /api/{version}/secure/login | Login Clear
*SecureAppApi* | [**purchaseSecure**](docs/Api/SecureAppApi.md#purchasesecure) | **POST** /api/{version}/secure/purchase | Purchase Clear
*SecureAppApi* | [**resetSecure**](docs/Api/SecureAppApi.md#resetsecure) | **POST** /api/{version}/secure/application/reset | Rest Secure Application
*SecureAppApi* | [**updateSecureApplication**](docs/Api/SecureAppApi.md#updatesecureapplication) | **POST** /api/{version}/secure/application/update | Update Secure Application
*ServiceHubApi* | [**createServiceHub**](docs/Api/ServiceHubApi.md#createservicehub) | **POST** /api/{version}/hub | Create Service Hub
*ServiceHubApi* | [**deleteServiceHub**](docs/Api/ServiceHubApi.md#deleteservicehub) | **DELETE** /api/{version}/hub/{id} | Delete Service Hub
*ServiceHubApi* | [**getServiceHub**](docs/Api/ServiceHubApi.md#getservicehub) | **GET** /api/{version}/hub/{id} | Get Service Hub
*ServiceHubApi* | [**postServiceHub**](docs/Api/ServiceHubApi.md#postservicehub) | **POST** /api/{version}/hub/{id} | Update Service Hub
*ServiceHubApi* | [**putServiceHub**](docs/Api/ServiceHubApi.md#putservicehub) | **PUT** /api/{version}/hub/{id} | Update Service Hub
*ServiceHubApi* | [**searchServiceHubs**](docs/Api/ServiceHubApi.md#searchservicehubs) | **GET** /api/{version}/hub | Search Service Hubs
*ShipmentApi* | [**cancelShipment**](docs/Api/ShipmentApi.md#cancelshipment) | **POST** /api/{version}/shipment/{id}/cancel | Cancel Shipment
*ShipmentApi* | [**createShipment**](docs/Api/ShipmentApi.md#createshipment) | **POST** /api/{version}/shipment | Create Shipment
*ShipmentApi* | [**deleteShipment**](docs/Api/ShipmentApi.md#deleteshipment) | **DELETE** /api/{version}/shipment/{id} | Delete Shipment
*ShipmentApi* | [**getShipment**](docs/Api/ShipmentApi.md#getshipment) | **GET** /api/{version}/shipment/{id} | Get Shipment
*ShipmentApi* | [**searchShipments**](docs/Api/ShipmentApi.md#searchshipments) | **GET** /api/{version}/shipment | Search Shipments
*ShipmentApi* | [**updateShipment**](docs/Api/ShipmentApi.md#updateshipment) | **PUT** /api/{version}/shipment/{id} | Update Shipment
*ShipmentApi* | [**updateShipmentStatus**](docs/Api/ShipmentApi.md#updateshipmentstatus) | **POST** /api/{version}/shipment/{id}/status | Uupdate Shipment Status
*ShipmentBatchApi* | [**createShipmentBatch**](docs/Api/ShipmentBatchApi.md#createshipmentbatch) | **POST** /api/{version}/shipment/batch | Create Shipment Batch
*ShipmentBatchApi* | [**deleteShipmentBatch**](docs/Api/ShipmentBatchApi.md#deleteshipmentbatch) | **DELETE** /api/{version}/shipment/batch/{batchId} | Delete Shipment Batch
*ShipmentBatchApi* | [**getShipmentBatch**](docs/Api/ShipmentBatchApi.md#getshipmentbatch) | **GET** /api/{version}/shipment/batch/{batchId} | Get Shipment Batch
*ShipmentBatchApi* | [**getShipmentBatchStatus**](docs/Api/ShipmentBatchApi.md#getshipmentbatchstatus) | **GET** /api/{version}/shipment/batch/{batchId}/status | Get Shipment Batch Status
*ShipmentBatchApi* | [**searchShipmentBatch**](docs/Api/ShipmentBatchApi.md#searchshipmentbatch) | **GET** /api/{version}/shipment/batch | Search Shipment Batch
*SimulationApi* | [**simulation**](docs/Api/SimulationApi.md#simulation) | **POST** /api/{version}/simulation/routing | Routing Simulation
*StopApi* | [**getStop**](docs/Api/StopApi.md#getstop) | **GET** /api/{version}/stop/{id} | Get Stop
*StopApi* | [**updateStop**](docs/Api/StopApi.md#updatestop) | **PUT** /api/{version}/stop/{id} | Update Stop
*StripeApi* | [**createStripeCheckoutSession**](docs/Api/StripeApi.md#createstripecheckoutsession) | **POST** /api/{version}/stripe/checkout/session/create | Create Stripe Checkout Session
*SubscriptionApi* | [**createSubscription**](docs/Api/SubscriptionApi.md#createsubscription) | **POST** /api/{version}/subscription/create | Create Subscription
*SubscriptionApi* | [**deleteSubscription**](docs/Api/SubscriptionApi.md#deletesubscription) | **POST** /api/{version}/subscription/delete | Delete Subscription
*SubscriptionApi* | [**getSubscription**](docs/Api/SubscriptionApi.md#getsubscription) | **GET** /api/{version}/subscription/get | Get Subscription
*SubscriptionApi* | [**getSubscriptionPlan**](docs/Api/SubscriptionApi.md#getsubscriptionplan) | **GET** /api/{version}/subscription/plan/get | Get Subscription Plan
*SubscriptionApi* | [**getSubscriptionPlans**](docs/Api/SubscriptionApi.md#getsubscriptionplans) | **GET** /api/{version}/subscription/plan/list | List Subscription Plans
*SubscriptionApi* | [**getSubscriptionUsage**](docs/Api/SubscriptionApi.md#getsubscriptionusage) | **GET** /api/{version}/subscription/usage/get | Get Subscription Usage
*SubscriptionApi* | [**updateSubscription**](docs/Api/SubscriptionApi.md#updatesubscription) | **POST** /api/{version}/subscription/update | Update Subscription
*TaskApi* | [**createTask**](docs/Api/TaskApi.md#createtask) | **POST** /api/{version}/task/create | Create Task
*TaskApi* | [**deleteTask**](docs/Api/TaskApi.md#deletetask) | **POST** /api/{version}/task/delete | Delete Task
*TaskApi* | [**getTask**](docs/Api/TaskApi.md#gettask) | **GET** /api/{version}/task/get | Get Task
*TaskApi* | [**searchTasks**](docs/Api/TaskApi.md#searchtasks) | **GET** /api/{version}/task/search | Search Tasks
*TaskApi* | [**updateTask**](docs/Api/TaskApi.md#updatetask) | **POST** /api/{version}/task/update | Update Task
*TerritoryApi* | [**createTerritory**](docs/Api/TerritoryApi.md#createterritory) | **POST** /api/{version}/territory/create | Create Territory
*TerritoryApi* | [**deleteTerritory**](docs/Api/TerritoryApi.md#deleteterritory) | **POST** /api/{version}/territory/delete | Delete Territory
*TerritoryApi* | [**getTerritory**](docs/Api/TerritoryApi.md#getterritory) | **GET** /api/{version}/territory/get | Get Territory
*TerritoryApi* | [**searchTerritories**](docs/Api/TerritoryApi.md#searchterritories) | **GET** /api/{version}/territory/search | Search Territories
*TerritoryApi* | [**updateTerritory**](docs/Api/TerritoryApi.md#updateterritory) | **POST** /api/{version}/territory/update | Update Territory
*ThemeDescriptorApi* | [**addOrUpdateThemeDescriptor**](docs/Api/ThemeDescriptorApi.md#addorupdatethemedescriptor) | **POST** /api/{version}/consumer/theme | Create/Update Theme
*ThemeDescriptorApi* | [**getThemeDescriptor**](docs/Api/ThemeDescriptorApi.md#getthemedescriptor) | **GET** /api/{version}/consumer/theme/get | Get Theme
*ThemeDescriptorApi* | [**getThemeDescriptors**](docs/Api/ThemeDescriptorApi.md#getthemedescriptors) | **GET** /api/{version}/consumer/theme/search | Search Themes
*ThemeDescriptorApi* | [**removeThemeDescriptor**](docs/Api/ThemeDescriptorApi.md#removethemedescriptor) | **POST** /api/{version}/consumer/theme/remove | Delete Theme
*ThirdPartyCredentialsApi* | [**createCredential**](docs/Api/ThirdPartyCredentialsApi.md#createcredential) | **POST** /api/{version}/thirdparty/credential/create | Create Credential
*ThirdPartyCredentialsApi* | [**createNetwork**](docs/Api/ThirdPartyCredentialsApi.md#createnetwork) | **POST** /api/{version}/thirdparty/network/create | Create Network
*ThirdPartyCredentialsApi* | [**deleteCredential**](docs/Api/ThirdPartyCredentialsApi.md#deletecredential) | **POST** /api/{version}/thirdparty/credential/delete | Delete Credential
*ThirdPartyCredentialsApi* | [**deleteNetwork**](docs/Api/ThirdPartyCredentialsApi.md#deletenetwork) | **POST** /api/{version}/thirdparty/network/delete | Delete Network
*ThirdPartyCredentialsApi* | [**getCredential**](docs/Api/ThirdPartyCredentialsApi.md#getcredential) | **POST** /api/{version}/thirdparty/credential/get | Get Credential
*ThirdPartyCredentialsApi* | [**getNetwork**](docs/Api/ThirdPartyCredentialsApi.md#getnetwork) | **GET** /api/{version}/thirdparty/network/get | Get Network
*ThirdPartyCredentialsApi* | [**searchCredentials**](docs/Api/ThirdPartyCredentialsApi.md#searchcredentials) | **GET** /api/{version}/thirdparty/credential/search | Search Credentials
*ThirdPartyCredentialsApi* | [**searchNetworks**](docs/Api/ThirdPartyCredentialsApi.md#searchnetworks) | **GET** /api/{version}/thirdparty/network/search | Search Networks
*ThirdPartyCredentialsApi* | [**sendMFAChallenge**](docs/Api/ThirdPartyCredentialsApi.md#sendmfachallenge) | **POST** /api/{version}/thirdparty/credential/mfa/send | Send MFA Challenge
*ThirdPartyCredentialsApi* | [**updateCredential**](docs/Api/ThirdPartyCredentialsApi.md#updatecredential) | **POST** /api/{version}/thirdparty/credential/update | Update Credential
*ThirdPartyCredentialsApi* | [**updateNetwork**](docs/Api/ThirdPartyCredentialsApi.md#updatenetwork) | **POST** /api/{version}/thirdparty/network/update | Update Network
*TicketApi* | [**getTicketCount**](docs/Api/TicketApi.md#getticketcount) | **GET** /api/{version}/ticket/count | Get Ticket Count
*TicketApi* | [**getTicketList**](docs/Api/TicketApi.md#getticketlist) | **GET** /api/{version}/ticket/getList | Get Ticket List
*TicketApi* | [**giftPurchase**](docs/Api/TicketApi.md#giftpurchase) | **POST** /api/{version}/purchase/gift | Gift Tickets
*TicketApi* | [**saveTicket**](docs/Api/TicketApi.md#saveticket) | **POST** /api/{version}/ticket/save | Save Ticket
*TicketApi* | [**saveTicketViaFileUpload**](docs/Api/TicketApi.md#saveticketviafileupload) | **POST** /api/{version}/ticket/save/fileUpload | Save Ticket with Reciept
*TicketApi* | [**ticketOffers**](docs/Api/TicketApi.md#ticketoffers) | **GET** /api/{version}/ticket/ticketoffers | Get Ticket Offers
*TournamentApi* | [**createTournament**](docs/Api/TournamentApi.md#createtournament) | **POST** /api/{version}/tournament/create | Create Tournament
*TournamentApi* | [**deleteTournament**](docs/Api/TournamentApi.md#deletetournament) | **POST** /api/{version}/tournament/delete | Delete Tournament
*TournamentApi* | [**getTournament**](docs/Api/TournamentApi.md#gettournament) | **GET** /api/{version}/tournament/get | Get Tournament
*TournamentApi* | [**searchObjects**](docs/Api/TournamentApi.md#searchobjects) | **GET** /api/{version}/tournament/object/search | Search Tournament Objects
*TournamentApi* | [**searchRounds**](docs/Api/TournamentApi.md#searchrounds) | **GET** /api/{version}/tournament/round/search | Search Tournament Rounds
*TournamentApi* | [**searchTournaments**](docs/Api/TournamentApi.md#searchtournaments) | **GET** /api/{version}/tournament/search | Search Tournaments
*TournamentApi* | [**submitTournamentScore**](docs/Api/TournamentApi.md#submittournamentscore) | **POST** /api/{version}/tournament/score | Submit Tournament Score
*TournamentApi* | [**submitTournamentVote**](docs/Api/TournamentApi.md#submittournamentvote) | **POST** /api/{version}/tournament/vote | Submit a vote for a multi-stage album tournament.
*TournamentApi* | [**substituteTournamentPlayer**](docs/Api/TournamentApi.md#substitutetournamentplayer) | **POST** /api/{version}/tournament/substitute | Substitute Tournament Player
*TournamentApi* | [**updateTournament**](docs/Api/TournamentApi.md#updatetournament) | **POST** /api/{version}/tournament/update | Update Tournament
*TrackingApi* | [**batchSaveTracking**](docs/Api/TrackingApi.md#batchsavetracking) | **POST** /api/{version}/tracking/batch/create | Create Batch Tracking
*TrackingApi* | [**getPredictedLocations**](docs/Api/TrackingApi.md#getpredictedlocations) | **GET** /api/{version}/tracking/predicted/get | Get Predicted Locations
*TrackingApi* | [**getPredictedPath**](docs/Api/TrackingApi.md#getpredictedpath) | **GET** /api/{version}/tracking/path/get | Get Tracking Path
*TrackingApi* | [**getPreferredLocations**](docs/Api/TrackingApi.md#getpreferredlocations) | **GET** /api/{version}/tracking/preferred/search | Search Preferred Locations
*TrackingApi* | [**getTrackingLegs**](docs/Api/TrackingApi.md#gettrackinglegs) | **GET** /api/{version}/tracking/search | Search Tracking
*TrackingApi* | [**saveTrackingLeg**](docs/Api/TrackingApi.md#savetrackingleg) | **POST** /api/{version}/tracking/leg/create | Create Tracking Leg
*TrackingApi* | [**saveTrackingStep**](docs/Api/TrackingApi.md#savetrackingstep) | **POST** /api/{version}/tracking/step/create | Create Tracking Step
*TrackingApi* | [**searchAccountsWithTrackingLegs**](docs/Api/TrackingApi.md#searchaccountswithtrackinglegs) | **GET** /api/{version}/tracking/list | List Tracking
*TrackingApi* | [**searchTrackingLegs**](docs/Api/TrackingApi.md#searchtrackinglegs) | **GET** /api/{version}/tracking/searchByBillable | Search Tracking (Billable)
*TriggerApi* | [**createTrigger**](docs/Api/TriggerApi.md#createtrigger) | **POST** /api/{version}/trigger/create | Create Trigger
*TriggerApi* | [**deleteTrigger**](docs/Api/TriggerApi.md#deletetrigger) | **POST** /api/{version}/trigger/delete | Delete Trigger
*TriggerApi* | [**getTrigger**](docs/Api/TriggerApi.md#gettrigger) | **GET** /api/{version}/trigger/get | Get Trigger
*TriggerApi* | [**searchTriggers**](docs/Api/TriggerApi.md#searchtriggers) | **GET** /api/{version}/trigger/search | Search Triggers
*TriggerApi* | [**updateTrigger**](docs/Api/TriggerApi.md#updatetrigger) | **POST** /api/{version}/trigger/update | Update Trigger
*TripApi* | [**createTrip**](docs/Api/TripApi.md#createtrip) | **POST** /api/{version}/trip | Create Trip
*TripApi* | [**delete**](docs/Api/TripApi.md#delete) | **DELETE** /api/{version}/trip/{id} | Delete Trip
*TripApi* | [**driveTrip**](docs/Api/TripApi.md#drivetrip) | **POST** /api/{version}/trip/{id}/drive | Set Trip Preference Driver
*TripApi* | [**flexibleTrip**](docs/Api/TripApi.md#flexibletrip) | **POST** /api/{version}/trip/{id}/flexible | Set Trip Preference Flexible
*TripApi* | [**getTrip**](docs/Api/TripApi.md#gettrip) | **GET** /api/{version}/trip/{id} | Get Trip
*TripApi* | [**getTripMatches**](docs/Api/TripApi.md#gettripmatches) | **GET** /api/{version}/trip/{id}/match | Get Trip Matches
*TripApi* | [**processTripMatches**](docs/Api/TripApi.md#processtripmatches) | **POST** /api/{version}/trip/match/process | Process Trip Matches
*TripApi* | [**ride**](docs/Api/TripApi.md#ride) | **POST** /api/{version}/trip/{id}/ride | Set Trip Preference Rider
*TripApi* | [**search**](docs/Api/TripApi.md#search) | **GET** /api/{version}/trip | Search Trips
*TripApi* | [**searchTrips**](docs/Api/TripApi.md#searchtrips) | **GET** /api/{version}/trip/match | Search Trips
*TripApi* | [**updateLocations**](docs/Api/TripApi.md#updatelocations) | **POST** /api/{version}/trip/{id}/locations | Update Trip Locations
*TripApi* | [**updateRecurrenceLocations**](docs/Api/TripApi.md#updaterecurrencelocations) | **POST** /api/{version}/trip/{id}/locations/recurrence | Update Recurrence Locations
*TripApi* | [**updateRecurrenceShipments**](docs/Api/TripApi.md#updaterecurrenceshipments) | **POST** /api/{version}/trip/{id}/shipments/recurrence | Update Recurrence Shipments
*TripApi* | [**updateShipments**](docs/Api/TripApi.md#updateshipments) | **POST** /api/{version}/trip/{id}/shipments | Update Trip Shipments
*TripApi* | [**updateTrip**](docs/Api/TripApi.md#updatetrip) | **PUT** /api/{version}/trip/{id} | Update Trip
*TripApi* | [**updateTripNotifications**](docs/Api/TripApi.md#updatetripnotifications) | **POST** /api/{version}/trip/notifications | Trip Notifications
*TwilioApi* | [**smsBuyOffer**](docs/Api/TwilioApi.md#smsbuyoffer) | **POST** /api/{version}/sms/buyoffer/{appKey} | Buy Offer by SMS
*TwitterApi* | [**authorizeTwitter**](docs/Api/TwitterApi.md#authorizetwitter) | **POST** /api/{version}/twitter/authorize | Authorize Twitter
*TwitterApi* | [**loginTwitter**](docs/Api/TwitterApi.md#logintwitter) | **POST** /api/{version}/twitter/login | Login Twitter
*UserPermissionsApi* | [**addUsersToPermissionable**](docs/Api/UserPermissionsApi.md#adduserstopermissionable) | **POST** /api/{version}/consumer/permissions/add | Add User
*UserPermissionsApi* | [**approvePermissionable**](docs/Api/UserPermissionsApi.md#approvepermissionable) | **POST** /api/{version}/permissionable/approve | Approve Permissionable
*UserPermissionsApi* | [**leaveFromPermissionable**](docs/Api/UserPermissionsApi.md#leavefrompermissionable) | **POST** /api/{version}/consumer/permissions/leave | Leave
*UserPermissionsApi* | [**removeUsersFromPermissionable**](docs/Api/UserPermissionsApi.md#removeusersfrompermissionable) | **POST** /api/{version}/consumer/permissions/remove | Remove User
*UserPermissionsApi* | [**searchPermissionables**](docs/Api/UserPermissionsApi.md#searchpermissionables) | **GET** /api/{version}/permissions/search | Search Permissionables
*UserPermissionsApi* | [**searchPermissionablesFollowingDistance**](docs/Api/UserPermissionsApi.md#searchpermissionablesfollowingdistance) | **GET** /api/{version}/permissions/distancesearch | Search Permissionables by Distnace
*VatomApi* | [**createFollowing**](docs/Api/VatomApi.md#createfollowing) | **POST** /api/{version}/vatom/me/rels/following/create | Create following
*VatomApi* | [**createSpace**](docs/Api/VatomApi.md#createspace) | **POST** /api/{version}/vatom/b/spaces/create | Create Vatom Space
*VatomApi* | [**createVatomEvent**](docs/Api/VatomApi.md#createvatomevent) | **POST** /api/{version}/vatom/b/events/create | Create Vatom Event
*VatomApi* | [**deleteFollowing**](docs/Api/VatomApi.md#deletefollowing) | **POST** /api/{version}/vatom/me/rels/following/delete | Delete following
*VatomApi* | [**deletePointsBalance**](docs/Api/VatomApi.md#deletepointsbalance) | **POST** /api/{version}/vatom/b/campaign/points/delete | Reset All Points Balance
*VatomApi* | [**deleteSpace**](docs/Api/VatomApi.md#deletespace) | **POST** /api/{version}/vatom/b/spaces/delete | Delete Vatom Space
*VatomApi* | [**deleteVatomEvent**](docs/Api/VatomApi.md#deletevatomevent) | **POST** /api/{version}/vatom/b/events/delete | Delete Vatom Event
*VatomApi* | [**deleteVatomNFT**](docs/Api/VatomApi.md#deletevatomnft) | **POST** /api/{version}/vatom/vatoms/delete | Delete Vatom NFT
*VatomApi* | [**executeActionOnNFT**](docs/Api/VatomApi.md#executeactiononnft) | **POST** /api/{version}/vatom/vatoms/execute-action | Execute Action on NFT
*VatomApi* | [**geomapSearch**](docs/Api/VatomApi.md#geomapsearch) | **GET** /api/{version}/vatom/vatoms/geo-map/search | Search Vatom Geo Map
*VatomApi* | [**getBusinessBehaviors**](docs/Api/VatomApi.md#getbusinessbehaviors) | **GET** /api/{version}/vatom/b/behaviors | Get Vatom Business Behaviors
*VatomApi* | [**getBusinessCoinsBalance**](docs/Api/VatomApi.md#getbusinesscoinsbalance) | **GET** /api/{version}/vatom/b/coins/get | Get the coins for a Business
*VatomApi* | [**getBusinessIds**](docs/Api/VatomApi.md#getbusinessids) | **GET** /api/{version}/vatom/me/businesses | Get the user business ids
*VatomApi* | [**getBusinessInfo**](docs/Api/VatomApi.md#getbusinessinfo) | **GET** /api/{version}/vatom/b/get | Get Vatom Business Info
*VatomApi* | [**getBusinessUsers**](docs/Api/VatomApi.md#getbusinessusers) | **GET** /api/{version}/vatom/b/users | Get Vatom Business Users
*VatomApi* | [**getCampaignGroupEntities**](docs/Api/VatomApi.md#getcampaigngroupentities) | **GET** /api/{version}/vatom/b/campaign-groups/entities | Get Campaign Group Entities
*VatomApi* | [**getCampaignGroupRules**](docs/Api/VatomApi.md#getcampaigngrouprules) | **GET** /api/{version}/vatom/b/campaign-groups/rules | Get Campaign Group Rules
*VatomApi* | [**getCampaignGroupStats**](docs/Api/VatomApi.md#getcampaigngroupstats) | **GET** /api/{version}/vatom/b/campaign-groups/stats | Get Campaign Group Stats
*VatomApi* | [**getCampaignInfo**](docs/Api/VatomApi.md#getcampaigninfo) | **GET** /api/{version}/vatom/b/campaign-groups/get | Get Campaign Info
*VatomApi* | [**getEventGuestList**](docs/Api/VatomApi.md#geteventguestlist) | **GET** /api/{version}/vatom/b/events/guests/get | Get Vatom Event Guest List
*VatomApi* | [**getInventory**](docs/Api/VatomApi.md#getinventory) | **GET** /api/{version}/vatom/me/inventory | Get Vatom User&#39;s Inventory
*VatomApi* | [**getMyFollowing**](docs/Api/VatomApi.md#getmyfollowing) | **GET** /api/{version}/vatom/me/rels/following | Get following
*VatomApi* | [**getPointsBalance**](docs/Api/VatomApi.md#getpointsbalance) | **GET** /api/{version}/vatom/u/campaign/points/get | Get Points Balance
*VatomApi* | [**getPointsBalanceAsBusiness**](docs/Api/VatomApi.md#getpointsbalanceasbusiness) | **GET** /api/{version}/vatom/b/campaign/u/points/get | Get Points Balance as Business
*VatomApi* | [**getSpace**](docs/Api/VatomApi.md#getspace) | **GET** /api/{version}/vatom/b/spaces/get | Get Vatom Space
*VatomApi* | [**getUserCoinsAsBusiness**](docs/Api/VatomApi.md#getusercoinsasbusiness) | **GET** /api/{version}/vatom/b/users/coins/get | Get the coins for a user (as a Business)
*VatomApi* | [**getUserCoinsBalance**](docs/Api/VatomApi.md#getusercoinsbalance) | **GET** /api/{version}/vatom/u/coins/get | Gets the coins balance for a Vatom User
*VatomApi* | [**getUserFollowers**](docs/Api/VatomApi.md#getuserfollowers) | **GET** /api/{version}/vatom/users/rels/followers | Get user followers
*VatomApi* | [**getUserFollowing**](docs/Api/VatomApi.md#getuserfollowing) | **GET** /api/{version}/vatom/users/rels/following | Get user following
*VatomApi* | [**getUserInfo**](docs/Api/VatomApi.md#getuserinfo) | **GET** /api/{version}/vatom/user/get | Get User Info
*VatomApi* | [**getUserProfile**](docs/Api/VatomApi.md#getuserprofile) | **GET** /api/{version}/vatom/me/get | Get Vatom User Profile
*VatomApi* | [**getVatomEvent**](docs/Api/VatomApi.md#getvatomevent) | **GET** /api/{version}/vatom/b/events/get | Get Vatom Event
*VatomApi* | [**getVatomNFT**](docs/Api/VatomApi.md#getvatomnft) | **GET** /api/{version}/vatom/vatoms/get | Get Vatom NFT Details
*VatomApi* | [**listCommunities**](docs/Api/VatomApi.md#listcommunities) | **GET** /api/{version}/vatom/b/communities/search | List Vatom Communities
*VatomApi* | [**listEvents**](docs/Api/VatomApi.md#listevents) | **GET** /api/{version}/vatom/b/events/search | List Vatom Events
*VatomApi* | [**listSpaces**](docs/Api/VatomApi.md#listspaces) | **GET** /api/{version}/vatom/b/spaces/search | List Vatom Spaces
*VatomApi* | [**listUserCoinTransactions**](docs/Api/VatomApi.md#listusercointransactions) | **GET** /api/{version}/vatom/u/coins/txns/search | List Coin Transactions for a Vatom User
*VatomApi* | [**listUserCoinTransactionsAsBusiness**](docs/Api/VatomApi.md#listusercointransactionsasbusiness) | **GET** /api/{version}/vatom/b/users/coins/txns/search | List coin transactions for a user (as a Business)
*VatomApi* | [**performActionOnNFT**](docs/Api/VatomApi.md#performactiononnft) | **POST** /api/{version}/vatom/me/vatoms/actions | Perform Action on NFT
*VatomApi* | [**redeemNFT**](docs/Api/VatomApi.md#redeemnft) | **POST** /api/{version}/vatom/b/redemptions | Redeem NFT
*VatomApi* | [**redeemUserCoinsAsBusiness**](docs/Api/VatomApi.md#redeemusercoinsasbusiness) | **POST** /api/{version}/vatom/b/users/coins/redeem | Redeem the coins for a user (as a Business)
*VatomApi* | [**searchBusinesses**](docs/Api/VatomApi.md#searchbusinesses) | **GET** /api/{version}/vatom/b/search | Search for Vatom Businesses
*VatomApi* | [**searchCampaignGroups**](docs/Api/VatomApi.md#searchcampaigngroups) | **GET** /api/{version}/vatom/b/campaign-groups/search | Search Campaign Groups
*VatomApi* | [**searchIdentities**](docs/Api/VatomApi.md#searchidentities) | **GET** /api/{version}/vatom/me/identities/search | Search User Identities
*VatomApi* | [**searchInventory**](docs/Api/VatomApi.md#searchinventory) | **GET** /api/{version}/vatom/user-inventory/search | Search Vatom User&#39;s Inventory
*VatomApi* | [**sendNFT**](docs/Api/VatomApi.md#sendnft) | **POST** /api/{version}/vatom/b/campaigns/send | Send NFT
*VatomApi* | [**setPointsBalanceAsBusiness**](docs/Api/VatomApi.md#setpointsbalanceasbusiness) | **POST** /api/{version}/vatom/b/campaign/u/points/update | Set Points Balance as Business
*VatomApi* | [**transferUserCoins**](docs/Api/VatomApi.md#transferusercoins) | **POST** /api/{version}/vatom/u/coins/transfer | Transfer coins from Vatom Users
*VatomApi* | [**updateBusinessCoins**](docs/Api/VatomApi.md#updatebusinesscoins) | **POST** /api/{version}/vatom/b/coins/update | Fund coins for a Business
*VatomApi* | [**updateEventGuestList**](docs/Api/VatomApi.md#updateeventguestlist) | **POST** /api/{version}/vatom/b/events/guests/update | Update Vatom Event Guest List
*VatomApi* | [**updateSpace**](docs/Api/VatomApi.md#updatespace) | **POST** /api/{version}/vatom/b/spaces/update | Update Vatom Space
*VatomApi* | [**updateUserCoinsAsBusiness**](docs/Api/VatomApi.md#updateusercoinsasbusiness) | **POST** /api/{version}/vatom/b/users/coins/update | Update the coins for a user (as a Business)
*VatomApi* | [**updateUserProfile**](docs/Api/VatomApi.md#updateuserprofile) | **POST** /api/{version}/vatom/me/update | Update Vatom User Profile
*VatomApi* | [**updateVatomEvent**](docs/Api/VatomApi.md#updatevatomevent) | **POST** /api/{version}/vatom/b/events/update | Update Vatom Event
*VehicleApi* | [**createVehicle**](docs/Api/VehicleApi.md#createvehicle) | **POST** /api/{version}/vehicle | Create Vehicle
*VehicleApi* | [**deleteVehicle**](docs/Api/VehicleApi.md#deletevehicle) | **DELETE** /api/{version}/vehicle/{id} | Delete Vehicle
*VehicleApi* | [**getVehicle**](docs/Api/VehicleApi.md#getvehicle) | **GET** /api/{version}/vehicle/{id} | Get Vehicle
*VehicleApi* | [**searchVehicle**](docs/Api/VehicleApi.md#searchvehicle) | **GET** /api/{version}/vehicle | Search Vehicle
*VehicleApi* | [**updateVehicle**](docs/Api/VehicleApi.md#updatevehicle) | **PUT** /api/{version}/vehicle/{id} | Update Vehicle
*VehicleTypeApi* | [**createVehicleType**](docs/Api/VehicleTypeApi.md#createvehicletype) | **POST** /api/{version}/vehicle/type | Create Vehicle Type
*VehicleTypeApi* | [**deleteVehicleType**](docs/Api/VehicleTypeApi.md#deletevehicletype) | **DELETE** /api/{version}/vehicle/type/{vehicleTypeId} | Delete Vehicle Type
*VehicleTypeApi* | [**getVehicleType**](docs/Api/VehicleTypeApi.md#getvehicletype) | **GET** /api/{version}/vehicle/type/{vehicleTypeId} | Get Vehicle Type
*VehicleTypeApi* | [**searchVehicleTypes**](docs/Api/VehicleTypeApi.md#searchvehicletypes) | **GET** /api/{version}/vehicle/type | Search Vehicle Type
*VehicleTypeApi* | [**updateVehicleType**](docs/Api/VehicleTypeApi.md#updatevehicletype) | **PUT** /api/{version}/vehicle/type/{vehicleTypeId} | Update Vehicle Type
*WalletApi* | [**createOfferTransaction**](docs/Api/WalletApi.md#createoffertransaction) | **POST** /api/{version}/wallet/create | Create Wallet Offers
*WalletApi* | [**deleteOfferTransaction**](docs/Api/WalletApi.md#deleteoffertransaction) | **POST** /api/{version}/wallet/delete | Delete Wallet Offer
*WalletApi* | [**getOfferTransaction**](docs/Api/WalletApi.md#getoffertransaction) | **GET** /api/{version}/wallet/get | Get Wallet Offer
*WalletApi* | [**previewOfferTransaction**](docs/Api/WalletApi.md#previewoffertransaction) | **POST** /api/{version}/wallet/preview | Preview Wallet Offers
*WalletApi* | [**searchOfferTransactions**](docs/Api/WalletApi.md#searchoffertransactions) | **GET** /api/{version}/wallet/search | Search Wallet Offers
*WalletApi* | [**updateOfferTransaction**](docs/Api/WalletApi.md#updateoffertransaction) | **POST** /api/{version}/wallet/update | Update Wallet Offer
*WeatherApi* | [**searchWeather**](docs/Api/WeatherApi.md#searchweather) | **GET** /api/{version}/weather/search | Search Weather
*WordApi* | [**createWord**](docs/Api/WordApi.md#createword) | **POST** /api/{version}/game/word/create | Create Word
*WordApi* | [**deleteWord**](docs/Api/WordApi.md#deleteword) | **DELETE** /api/{version}/game/word/delete | Delete Word
*WordApi* | [**getWord**](docs/Api/WordApi.md#getword) | **GET** /api/{version}/game/word/get | Get Word
*WordApi* | [**getWords**](docs/Api/WordApi.md#getwords) | **GET** /api/{version}/game/word/search | Search Words
*WordApi* | [**updateWord**](docs/Api/WordApi.md#updateword) | **POST** /api/{version}/game/word/update | Update Word
*WorkflowApi* | [**runWorkflow**](docs/Api/WorkflowApi.md#runworkflow) | **POST** /api/{version}/workflow/run | Run Workflow

## Models

- [Account](docs/Model/Account.md)
- [AccountListResponse](docs/Model/AccountListResponse.md)
- [AccountLoginResponse](docs/Model/AccountLoginResponse.md)
- [AccountMiniResponse](docs/Model/AccountMiniResponse.md)
- [AccountProfileInfo](docs/Model/AccountProfileInfo.md)
- [AccountResponse](docs/Model/AccountResponse.md)
- [AccountShortResponse](docs/Model/AccountShortResponse.md)
- [AchievementProgressResponse](docs/Model/AchievementProgressResponse.md)
- [AchievementResponse](docs/Model/AchievementResponse.md)
- [AchievementShortResponse](docs/Model/AchievementShortResponse.md)
- [AchievementTierResponse](docs/Model/AchievementTierResponse.md)
- [ActivityResponse](docs/Model/ActivityResponse.md)
- [Address](docs/Model/Address.md)
- [AddressResponse](docs/Model/AddressResponse.md)
- [AgeGroupResponse](docs/Model/AgeGroupResponse.md)
- [Album](docs/Model/Album.md)
- [AlbumContestListResponse](docs/Model/AlbumContestListResponse.md)
- [AlbumContestResponse](docs/Model/AlbumContestResponse.md)
- [AlbumFullResponse](docs/Model/AlbumFullResponse.md)
- [AlbumResponse](docs/Model/AlbumResponse.md)
- [AnswerResponse](docs/Model/AnswerResponse.md)
- [AppInfoResponse](docs/Model/AppInfoResponse.md)
- [AppResponse](docs/Model/AppResponse.md)
- [AppVersion](docs/Model/AppVersion.md)
- [Application](docs/Model/Application.md)
- [ApplicationConfigResponse](docs/Model/ApplicationConfigResponse.md)
- [ApplicationMiniResponse](docs/Model/ApplicationMiniResponse.md)
- [ApplicationResponse](docs/Model/ApplicationResponse.md)
- [ApplicationSettingsResponse](docs/Model/ApplicationSettingsResponse.md)
- [ApplicationShortResponse](docs/Model/ApplicationShortResponse.md)
- [ApplicationUsageResponse](docs/Model/ApplicationUsageResponse.md)
- [Asset](docs/Model/Asset.md)
- [AssetFullResponse](docs/Model/AssetFullResponse.md)
- [AssetListResponse](docs/Model/AssetListResponse.md)
- [AssetResponse](docs/Model/AssetResponse.md)
- [AssetShortResponse](docs/Model/AssetShortResponse.md)
- [Assignment](docs/Model/Assignment.md)
- [AssignmentResponse](docs/Model/AssignmentResponse.md)
- [AssignmentStatus](docs/Model/AssignmentStatus.md)
- [AssignmentStatusResponse](docs/Model/AssignmentStatusResponse.md)
- [Audience](docs/Model/Audience.md)
- [AudienceDevice](docs/Model/AudienceDevice.md)
- [AudienceDeviceResponse](docs/Model/AudienceDeviceResponse.md)
- [AudienceDeviceVersionRange](docs/Model/AudienceDeviceVersionRange.md)
- [AudienceLocation](docs/Model/AudienceLocation.md)
- [AudienceResponse](docs/Model/AudienceResponse.md)
- [AudienceTargetType](docs/Model/AudienceTargetType.md)
- [AvailabilityResponse](docs/Model/AvailabilityResponse.md)
- [BaseOfferResponse](docs/Model/BaseOfferResponse.md)
- [BidResponse](docs/Model/BidResponse.md)
- [BillableEntity](docs/Model/BillableEntity.md)
- [BillableEntityResponse](docs/Model/BillableEntityResponse.md)
- [BillableEntityShortResponse](docs/Model/BillableEntityShortResponse.md)
- [BiometricImage](docs/Model/BiometricImage.md)
- [BiometricRequest](docs/Model/BiometricRequest.md)
- [BlobFile](docs/Model/BlobFile.md)
- [BlockedNotificationResponse](docs/Model/BlockedNotificationResponse.md)
- [Building](docs/Model/Building.md)
- [CargoType](docs/Model/CargoType.md)
- [Category](docs/Model/Category.md)
- [CategoryResponse](docs/Model/CategoryResponse.md)
- [CategoryTreeResponse](docs/Model/CategoryTreeResponse.md)
- [CellCarrier](docs/Model/CellCarrier.md)
- [CellCarrierResponse](docs/Model/CellCarrierResponse.md)
- [ChartData](docs/Model/ChartData.md)
- [Chronology](docs/Model/Chronology.md)
- [ConfigRoutingRequest](docs/Model/ConfigRoutingRequest.md)
- [ConnectedFriend](docs/Model/ConnectedFriend.md)
- [Connection](docs/Model/Connection.md)
- [ConnectionGroup](docs/Model/ConnectionGroup.md)
- [ConnectionGroupResponse](docs/Model/ConnectionGroupResponse.md)
- [ConnectionGroupShortResponse](docs/Model/ConnectionGroupShortResponse.md)
- [ConnectionInfoResponse](docs/Model/ConnectionInfoResponse.md)
- [ConnectionListResponse](docs/Model/ConnectionListResponse.md)
- [ConnectionResponse](docs/Model/ConnectionResponse.md)
- [ConsumerInviteResponse](docs/Model/ConsumerInviteResponse.md)
- [Contact](docs/Model/Contact.md)
- [ContactInfo](docs/Model/ContactInfo.md)
- [ContactInfoResponse](docs/Model/ContactInfoResponse.md)
- [ContactResponse](docs/Model/ContactResponse.md)
- [CoordsResponse](docs/Model/CoordsResponse.md)
- [CountResponse](docs/Model/CountResponse.md)
- [CreativeResponse](docs/Model/CreativeResponse.md)
- [CsvImportResponse](docs/Model/CsvImportResponse.md)
- [DateTimeField](docs/Model/DateTimeField.md)
- [DateTimeFieldType](docs/Model/DateTimeFieldType.md)
- [DateTimeRange](docs/Model/DateTimeRange.md)
- [DateTimeZone](docs/Model/DateTimeZone.md)
- [Device](docs/Model/Device.md)
- [Dimensions](docs/Model/Dimensions.md)
- [Direction](docs/Model/Direction.md)
- [DirectionResponse](docs/Model/DirectionResponse.md)
- [DisbursementResponse](docs/Model/DisbursementResponse.md)
- [DriverResponse](docs/Model/DriverResponse.md)
- [DurationField](docs/Model/DurationField.md)
- [DurationFieldType](docs/Model/DurationFieldType.md)
- [EmployeeResponse](docs/Model/EmployeeResponse.md)
- [EntityReference](docs/Model/EntityReference.md)
- [Event](docs/Model/Event.md)
- [EventAttendanceResponse](docs/Model/EventAttendanceResponse.md)
- [EventResponse](docs/Model/EventResponse.md)
- [Filter](docs/Model/Filter.md)
- [FilterResponse](docs/Model/FilterResponse.md)
- [FilterTreeResponse](docs/Model/FilterTreeResponse.md)
- [FingerprintBiometricImage](docs/Model/FingerprintBiometricImage.md)
- [Flag](docs/Model/Flag.md)
- [FlagResponse](docs/Model/FlagResponse.md)
- [FlagThreshold](docs/Model/FlagThreshold.md)
- [Game](docs/Model/Game.md)
- [GameLevel](docs/Model/GameLevel.md)
- [GameLevelListResponse](docs/Model/GameLevelListResponse.md)
- [GameLevelResponse](docs/Model/GameLevelResponse.md)
- [GameListResponse](docs/Model/GameListResponse.md)
- [GameObjectListResponse](docs/Model/GameObjectListResponse.md)
- [GameObjectResponse](docs/Model/GameObjectResponse.md)
- [GameResponse](docs/Model/GameResponse.md)
- [GeoBox](docs/Model/GeoBox.md)
- [GeoPointResponse](docs/Model/GeoPointResponse.md)
- [GeoResponse](docs/Model/GeoResponse.md)
- [GeocodeLatLngResponse](docs/Model/GeocodeLatLngResponse.md)
- [GroupPermissions](docs/Model/GroupPermissions.md)
- [ImageGenerationResponse](docs/Model/ImageGenerationResponse.md)
- [ImportStatuses](docs/Model/ImportStatuses.md)
- [Interval](docs/Model/Interval.md)
- [InviteResponse](docs/Model/InviteResponse.md)
- [Invoice](docs/Model/Invoice.md)
- [ItineraryResponse](docs/Model/ItineraryResponse.md)
- [JsonArray](docs/Model/JsonArray.md)
- [JsonElement](docs/Model/JsonElement.md)
- [JsonNull](docs/Model/JsonNull.md)
- [JsonObject](docs/Model/JsonObject.md)
- [JsonPrimitive](docs/Model/JsonPrimitive.md)
- [Leaderboard](docs/Model/Leaderboard.md)
- [LeaderboardFullResponse](docs/Model/LeaderboardFullResponse.md)
- [LeaderboardResponse](docs/Model/LeaderboardResponse.md)
- [Leg](docs/Model/Leg.md)
- [LegResponse](docs/Model/LegResponse.md)
- [LikableResponse](docs/Model/LikableResponse.md)
- [LikeResponse](docs/Model/LikeResponse.md)
- [LineItem](docs/Model/LineItem.md)
- [ListCountResponse](docs/Model/ListCountResponse.md)
- [ListResponse](docs/Model/ListResponse.md)
- [Listing](docs/Model/Listing.md)
- [ListingFullResponse](docs/Model/ListingFullResponse.md)
- [ListingGroupResponse](docs/Model/ListingGroupResponse.md)
- [ListingResponse](docs/Model/ListingResponse.md)
- [LoadResponse](docs/Model/LoadResponse.md)
- [LoadShortResponse](docs/Model/LoadShortResponse.md)
- [LocalTime](docs/Model/LocalTime.md)
- [Location](docs/Model/Location.md)
- [LocationResponse](docs/Model/LocationResponse.md)
- [LocationSearchResponse](docs/Model/LocationSearchResponse.md)
- [Media](docs/Model/Media.md)
- [MediaOfferResponse](docs/Model/MediaOfferResponse.md)
- [MediaResponse](docs/Model/MediaResponse.md)
- [MessageListResponse](docs/Model/MessageListResponse.md)
- [MessageResponse](docs/Model/MessageResponse.md)
- [Mission](docs/Model/Mission.md)
- [MissionFormatResponse](docs/Model/MissionFormatResponse.md)
- [MissionInviteResponse](docs/Model/MissionInviteResponse.md)
- [MissionListResponse](docs/Model/MissionListResponse.md)
- [MissionResponse](docs/Model/MissionResponse.md)
- [MissionShortResponse](docs/Model/MissionShortResponse.md)
- [MissionTask](docs/Model/MissionTask.md)
- [NameStringValueResponse](docs/Model/NameStringValueResponse.md)
- [Node](docs/Model/Node.md)
- [NodeRequest](docs/Model/NodeRequest.md)
- [Note](docs/Model/Note.md)
- [NoteFullResponse](docs/Model/NoteFullResponse.md)
- [NoteResponse](docs/Model/NoteResponse.md)
- [NotificationMessageListResponse](docs/Model/NotificationMessageListResponse.md)
- [NotificationMessageResponse](docs/Model/NotificationMessageResponse.md)
- [NotificationRecipientResponse](docs/Model/NotificationRecipientResponse.md)
- [NotificationRecipientResponseListResponse](docs/Model/NotificationRecipientResponseListResponse.md)
- [NotificationSettingsResponse](docs/Model/NotificationSettingsResponse.md)
- [NotificationTemplateResponse](docs/Model/NotificationTemplateResponse.md)
- [ObjectStoreResponse](docs/Model/ObjectStoreResponse.md)
- [Offer](docs/Model/Offer.md)
- [OfferListResponse](docs/Model/OfferListResponse.md)
- [OfferLocation](docs/Model/OfferLocation.md)
- [OfferResponse](docs/Model/OfferResponse.md)
- [OfferShortResponse](docs/Model/OfferShortResponse.md)
- [OfferTransactionResponse](docs/Model/OfferTransactionResponse.md)
- [OfferTransactionStatusResponse](docs/Model/OfferTransactionStatusResponse.md)
- [OrderItemRequest](docs/Model/OrderItemRequest.md)
- [OrderPackage](docs/Model/OrderPackage.md)
- [OrderResponse](docs/Model/OrderResponse.md)
- [Orders](docs/Model/Orders.md)
- [OrsonAiAddMovieResponse](docs/Model/OrsonAiAddMovieResponse.md)
- [OrsonAiBatchEmotionsResponse](docs/Model/OrsonAiBatchEmotionsResponse.md)
- [OrsonAiBatchResponse](docs/Model/OrsonAiBatchResponse.md)
- [OrsonAiBatchTopicsResponse](docs/Model/OrsonAiBatchTopicsResponse.md)
- [OrsonAiBatchTranscriptResponse](docs/Model/OrsonAiBatchTranscriptResponse.md)
- [OrsonAiEmotionsResponse](docs/Model/OrsonAiEmotionsResponse.md)
- [OrsonAiProdResponse](docs/Model/OrsonAiProdResponse.md)
- [OrsonAiProtoResponse](docs/Model/OrsonAiProtoResponse.md)
- [OrsonAiSTTResponse](docs/Model/OrsonAiSTTResponse.md)
- [OrsonAiTTSResponse](docs/Model/OrsonAiTTSResponse.md)
- [OrsonAiTechTuneResponse](docs/Model/OrsonAiTechTuneResponse.md)
- [OrsonAiTopicResponse](docs/Model/OrsonAiTopicResponse.md)
- [OrsonAiTopicsResponse](docs/Model/OrsonAiTopicsResponse.md)
- [OrsonAiVisualEmotionResponse](docs/Model/OrsonAiVisualEmotionResponse.md)
- [OrsonAiVoiceCanvasResponse](docs/Model/OrsonAiVoiceCanvasResponse.md)
- [OrsonEpisodeResponse](docs/Model/OrsonEpisodeResponse.md)
- [OrsonRenderResponse](docs/Model/OrsonRenderResponse.md)
- [OrsonVideoResponse](docs/Model/OrsonVideoResponse.md)
- [Pack](docs/Model/Pack.md)
- [PackListResponse](docs/Model/PackListResponse.md)
- [PackResponse](docs/Model/PackResponse.md)
- [Participant](docs/Model/Participant.md)
- [ParticipantResponse](docs/Model/ParticipantResponse.md)
- [PathingResponse](docs/Model/PathingResponse.md)
- [PaymentRequest](docs/Model/PaymentRequest.md)
- [PaymentTransactionResponse](docs/Model/PaymentTransactionResponse.md)
- [PaymentTypesResponse](docs/Model/PaymentTypesResponse.md)
- [PermissionResponse](docs/Model/PermissionResponse.md)
- [Permissions](docs/Model/Permissions.md)
- [PersonalProfileResponse](docs/Model/PersonalProfileResponse.md)
- [Placement](docs/Model/Placement.md)
- [PlacementResponse](docs/Model/PlacementResponse.md)
- [Platform](docs/Model/Platform.md)
- [PlatformResponse](docs/Model/PlatformResponse.md)
- [PostalCode](docs/Model/PostalCode.md)
- [PostalCodeResponse](docs/Model/PostalCodeResponse.md)
- [PredictedLocationResponse](docs/Model/PredictedLocationResponse.md)
- [PreferredLocationResponse](docs/Model/PreferredLocationResponse.md)
- [PreviewPersonaResponse](docs/Model/PreviewPersonaResponse.md)
- [Product](docs/Model/Product.md)
- [ProductResponse](docs/Model/ProductResponse.md)
- [ProfileInfoResponse](docs/Model/ProfileInfoResponse.md)
- [ProfileResponse](docs/Model/ProfileResponse.md)
- [ProfileShortResponse](docs/Model/ProfileShortResponse.md)
- [Program](docs/Model/Program.md)
- [PromoCode](docs/Model/PromoCode.md)
- [PurchaseItemFullResponse](docs/Model/PurchaseItemFullResponse.md)
- [PurchaseItemListResponse](docs/Model/PurchaseItemListResponse.md)
- [PurchaseItemResponse](docs/Model/PurchaseItemResponse.md)
- [PurchaseItemShortResponse](docs/Model/PurchaseItemShortResponse.md)
- [PurchaseOrderItemResponse](docs/Model/PurchaseOrderItemResponse.md)
- [QuestionResponse](docs/Model/QuestionResponse.md)
- [QueueResponse](docs/Model/QueueResponse.md)
- [RankFullResponse](docs/Model/RankFullResponse.md)
- [RankListResponse](docs/Model/RankListResponse.md)
- [RankResponse](docs/Model/RankResponse.md)
- [RatingIndexResponse](docs/Model/RatingIndexResponse.md)
- [RatingResponse](docs/Model/RatingResponse.md)
- [Recurrence](docs/Model/Recurrence.md)
- [Region](docs/Model/Region.md)
- [RegionLegSummary](docs/Model/RegionLegSummary.md)
- [RegionResponse](docs/Model/RegionResponse.md)
- [ReportBatchResponse](docs/Model/ReportBatchResponse.md)
- [ReportDefinition](docs/Model/ReportDefinition.md)
- [ReportRegionLegSummaryBatchResponse](docs/Model/ReportRegionLegSummaryBatchResponse.md)
- [ReportResponse](docs/Model/ReportResponse.md)
- [ReportTypeResponse](docs/Model/ReportTypeResponse.md)
- [ReservationResponse](docs/Model/ReservationResponse.md)
- [Retailer](docs/Model/Retailer.md)
- [RetailerCountResponse](docs/Model/RetailerCountResponse.md)
- [RetailerFullResponse](docs/Model/RetailerFullResponse.md)
- [RetailerLocation](docs/Model/RetailerLocation.md)
- [RetailerLocationResponse](docs/Model/RetailerLocationResponse.md)
- [RetailerLocationShortResponse](docs/Model/RetailerLocationShortResponse.md)
- [RetailerOfferResponse](docs/Model/RetailerOfferResponse.md)
- [RetailerProfile](docs/Model/RetailerProfile.md)
- [RetailerResponse](docs/Model/RetailerResponse.md)
- [RetailerShortResponse](docs/Model/RetailerShortResponse.md)
- [RewardResponse](docs/Model/RewardResponse.md)
- [Route](docs/Model/Route.md)
- [RouteSettings](docs/Model/RouteSettings.md)
- [RoutingListResponse](docs/Model/RoutingListResponse.md)
- [RoutingResponse](docs/Model/RoutingResponse.md)
- [RuleListResponse](docs/Model/RuleListResponse.md)
- [RuleResponse](docs/Model/RuleResponse.md)
- [ScheduledNotification](docs/Model/ScheduledNotification.md)
- [ScheduledNotificationFullResponse](docs/Model/ScheduledNotificationFullResponse.md)
- [ScheduledNotificationShortResponse](docs/Model/ScheduledNotificationShortResponse.md)
- [ScoreListResponse](docs/Model/ScoreListResponse.md)
- [ScoreResponse](docs/Model/ScoreResponse.md)
- [SearchResponse](docs/Model/SearchResponse.md)
- [ServiceHub](docs/Model/ServiceHub.md)
- [ServiceType](docs/Model/ServiceType.md)
- [Shipment](docs/Model/Shipment.md)
- [ShipmentBatch](docs/Model/ShipmentBatch.md)
- [ShipmentImportStatus](docs/Model/ShipmentImportStatus.md)
- [ShipmentOrder](docs/Model/ShipmentOrder.md)
- [SirqulResponse](docs/Model/SirqulResponse.md)
- [SizeGroup](docs/Model/SizeGroup.md)
- [SizeGroupResponse](docs/Model/SizeGroupResponse.md)
- [Step](docs/Model/Step.md)
- [StepResponse](docs/Model/StepResponse.md)
- [Stop](docs/Model/Stop.md)
- [StopResponse](docs/Model/StopResponse.md)
- [Subscription](docs/Model/Subscription.md)
- [SubscriptionOption](docs/Model/SubscriptionOption.md)
- [SubscriptionOptionResponse](docs/Model/SubscriptionOptionResponse.md)
- [SubscriptionPlan](docs/Model/SubscriptionPlan.md)
- [SubscriptionPlanResponse](docs/Model/SubscriptionPlanResponse.md)
- [SubscriptionResponse](docs/Model/SubscriptionResponse.md)
- [TaskResponse](docs/Model/TaskResponse.md)
- [Territory](docs/Model/Territory.md)
- [TerritoryResponse](docs/Model/TerritoryResponse.md)
- [ThemeDescriptorResponse](docs/Model/ThemeDescriptorResponse.md)
- [ThirdPartyCredentialResponse](docs/Model/ThirdPartyCredentialResponse.md)
- [ThirdPartyCredentials](docs/Model/ThirdPartyCredentials.md)
- [ThirdPartyNetwork](docs/Model/ThirdPartyNetwork.md)
- [ThirdPartyNetworkResponse](docs/Model/ThirdPartyNetworkResponse.md)
- [ThirdPartyNetworkShortResponse](docs/Model/ThirdPartyNetworkShortResponse.md)
- [TicketCountResponse](docs/Model/TicketCountResponse.md)
- [TicketListResponse](docs/Model/TicketListResponse.md)
- [TicketOfferResponse](docs/Model/TicketOfferResponse.md)
- [TicketResponse](docs/Model/TicketResponse.md)
- [TimeSlotResponse](docs/Model/TimeSlotResponse.md)
- [TokenResponse](docs/Model/TokenResponse.md)
- [TournamentResponse](docs/Model/TournamentResponse.md)
- [TriggerResponse](docs/Model/TriggerResponse.md)
- [TrilatAppSettings](docs/Model/TrilatAppSettings.md)
- [TrilatCacheRequest](docs/Model/TrilatCacheRequest.md)
- [TrilatCacheSample](docs/Model/TrilatCacheSample.md)
- [Trip](docs/Model/Trip.md)
- [Tutorial](docs/Model/Tutorial.md)
- [TutorialResponse](docs/Model/TutorialResponse.md)
- [TwiMLResponse](docs/Model/TwiMLResponse.md)
- [UrlResponse](docs/Model/UrlResponse.md)
- [UserActivityResponse](docs/Model/UserActivityResponse.md)
- [UserLocationListResponse](docs/Model/UserLocationListResponse.md)
- [UserLocationResponse](docs/Model/UserLocationResponse.md)
- [UserLocationSearchResponse](docs/Model/UserLocationSearchResponse.md)
- [UserPermissions](docs/Model/UserPermissions.md)
- [UserPermissionsListResponse](docs/Model/UserPermissionsListResponse.md)
- [UserPermissionsResponse](docs/Model/UserPermissionsResponse.md)
- [UserSettingsResponse](docs/Model/UserSettingsResponse.md)
- [Vehicle](docs/Model/Vehicle.md)
- [VehicleCargoSetting](docs/Model/VehicleCargoSetting.md)
- [VehicleResponse](docs/Model/VehicleResponse.md)
- [VehicleType](docs/Model/VehicleType.md)
- [Verb](docs/Model/Verb.md)
- [WeatherForecastResponse](docs/Model/WeatherForecastResponse.md)
- [WeatherResponse](docs/Model/WeatherResponse.md)
- [WordzWordResponse](docs/Model/WordzWordResponse.md)
- [WrappedProxyItemResponse](docs/Model/WrappedProxyItemResponse.md)
- [WrappedProxyResponse](docs/Model/WrappedProxyResponse.md)
- [WrappedResponse](docs/Model/WrappedResponse.md)
- [YayOrNay](docs/Model/YayOrNay.md)

## Authorization

Authentication schemes defined for the API:
### appKey

- **Type**: API key
- **API key parameter name**: Application-Key
- **Location**: HTTP header


### restKey

- **Type**: API key
- **API key parameter name**: Application-Rest-Key
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

info@sirqul.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `3.16`
    - Generator version: `7.20.0-SNAPSHOT`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
