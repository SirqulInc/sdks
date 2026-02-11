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
    $result = $apiInstance->consumerCreate($app_key, $name, $hostname, $username, $password, $data_mapping, $device_id, $account_id, $port, $virtual_host, $exchanger, $exchanger_type, $workers, $use_ssl);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AMQPApi->consumerCreate: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://dev.sirqul.com/api/3.18*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AMQPApi* | [**consumerCreate**](docs/Api/AMQPApi.md#consumercreate) | **POST** /queue/consumer/create | Create Consumer
*AMQPApi* | [**consumerUpdate**](docs/Api/AMQPApi.md#consumerupdate) | **POST** /queue/consumer/update | Update Consumer
*AMQPApi* | [**queueCreate**](docs/Api/AMQPApi.md#queuecreate) | **POST** /queue/create | Create Queue
*AMQPApi* | [**queueDelete**](docs/Api/AMQPApi.md#queuedelete) | **POST** /queue/delete | Delete Queue
*AMQPApi* | [**queueGet**](docs/Api/AMQPApi.md#queueget) | **GET** /queue/get | Get Queue
*AMQPApi* | [**queuePublish**](docs/Api/AMQPApi.md#queuepublish) | **POST** /queue/publish | Publish Queue
*AMQPApi* | [**queueSearch**](docs/Api/AMQPApi.md#queuesearch) | **GET** /queue/search | Search Queue
*AMQPApi* | [**queueUpdate**](docs/Api/AMQPApi.md#queueupdate) | **POST** /queue/update | Update Queue
*AccountApi* | [**accountLocationSearch**](docs/Api/AccountApi.md#accountlocationsearch) | **GET** /account/search | Search Accounts by Location
*AccountApi* | [**blockAccount**](docs/Api/AccountApi.md#blockaccount) | **POST** /account/block | Block Account
*AccountApi* | [**createAccount**](docs/Api/AccountApi.md#createaccount) | **POST** /account/create | Create Account
*AccountApi* | [**editAccount**](docs/Api/AccountApi.md#editaccount) | **POST** /account/profile/update | Update Account
*AccountApi* | [**editUsername**](docs/Api/AccountApi.md#editusername) | **POST** /account/username/update | Update Username and Email
*AccountApi* | [**getAccount**](docs/Api/AccountApi.md#getaccount) | **GET** /account/profile/get | Get Account
*AccountApi* | [**getProfileAssets**](docs/Api/AccountApi.md#getprofileassets) | **GET** /account/profile/assets | Get Profile Assets
*AccountApi* | [**getReferralList**](docs/Api/AccountApi.md#getreferrallist) | **GET** /account/referral/list | Search Accounts
*AccountApi* | [**getSettings**](docs/Api/AccountApi.md#getsettings) | **GET** /account/settings/get | Get Account Settings
*AccountApi* | [**loginDelegate**](docs/Api/AccountApi.md#logindelegate) | **POST** /account/login/delegate | Login as Account
*AccountApi* | [**loginGeneral**](docs/Api/AccountApi.md#logingeneral) | **POST** /account/login | Login Account
*AccountApi* | [**loginUsername**](docs/Api/AccountApi.md#loginusername) | **POST** /account/get | Login Account (Username)
*AccountApi* | [**logout**](docs/Api/AccountApi.md#logout) | **POST** /account/logout | Logout Account
*AccountApi* | [**mergeAccount**](docs/Api/AccountApi.md#mergeaccount) | **POST** /account/merge | Merge Account
*AccountApi* | [**passwordChange**](docs/Api/AccountApi.md#passwordchange) | **POST** /account/passwordchange | Update Password
*AccountApi* | [**passwordReset**](docs/Api/AccountApi.md#passwordreset) | **POST** /account/passwordreset | Reset Password
*AccountApi* | [**requestPasswordReset**](docs/Api/AccountApi.md#requestpasswordreset) | **POST** /account/requestpasswordreset | Request Password Reset
*AccountApi* | [**requestValidateAccount**](docs/Api/AccountApi.md#requestvalidateaccount) | **POST** /account/requestValidateAccount | Send Validation Request
*AccountApi* | [**searchAccounts**](docs/Api/AccountApi.md#searchaccounts) | **GET** /account/profile/search | Search Accounts
*AccountApi* | [**secureLogin**](docs/Api/AccountApi.md#securelogin) | **POST** /account/login/validate | Login Account (Encrypted Username)
*AccountApi* | [**secureSignup**](docs/Api/AccountApi.md#securesignup) | **POST** /account/create/validate | Create Account (Encrypted Username)
*AccountApi* | [**setMatchToken**](docs/Api/AccountApi.md#setmatchtoken) | **POST** /consumer/profile/matchToken | Save Match Token
*AccountApi* | [**updateActveStatus**](docs/Api/AccountApi.md#updateactvestatus) | **POST** /account/active/update | Update Account Active Status
*AccountApi* | [**updateLocation**](docs/Api/AccountApi.md#updatelocation) | **POST** /account/location/update | Update Location
*AccountApi* | [**updateSettings**](docs/Api/AccountApi.md#updatesettings) | **POST** /account/settings/update | Update Account Settings
*AccountApi* | [**validateAccountSignup**](docs/Api/AccountApi.md#validateaccountsignup) | **POST** /account/validateAccountSignup | Save Validation Status
*AccountApi* | [**validatePasswordReset**](docs/Api/AccountApi.md#validatepasswordreset) | **POST** /account/validatepasswordreset | Validate Password Reset Token
*AchievementApi* | [**achievementTierSearchPost**](docs/Api/AchievementApi.md#achievementtiersearchpost) | **POST** /achievement/tier/search | Searches an Achievement Tier
*AchievementApi* | [**createAchievement**](docs/Api/AchievementApi.md#createachievement) | **POST** /achievement/create | Create Achievement
*AchievementApi* | [**createAchievementTier**](docs/Api/AchievementApi.md#createachievementtier) | **POST** /achievement/tier/create | Create Achievement Tier
*AchievementApi* | [**deleteAchievement**](docs/Api/AchievementApi.md#deleteachievement) | **POST** /achievement/delete | Delete Achievement
*AchievementApi* | [**deleteAchievementTier**](docs/Api/AchievementApi.md#deleteachievementtier) | **POST** /achievement/tier/delete | Delete Achievement Tier
*AchievementApi* | [**getAchievement**](docs/Api/AchievementApi.md#getachievement) | **GET** /achievement/get | Get Achievement
*AchievementApi* | [**getAchievementTier**](docs/Api/AchievementApi.md#getachievementtier) | **POST** /achievement/tier/get | Gets an achievement tier
*AchievementApi* | [**getUserAchievements**](docs/Api/AchievementApi.md#getuserachievements) | **GET** /achievement/progress/get | Get Achievement Progress
*AchievementApi* | [**listAchievementTags**](docs/Api/AchievementApi.md#listachievementtags) | **GET** /achievement/tag/list | List Achievement Tags
*AchievementApi* | [**listAchievements**](docs/Api/AchievementApi.md#listachievements) | **GET** /achievement/list | List Achievements
*AchievementApi* | [**searchAchievements**](docs/Api/AchievementApi.md#searchachievements) | **GET** /achievement/search | Search Achievements
*AchievementApi* | [**updateAchievement**](docs/Api/AchievementApi.md#updateachievement) | **POST** /achievement/update | Update Achievement
*AchievementApi* | [**updateAchievementTier**](docs/Api/AchievementApi.md#updateachievementtier) | **POST** /achievement/tier/update | Update Achievement Tier
*AchievementApi* | [**updateUserAchievement**](docs/Api/AchievementApi.md#updateuserachievement) | **POST** /achievement/progress/update | Update Achievement Progress
*ActivityApi* | [**createEntityReference**](docs/Api/ActivityApi.md#createentityreference) | **POST** /entity/reference | Create an entity reference.
*AlbumApi* | [**addAlbumCollection**](docs/Api/AlbumApi.md#addalbumcollection) | **POST** /album/create | Create Album
*AlbumApi* | [**addAlbumUsers**](docs/Api/AlbumApi.md#addalbumusers) | **POST** /album/user/add | Add Album Users
*AlbumApi* | [**approveAlbum**](docs/Api/AlbumApi.md#approvealbum) | **POST** /album/approve | Approve Album
*AlbumApi* | [**getAlbumCollection**](docs/Api/AlbumApi.md#getalbumcollection) | **GET** /album/get | Get Album
*AlbumApi* | [**leaveAlbum**](docs/Api/AlbumApi.md#leavealbum) | **POST** /album/user/leave | Leave Album
*AlbumApi* | [**removeAlbum**](docs/Api/AlbumApi.md#removealbum) | **POST** /album/delete | Delete Album
*AlbumApi* | [**removeAlbumUsers**](docs/Api/AlbumApi.md#removealbumusers) | **POST** /album/user/delete | Remove Album Users
*AlbumApi* | [**searchAlbums**](docs/Api/AlbumApi.md#searchalbums) | **GET** /album/search | Search Albums
*AlbumApi* | [**updateAlbumCollection**](docs/Api/AlbumApi.md#updatealbumcollection) | **POST** /album/update | Update Album
*AnalyticsApi* | [**activities**](docs/Api/AnalyticsApi.md#activities) | **GET** /analytics/useractivity | Get User Activity
*AnalyticsApi* | [**aggregatedFilteredUsage**](docs/Api/AnalyticsApi.md#aggregatedfilteredusage) | **GET** /analytics/aggregatedFilteredUsage | Get Aggregated Filtered Usage
*AnalyticsApi* | [**filteredUsage**](docs/Api/AnalyticsApi.md#filteredusage) | **GET** /analytics/filteredUsage | Get Filtered Usage
*AnalyticsApi* | [**usage**](docs/Api/AnalyticsApi.md#usage) | **POST** /analytics/usage | Create Usage Record
*AnalyticsApi* | [**usageBatch**](docs/Api/AnalyticsApi.md#usagebatch) | **POST** /analytics/usage/batch | Create Multiple Usage Records
*AppDataApi* | [**getAppData**](docs/Api/AppDataApi.md#getappdata) | **GET** /app/get | Get App Data
*AppDataApi* | [**postAppData**](docs/Api/AppDataApi.md#postappdata) | **POST** /app/post | Create App Data
*AppDataApi* | [**regenAppData**](docs/Api/AppDataApi.md#regenappdata) | **POST** /app/regen | Regenerate App Data
*ApplicationApi* | [**createApplication**](docs/Api/ApplicationApi.md#createapplication) | **POST** /application/create | Create Application
*ApplicationApi* | [**createApplicationPlacement**](docs/Api/ApplicationApi.md#createapplicationplacement) | **POST** /application/placement/create | Create Ad Placement
*ApplicationApi* | [**deleteApplication**](docs/Api/ApplicationApi.md#deleteapplication) | **POST** /application/delete | Delete Application
*ApplicationApi* | [**deleteApplicationPlacement**](docs/Api/ApplicationApi.md#deleteapplicationplacement) | **POST** /application/placement/delete | Delete Ad Placement
*ApplicationApi* | [**getApplication**](docs/Api/ApplicationApi.md#getapplication) | **GET** /application/get | Get Application
*ApplicationApi* | [**getApplicationPlacement**](docs/Api/ApplicationApi.md#getapplicationplacement) | **GET** /application/placement/get | Get Ad Placement
*ApplicationApi* | [**getApplicationVersions**](docs/Api/ApplicationApi.md#getapplicationversions) | **GET** /application/versions | Get API versions
*ApplicationApi* | [**getUniqueUsersByApp**](docs/Api/ApplicationApi.md#getuniqueusersbyapp) | **GET** /application/users | Search Application Users
*ApplicationApi* | [**listApplications**](docs/Api/ApplicationApi.md#listapplications) | **GET** /application/list | List Applications
*ApplicationApi* | [**searchApplicationPlacement**](docs/Api/ApplicationApi.md#searchapplicationplacement) | **GET** /application/placement/search | Search for Ad Placements
*ApplicationApi* | [**searchApplicationSettings**](docs/Api/ApplicationApi.md#searchapplicationsettings) | **GET** /application/settings/search | Search for Application Settings
*ApplicationApi* | [**searchApplications**](docs/Api/ApplicationApi.md#searchapplications) | **GET** /application/search | Search Applications
*ApplicationApi* | [**updateApplication**](docs/Api/ApplicationApi.md#updateapplication) | **POST** /application/update | Update Application
*ApplicationApi* | [**updateApplicationActive**](docs/Api/ApplicationApi.md#updateapplicationactive) | **POST** /application/active | Change Appliation Status
*ApplicationApi* | [**updateApplicationPlacement**](docs/Api/ApplicationApi.md#updateapplicationplacement) | **POST** /application/placement/update | Update Ad Placement
*ApplicationApi* | [**uploadApplicationCertificate**](docs/Api/ApplicationApi.md#uploadapplicationcertificate) | **POST** /application/certificate/create | Create Application Certificate
*ApplicationConfigApi* | [**createApplicationConfig**](docs/Api/ApplicationConfigApi.md#createapplicationconfig) | **POST** /appconfig/create | Create AppConfig
*ApplicationConfigApi* | [**deleteApplicationConfig**](docs/Api/ApplicationConfigApi.md#deleteapplicationconfig) | **POST** /appconfig/delete | Delete AppConfig
*ApplicationConfigApi* | [**getApplicationConfig**](docs/Api/ApplicationConfigApi.md#getapplicationconfig) | **GET** /appconfig/get | Get AppConfig
*ApplicationConfigApi* | [**getApplicationConfigByConfigVersion**](docs/Api/ApplicationConfigApi.md#getapplicationconfigbyconfigversion) | **GET** /appconfig/getbyversion | Get AppConfig by Version
*ApplicationConfigApi* | [**searchApplicationConfig**](docs/Api/ApplicationConfigApi.md#searchapplicationconfig) | **GET** /appconfig/search | Search AppConfigs
*ApplicationConfigApi* | [**updateApplicationConfig**](docs/Api/ApplicationConfigApi.md#updateapplicationconfig) | **POST** /appconfig/update | Update AppConfig
*AssetApi* | [**assetDownload**](docs/Api/AssetApi.md#assetdownload) | **GET** /asset/download/{filename} | Download Asset
*AssetApi* | [**assetMorph**](docs/Api/AssetApi.md#assetmorph) | **POST** /asset/morph | Convert Offer to Creative
*AssetApi* | [**createAsset**](docs/Api/AssetApi.md#createasset) | **POST** /asset/create | Create Asset
*AssetApi* | [**deleteAsset**](docs/Api/AssetApi.md#deleteasset) | **POST** /asset/delete | Delete Asset
*AssetApi* | [**getAsset**](docs/Api/AssetApi.md#getasset) | **GET** /asset/get | Get Asset
*AssetApi* | [**removeAsset**](docs/Api/AssetApi.md#removeasset) | **POST** /asset/remove | Remove Asset from Collection
*AssetApi* | [**searchAssets**](docs/Api/AssetApi.md#searchassets) | **GET** /asset/search | Search Assets
*AssetApi* | [**updateAsset**](docs/Api/AssetApi.md#updateasset) | **POST** /asset/update | Update Asset
*AssignmentApi* | [**assigmentAssigneeAccountSearch**](docs/Api/AssignmentApi.md#assigmentassigneeaccountsearch) | **GET** /assignment/assignee/search | Search Assignment Assignees
*AssignmentApi* | [**assignmentCreate**](docs/Api/AssignmentApi.md#assignmentcreate) | **POST** /assignment/create | Create Assignment
*AssignmentApi* | [**assignmentDelete**](docs/Api/AssignmentApi.md#assignmentdelete) | **POST** /assignment/delete | Delete Assignment
*AssignmentApi* | [**assignmentGet**](docs/Api/AssignmentApi.md#assignmentget) | **GET** /assignment/get | Get Assignment
*AssignmentApi* | [**assignmentSearch**](docs/Api/AssignmentApi.md#assignmentsearch) | **GET** /assignment/search | Search Assignments
*AssignmentApi* | [**assignmentStatusCreate**](docs/Api/AssignmentApi.md#assignmentstatuscreate) | **POST** /assignment/status/create | Create Assignment Status
*AssignmentApi* | [**assignmentStatusDelete**](docs/Api/AssignmentApi.md#assignmentstatusdelete) | **POST** /assignment/status/delete | Deletes Assignment Status
*AssignmentApi* | [**assignmentStatusGet**](docs/Api/AssignmentApi.md#assignmentstatusget) | **GET** /assignment/status/get | Get Assignment Status
*AssignmentApi* | [**assignmentStatusSearch**](docs/Api/AssignmentApi.md#assignmentstatussearch) | **GET** /assignment/status/search | Search Assignment Statuses
*AssignmentApi* | [**assignmentStatusUpdate**](docs/Api/AssignmentApi.md#assignmentstatusupdate) | **POST** /assignment/status/update | Update Assignment Status
*AssignmentApi* | [**assignmentUpdate**](docs/Api/AssignmentApi.md#assignmentupdate) | **POST** /assignment/update | Update Assignment
*AudienceApi* | [**createAudience**](docs/Api/AudienceApi.md#createaudience) | **POST** /audience/create | Create Audience
*AudienceApi* | [**deleteAudience**](docs/Api/AudienceApi.md#deleteaudience) | **POST** /audience/delete | Delete Audience
*AudienceApi* | [**getAgeGroups**](docs/Api/AudienceApi.md#getagegroups) | **GET** /audience/ageGroups | Get Age Groups
*AudienceApi* | [**getAudience**](docs/Api/AudienceApi.md#getaudience) | **GET** /audience/get | Get Audience
*AudienceApi* | [**getAudienceList**](docs/Api/AudienceApi.md#getaudiencelist) | **GET** /audience/search | Search Audiences
*AudienceApi* | [**getDevices**](docs/Api/AudienceApi.md#getdevices) | **GET** /audience/devices | Get Devices
*AudienceApi* | [**getExperiences**](docs/Api/AudienceApi.md#getexperiences) | **GET** /audience/experiences | Get Experiences
*AudienceApi* | [**getGroupedAudiences**](docs/Api/AudienceApi.md#getgroupedaudiences) | **GET** /audience/grouped/get | Get GroupedAudiences
*AudienceApi* | [**listByAccount**](docs/Api/AudienceApi.md#listbyaccount) | **POST** /audience/suggestion/list | List Suggestions by Audience
*AudienceApi* | [**listByAudience**](docs/Api/AudienceApi.md#listbyaudience) | **GET** /audience/suggestion/offersByAudience | List Offers by Audience
*AudienceApi* | [**listLastestByAccount**](docs/Api/AudienceApi.md#listlastestbyaccount) | **GET** /audience/suggestion/latest | List Sent Suggestions
*AudienceApi* | [**sendByAccount**](docs/Api/AudienceApi.md#sendbyaccount) | **POST** /audience/suggestion/send | Send Suggestions
*AudienceApi* | [**updateAudience**](docs/Api/AudienceApi.md#updateaudience) | **POST** /audience/update | Update Audience
*BidApi* | [**createBid**](docs/Api/BidApi.md#createbid) | **POST** /bid/create | Create Bid
*BidApi* | [**deleteBid**](docs/Api/BidApi.md#deletebid) | **POST** /bid/delete | Delete Bid
*BidApi* | [**getBid**](docs/Api/BidApi.md#getbid) | **GET** /bid/get | Get Bid
*BidApi* | [**updateBid**](docs/Api/BidApi.md#updatebid) | **POST** /bid/update | Update Bid
*BillableEntityApi* | [**createBillableEntity**](docs/Api/BillableEntityApi.md#createbillableentity) | **POST** /billable/create | Create Billable
*BillableEntityApi* | [**deleteBillableEntity**](docs/Api/BillableEntityApi.md#deletebillableentity) | **POST** /billable/delete | Delete Billable
*BillableEntityApi* | [**getBillableEntity**](docs/Api/BillableEntityApi.md#getbillableentity) | **GET** /billable/get | Get Billable
*BillableEntityApi* | [**updateBillableEntity**](docs/Api/BillableEntityApi.md#updatebillableentity) | **POST** /billable/update | Update Billable
*BillingInfoApi* | [**addPaymentMethod**](docs/Api/BillingInfoApi.md#addpaymentmethod) | **POST** /billing/update | Update Payment Method
*BillingInfoApi* | [**createPaymentMethod**](docs/Api/BillingInfoApi.md#createpaymentmethod) | **POST** /billing/create | Create Payment Method
*BillingInfoApi* | [**createSmartContract**](docs/Api/BillingInfoApi.md#createsmartcontract) | **POST** /billing/crypto/transfer | Create Smart Contract
*BillingInfoApi* | [**getCryptoBalance**](docs/Api/BillingInfoApi.md#getcryptobalance) | **GET** /billing/crypto/get | Get Crypto Balances
*BillingInfoApi* | [**getPaymentMethod**](docs/Api/BillingInfoApi.md#getpaymentmethod) | **GET** /billing/get | Get Payment Method
*BillingInfoApi* | [**searchPaymentMethod**](docs/Api/BillingInfoApi.md#searchpaymentmethod) | **GET** /billing/search | Search Payment Methods
*CSVImportApi* | [**getStatusCSV**](docs/Api/CSVImportApi.md#getstatuscsv) | **GET** /csvimport/batch/status/details | Detail Status
*CSVImportApi* | [**listStatusCSV**](docs/Api/CSVImportApi.md#liststatuscsv) | **GET** /csvimport/batch/list | Search Status
*CSVImportApi* | [**statusCSV**](docs/Api/CSVImportApi.md#statuscsv) | **GET** /csvimport/batch/status | Batch Status
*CSVImportApi* | [**uploadCSV**](docs/Api/CSVImportApi.md#uploadcsv) | **POST** /csvimport/upload | Upload CSV
*CargoTypeApi* | [**createCargoType**](docs/Api/CargoTypeApi.md#createcargotype) | **POST** /cargo/type | Create Cargo Type
*CargoTypeApi* | [**deleteCargoType**](docs/Api/CargoTypeApi.md#deletecargotype) | **DELETE** /cargo/type/{cargoTypeId} | Delete Cargo Type
*CargoTypeApi* | [**getCargoType**](docs/Api/CargoTypeApi.md#getcargotype) | **GET** /cargo/type/{cargoTypeId} | Get Cargo Type
*CargoTypeApi* | [**searchCargoTypes**](docs/Api/CargoTypeApi.md#searchcargotypes) | **GET** /cargo/type | Search Cargo Type
*CargoTypeApi* | [**updateCargoType**](docs/Api/CargoTypeApi.md#updatecargotype) | **PUT** /cargo/type/{cargoTypeId} | Update Cargo Type
*CarrierApi* | [**searchCarriers**](docs/Api/CarrierApi.md#searchcarriers) | **GET** /carrier/search | Search Carriers
*CategoryApi* | [**categoryDistanceSearch**](docs/Api/CategoryApi.md#categorydistancesearch) | **GET** /category/distancesearch | Search Categories by Distance
*CategoryApi* | [**createCategory**](docs/Api/CategoryApi.md#createcategory) | **POST** /category/create | Create Category
*CategoryApi* | [**deleteCategory**](docs/Api/CategoryApi.md#deletecategory) | **POST** /category/delete | Delete Category
*CategoryApi* | [**duplicateCategory**](docs/Api/CategoryApi.md#duplicatecategory) | **POST** /category/duplicate | Duplicate Category
*CategoryApi* | [**getCategory**](docs/Api/CategoryApi.md#getcategory) | **GET** /category/get | Get Category
*CategoryApi* | [**searchCategories**](docs/Api/CategoryApi.md#searchcategories) | **GET** /category/search | Search Categories
*CategoryApi* | [**updateCategory**](docs/Api/CategoryApi.md#updatecategory) | **POST** /category/update | Update Category
*ConnectionApi* | [**addConnectionToGroup**](docs/Api/ConnectionApi.md#addconnectiontogroup) | **POST** /consumer/connection/group/addConnection | Add Connection
*ConnectionApi* | [**addConnectionsToGroup**](docs/Api/ConnectionApi.md#addconnectionstogroup) | **POST** /connection/group/addConnections | Add Connections
*ConnectionApi* | [**addSubGroups**](docs/Api/ConnectionApi.md#addsubgroups) | **POST** /consumer/connection/group/addSubGroup | Add Connection Groups
*ConnectionApi* | [**createOrUpdateConnection**](docs/Api/ConnectionApi.md#createorupdateconnection) | **POST** /consumer/connection/add | Create or Update Connection
*ConnectionApi* | [**createOrUpdateGroup**](docs/Api/ConnectionApi.md#createorupdategroup) | **POST** /consumer/connection/group | Create or Update Connection Group
*ConnectionApi* | [**followAccept**](docs/Api/ConnectionApi.md#followaccept) | **POST** /consumer/follow/accept | Accept Follow Request
*ConnectionApi* | [**followReject**](docs/Api/ConnectionApi.md#followreject) | **POST** /consumer/follow/reject | Reject Follow Request
*ConnectionApi* | [**followRemove**](docs/Api/ConnectionApi.md#followremove) | **POST** /consumer/follow/remove | Remove Follower / Unfollow
*ConnectionApi* | [**followRequest**](docs/Api/ConnectionApi.md#followrequest) | **POST** /consumer/follow/request | Send Follow Request
*ConnectionApi* | [**friendAccept**](docs/Api/ConnectionApi.md#friendaccept) | **POST** /consumer/friend/accept | Accept Friend
*ConnectionApi* | [**friendReject**](docs/Api/ConnectionApi.md#friendreject) | **POST** /consumer/friend/reject | Decline Friend
*ConnectionApi* | [**friendRemove**](docs/Api/ConnectionApi.md#friendremove) | **POST** /consumer/friend/remove | Delete Friend
*ConnectionApi* | [**friendRequest**](docs/Api/ConnectionApi.md#friendrequest) | **POST** /consumer/friend/request | Request Friend
*ConnectionApi* | [**getConnectionSentFriendRequests**](docs/Api/ConnectionApi.md#getconnectionsentfriendrequests) | **GET** /consumer/connection/getRequested | Get Sent Friend Requests
*ConnectionApi* | [**getConnections**](docs/Api/ConnectionApi.md#getconnections) | **GET** /consumer/connection/get | Search Connections
*ConnectionApi* | [**getGroupDetails**](docs/Api/ConnectionApi.md#getgroupdetails) | **GET** /consumer/connection/group/details/get | Get Connection Group
*ConnectionApi* | [**groupSearch**](docs/Api/ConnectionApi.md#groupsearch) | **GET** /connection/group/search | Search Connection Groups
*ConnectionApi* | [**removeConnectionFromGroup**](docs/Api/ConnectionApi.md#removeconnectionfromgroup) | **POST** /consumer/connection/group/removeConnection | Delete Connection
*ConnectionApi* | [**removeConnectionsFromGroup**](docs/Api/ConnectionApi.md#removeconnectionsfromgroup) | **POST** /connection/group/removeConnections | Remove Connections
*ConnectionApi* | [**removeGroup**](docs/Api/ConnectionApi.md#removegroup) | **POST** /consumer/connection/group/remove | Delete Connection Group
*ConnectionApi* | [**removeSubGroups**](docs/Api/ConnectionApi.md#removesubgroups) | **POST** /consumer/connection/group/removeSubGroup | Remove Connection Groups
*ConnectionApi* | [**searchConnections**](docs/Api/ConnectionApi.md#searchconnections) | **GET** /connection/search | Search Possible Connections
*ContestApi* | [**addOrUpdateAlbumContest**](docs/Api/ContestApi.md#addorupdatealbumcontest) | **POST** /consumer/album/contest | Create or Update Contest
*ContestApi* | [**approveAlbumContest**](docs/Api/ContestApi.md#approvealbumcontest) | **POST** /consumer/album/contest/approve | Approve Contest
*ContestApi* | [**deleteContest**](docs/Api/ContestApi.md#deletecontest) | **POST** /consumer/album/contest/remove | Delete Contest
*ContestApi* | [**getAlbumContest**](docs/Api/ContestApi.md#getalbumcontest) | **GET** /consumer/album/contest/get | Get Contest
*ContestApi* | [**getAlbumContests**](docs/Api/ContestApi.md#getalbumcontests) | **GET** /consumer/album/contest/search | Search Contests
*ContestApi* | [**voteOnAlbumContest**](docs/Api/ContestApi.md#voteonalbumcontest) | **POST** /consumer/album/contest/vote | Vote on Contest
*CreativeApi* | [**addPreview**](docs/Api/CreativeApi.md#addpreview) | **POST** /creative/addpreview | Add Preview
*CreativeApi* | [**adsFind**](docs/Api/CreativeApi.md#adsfind) | **GET** /ads/find | Find Missions
*CreativeApi* | [**createCreative**](docs/Api/CreativeApi.md#createcreative) | **POST** /creative/create | Create Creative
*CreativeApi* | [**deleteCreative**](docs/Api/CreativeApi.md#deletecreative) | **POST** /creative/delete | Delete Creative
*CreativeApi* | [**getCreative**](docs/Api/CreativeApi.md#getcreative) | **GET** /creative/get | Get Creative
*CreativeApi* | [**getCreativesByApplication**](docs/Api/CreativeApi.md#getcreativesbyapplication) | **GET** /creative/search | Search Creatives
*CreativeApi* | [**removePreview**](docs/Api/CreativeApi.md#removepreview) | **POST** /creative/removepreview | Remove Preview
*CreativeApi* | [**updateCreative**](docs/Api/CreativeApi.md#updatecreative) | **POST** /creative/update | Update Creative
*DependentApi* | [**create**](docs/Api/DependentApi.md#create) | **PUT** /cargo/dependent/{accountId} | Create Dependent
*DependentApi* | [**getDependents**](docs/Api/DependentApi.md#getdependents) | **GET** /cargo/dependent/{accountId} | Get dependent list of an account
*DependentApi* | [**removeDependent**](docs/Api/DependentApi.md#removedependent) | **DELETE** /cargo/dependent/{accountId} | Delete Dependent
*DisbursementApi* | [**checkDisbursements**](docs/Api/DisbursementApi.md#checkdisbursements) | **GET** /disbursement/check | Check Disbursements
*DisbursementApi* | [**createDisbursement**](docs/Api/DisbursementApi.md#createdisbursement) | **POST** /disbursement/create | Create Disbursement
*DisbursementApi* | [**getDisbursement**](docs/Api/DisbursementApi.md#getdisbursement) | **GET** /disbursement/get | Get Disbursement
*DisbursementApi* | [**searchDisbursements**](docs/Api/DisbursementApi.md#searchdisbursements) | **GET** /disbursement/search | Search Disbursements
*DisbursementApi* | [**updateDisbursement**](docs/Api/DisbursementApi.md#updatedisbursement) | **POST** /disbursement/update | Update Disbursement
*EmployeeApi* | [**assignEmployee**](docs/Api/EmployeeApi.md#assignemployee) | **POST** /employee/assign | Assign Employee
*EmployeeApi* | [**assignToLocationEmployee**](docs/Api/EmployeeApi.md#assigntolocationemployee) | **POST** /employee/assignToLocation | Assign Employee to Location
*EmployeeApi* | [**createEmployee**](docs/Api/EmployeeApi.md#createemployee) | **POST** /employee/create | Create Employee
*EmployeeApi* | [**deleteEmployee**](docs/Api/EmployeeApi.md#deleteemployee) | **POST** /employee/delete | Delete Employee
*EmployeeApi* | [**getEmployee**](docs/Api/EmployeeApi.md#getemployee) | **POST** /employee/get | Get Employee
*EmployeeApi* | [**searchEmployees**](docs/Api/EmployeeApi.md#searchemployees) | **POST** /employee/search | Search Employees
*EmployeeApi* | [**unassignEmployee**](docs/Api/EmployeeApi.md#unassignemployee) | **POST** /employee/unassign | Unassign Employee
*EmployeeApi* | [**updateEmployee**](docs/Api/EmployeeApi.md#updateemployee) | **POST** /employee/update | Update Employee
*EventApi* | [**attendEvent**](docs/Api/EventApi.md#attendevent) | **POST** /event/attend | Attend Event
*EventApi* | [**createEvent**](docs/Api/EventApi.md#createevent) | **POST** /event/create | Create Event
*EventApi* | [**deleteEvent**](docs/Api/EventApi.md#deleteevent) | **POST** /event/delete | Delete Event
*EventApi* | [**getEvent**](docs/Api/EventApi.md#getevent) | **GET** /event/get | Get Event
*EventApi* | [**searchEventTransactions**](docs/Api/EventApi.md#searcheventtransactions) | **GET** /event/attendance/search | Search Event Attendance
*EventApi* | [**searchEvents**](docs/Api/EventApi.md#searchevents) | **GET** /event/search | Search Events
*EventApi* | [**updateEvent**](docs/Api/EventApi.md#updateevent) | **POST** /event/update | Update Event
*FacebookApi* | [**getToken**](docs/Api/FacebookApi.md#gettoken) | **GET** /facebook/getfbtoken | Get Facebook Token
*FacebookApi* | [**graphInterface**](docs/Api/FacebookApi.md#graphinterface) | **POST** /facebook/graph | Post to Facebook
*FavoriteApi* | [**addFavorite**](docs/Api/FavoriteApi.md#addfavorite) | **POST** /favorite/create | Create Favorite
*FavoriteApi* | [**deleteFavorite**](docs/Api/FavoriteApi.md#deletefavorite) | **POST** /favorite/delete | Delete Favorite
*FavoriteApi* | [**getFavorite**](docs/Api/FavoriteApi.md#getfavorite) | **GET** /favorite/get | Get Favorite
*FavoriteApi* | [**searchFavorites**](docs/Api/FavoriteApi.md#searchfavorites) | **GET** /favorite/search | Search Favorites
*FavoriteApi* | [**whoHasFavorited**](docs/Api/FavoriteApi.md#whohasfavorited) | **GET** /favorite/whois | Who has Favorited
*FilterApi* | [**createFilter**](docs/Api/FilterApi.md#createfilter) | **POST** /filter/create | Create Filter
*FilterApi* | [**deleteFilter**](docs/Api/FilterApi.md#deletefilter) | **POST** /filter/delete | Delete Filter
*FilterApi* | [**getFilter**](docs/Api/FilterApi.md#getfilter) | **GET** /filter/get | Get Filter
*FilterApi* | [**searchFilters**](docs/Api/FilterApi.md#searchfilters) | **GET** /filter/search | Search Filters
*FilterApi* | [**updateFilter**](docs/Api/FilterApi.md#updatefilter) | **POST** /filter/update | Update Filter
*FlagApi* | [**createFlag**](docs/Api/FlagApi.md#createflag) | **POST** /flag/create | Create Flag
*FlagApi* | [**deleteFlag**](docs/Api/FlagApi.md#deleteflag) | **POST** /flag/delete | Delete Flag
*FlagApi* | [**getFlag**](docs/Api/FlagApi.md#getflag) | **GET** /flag/get | Get Flag
*FlagApi* | [**getFlagThreshold**](docs/Api/FlagApi.md#getflagthreshold) | **GET** /flag/threshold/get | Get Flag Threshold
*FlagApi* | [**updateFlagThreshold**](docs/Api/FlagApi.md#updateflagthreshold) | **POST** /flag/threshold/update | Update Flag Threshold
*GameApi* | [**createGame**](docs/Api/GameApi.md#creategame) | **POST** /game/create | Create a Game
*GameApi* | [**deleteGame**](docs/Api/GameApi.md#deletegame) | **POST** /game/delete | Delete a Game
*GameApi* | [**getGame**](docs/Api/GameApi.md#getgame) | **GET** /game/get | Get a Game by id
*GameApi* | [**searchGames**](docs/Api/GameApi.md#searchgames) | **GET** /game/search | Search a Game
*GameApi* | [**updateGame**](docs/Api/GameApi.md#updategame) | **POST** /game/update | Update a Game
*GameLevelApi* | [**createGameLevel**](docs/Api/GameLevelApi.md#creategamelevel) | **POST** /level/create | Create Game Level
*GameLevelApi* | [**deleteGameLevel**](docs/Api/GameLevelApi.md#deletegamelevel) | **POST** /level/delete | Delete Game Level
*GameLevelApi* | [**getGameLevel**](docs/Api/GameLevelApi.md#getgamelevel) | **GET** /level/get | Get Game Level
*GameLevelApi* | [**getGameLevelsByApplication**](docs/Api/GameLevelApi.md#getgamelevelsbyapplication) | **GET** /level/search | Search Game Levels
*GameLevelApi* | [**getGameLevelsByBillableEntity**](docs/Api/GameLevelApi.md#getgamelevelsbybillableentity) | **GET** /level/searchByBillableEntity | Search Game Level by Billable Entity
*GameLevelApi* | [**getQuestionsInLevel**](docs/Api/GameLevelApi.md#getquestionsinlevel) | **GET** /level/questions/get | Get Level Questions
*GameLevelApi* | [**getWordsInLevel**](docs/Api/GameLevelApi.md#getwordsinlevel) | **GET** /level/words/get | Get Level Words
*GameLevelApi* | [**updateGameLevel**](docs/Api/GameLevelApi.md#updategamelevel) | **POST** /level/update | Update Game Level
*GameLevelApi* | [**updateQuestionsInLevel**](docs/Api/GameLevelApi.md#updatequestionsinlevel) | **POST** /level/questions/update | Update Level Questions
*GameLevelApi* | [**updateWordsInLevel**](docs/Api/GameLevelApi.md#updatewordsinlevel) | **POST** /level/words/update | Update Level Words
*InviteApi* | [**acceptInvite**](docs/Api/InviteApi.md#acceptinvite) | **POST** /invite/accept | Accept Invite
*InviteApi* | [**albumContestInvite**](docs/Api/InviteApi.md#albumcontestinvite) | **POST** /invite/albumContest | Invite to Contest
*InviteApi* | [**albumInvite**](docs/Api/InviteApi.md#albuminvite) | **POST** /invite/album | Invite to Collection
*InviteApi* | [**eventInvite**](docs/Api/InviteApi.md#eventinvite) | **POST** /invite/event | Invite to Event
*InviteApi* | [**gameInvite**](docs/Api/InviteApi.md#gameinvite) | **POST** /invite/gameLevel | Invite to Game Level
*InviteApi* | [**getInvite**](docs/Api/InviteApi.md#getinvite) | **GET** /invite/get | Get Invite
*InviteApi* | [**missionInvite**](docs/Api/InviteApi.md#missioninvite) | **POST** /invite/mission | Invite to Mission
*InviteApi* | [**offerInvite**](docs/Api/InviteApi.md#offerinvite) | **POST** /invite/offer | Invite to Offer
*InviteApi* | [**offerLocationInvite**](docs/Api/InviteApi.md#offerlocationinvite) | **POST** /invite/offerLocation | Invite to Offer Location
*InviteApi* | [**retailerLocationInvite**](docs/Api/InviteApi.md#retailerlocationinvite) | **POST** /invite/retailerLocation | Invite to Retailer Location
*LeaderboardApi* | [**createLeaderboard**](docs/Api/LeaderboardApi.md#createleaderboard) | **POST** /leaderboard/create | Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
*LeaderboardApi* | [**deleteLeaderboard**](docs/Api/LeaderboardApi.md#deleteleaderboard) | **POST** /leaderboard/delete | Delete the Leader Board
*LeaderboardApi* | [**getLeaderboard**](docs/Api/LeaderboardApi.md#getleaderboard) | **GET** /leaderboard/get | Read a leaderboard by id and retrieve the matching ranking list
*LeaderboardApi* | [**searchLeaderboards**](docs/Api/LeaderboardApi.md#searchleaderboards) | **GET** /leaderboard/search | Search leaderboard and retrieve the matching ranking list
*LeaderboardApi* | [**updateLeaderboard**](docs/Api/LeaderboardApi.md#updateleaderboard) | **POST** /leaderboard/update | Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
*LikeApi* | [**registerLike**](docs/Api/LikeApi.md#registerlike) | **POST** /like | Create Like
*LikeApi* | [**removeLike**](docs/Api/LikeApi.md#removelike) | **POST** /like/delete | Delete Like
*LikeApi* | [**searchLikes**](docs/Api/LikeApi.md#searchlikes) | **GET** /like/search | Search Likes
*ListingApi* | [**createListing**](docs/Api/ListingApi.md#createlisting) | **POST** /listing/create | Create Listing
*ListingApi* | [**deleteListing**](docs/Api/ListingApi.md#deletelisting) | **POST** /listing/delete | Delete Listing
*ListingApi* | [**getListing**](docs/Api/ListingApi.md#getlisting) | **GET** /listing/get | Get Listing
*ListingApi* | [**searchListing**](docs/Api/ListingApi.md#searchlisting) | **GET** /listing/search | Search Listings
*ListingApi* | [**summaryListing**](docs/Api/ListingApi.md#summarylisting) | **GET** /listing/summary | Summary Listing
*ListingApi* | [**updateListing**](docs/Api/ListingApi.md#updatelisting) | **POST** /listing/update | Update Listing
*LocationApi* | [**cacheTrilaterationData**](docs/Api/LocationApi.md#cachetrilaterationdata) | **POST** /location/trilaterate/cache | Create Trilateration Data with File
*LocationApi* | [**cacheTrilaterationDataGzip**](docs/Api/LocationApi.md#cachetrilaterationdatagzip) | **POST** /location/trilaterate/cache/submit | Create Trilateration Data with Rest
*LocationApi* | [**getLocationByIp**](docs/Api/LocationApi.md#getlocationbyip) | **GET** /location/ip | Get Location by IP
*LocationApi* | [**getLocationByTrilateration**](docs/Api/LocationApi.md#getlocationbytrilateration) | **GET** /account/location/trilaterate | Get Location by Trilateration
*LocationApi* | [**getLocations**](docs/Api/LocationApi.md#getlocations) | **GET** /location/search | Search Regions or Postal Codes
*LocationApiV2Api* | [**createLocationV2**](docs/Api/LocationApiV2Api.md#createlocationv2) | **POST** /location | Create new location
*LocationApiV2Api* | [**updateLocationV2**](docs/Api/LocationApiV2Api.md#updatelocationv2) | **POST** /location/{id} | Update an existing location
*MediaApi* | [**createMedia**](docs/Api/MediaApi.md#createmedia) | **POST** /media/create | Create Media
*MediaApi* | [**deleteMedia**](docs/Api/MediaApi.md#deletemedia) | **POST** /media/delete | Delete Media
*MediaApi* | [**getMedia**](docs/Api/MediaApi.md#getmedia) | **GET** /media/get | Media Get
*MediaApi* | [**searchMedia**](docs/Api/MediaApi.md#searchmedia) | **GET** /media/search | Search Media
*MediaApi* | [**updateMedia**](docs/Api/MediaApi.md#updatemedia) | **POST** /media/update | Update Media
*MissionApi* | [**createMission**](docs/Api/MissionApi.md#createmission) | **POST** /mission/create | Create Mission
*MissionApi* | [**deleteMission**](docs/Api/MissionApi.md#deletemission) | **POST** /mission/delete | Delete Mission
*MissionApi* | [**findMissions**](docs/Api/MissionApi.md#findmissions) | **GET** /mission/find | Find Missions
*MissionApi* | [**getMission**](docs/Api/MissionApi.md#getmission) | **GET** /mission/get | Get Mission
*MissionApi* | [**importMission**](docs/Api/MissionApi.md#importmission) | **POST** /mission/import | Import Mission
*MissionApi* | [**searchMissionFormats**](docs/Api/MissionApi.md#searchmissionformats) | **GET** /mission/format/search | Search Mission Formats
*MissionApi* | [**searchMissions**](docs/Api/MissionApi.md#searchmissions) | **GET** /mission/search | Search Missions
*MissionApi* | [**searchMissionsByBillableEntity**](docs/Api/MissionApi.md#searchmissionsbybillableentity) | **GET** /mission/searchByBillableEntity | Search Missions by Billable Entity
*MissionApi* | [**updateMission**](docs/Api/MissionApi.md#updatemission) | **POST** /mission/update | Update Mission
*MissionInviteApi* | [**createMissionInvite**](docs/Api/MissionInviteApi.md#createmissioninvite) | **POST** /mission/invite/create | Create Mission Invite
*MissionInviteApi* | [**deleteMissionInvite**](docs/Api/MissionInviteApi.md#deletemissioninvite) | **POST** /mission/invite/delete | Delete Mission Invite
*MissionInviteApi* | [**getMissionInvite**](docs/Api/MissionInviteApi.md#getmissioninvite) | **GET** /mission/invite/get | Get Mission Invite
*MissionInviteApi* | [**searchMissionInvites**](docs/Api/MissionInviteApi.md#searchmissioninvites) | **GET** /mission/invite/search | Search Mission Invites
*MissionInviteApi* | [**updateMissionInvite**](docs/Api/MissionInviteApi.md#updatemissioninvite) | **POST** /mission/invite/update | Update Mission Invite
*NoteApi* | [**batchOperation**](docs/Api/NoteApi.md#batchoperation) | **POST** /note/batch | Batch Note Operation
*NoteApi* | [**createNote**](docs/Api/NoteApi.md#createnote) | **POST** /note/create | Create Note
*NoteApi* | [**deleteNote**](docs/Api/NoteApi.md#deletenote) | **POST** /note/delete | Delete Note
*NoteApi* | [**getNote**](docs/Api/NoteApi.md#getnote) | **POST** /note/get | Get Note
*NoteApi* | [**searchNotes**](docs/Api/NoteApi.md#searchnotes) | **POST** /note/search | Search Notes
*NoteApi* | [**updateNote**](docs/Api/NoteApi.md#updatenote) | **POST** /note/update | Update Note
*NotificationApi* | [**createNotificationTemplate**](docs/Api/NotificationApi.md#createnotificationtemplate) | **POST** /notification/template/create | Create Notification Template
*NotificationApi* | [**createOrUpdateBlockedNotifications**](docs/Api/NotificationApi.md#createorupdateblockednotifications) | **POST** /notification/blocked/batch | Create or update blocked notification settings
*NotificationApi* | [**deleteNotificationTemplate**](docs/Api/NotificationApi.md#deletenotificationtemplate) | **POST** /notification/template/delete | Delete Notification Template
*NotificationApi* | [**getNotificationTemplate**](docs/Api/NotificationApi.md#getnotificationtemplate) | **GET** /notification/template/get | Get Notification Template
*NotificationApi* | [**getNotifications**](docs/Api/NotificationApi.md#getnotifications) | **GET** /notification/search | Get Notifications
*NotificationApi* | [**registerNotificationToken**](docs/Api/NotificationApi.md#registernotificationtoken) | **POST** /notification/token | Register Notification Token
*NotificationApi* | [**searchBlockedNotifications**](docs/Api/NotificationApi.md#searchblockednotifications) | **GET** /notification/blocked/search | Search on the user&#39;s blocked notification settings
*NotificationApi* | [**searchNotificationTemplate**](docs/Api/NotificationApi.md#searchnotificationtemplate) | **GET** /notification/template/search | Search Notification Templates
*NotificationApi* | [**searchRecipients**](docs/Api/NotificationApi.md#searchrecipients) | **GET** /notification/recipient/search | Search for Recipients
*NotificationApi* | [**searchRecipientsCount**](docs/Api/NotificationApi.md#searchrecipientscount) | **GET** /notification/recipient/search/count | Search for Recipients (Counts/Grouped)
*NotificationApi* | [**sendBatchNotifications**](docs/Api/NotificationApi.md#sendbatchnotifications) | **POST** /notification/batch | Send Batch Notifications
*NotificationApi* | [**sendCustomNotifications**](docs/Api/NotificationApi.md#sendcustomnotifications) | **POST** /notification/custom | Send Custom Notifications
*NotificationApi* | [**updateNotificationTemplate**](docs/Api/NotificationApi.md#updatenotificationtemplate) | **POST** /notification/template/update | Update Notification Template
*ObjectStoreApi* | [**addField**](docs/Api/ObjectStoreApi.md#addfield) | **POST** /object/field/add | Create Field
*ObjectStoreApi* | [**createData**](docs/Api/ObjectStoreApi.md#createdata) | **POST** /object/data/{objectName} | Create Data
*ObjectStoreApi* | [**createObject**](docs/Api/ObjectStoreApi.md#createobject) | **POST** /object/create | Create Object
*ObjectStoreApi* | [**deleteData**](docs/Api/ObjectStoreApi.md#deletedata) | **DELETE** /object/data/{objectName}/{objectId} | Delete Data
*ObjectStoreApi* | [**deleteField**](docs/Api/ObjectStoreApi.md#deletefield) | **POST** /object/field/delete | Delete Field
*ObjectStoreApi* | [**deleteObject**](docs/Api/ObjectStoreApi.md#deleteobject) | **POST** /object/delete | Delete Object
*ObjectStoreApi* | [**getData**](docs/Api/ObjectStoreApi.md#getdata) | **GET** /object/data/{objectName}/{objectId} | Get Data
*ObjectStoreApi* | [**getObject**](docs/Api/ObjectStoreApi.md#getobject) | **GET** /object/get | Get Object
*ObjectStoreApi* | [**searchData**](docs/Api/ObjectStoreApi.md#searchdata) | **GET** /object/data/{objectName} | Search Data
*ObjectStoreApi* | [**searchObject**](docs/Api/ObjectStoreApi.md#searchobject) | **GET** /object/search | Search Objects
*ObjectStoreApi* | [**updateData**](docs/Api/ObjectStoreApi.md#updatedata) | **PUT** /object/data/{objectName}/{objectId} | Update Data
*OfferApi* | [**batchUpdateOfferLocations**](docs/Api/OfferApi.md#batchupdateofferlocations) | **POST** /retailer/offer/location/batchUpdate | Update Offer Locations
*OfferApi* | [**createOffer**](docs/Api/OfferApi.md#createoffer) | **POST** /retailer/offer/create | Create Offer
*OfferApi* | [**deleteOffer**](docs/Api/OfferApi.md#deleteoffer) | **POST** /retailer/offer/delete | Delete Offer
*OfferApi* | [**deleteOfferLocation**](docs/Api/OfferApi.md#deleteofferlocation) | **POST** /retailer/offer/location/delete | Delete Offer Location
*OfferApi* | [**getOffer**](docs/Api/OfferApi.md#getoffer) | **GET** /retailer/offer/get | Get Offer
*OfferApi* | [**getOfferDetails**](docs/Api/OfferApi.md#getofferdetails) | **GET** /offer/get | Get Offer
*OfferApi* | [**getOfferListCounts**](docs/Api/OfferApi.md#getofferlistcounts) | **GET** /offer/lists/count | Get Offers (Counts)
*OfferApi* | [**getOfferLocation**](docs/Api/OfferApi.md#getofferlocation) | **GET** /offer/location/get | Get Offer Location
*OfferApi* | [**getOfferLocationsForRetailers**](docs/Api/OfferApi.md#getofferlocationsforretailers) | **GET** /retailer/offer/location/search | Search Offer Locations
*OfferApi* | [**getOffersForRetailers**](docs/Api/OfferApi.md#getoffersforretailers) | **GET** /retailer/offer/search | Search Offers
*OfferApi* | [**redeemOfferTransaction**](docs/Api/OfferApi.md#redeemoffertransaction) | **POST** /retailer/offer/transaction/update | Update Offer Transaction
*OfferApi* | [**searchOfferTransactionsForRetailers**](docs/Api/OfferApi.md#searchoffertransactionsforretailers) | **GET** /retailer/offer/transaction/search | Search Offer Transactions
*OfferApi* | [**searchOffersForConsumer**](docs/Api/OfferApi.md#searchoffersforconsumer) | **GET** /offer/lists | Search Offers
*OfferApi* | [**topOfferTransactions**](docs/Api/OfferApi.md#topoffertransactions) | **GET** /offer/top | Get Offers (Top)
*OfferApi* | [**updateOffer**](docs/Api/OfferApi.md#updateoffer) | **POST** /retailer/offer/update | Update Offer
*OfferApi* | [**updateOfferStatus**](docs/Api/OfferApi.md#updateofferstatus) | **POST** /retailer/offer/status | Activate Offer
*OfferStatusApi* | [**createOfferTransactionStatus**](docs/Api/OfferStatusApi.md#createoffertransactionstatus) | **POST** /offer/status/create | Create Offer Status
*OfferStatusApi* | [**deleteOfferTransactionStatus**](docs/Api/OfferStatusApi.md#deleteoffertransactionstatus) | **POST** /offer/status/delete | Delete Offer Status
*OfferStatusApi* | [**getOfferTransactionStatus**](docs/Api/OfferStatusApi.md#getoffertransactionstatus) | **GET** /offer/status/get | Get Offer Status
*OfferStatusApi* | [**searchOfferTransactionStatuses**](docs/Api/OfferStatusApi.md#searchoffertransactionstatuses) | **GET** /offer/status/search | Search Offer Status
*OfferStatusApi* | [**updateOfferTransactionStatus**](docs/Api/OfferStatusApi.md#updateoffertransactionstatus) | **POST** /offer/status/update | Update Offer Status
*OpenAIApi* | [**imageGeneration**](docs/Api/OpenAIApi.md#imagegeneration) | **POST** /openai/v1/images/generations | Generate images with OpenAI
*OptimizeApi* | [**getOptimizationResult**](docs/Api/OptimizeApi.md#getoptimizationresult) | **GET** /optimize/result/{batchID} | Get Optimization Result
*OptimizeApi* | [**requestOptimization**](docs/Api/OptimizeApi.md#requestoptimization) | **POST** /optimize/request | Request Optimization
*OrsonApi* | [**addMovie**](docs/Api/OrsonApi.md#addmovie) | **POST** /orson/ai/addMovie | Add Movie
*OrsonApi* | [**aiDocs**](docs/Api/OrsonApi.md#aidocs) | **GET** /orson/ai/docs | Search Docs
*OrsonApi* | [**aiFindImages**](docs/Api/OrsonApi.md#aifindimages) | **GET** /orson/ai/img | Find images
*OrsonApi* | [**aiTags**](docs/Api/OrsonApi.md#aitags) | **GET** /orson/ai/tags | Search Tags
*OrsonApi* | [**aiText**](docs/Api/OrsonApi.md#aitext) | **GET** /orson/ai/text | Search Text
*OrsonApi* | [**batch**](docs/Api/OrsonApi.md#batch) | **POST** /orson/ai/batch | Batch Analysis
*OrsonApi* | [**createInstantEpisode**](docs/Api/OrsonApi.md#createinstantepisode) | **POST** /orson/stories/episodes/instant | Creates an instant episode
*OrsonApi* | [**createVoiceCanvas**](docs/Api/OrsonApi.md#createvoicecanvas) | **POST** /orson/ai/voiceCanvas | Create VoiceCanvas images
*OrsonApi* | [**emotion**](docs/Api/OrsonApi.md#emotion) | **POST** /orson/ai/emotion | Detect emotions
*OrsonApi* | [**getAddMovieResult**](docs/Api/OrsonApi.md#getaddmovieresult) | **GET** /orson/ai/addMovie/{requestId} | Get Add Movie Result
*OrsonApi* | [**getBatch**](docs/Api/OrsonApi.md#getbatch) | **GET** /orson/ai/batch/{requestId} | Get Batch Analysis Results
*OrsonApi* | [**getEmotion**](docs/Api/OrsonApi.md#getemotion) | **GET** /orson/ai/emotion/{requestId} | Get Emotion Results
*OrsonApi* | [**getEpisodeStatus**](docs/Api/OrsonApi.md#getepisodestatus) | **GET** /orson/stories/episodes/{episodeId}/status | Check episode status
*OrsonApi* | [**getRenderStatus**](docs/Api/OrsonApi.md#getrenderstatus) | **GET** /orson/stories/renders/{renderId}/status | Check episode status
*OrsonApi* | [**getSTT**](docs/Api/OrsonApi.md#getstt) | **GET** /orson/ai/stt/{requestId} | Get Speach to Text Result
*OrsonApi* | [**getTTS**](docs/Api/OrsonApi.md#gettts) | **GET** /orson/ai/tts/{requestId} | Get Text to Speach Result
*OrsonApi* | [**getTechTune**](docs/Api/OrsonApi.md#gettechtune) | **GET** /orson/ai/techTune/{requestId} | Get TechTune Results
*OrsonApi* | [**getTopics**](docs/Api/OrsonApi.md#gettopics) | **GET** /orson/ai/topics/{requestId} | Get Topics
*OrsonApi* | [**getVoiceCanvas**](docs/Api/OrsonApi.md#getvoicecanvas) | **GET** /orson/ai/voiceCanvas/{requestId} | Get VoiceCanvas images
*OrsonApi* | [**startVideoRender**](docs/Api/OrsonApi.md#startvideorender) | **POST** /orson/stories/renders | Starts a StoryStitch video render
*OrsonApi* | [**stt**](docs/Api/OrsonApi.md#stt) | **POST** /orson/ai/stt | Speach to Text
*OrsonApi* | [**summarizeTopics**](docs/Api/OrsonApi.md#summarizetopics) | **POST** /orson/ai/topics | Summarize Topics
*OrsonApi* | [**techTune**](docs/Api/OrsonApi.md#techtune) | **POST** /orson/ai/techTune | Detect Technical Issues
*OrsonApi* | [**tts**](docs/Api/OrsonApi.md#tts) | **POST** /orson/ai/tts | Text to Speach
*PackApi* | [**createPack**](docs/Api/PackApi.md#createpack) | **POST** /pack/create | Create Pack
*PackApi* | [**deletePack**](docs/Api/PackApi.md#deletepack) | **POST** /pack/delete | Delete Pack
*PackApi* | [**getPack**](docs/Api/PackApi.md#getpack) | **GET** /pack/get | Get Pack
*PackApi* | [**searchPacks**](docs/Api/PackApi.md#searchpacks) | **GET** /pack/search | Search Packs
*PackApi* | [**updatePack**](docs/Api/PackApi.md#updatepack) | **POST** /pack/update | Update Pack
*ParticipantsApi* | [**processAllParticipants**](docs/Api/ParticipantsApi.md#processallparticipants) | **POST** /participant/process/all | Process All Participant Feeds
*ParticipantsApi* | [**processParticipants**](docs/Api/ParticipantsApi.md#processparticipants) | **POST** /participant/process | Process Participants Feed
*PathingApi* | [**computePath**](docs/Api/PathingApi.md#computepath) | **GET** /pathing/compute | Calculate Path
*PostalCodeApi* | [**createPostalCode**](docs/Api/PostalCodeApi.md#createpostalcode) | **POST** /postalCode/create | Create Postal Code
*PostalCodeApi* | [**deletePostalCode**](docs/Api/PostalCodeApi.md#deletepostalcode) | **POST** /postalCode/delete | Delete Postal Code
*PostalCodeApi* | [**getPostalCode**](docs/Api/PostalCodeApi.md#getpostalcode) | **GET** /postalCode/get | Get Postal Code
*PostalCodeApi* | [**getPostalCodes**](docs/Api/PostalCodeApi.md#getpostalcodes) | **GET** /postalCode/search | Search Postal Codes
*PostalCodeApi* | [**updatePostalCode**](docs/Api/PostalCodeApi.md#updatepostalcode) | **POST** /postalCode/update | Update Postal Code
*PreviewPersonaApi* | [**createPersona**](docs/Api/PreviewPersonaApi.md#createpersona) | **POST** /persona/create | Create Persona
*PreviewPersonaApi* | [**deletePersona**](docs/Api/PreviewPersonaApi.md#deletepersona) | **POST** /persona/delete | Delete Persona
*PreviewPersonaApi* | [**getPersonaList**](docs/Api/PreviewPersonaApi.md#getpersonalist) | **GET** /persona/get | Get Persona
*PreviewPersonaApi* | [**searchPersona**](docs/Api/PreviewPersonaApi.md#searchpersona) | **GET** /persona/search | Search Personas
*PreviewPersonaApi* | [**updatePersona**](docs/Api/PreviewPersonaApi.md#updatepersona) | **POST** /persona/update | Update Persona
*ProgramApi* | [**createProgram**](docs/Api/ProgramApi.md#createprogram) | **POST** /program | Create Program
*ProgramApi* | [**deleteProgram**](docs/Api/ProgramApi.md#deleteprogram) | **DELETE** /program/{id} | Delete Program
*ProgramApi* | [**getProgram**](docs/Api/ProgramApi.md#getprogram) | **GET** /program/{id} | Get Program
*ProgramApi* | [**postProgram**](docs/Api/ProgramApi.md#postprogram) | **POST** /program/{id} | Update Program
*ProgramApi* | [**putProgram**](docs/Api/ProgramApi.md#putprogram) | **PUT** /program/{id} | Update Program
*ProgramApi* | [**searchPrograms**](docs/Api/ProgramApi.md#searchprograms) | **GET** /program | Search Programs
*PurchaseItemApi* | [**createPurchaseItem**](docs/Api/PurchaseItemApi.md#createpurchaseitem) | **POST** /purchase/create | Create Purchase
*PurchaseItemApi* | [**deletePurchaseItem**](docs/Api/PurchaseItemApi.md#deletepurchaseitem) | **POST** /purchase/delete | Delete Purchase
*PurchaseItemApi* | [**getPurchaseItem**](docs/Api/PurchaseItemApi.md#getpurchaseitem) | **GET** /purchase/get | Get Purchase
*PurchaseItemApi* | [**searchPurchaseItems**](docs/Api/PurchaseItemApi.md#searchpurchaseitems) | **GET** /purchase/search | Search Purchases
*PurchaseItemApi* | [**updatePurchaseItem**](docs/Api/PurchaseItemApi.md#updatepurchaseitem) | **POST** /purchase/update | Update Purchase
*PurchaseOrderApi* | [**createOrder**](docs/Api/PurchaseOrderApi.md#createorder) | **POST** /order/create | Create Order
*PurchaseOrderApi* | [**deleteOrder**](docs/Api/PurchaseOrderApi.md#deleteorder) | **POST** /order/delete | Delete Order
*PurchaseOrderApi* | [**getOrder**](docs/Api/PurchaseOrderApi.md#getorder) | **GET** /order/get | Get Order
*PurchaseOrderApi* | [**previewOrder**](docs/Api/PurchaseOrderApi.md#previeworder) | **POST** /order/preview | Preview Order
*PurchaseOrderApi* | [**searchOrders**](docs/Api/PurchaseOrderApi.md#searchorders) | **GET** /order/search | Search Orders
*PurchaseOrderApi* | [**updateOrder**](docs/Api/PurchaseOrderApi.md#updateorder) | **POST** /order/update | Update Order
*QuestionApi* | [**createQuestion**](docs/Api/QuestionApi.md#createquestion) | **POST** /game/question/create | Create Question
*QuestionApi* | [**deleteQuestion**](docs/Api/QuestionApi.md#deletequestion) | **POST** /game/question/delete | Delete Question
*QuestionApi* | [**getQuestion**](docs/Api/QuestionApi.md#getquestion) | **GET** /game/question/get | Get Question
*QuestionApi* | [**searchQuestions**](docs/Api/QuestionApi.md#searchquestions) | **GET** /game/question/search | Search Questions
*QuestionApi* | [**updateQuestion**](docs/Api/QuestionApi.md#updatequestion) | **POST** /game/question/update | Update Question
*RankingApi* | [**getHistoricalRankings**](docs/Api/RankingApi.md#gethistoricalrankings) | **GET** /ranking/historical/search | Search Historical Rankings
*RankingApi* | [**getRankings**](docs/Api/RankingApi.md#getrankings) | **GET** /ranking/search | Search Rankings
*RankingApi* | [**getUserRank**](docs/Api/RankingApi.md#getuserrank) | **POST** /ranking/personal/ranks | Get Personal Rankings
*RankingApi* | [**overrideUserRank**](docs/Api/RankingApi.md#overrideuserrank) | **POST** /ranking/override | Override User Rank
*RankingApi* | [**updateRankings**](docs/Api/RankingApi.md#updaterankings) | **POST** /ranking/update | Update Ranking
*RatingApi* | [**createRating**](docs/Api/RatingApi.md#createrating) | **POST** /rating/create | Create Rating
*RatingApi* | [**deleteRating**](docs/Api/RatingApi.md#deleterating) | **POST** /rating/delete | Delete Rating
*RatingApi* | [**searchLocationRatingIndexes**](docs/Api/RatingApi.md#searchlocationratingindexes) | **GET** /location/rating/index/search | Search Location Rating Indexes
*RatingApi* | [**searchRatingIndexes**](docs/Api/RatingApi.md#searchratingindexes) | **GET** /rating/index/search | Search Rating Indexes
*RatingApi* | [**searchRatings**](docs/Api/RatingApi.md#searchratings) | **GET** /rating/search | Search Ratings
*RatingApi* | [**updateRating**](docs/Api/RatingApi.md#updaterating) | **POST** /rating/update | Update Rating
*RegionApi* | [**createRegion**](docs/Api/RegionApi.md#createregion) | **POST** /region/create | Create Region
*RegionApi* | [**deleteRegion**](docs/Api/RegionApi.md#deleteregion) | **POST** /region/delete | Delete Region
*RegionApi* | [**getRegion**](docs/Api/RegionApi.md#getregion) | **GET** /region/get | Get Region
*RegionApi* | [**searchRegions**](docs/Api/RegionApi.md#searchregions) | **GET** /region/search | Search Regions
*RegionApi* | [**updateRegion**](docs/Api/RegionApi.md#updateregion) | **POST** /region/update | Update Region
*ReportingApi* | [**createBatch**](docs/Api/ReportingApi.md#createbatch) | **POST** /report/batch/create | Create Offline Report
*ReportingApi* | [**createRegionLegSummaryBatch**](docs/Api/ReportingApi.md#createregionlegsummarybatch) | **POST** /report/region/summary/batch | Create Offline Report
*ReportingApi* | [**deleteBatch**](docs/Api/ReportingApi.md#deletebatch) | **POST** /report/batch/delete | Delete Offline Report
*ReportingApi* | [**getReportBatch**](docs/Api/ReportingApi.md#getreportbatch) | **GET** /report/batch/get | Get Offline Report
*ReportingApi* | [**runReport**](docs/Api/ReportingApi.md#runreport) | **POST** /report/run | Run Report
*ReportingApi* | [**searchBatch**](docs/Api/ReportingApi.md#searchbatch) | **GET** /report/batch/search | Search Offline Reports
*ReservationApi* | [**createReservation**](docs/Api/ReservationApi.md#createreservation) | **POST** /reservation/create | Create Reservation
*ReservationApi* | [**deleteReservation**](docs/Api/ReservationApi.md#deletereservation) | **POST** /reservation/delete | Delete Reservation
*ReservationApi* | [**reservableAvailability**](docs/Api/ReservationApi.md#reservableavailability) | **POST** /reservable/availability/update | Update Availability
*ReservationApi* | [**searchAvailability**](docs/Api/ReservationApi.md#searchavailability) | **GET** /reservable/availability/search | Search Availability
*ReservationApi* | [**searchReservations**](docs/Api/ReservationApi.md#searchreservations) | **GET** /reservation/search | Search Reservations
*ReservationApi* | [**searchSchedule**](docs/Api/ReservationApi.md#searchschedule) | **GET** /reservable/schedule/search | Search Schedule
*RetailerApi* | [**createRetailer**](docs/Api/RetailerApi.md#createretailer) | **POST** /retailer/create | Create Retailer
*RetailerApi* | [**deleteRetailer**](docs/Api/RetailerApi.md#deleteretailer) | **POST** /retailer/delete | Delete Retailer
*RetailerApi* | [**getRetailer**](docs/Api/RetailerApi.md#getretailer) | **GET** /retailer/get | Get Retailer
*RetailerApi* | [**getRetailers**](docs/Api/RetailerApi.md#getretailers) | **GET** /retailer/search | Search Retailers
*RetailerApi* | [**retailerLoginCheck**](docs/Api/RetailerApi.md#retailerlogincheck) | **POST** /retailer/login | Login Retailer
*RetailerApi* | [**updateRetailer**](docs/Api/RetailerApi.md#updateretailer) | **POST** /retailer/update | Update Retailer
*RetailerLocationApi* | [**createRetailerLocationConsumer**](docs/Api/RetailerLocationApi.md#createretailerlocationconsumer) | **POST** /location/create | Create Retailer Location (Consumer)
*RetailerLocationApi* | [**createRetailerLocations**](docs/Api/RetailerLocationApi.md#createretailerlocations) | **POST** /retailer/location/create | Create Retailer Location
*RetailerLocationApi* | [**deleteRetailerLocation**](docs/Api/RetailerLocationApi.md#deleteretailerlocation) | **POST** /retailer/location/delete | Delete Retailer Location
*RetailerLocationApi* | [**getRetailerLocation**](docs/Api/RetailerLocationApi.md#getretailerlocation) | **GET** /retailer/location/get | Get Retailer Location
*RetailerLocationApi* | [**getRetailerLocationConsumer**](docs/Api/RetailerLocationApi.md#getretailerlocationconsumer) | **GET** /location/get | Get Retailer Location (Consumer)
*RetailerLocationApi* | [**indexedRetailerLocationDistanceSearch**](docs/Api/RetailerLocationApi.md#indexedretailerlocationdistancesearch) | **GET** /retailer/location/idistancesearch | Distance Search Retailer Locations (Indexed)
*RetailerLocationApi* | [**indexedRetailerLocationSearch**](docs/Api/RetailerLocationApi.md#indexedretailerlocationsearch) | **GET** /retailer/location/isearch | Keyword Search Retailer Locations (Indexed)
*RetailerLocationApi* | [**searchRetailerLocations**](docs/Api/RetailerLocationApi.md#searchretailerlocations) | **GET** /retailer/location/search | Search Retailer Locations (Owned)
*RetailerLocationApi* | [**updateRetailerLocations**](docs/Api/RetailerLocationApi.md#updateretailerlocations) | **POST** /retailer/location/update | Update Retailer Location
*RetailerV2Api* | [**getRetaokiler**](docs/Api/RetailerV2Api.md#getretaokiler) | **GET** /retailer | Get Retailer
*RouteApi* | [**approveRoute**](docs/Api/RouteApi.md#approveroute) | **POST** /route/{routeId}/approve | Approve Route
*RouteApi* | [**copyRoute**](docs/Api/RouteApi.md#copyroute) | **POST** /route/{routeId}/copy | Copy Route
*RouteApi* | [**createRoute**](docs/Api/RouteApi.md#createroute) | **POST** /route | Create Route
*RouteApi* | [**createRouteDirections**](docs/Api/RouteApi.md#createroutedirections) | **PUT** /route/{routeId}/directions | Update Route Directions
*RouteApi* | [**createRoutePolyline**](docs/Api/RouteApi.md#createroutepolyline) | **PUT** /route/{routeId}/polyline | Create Route Polyline
*RouteApi* | [**deleteRoute**](docs/Api/RouteApi.md#deleteroute) | **DELETE** /route/{routeId} | Delete Route
*RouteApi* | [**disapproveRoute**](docs/Api/RouteApi.md#disapproveroute) | **POST** /route/{routeId}/disapprove | Disapprove Route
*RouteApi* | [**getRoute**](docs/Api/RouteApi.md#getroute) | **GET** /route/{routeId} | Get Route
*RouteApi* | [**getRouteDirections**](docs/Api/RouteApi.md#getroutedirections) | **GET** /route/{routeId}/directions | Get Route Directions
*RouteApi* | [**getRouteShipments**](docs/Api/RouteApi.md#getrouteshipments) | **GET** /route/{routeId}/shipments | Get Route Shipments
*RouteApi* | [**getRouteStop**](docs/Api/RouteApi.md#getroutestop) | **GET** /route/{routeId}/stop/{stopId} | Get Route Stop
*RouteApi* | [**getRouteStops**](docs/Api/RouteApi.md#getroutestops) | **GET** /route/{routeId}/stops | Get Route Stops
*RouteApi* | [**getShipmentsAtStop**](docs/Api/RouteApi.md#getshipmentsatstop) | **GET** /route/{routeId}/stop/{stopId}/shipments | Get Shipments At Stop
*RouteApi* | [**optimizeRoute**](docs/Api/RouteApi.md#optimizeroute) | **POST** /route/{routeId}/optimize | Optimize Route
*RouteApi* | [**removeStop**](docs/Api/RouteApi.md#removestop) | **DELETE** /route/{routeId}/stop/{stopId} | Delete Stop
*RouteApi* | [**reorderRouteStopsPatch**](docs/Api/RouteApi.md#reorderroutestopspatch) | **PATCH** /route/{routeId}/stops/reorder | Reorder Route Stops
*RouteApi* | [**reorderRouteStopsPost**](docs/Api/RouteApi.md#reorderroutestopspost) | **POST** /route/{routeId}/stops/reorder | Reorder Route Stops
*RouteApi* | [**searchRoutes**](docs/Api/RouteApi.md#searchroutes) | **GET** /route | Search Routes
*RouteApi* | [**setDriver**](docs/Api/RouteApi.md#setdriver) | **POST** /route/{id}/driver/{driverId} | Set Driver
*RouteApi* | [**updateRoute**](docs/Api/RouteApi.md#updateroute) | **PUT** /route/{routeId} | Update Route
*RouteApi* | [**updateRouteStop**](docs/Api/RouteApi.md#updateroutestop) | **PUT** /route/{routeId}/stop/{stopId} | Update Route Stop
*RouteSettingApi* | [**createRouteSettings**](docs/Api/RouteSettingApi.md#createroutesettings) | **POST** /route/setting | Create Route Setting
*RouteSettingApi* | [**deleteRouteSettings**](docs/Api/RouteSettingApi.md#deleteroutesettings) | **DELETE** /route/setting/{routeSettingsId} | Delete Route Setting
*RouteSettingApi* | [**getRouteSettings**](docs/Api/RouteSettingApi.md#getroutesettings) | **GET** /route/setting/{routeSettingsId} | Get Route Setting
*RouteSettingApi* | [**searchRouteSettings**](docs/Api/RouteSettingApi.md#searchroutesettings) | **GET** /route/setting | Search Route Settings
*RouteSettingApi* | [**updateRouteSettings**](docs/Api/RouteSettingApi.md#updateroutesettings) | **PUT** /route/setting/{routeSettingsId} | Update Route Setting
*RoutingApi* | [**computeRouting**](docs/Api/RoutingApi.md#computerouting) | **POST** /routing/compute | Compute Route
*ScheduledNotificationApi* | [**createScheduledNotification**](docs/Api/ScheduledNotificationApi.md#createschedulednotification) | **POST** /notification/schedule/create | Create Scheduled Notification
*ScheduledNotificationApi* | [**deleteScheduledNotification**](docs/Api/ScheduledNotificationApi.md#deleteschedulednotification) | **POST** /notification/schedule/delete | Delete Scheduled Notification
*ScheduledNotificationApi* | [**getScheduledNotification**](docs/Api/ScheduledNotificationApi.md#getschedulednotification) | **GET** /notification/schedule/get | Get Scheduled Notification
*ScheduledNotificationApi* | [**scheduleNotificationListings**](docs/Api/ScheduledNotificationApi.md#schedulenotificationlistings) | **POST** /notification/schedule/generate | Generate Schedule Notifications
*ScheduledNotificationApi* | [**searchScheduledNotifications**](docs/Api/ScheduledNotificationApi.md#searchschedulednotifications) | **GET** /notification/schedule/search | Search Scheduled Notifications
*ScheduledNotificationApi* | [**updateScheduledNotification**](docs/Api/ScheduledNotificationApi.md#updateschedulednotification) | **POST** /notification/schedule/update | Update Scheduled Notification
*ScoreApi* | [**createScore**](docs/Api/ScoreApi.md#createscore) | **POST** /score/create | Create Score
*ScoreApi* | [**getScore**](docs/Api/ScoreApi.md#getscore) | **GET** /score/get | Get Score
*ScoreApi* | [**searchScores**](docs/Api/ScoreApi.md#searchscores) | **GET** /score/search | Search Score
*SecureAppApi* | [**createSecureApplication**](docs/Api/SecureAppApi.md#createsecureapplication) | **POST** /secure/application/create | Create Secure Application
*SecureAppApi* | [**deleteSecureApplication**](docs/Api/SecureAppApi.md#deletesecureapplication) | **POST** /secure/application/delete | Delete Secure Application
*SecureAppApi* | [**loginSecure**](docs/Api/SecureAppApi.md#loginsecure) | **POST** /secure/login | Login Clear
*SecureAppApi* | [**purchaseSecure**](docs/Api/SecureAppApi.md#purchasesecure) | **POST** /secure/purchase | Purchase Clear
*SecureAppApi* | [**resetSecure**](docs/Api/SecureAppApi.md#resetsecure) | **POST** /secure/application/reset | Rest Secure Application
*SecureAppApi* | [**updateSecureApplication**](docs/Api/SecureAppApi.md#updatesecureapplication) | **POST** /secure/application/update | Update Secure Application
*ServiceHubApi* | [**createServiceHub**](docs/Api/ServiceHubApi.md#createservicehub) | **POST** /hub | Create Service Hub
*ServiceHubApi* | [**deleteServiceHub**](docs/Api/ServiceHubApi.md#deleteservicehub) | **DELETE** /hub/{id} | Delete Service Hub
*ServiceHubApi* | [**getServiceHub**](docs/Api/ServiceHubApi.md#getservicehub) | **GET** /hub/{id} | Get Service Hub
*ServiceHubApi* | [**postServiceHub**](docs/Api/ServiceHubApi.md#postservicehub) | **POST** /hub/{id} | Update Service Hub
*ServiceHubApi* | [**putServiceHub**](docs/Api/ServiceHubApi.md#putservicehub) | **PUT** /hub/{id} | Update Service Hub
*ServiceHubApi* | [**searchServiceHubs**](docs/Api/ServiceHubApi.md#searchservicehubs) | **GET** /hub | Search Service Hubs
*ShipmentApi* | [**cancelShipment**](docs/Api/ShipmentApi.md#cancelshipment) | **POST** /shipment/{id}/cancel | Cancel Shipment
*ShipmentApi* | [**createShipment**](docs/Api/ShipmentApi.md#createshipment) | **POST** /shipment | Create Shipment
*ShipmentApi* | [**deleteShipment**](docs/Api/ShipmentApi.md#deleteshipment) | **DELETE** /shipment/{id} | Delete Shipment
*ShipmentApi* | [**getShipment**](docs/Api/ShipmentApi.md#getshipment) | **GET** /shipment/{id} | Get Shipment
*ShipmentApi* | [**searchShipments**](docs/Api/ShipmentApi.md#searchshipments) | **GET** /shipment | Search Shipments
*ShipmentApi* | [**updateShipment**](docs/Api/ShipmentApi.md#updateshipment) | **PUT** /shipment/{id} | Update Shipment
*ShipmentApi* | [**updateShipmentStatus**](docs/Api/ShipmentApi.md#updateshipmentstatus) | **POST** /shipment/{id}/status | Uupdate Shipment Status
*ShipmentBatchApi* | [**createShipmentBatch**](docs/Api/ShipmentBatchApi.md#createshipmentbatch) | **POST** /shipment/batch | Create Shipment Batch
*ShipmentBatchApi* | [**deleteShipmentBatch**](docs/Api/ShipmentBatchApi.md#deleteshipmentbatch) | **DELETE** /shipment/batch/{batchId} | Delete Shipment Batch
*ShipmentBatchApi* | [**getShipmentBatch**](docs/Api/ShipmentBatchApi.md#getshipmentbatch) | **GET** /shipment/batch/{batchId} | Get Shipment Batch
*ShipmentBatchApi* | [**getShipmentBatchStatus**](docs/Api/ShipmentBatchApi.md#getshipmentbatchstatus) | **GET** /shipment/batch/{batchId}/status | Get Shipment Batch Status
*ShipmentBatchApi* | [**searchShipmentBatch**](docs/Api/ShipmentBatchApi.md#searchshipmentbatch) | **GET** /shipment/batch | Search Shipment Batch
*SimulationApi* | [**simulation**](docs/Api/SimulationApi.md#simulation) | **POST** /simulation/routing | Routing Simulation
*StopApi* | [**getStop**](docs/Api/StopApi.md#getstop) | **GET** /stop/{id} | Get Stop
*StopApi* | [**updateStop**](docs/Api/StopApi.md#updatestop) | **PUT** /stop/{id} | Update Stop
*StripeApi* | [**createStripeCheckoutSession**](docs/Api/StripeApi.md#createstripecheckoutsession) | **POST** /stripe/checkout/session/create | Create Stripe Checkout Session
*SubscriptionApi* | [**createSubscription**](docs/Api/SubscriptionApi.md#createsubscription) | **POST** /subscription/create | Create Subscription
*SubscriptionApi* | [**deleteSubscription**](docs/Api/SubscriptionApi.md#deletesubscription) | **POST** /subscription/delete | Delete Subscription
*SubscriptionApi* | [**getSubscription**](docs/Api/SubscriptionApi.md#getsubscription) | **GET** /subscription/get | Get Subscription
*SubscriptionApi* | [**getSubscriptionPlan**](docs/Api/SubscriptionApi.md#getsubscriptionplan) | **GET** /subscription/plan/get | Get Subscription Plan
*SubscriptionApi* | [**getSubscriptionPlans**](docs/Api/SubscriptionApi.md#getsubscriptionplans) | **GET** /subscription/plan/list | List Subscription Plans
*SubscriptionApi* | [**getSubscriptionUsage**](docs/Api/SubscriptionApi.md#getsubscriptionusage) | **GET** /subscription/usage/get | Get Subscription Usage
*SubscriptionApi* | [**updateSubscription**](docs/Api/SubscriptionApi.md#updatesubscription) | **POST** /subscription/update | Update Subscription
*TaskApi* | [**createTask**](docs/Api/TaskApi.md#createtask) | **POST** /task/create | Create Task
*TaskApi* | [**deleteTask**](docs/Api/TaskApi.md#deletetask) | **POST** /task/delete | Delete Task
*TaskApi* | [**getTask**](docs/Api/TaskApi.md#gettask) | **GET** /task/get | Get Task
*TaskApi* | [**searchTasks**](docs/Api/TaskApi.md#searchtasks) | **GET** /task/search | Search Tasks
*TaskApi* | [**updateTask**](docs/Api/TaskApi.md#updatetask) | **POST** /task/update | Update Task
*TerritoryApi* | [**createTerritory**](docs/Api/TerritoryApi.md#createterritory) | **POST** /territory/create | Create Territory
*TerritoryApi* | [**deleteTerritory**](docs/Api/TerritoryApi.md#deleteterritory) | **POST** /territory/delete | Delete Territory
*TerritoryApi* | [**getTerritory**](docs/Api/TerritoryApi.md#getterritory) | **GET** /territory/get | Get Territory
*TerritoryApi* | [**searchTerritories**](docs/Api/TerritoryApi.md#searchterritories) | **GET** /territory/search | Search Territories
*TerritoryApi* | [**updateTerritory**](docs/Api/TerritoryApi.md#updateterritory) | **POST** /territory/update | Update Territory
*ThemeDescriptorApi* | [**addOrUpdateThemeDescriptor**](docs/Api/ThemeDescriptorApi.md#addorupdatethemedescriptor) | **POST** /consumer/theme | Create/Update Theme
*ThemeDescriptorApi* | [**getThemeDescriptor**](docs/Api/ThemeDescriptorApi.md#getthemedescriptor) | **GET** /consumer/theme/get | Get Theme
*ThemeDescriptorApi* | [**getThemeDescriptors**](docs/Api/ThemeDescriptorApi.md#getthemedescriptors) | **GET** /consumer/theme/search | Search Themes
*ThemeDescriptorApi* | [**removeThemeDescriptor**](docs/Api/ThemeDescriptorApi.md#removethemedescriptor) | **POST** /consumer/theme/remove | Delete Theme
*ThirdPartyCredentialsApi* | [**createCredential**](docs/Api/ThirdPartyCredentialsApi.md#createcredential) | **POST** /thirdparty/credential/create | Create Credential
*ThirdPartyCredentialsApi* | [**createNetwork**](docs/Api/ThirdPartyCredentialsApi.md#createnetwork) | **POST** /thirdparty/network/create | Create Network
*ThirdPartyCredentialsApi* | [**deleteCredential**](docs/Api/ThirdPartyCredentialsApi.md#deletecredential) | **POST** /thirdparty/credential/delete | Delete Credential
*ThirdPartyCredentialsApi* | [**deleteNetwork**](docs/Api/ThirdPartyCredentialsApi.md#deletenetwork) | **POST** /thirdparty/network/delete | Delete Network
*ThirdPartyCredentialsApi* | [**getCredential**](docs/Api/ThirdPartyCredentialsApi.md#getcredential) | **POST** /thirdparty/credential/get | Get Credential
*ThirdPartyCredentialsApi* | [**getNetwork**](docs/Api/ThirdPartyCredentialsApi.md#getnetwork) | **GET** /thirdparty/network/get | Get Network
*ThirdPartyCredentialsApi* | [**searchCredentials**](docs/Api/ThirdPartyCredentialsApi.md#searchcredentials) | **GET** /thirdparty/credential/search | Search Credentials
*ThirdPartyCredentialsApi* | [**searchNetworks**](docs/Api/ThirdPartyCredentialsApi.md#searchnetworks) | **GET** /thirdparty/network/search | Search Networks
*ThirdPartyCredentialsApi* | [**sendMFAChallenge**](docs/Api/ThirdPartyCredentialsApi.md#sendmfachallenge) | **POST** /thirdparty/credential/mfa/send | Send MFA Challenge
*ThirdPartyCredentialsApi* | [**updateCredential**](docs/Api/ThirdPartyCredentialsApi.md#updatecredential) | **POST** /thirdparty/credential/update | Update Credential
*ThirdPartyCredentialsApi* | [**updateNetwork**](docs/Api/ThirdPartyCredentialsApi.md#updatenetwork) | **POST** /thirdparty/network/update | Update Network
*TicketApi* | [**getTicketCount**](docs/Api/TicketApi.md#getticketcount) | **GET** /ticket/count | Get Ticket Count
*TicketApi* | [**getTicketList**](docs/Api/TicketApi.md#getticketlist) | **GET** /ticket/getList | Get Ticket List
*TicketApi* | [**giftPurchase**](docs/Api/TicketApi.md#giftpurchase) | **POST** /purchase/gift | Gift Tickets
*TicketApi* | [**saveTicket**](docs/Api/TicketApi.md#saveticket) | **POST** /ticket/save | Save Ticket
*TicketApi* | [**saveTicketViaFileUpload**](docs/Api/TicketApi.md#saveticketviafileupload) | **POST** /ticket/save/fileUpload | Save Ticket with Reciept
*TicketApi* | [**ticketOffers**](docs/Api/TicketApi.md#ticketoffers) | **GET** /ticket/ticketoffers | Get Ticket Offers
*TournamentApi* | [**createTournament**](docs/Api/TournamentApi.md#createtournament) | **POST** /tournament/create | Create Tournament
*TournamentApi* | [**deleteTournament**](docs/Api/TournamentApi.md#deletetournament) | **POST** /tournament/delete | Delete Tournament
*TournamentApi* | [**getTournament**](docs/Api/TournamentApi.md#gettournament) | **GET** /tournament/get | Get Tournament
*TournamentApi* | [**searchObjects**](docs/Api/TournamentApi.md#searchobjects) | **GET** /tournament/object/search | Search Tournament Objects
*TournamentApi* | [**searchRounds**](docs/Api/TournamentApi.md#searchrounds) | **GET** /tournament/round/search | Search Tournament Rounds
*TournamentApi* | [**searchTournaments**](docs/Api/TournamentApi.md#searchtournaments) | **GET** /tournament/search | Search Tournaments
*TournamentApi* | [**submitTournamentScore**](docs/Api/TournamentApi.md#submittournamentscore) | **POST** /tournament/score | Submit Tournament Score
*TournamentApi* | [**submitTournamentVote**](docs/Api/TournamentApi.md#submittournamentvote) | **POST** /tournament/vote | Submit a vote for a multi-stage album tournament.
*TournamentApi* | [**substituteTournamentPlayer**](docs/Api/TournamentApi.md#substitutetournamentplayer) | **POST** /tournament/substitute | Substitute Tournament Player
*TournamentApi* | [**updateTournament**](docs/Api/TournamentApi.md#updatetournament) | **POST** /tournament/update | Update Tournament
*TrackingApi* | [**batchSaveTracking**](docs/Api/TrackingApi.md#batchsavetracking) | **POST** /tracking/batch/create | Create Batch Tracking
*TrackingApi* | [**getPredictedLocations**](docs/Api/TrackingApi.md#getpredictedlocations) | **GET** /tracking/predicted/get | Get Predicted Locations
*TrackingApi* | [**getPredictedPath**](docs/Api/TrackingApi.md#getpredictedpath) | **GET** /tracking/path/get | Get Tracking Path
*TrackingApi* | [**getPreferredLocations**](docs/Api/TrackingApi.md#getpreferredlocations) | **GET** /tracking/preferred/search | Search Preferred Locations
*TrackingApi* | [**getTrackingLegs**](docs/Api/TrackingApi.md#gettrackinglegs) | **GET** /tracking/search | Search Tracking
*TrackingApi* | [**saveTrackingLeg**](docs/Api/TrackingApi.md#savetrackingleg) | **POST** /tracking/leg/create | Create Tracking Leg
*TrackingApi* | [**saveTrackingStep**](docs/Api/TrackingApi.md#savetrackingstep) | **POST** /tracking/step/create | Create Tracking Step
*TrackingApi* | [**searchAccountsWithTrackingLegs**](docs/Api/TrackingApi.md#searchaccountswithtrackinglegs) | **GET** /tracking/list | List Tracking
*TrackingApi* | [**searchTrackingLegs**](docs/Api/TrackingApi.md#searchtrackinglegs) | **GET** /tracking/searchByBillable | Search Tracking (Billable)
*TriggerApi* | [**createTrigger**](docs/Api/TriggerApi.md#createtrigger) | **POST** /trigger/create | Create Trigger
*TriggerApi* | [**deleteTrigger**](docs/Api/TriggerApi.md#deletetrigger) | **POST** /trigger/delete | Delete Trigger
*TriggerApi* | [**getTrigger**](docs/Api/TriggerApi.md#gettrigger) | **GET** /trigger/get | Get Trigger
*TriggerApi* | [**searchTriggers**](docs/Api/TriggerApi.md#searchtriggers) | **GET** /trigger/search | Search Triggers
*TriggerApi* | [**updateTrigger**](docs/Api/TriggerApi.md#updatetrigger) | **POST** /trigger/update | Update Trigger
*TripApi* | [**createTrip**](docs/Api/TripApi.md#createtrip) | **POST** /trip | Create Trip
*TripApi* | [**delete**](docs/Api/TripApi.md#delete) | **DELETE** /trip/{id} | Delete Trip
*TripApi* | [**driveTrip**](docs/Api/TripApi.md#drivetrip) | **POST** /trip/{id}/drive | Set Trip Preference Driver
*TripApi* | [**flexibleTrip**](docs/Api/TripApi.md#flexibletrip) | **POST** /trip/{id}/flexible | Set Trip Preference Flexible
*TripApi* | [**getTrip**](docs/Api/TripApi.md#gettrip) | **GET** /trip/{id} | Get Trip
*TripApi* | [**getTripMatches**](docs/Api/TripApi.md#gettripmatches) | **GET** /trip/{id}/match | Get Trip Matches
*TripApi* | [**processTripMatches**](docs/Api/TripApi.md#processtripmatches) | **POST** /trip/match/process | Process Trip Matches
*TripApi* | [**ride**](docs/Api/TripApi.md#ride) | **POST** /trip/{id}/ride | Set Trip Preference Rider
*TripApi* | [**search**](docs/Api/TripApi.md#search) | **GET** /trip | Search Trips
*TripApi* | [**searchTrips**](docs/Api/TripApi.md#searchtrips) | **GET** /trip/match | Search Trips
*TripApi* | [**updateLocations**](docs/Api/TripApi.md#updatelocations) | **POST** /trip/{id}/locations | Update Trip Locations
*TripApi* | [**updateRecurrenceLocations**](docs/Api/TripApi.md#updaterecurrencelocations) | **POST** /trip/{id}/locations/recurrence | Update Recurrence Locations
*TripApi* | [**updateRecurrenceShipments**](docs/Api/TripApi.md#updaterecurrenceshipments) | **POST** /trip/{id}/shipments/recurrence | Update Recurrence Shipments
*TripApi* | [**updateShipments**](docs/Api/TripApi.md#updateshipments) | **POST** /trip/{id}/shipments | Update Trip Shipments
*TripApi* | [**updateTrip**](docs/Api/TripApi.md#updatetrip) | **PUT** /trip/{id} | Update Trip
*TripApi* | [**updateTripNotifications**](docs/Api/TripApi.md#updatetripnotifications) | **POST** /trip/notifications | Trip Notifications
*TwilioApi* | [**smsBuyOffer**](docs/Api/TwilioApi.md#smsbuyoffer) | **POST** /sms/buyoffer/{appKey} | Buy Offer by SMS
*TwitterApi* | [**authorizeTwitter**](docs/Api/TwitterApi.md#authorizetwitter) | **POST** /twitter/authorize | Authorize Twitter
*TwitterApi* | [**loginTwitter**](docs/Api/TwitterApi.md#logintwitter) | **POST** /twitter/login | Login Twitter
*UserPermissionsApi* | [**addUsersToPermissionable**](docs/Api/UserPermissionsApi.md#adduserstopermissionable) | **POST** /consumer/permissions/add | Add User
*UserPermissionsApi* | [**approvePermissionable**](docs/Api/UserPermissionsApi.md#approvepermissionable) | **POST** /permissionable/approve | Approve Permissionable
*UserPermissionsApi* | [**leaveFromPermissionable**](docs/Api/UserPermissionsApi.md#leavefrompermissionable) | **POST** /consumer/permissions/leave | Leave
*UserPermissionsApi* | [**removeUsersFromPermissionable**](docs/Api/UserPermissionsApi.md#removeusersfrompermissionable) | **POST** /consumer/permissions/remove | Remove User
*UserPermissionsApi* | [**searchPermissionables**](docs/Api/UserPermissionsApi.md#searchpermissionables) | **GET** /permissions/search | Search Permissionables
*UserPermissionsApi* | [**searchPermissionablesFollowingDistance**](docs/Api/UserPermissionsApi.md#searchpermissionablesfollowingdistance) | **GET** /permissions/distancesearch | Search Permissionables by Distnace
*VatomApi* | [**createFollowing**](docs/Api/VatomApi.md#createfollowing) | **POST** /vatom/me/rels/following/create | Create following
*VatomApi* | [**createSpace**](docs/Api/VatomApi.md#createspace) | **POST** /vatom/b/spaces/create | Create Vatom Space
*VatomApi* | [**createVatomEvent**](docs/Api/VatomApi.md#createvatomevent) | **POST** /vatom/b/events/create | Create Vatom Event
*VatomApi* | [**deleteFollowing**](docs/Api/VatomApi.md#deletefollowing) | **POST** /vatom/me/rels/following/delete | Delete following
*VatomApi* | [**deletePointsBalance**](docs/Api/VatomApi.md#deletepointsbalance) | **POST** /vatom/b/campaign/points/delete | Reset All Points Balance
*VatomApi* | [**deleteSpace**](docs/Api/VatomApi.md#deletespace) | **POST** /vatom/b/spaces/delete | Delete Vatom Space
*VatomApi* | [**deleteVatomEvent**](docs/Api/VatomApi.md#deletevatomevent) | **POST** /vatom/b/events/delete | Delete Vatom Event
*VatomApi* | [**deleteVatomNFT**](docs/Api/VatomApi.md#deletevatomnft) | **POST** /vatom/vatoms/delete | Delete Vatom NFT
*VatomApi* | [**executeActionOnNFT**](docs/Api/VatomApi.md#executeactiononnft) | **POST** /vatom/vatoms/execute-action | Execute Action on NFT
*VatomApi* | [**geomapSearch**](docs/Api/VatomApi.md#geomapsearch) | **GET** /vatom/vatoms/geo-map/search | Search Vatom Geo Map
*VatomApi* | [**getBusinessBehaviors**](docs/Api/VatomApi.md#getbusinessbehaviors) | **GET** /vatom/b/behaviors | Get Vatom Business Behaviors
*VatomApi* | [**getBusinessCoinsBalance**](docs/Api/VatomApi.md#getbusinesscoinsbalance) | **GET** /vatom/b/coins/get | Get the coins for a Business
*VatomApi* | [**getBusinessIds**](docs/Api/VatomApi.md#getbusinessids) | **GET** /vatom/me/businesses | Get the user business ids
*VatomApi* | [**getBusinessInfo**](docs/Api/VatomApi.md#getbusinessinfo) | **GET** /vatom/b/get | Get Vatom Business Info
*VatomApi* | [**getBusinessUsers**](docs/Api/VatomApi.md#getbusinessusers) | **GET** /vatom/b/users | Get Vatom Business Users
*VatomApi* | [**getCampaignGroupEntities**](docs/Api/VatomApi.md#getcampaigngroupentities) | **GET** /vatom/b/campaign-groups/entities | Get Campaign Group Entities
*VatomApi* | [**getCampaignGroupRules**](docs/Api/VatomApi.md#getcampaigngrouprules) | **GET** /vatom/b/campaign-groups/rules | Get Campaign Group Rules
*VatomApi* | [**getCampaignGroupStats**](docs/Api/VatomApi.md#getcampaigngroupstats) | **GET** /vatom/b/campaign-groups/stats | Get Campaign Group Stats
*VatomApi* | [**getCampaignInfo**](docs/Api/VatomApi.md#getcampaigninfo) | **GET** /vatom/b/campaign-groups/get | Get Campaign Info
*VatomApi* | [**getEventGuestList**](docs/Api/VatomApi.md#geteventguestlist) | **GET** /vatom/b/events/guests/get | Get Vatom Event Guest List
*VatomApi* | [**getInventory**](docs/Api/VatomApi.md#getinventory) | **GET** /vatom/me/inventory | Get Vatom User&#39;s Inventory
*VatomApi* | [**getMyFollowing**](docs/Api/VatomApi.md#getmyfollowing) | **GET** /vatom/me/rels/following | Get following
*VatomApi* | [**getPointsBalance**](docs/Api/VatomApi.md#getpointsbalance) | **GET** /vatom/u/campaign/points/get | Get Points Balance
*VatomApi* | [**getPointsBalanceAsBusiness**](docs/Api/VatomApi.md#getpointsbalanceasbusiness) | **GET** /vatom/b/campaign/u/points/get | Get Points Balance as Business
*VatomApi* | [**getSpace**](docs/Api/VatomApi.md#getspace) | **GET** /vatom/b/spaces/get | Get Vatom Space
*VatomApi* | [**getUserCoinsAsBusiness**](docs/Api/VatomApi.md#getusercoinsasbusiness) | **GET** /vatom/b/users/coins/get | Get the coins for a user (as a Business)
*VatomApi* | [**getUserCoinsBalance**](docs/Api/VatomApi.md#getusercoinsbalance) | **GET** /vatom/u/coins/get | Gets the coins balance for a Vatom User
*VatomApi* | [**getUserFollowers**](docs/Api/VatomApi.md#getuserfollowers) | **GET** /vatom/users/rels/followers | Get user followers
*VatomApi* | [**getUserFollowing**](docs/Api/VatomApi.md#getuserfollowing) | **GET** /vatom/users/rels/following | Get user following
*VatomApi* | [**getUserInfo**](docs/Api/VatomApi.md#getuserinfo) | **GET** /vatom/user/get | Get User Info
*VatomApi* | [**getUserProfile**](docs/Api/VatomApi.md#getuserprofile) | **GET** /vatom/me/get | Get Vatom User Profile
*VatomApi* | [**getVatomEvent**](docs/Api/VatomApi.md#getvatomevent) | **GET** /vatom/b/events/get | Get Vatom Event
*VatomApi* | [**getVatomNFT**](docs/Api/VatomApi.md#getvatomnft) | **GET** /vatom/vatoms/get | Get Vatom NFT Details
*VatomApi* | [**listCommunities**](docs/Api/VatomApi.md#listcommunities) | **GET** /vatom/b/communities/search | List Vatom Communities
*VatomApi* | [**listEvents**](docs/Api/VatomApi.md#listevents) | **GET** /vatom/b/events/search | List Vatom Events
*VatomApi* | [**listSpaces**](docs/Api/VatomApi.md#listspaces) | **GET** /vatom/b/spaces/search | List Vatom Spaces
*VatomApi* | [**listUserCoinTransactions**](docs/Api/VatomApi.md#listusercointransactions) | **GET** /vatom/u/coins/txns/search | List Coin Transactions for a Vatom User
*VatomApi* | [**listUserCoinTransactionsAsBusiness**](docs/Api/VatomApi.md#listusercointransactionsasbusiness) | **GET** /vatom/b/users/coins/txns/search | List coin transactions for a user (as a Business)
*VatomApi* | [**performActionOnNFT**](docs/Api/VatomApi.md#performactiononnft) | **POST** /vatom/me/vatoms/actions | Perform Action on NFT
*VatomApi* | [**redeemNFT**](docs/Api/VatomApi.md#redeemnft) | **POST** /vatom/b/redemptions | Redeem NFT
*VatomApi* | [**redeemUserCoinsAsBusiness**](docs/Api/VatomApi.md#redeemusercoinsasbusiness) | **POST** /vatom/b/users/coins/redeem | Redeem the coins for a user (as a Business)
*VatomApi* | [**searchBusinesses**](docs/Api/VatomApi.md#searchbusinesses) | **GET** /vatom/b/search | Search for Vatom Businesses
*VatomApi* | [**searchCampaignGroups**](docs/Api/VatomApi.md#searchcampaigngroups) | **GET** /vatom/b/campaign-groups/search | Search Campaign Groups
*VatomApi* | [**searchIdentities**](docs/Api/VatomApi.md#searchidentities) | **GET** /vatom/me/identities/search | Search User Identities
*VatomApi* | [**searchInventory**](docs/Api/VatomApi.md#searchinventory) | **GET** /vatom/user-inventory/search | Search Vatom User&#39;s Inventory
*VatomApi* | [**sendNFT**](docs/Api/VatomApi.md#sendnft) | **POST** /vatom/b/campaigns/send | Send NFT
*VatomApi* | [**setPointsBalanceAsBusiness**](docs/Api/VatomApi.md#setpointsbalanceasbusiness) | **POST** /vatom/b/campaign/u/points/update | Set Points Balance as Business
*VatomApi* | [**transferUserCoins**](docs/Api/VatomApi.md#transferusercoins) | **POST** /vatom/u/coins/transfer | Transfer coins from Vatom Users
*VatomApi* | [**updateBusinessCoins**](docs/Api/VatomApi.md#updatebusinesscoins) | **POST** /vatom/b/coins/update | Fund coins for a Business
*VatomApi* | [**updateEventGuestList**](docs/Api/VatomApi.md#updateeventguestlist) | **POST** /vatom/b/events/guests/update | Update Vatom Event Guest List
*VatomApi* | [**updateSpace**](docs/Api/VatomApi.md#updatespace) | **POST** /vatom/b/spaces/update | Update Vatom Space
*VatomApi* | [**updateUserCoinsAsBusiness**](docs/Api/VatomApi.md#updateusercoinsasbusiness) | **POST** /vatom/b/users/coins/update | Update the coins for a user (as a Business)
*VatomApi* | [**updateUserProfile**](docs/Api/VatomApi.md#updateuserprofile) | **POST** /vatom/me/update | Update Vatom User Profile
*VatomApi* | [**updateVatomEvent**](docs/Api/VatomApi.md#updatevatomevent) | **POST** /vatom/b/events/update | Update Vatom Event
*VehicleApi* | [**createVehicle**](docs/Api/VehicleApi.md#createvehicle) | **POST** /vehicle | Create Vehicle
*VehicleApi* | [**deleteVehicle**](docs/Api/VehicleApi.md#deletevehicle) | **DELETE** /vehicle/{id} | Delete Vehicle
*VehicleApi* | [**getVehicle**](docs/Api/VehicleApi.md#getvehicle) | **GET** /vehicle/{id} | Get Vehicle
*VehicleApi* | [**searchVehicle**](docs/Api/VehicleApi.md#searchvehicle) | **GET** /vehicle | Search Vehicle
*VehicleApi* | [**updateVehicle**](docs/Api/VehicleApi.md#updatevehicle) | **PUT** /vehicle/{id} | Update Vehicle
*VehicleTypeApi* | [**createVehicleType**](docs/Api/VehicleTypeApi.md#createvehicletype) | **POST** /vehicle/type | Create Vehicle Type
*VehicleTypeApi* | [**deleteVehicleType**](docs/Api/VehicleTypeApi.md#deletevehicletype) | **DELETE** /vehicle/type/{vehicleTypeId} | Delete Vehicle Type
*VehicleTypeApi* | [**getVehicleType**](docs/Api/VehicleTypeApi.md#getvehicletype) | **GET** /vehicle/type/{vehicleTypeId} | Get Vehicle Type
*VehicleTypeApi* | [**searchVehicleTypes**](docs/Api/VehicleTypeApi.md#searchvehicletypes) | **GET** /vehicle/type | Search Vehicle Type
*VehicleTypeApi* | [**updateVehicleType**](docs/Api/VehicleTypeApi.md#updatevehicletype) | **PUT** /vehicle/type/{vehicleTypeId} | Update Vehicle Type
*WalletApi* | [**createOfferTransaction**](docs/Api/WalletApi.md#createoffertransaction) | **POST** /wallet/create | Create Wallet Offers
*WalletApi* | [**deleteOfferTransaction**](docs/Api/WalletApi.md#deleteoffertransaction) | **POST** /wallet/delete | Delete Wallet Offer
*WalletApi* | [**getOfferTransaction**](docs/Api/WalletApi.md#getoffertransaction) | **GET** /wallet/get | Get Wallet Offer
*WalletApi* | [**previewOfferTransaction**](docs/Api/WalletApi.md#previewoffertransaction) | **POST** /wallet/preview | Preview Wallet Offers
*WalletApi* | [**searchOfferTransactions**](docs/Api/WalletApi.md#searchoffertransactions) | **GET** /wallet/search | Search Wallet Offers
*WalletApi* | [**updateOfferTransaction**](docs/Api/WalletApi.md#updateoffertransaction) | **POST** /wallet/update | Update Wallet Offer
*WeatherApi* | [**searchWeather**](docs/Api/WeatherApi.md#searchweather) | **GET** /weather/search | Search Weather
*WordApi* | [**createWord**](docs/Api/WordApi.md#createword) | **POST** /game/word/create | Create Word
*WordApi* | [**deleteWord**](docs/Api/WordApi.md#deleteword) | **DELETE** /game/word/delete | Delete Word
*WordApi* | [**getWord**](docs/Api/WordApi.md#getword) | **GET** /game/word/get | Get Word
*WordApi* | [**getWords**](docs/Api/WordApi.md#getwords) | **GET** /game/word/search | Search Words
*WordApi* | [**updateWord**](docs/Api/WordApi.md#updateword) | **POST** /game/word/update | Update Word
*WorkflowApi* | [**runWorkflow**](docs/Api/WorkflowApi.md#runworkflow) | **POST** /workflow/run | Run Workflow

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
