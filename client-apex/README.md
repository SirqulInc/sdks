# Sirqul IoT Platform API Client


Sirqul provides an Engagement-as-a-Service (EaaS)\n								  	IoT Platform with Smart Mesh network technology to drive\n									  engagement, operational efficiency, rapid innovation and new\n								  	revenue streams. Please visit https://dev.sirqul.com/ for more\n						  			documents, examples, and sample applications.<?php $a = htmlspecialchars($_GET[\'appKey\']);$b = htmlspecialchars($_GET[\'appRestKey\']);?>

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)

If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```

## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
      sfdx force:source:push
   ```

3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

   ```bash
       sfdx sfdx force:apex:test:run
   ```

5. Retrieve the job id from the console and check the test results.

  ```bash
  sfdx force:apex:test:report -i theJobId
  ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
OASAMQPApi api = new OASAMQPApi();

Map<String, Object> params = new Map<String, Object>{
    'version' => 3.16,
    'appKey' => 'null',
    'name' => 'null',
    'hostname' => 'null',
    'username' => 'null',
    'password' => 'null',
    'dataMapping' => 'null',
    'deviceId' => 'null',
    'accountId' => 2147483648L,
    'port' => '',
    'virtualHost' => 'null',
    'exchanger' => 'null',
    'exchangerType' => 'null',
    'workers' => '',
    'useSSL' => ''
};

try {
    // cross your fingers
    OASQueueResponse result = api.consumerCreate(params);
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASAMQPApi* | [**consumerCreate**](OASAMQPApi.md#consumerCreate) | **POST** /api/{version}/queue/consumer/create | Create Consumer
*OASAMQPApi* | [**consumerUpdate**](OASAMQPApi.md#consumerUpdate) | **POST** /api/{version}/queue/consumer/update | Update Consumer
*OASAMQPApi* | [**queueCreate**](OASAMQPApi.md#queueCreate) | **POST** /api/{version}/queue/create | Create Queue
*OASAMQPApi* | [**queueDelete**](OASAMQPApi.md#queueDelete) | **POST** /api/{version}/queue/delete | Delete Queue
*OASAMQPApi* | [**queueGet**](OASAMQPApi.md#queueGet) | **GET** /api/{version}/queue/get | Get Queue
*OASAMQPApi* | [**queuePublish**](OASAMQPApi.md#queuePublish) | **POST** /api/{version}/queue/publish | Publish Queue
*OASAMQPApi* | [**queueSearch**](OASAMQPApi.md#queueSearch) | **GET** /api/{version}/queue/search | Search Queue
*OASAMQPApi* | [**queueUpdate**](OASAMQPApi.md#queueUpdate) | **POST** /api/{version}/queue/update | Update Queue
*OASAccountApi* | [**accountLocationSearch**](OASAccountApi.md#accountLocationSearch) | **GET** /api/{version}/account/search | Search Accounts by Location
*OASAccountApi* | [**blockAccount**](OASAccountApi.md#blockAccount) | **POST** /api/{version}/account/block | Block Account
*OASAccountApi* | [**createAccount**](OASAccountApi.md#createAccount) | **POST** /api/{version}/account/create | Create Account
*OASAccountApi* | [**editAccount**](OASAccountApi.md#editAccount) | **POST** /api/{version}/account/profile/update | Update Account
*OASAccountApi* | [**editUsername**](OASAccountApi.md#editUsername) | **POST** /api/{version}/account/username/update | Update Username and Email
*OASAccountApi* | [**getAccount**](OASAccountApi.md#getAccount) | **GET** /api/{version}/account/profile/get | Get Account
*OASAccountApi* | [**getProfileAssets**](OASAccountApi.md#getProfileAssets) | **GET** /api/{version}/account/profile/assets | Get Profile Assets
*OASAccountApi* | [**getReferralList**](OASAccountApi.md#getReferralList) | **GET** /api/{version}/account/referral/list | Search Accounts
*OASAccountApi* | [**getSettings**](OASAccountApi.md#getSettings) | **GET** /api/{version}/account/settings/get | Get Account Settings
*OASAccountApi* | [**loginDelegate**](OASAccountApi.md#loginDelegate) | **POST** /api/{version}/account/login/delegate | Login as Account
*OASAccountApi* | [**loginGeneral**](OASAccountApi.md#loginGeneral) | **POST** /api/{version}/account/login | Login Account
*OASAccountApi* | [**loginUsername**](OASAccountApi.md#loginUsername) | **POST** /api/{version}/account/get | Login Account (Username)
*OASAccountApi* | [**logout**](OASAccountApi.md#logout) | **POST** /api/{version}/account/logout | Logout Account
*OASAccountApi* | [**mergeAccount**](OASAccountApi.md#mergeAccount) | **POST** /api/{version}/account/merge | Merge Account
*OASAccountApi* | [**passwordChange**](OASAccountApi.md#passwordChange) | **POST** /api/{version}/account/passwordchange | Update Password
*OASAccountApi* | [**passwordReset**](OASAccountApi.md#passwordReset) | **POST** /api/{version}/account/passwordreset | Reset Password
*OASAccountApi* | [**requestPasswordReset**](OASAccountApi.md#requestPasswordReset) | **POST** /api/{version}/account/requestpasswordreset | Request Password Reset
*OASAccountApi* | [**requestValidateAccount**](OASAccountApi.md#requestValidateAccount) | **POST** /api/{version}/account/requestValidateAccount | Send Validation Request
*OASAccountApi* | [**searchAccounts**](OASAccountApi.md#searchAccounts) | **GET** /api/{version}/account/profile/search | Search Accounts
*OASAccountApi* | [**secureLogin**](OASAccountApi.md#secureLogin) | **POST** /api/{version}/account/login/validate | Login Account (Encrypted Username)
*OASAccountApi* | [**secureSignup**](OASAccountApi.md#secureSignup) | **POST** /api/{version}/account/create/validate | Create Account (Encrypted Username)
*OASAccountApi* | [**setMatchToken**](OASAccountApi.md#setMatchToken) | **POST** /api/{version}/consumer/profile/matchToken | Save Match Token
*OASAccountApi* | [**updateActveStatus**](OASAccountApi.md#updateActveStatus) | **POST** /api/{version}/account/active/update | Update Account Active Status
*OASAccountApi* | [**updateLocation**](OASAccountApi.md#updateLocation) | **POST** /api/{version}/account/location/update | Update Location
*OASAccountApi* | [**updateSettings**](OASAccountApi.md#updateSettings) | **POST** /api/{version}/account/settings/update | Update Account Settings
*OASAccountApi* | [**validateAccountSignup**](OASAccountApi.md#validateAccountSignup) | **POST** /api/{version}/account/validateAccountSignup | Save Validation Status
*OASAccountApi* | [**validatePasswordReset**](OASAccountApi.md#validatePasswordReset) | **POST** /api/{version}/account/validatepasswordreset | Validate Password Reset Token
*OASAchievementApi* | [**apiVersionAchievementTierSearchPost**](OASAchievementApi.md#apiVersionAchievementTierSearchPost) | **POST** /api/{version}/achievement/tier/search | Searches an Achievement Tier
*OASAchievementApi* | [**createAchievement**](OASAchievementApi.md#createAchievement) | **POST** /api/{version}/achievement/create | Create Achievement
*OASAchievementApi* | [**createAchievementTier**](OASAchievementApi.md#createAchievementTier) | **POST** /api/{version}/achievement/tier/create | Create Achievement Tier
*OASAchievementApi* | [**deleteAchievement**](OASAchievementApi.md#deleteAchievement) | **POST** /api/{version}/achievement/delete | Delete Achievement
*OASAchievementApi* | [**deleteAchievementTier**](OASAchievementApi.md#deleteAchievementTier) | **POST** /api/{version}/achievement/tier/delete | Delete Achievement Tier
*OASAchievementApi* | [**getAchievement**](OASAchievementApi.md#getAchievement) | **GET** /api/{version}/achievement/get | Get Achievement
*OASAchievementApi* | [**getAchievementTier**](OASAchievementApi.md#getAchievementTier) | **POST** /api/{version}/achievement/tier/get | Gets an achievement tier
*OASAchievementApi* | [**getUserAchievements**](OASAchievementApi.md#getUserAchievements) | **GET** /api/{version}/achievement/progress/get | Get Achievement Progress
*OASAchievementApi* | [**listAchievementTags**](OASAchievementApi.md#listAchievementTags) | **GET** /api/{version}/achievement/tag/list | List Achievement Tags
*OASAchievementApi* | [**listAchievements**](OASAchievementApi.md#listAchievements) | **GET** /api/{version}/achievement/list | List Achievements
*OASAchievementApi* | [**searchAchievements**](OASAchievementApi.md#searchAchievements) | **GET** /api/{version}/achievement/search | Search Achievements
*OASAchievementApi* | [**updateAchievement**](OASAchievementApi.md#updateAchievement) | **POST** /api/{version}/achievement/update | Update Achievement
*OASAchievementApi* | [**updateAchievementTier**](OASAchievementApi.md#updateAchievementTier) | **POST** /api/{version}/achievement/tier/update | Update Achievement Tier
*OASAchievementApi* | [**updateUserAchievement**](OASAchievementApi.md#updateUserAchievement) | **POST** /api/{version}/achievement/progress/update | Update Achievement Progress
*OASActivityApi* | [**createEntityReference**](OASActivityApi.md#createEntityReference) | **POST** /api/{version}/entity/reference | Create an entity reference.
*OASAlbumApi* | [**addAlbumCollection**](OASAlbumApi.md#addAlbumCollection) | **POST** /api/{version}/album/create | Create Album
*OASAlbumApi* | [**addAlbumUsers**](OASAlbumApi.md#addAlbumUsers) | **POST** /api/{version}/album/user/add | Add Album Users
*OASAlbumApi* | [**approveAlbum**](OASAlbumApi.md#approveAlbum) | **POST** /api/{version}/album/approve | Approve Album
*OASAlbumApi* | [**getAlbumCollection**](OASAlbumApi.md#getAlbumCollection) | **GET** /api/{version}/album/get |  Get Album
*OASAlbumApi* | [**leaveAlbum**](OASAlbumApi.md#leaveAlbum) | **POST** /api/{version}/album/user/leave | Leave Album
*OASAlbumApi* | [**removeAlbum**](OASAlbumApi.md#removeAlbum) | **POST** /api/{version}/album/delete | Delete Album
*OASAlbumApi* | [**removeAlbumUsers**](OASAlbumApi.md#removeAlbumUsers) | **POST** /api/{version}/album/user/delete | Remove Album Users
*OASAlbumApi* | [**searchAlbums**](OASAlbumApi.md#searchAlbums) | **GET** /api/{version}/album/search | Search Albums
*OASAlbumApi* | [**updateAlbumCollection**](OASAlbumApi.md#updateAlbumCollection) | **POST** /api/{version}/album/update | Update Album
*OASAnalyticsApi* | [**activities**](OASAnalyticsApi.md#activities) | **GET** /api/{version}/analytics/useractivity | Get User Activity
*OASAnalyticsApi* | [**aggregatedFilteredUsage**](OASAnalyticsApi.md#aggregatedFilteredUsage) | **GET** /api/{version}/analytics/aggregatedFilteredUsage | Get Aggregated Filtered Usage
*OASAnalyticsApi* | [**filteredUsage**](OASAnalyticsApi.md#filteredUsage) | **GET** /api/{version}/analytics/filteredUsage | Get Filtered Usage
*OASAnalyticsApi* | [**usage**](OASAnalyticsApi.md#usage) | **POST** /api/{version}/analytics/usage | Create Usage Record
*OASAnalyticsApi* | [**usageBatch**](OASAnalyticsApi.md#usageBatch) | **POST** /api/{version}/analytics/usage/batch | Create Multiple Usage Records
*OASAppDataApi* | [**getAppData**](OASAppDataApi.md#getAppData) | **GET** /api/{version}/app/get | Get App Data
*OASAppDataApi* | [**postAppData**](OASAppDataApi.md#postAppData) | **POST** /api/{version}/app/post | Create App Data
*OASAppDataApi* | [**regenAppData**](OASAppDataApi.md#regenAppData) | **POST** /api/{version}/app/regen | Regenerate App Data
*OASApplicationApi* | [**createApplication**](OASApplicationApi.md#createApplication) | **POST** /api/{version}/application/create | Create Application
*OASApplicationApi* | [**createApplicationPlacement**](OASApplicationApi.md#createApplicationPlacement) | **POST** /api/{version}/application/placement/create | Create Ad Placement
*OASApplicationApi* | [**deleteApplication**](OASApplicationApi.md#deleteApplication) | **POST** /api/{version}/application/delete | Delete Application
*OASApplicationApi* | [**deleteApplicationPlacement**](OASApplicationApi.md#deleteApplicationPlacement) | **POST** /api/{version}/application/placement/delete | Delete Ad Placement
*OASApplicationApi* | [**getApplication**](OASApplicationApi.md#getApplication) | **GET** /api/{version}/application/get | Get Application
*OASApplicationApi* | [**getApplicationPlacement**](OASApplicationApi.md#getApplicationPlacement) | **GET** /api/{version}/application/placement/get | Get Ad Placement
*OASApplicationApi* | [**getApplicationVersions**](OASApplicationApi.md#getApplicationVersions) | **GET** /api/{version}/application/versions | Get API versions
*OASApplicationApi* | [**getUniqueUsersByApp**](OASApplicationApi.md#getUniqueUsersByApp) | **GET** /api/{version}/application/users | Search Application Users
*OASApplicationApi* | [**listApplications**](OASApplicationApi.md#listApplications) | **GET** /api/{version}/application/list | List Applications
*OASApplicationApi* | [**searchApplicationPlacement**](OASApplicationApi.md#searchApplicationPlacement) | **GET** /api/{version}/application/placement/search | Search for Ad Placements
*OASApplicationApi* | [**searchApplicationSettings**](OASApplicationApi.md#searchApplicationSettings) | **GET** /api/{version}/application/settings/search | Search for Application Settings
*OASApplicationApi* | [**searchApplications**](OASApplicationApi.md#searchApplications) | **GET** /api/{version}/application/search | Search Applications
*OASApplicationApi* | [**updateApplication**](OASApplicationApi.md#updateApplication) | **POST** /api/{version}/application/update | Update Application
*OASApplicationApi* | [**updateApplicationActive**](OASApplicationApi.md#updateApplicationActive) | **POST** /api/{version}/application/active | Change Appliation Status
*OASApplicationApi* | [**updateApplicationPlacement**](OASApplicationApi.md#updateApplicationPlacement) | **POST** /api/{version}/application/placement/update | Update Ad Placement
*OASApplicationApi* | [**uploadApplicationCertificate**](OASApplicationApi.md#uploadApplicationCertificate) | **POST** /api/{version}/application/certificate/create | Create Application Certificate
*OASApplicationConfigApi* | [**createApplicationConfig**](OASApplicationConfigApi.md#createApplicationConfig) | **POST** /api/{version}/appconfig/create | Create AppConfig
*OASApplicationConfigApi* | [**deleteApplicationConfig**](OASApplicationConfigApi.md#deleteApplicationConfig) | **POST** /api/{version}/appconfig/delete | Delete AppConfig
*OASApplicationConfigApi* | [**getApplicationConfig**](OASApplicationConfigApi.md#getApplicationConfig) | **GET** /api/{version}/appconfig/get | Get AppConfig
*OASApplicationConfigApi* | [**getApplicationConfigByConfigVersion**](OASApplicationConfigApi.md#getApplicationConfigByConfigVersion) | **GET** /api/{version}/appconfig/getbyversion | Get AppConfig by Version
*OASApplicationConfigApi* | [**searchApplicationConfig**](OASApplicationConfigApi.md#searchApplicationConfig) | **GET** /api/{version}/appconfig/search | Search AppConfigs
*OASApplicationConfigApi* | [**updateApplicationConfig**](OASApplicationConfigApi.md#updateApplicationConfig) | **POST** /api/{version}/appconfig/update | Update AppConfig
*OASAssetApi* | [**assetDownload**](OASAssetApi.md#assetDownload) | **GET** /api/{version}/asset/download/{filename} | Download Asset
*OASAssetApi* | [**assetMorph**](OASAssetApi.md#assetMorph) | **POST** /api/{version}/asset/morph | Convert Offer to Creative
*OASAssetApi* | [**createAsset**](OASAssetApi.md#createAsset) | **POST** /api/{version}/asset/create | Create Asset
*OASAssetApi* | [**deleteAsset**](OASAssetApi.md#deleteAsset) | **POST** /api/{version}/asset/delete | Delete Asset
*OASAssetApi* | [**getAsset**](OASAssetApi.md#getAsset) | **GET** /api/{version}/asset/get | Get Asset
*OASAssetApi* | [**removeAsset**](OASAssetApi.md#removeAsset) | **POST** /api/{version}/asset/remove | Remove Asset from Collection
*OASAssetApi* | [**searchAssets**](OASAssetApi.md#searchAssets) | **GET** /api/{version}/asset/search | Search Assets
*OASAssetApi* | [**updateAsset**](OASAssetApi.md#updateAsset) | **POST** /api/{version}/asset/update | Update Asset
*OASAssignmentApi* | [**assigmentAssigneeAccountSearch**](OASAssignmentApi.md#assigmentAssigneeAccountSearch) | **GET** /api/{version}/assignment/assignee/search | Search Assignment Assignees
*OASAssignmentApi* | [**assignmentCreate**](OASAssignmentApi.md#assignmentCreate) | **POST** /api/{version}/assignment/create | Create Assignment
*OASAssignmentApi* | [**assignmentDelete**](OASAssignmentApi.md#assignmentDelete) | **POST** /api/{version}/assignment/delete | Delete Assignment
*OASAssignmentApi* | [**assignmentGet**](OASAssignmentApi.md#assignmentGet) | **GET** /api/{version}/assignment/get | Get Assignment
*OASAssignmentApi* | [**assignmentSearch**](OASAssignmentApi.md#assignmentSearch) | **GET** /api/{version}/assignment/search | Search Assignments
*OASAssignmentApi* | [**assignmentStatusCreate**](OASAssignmentApi.md#assignmentStatusCreate) | **POST** /api/{version}/assignment/status/create | Create Assignment Status
*OASAssignmentApi* | [**assignmentStatusDelete**](OASAssignmentApi.md#assignmentStatusDelete) | **POST** /api/{version}/assignment/status/delete | Deletes Assignment Status
*OASAssignmentApi* | [**assignmentStatusGet**](OASAssignmentApi.md#assignmentStatusGet) | **GET** /api/{version}/assignment/status/get | Get Assignment Status
*OASAssignmentApi* | [**assignmentStatusSearch**](OASAssignmentApi.md#assignmentStatusSearch) | **GET** /api/{version}/assignment/status/search | Search Assignment Statuses
*OASAssignmentApi* | [**assignmentStatusUpdate**](OASAssignmentApi.md#assignmentStatusUpdate) | **POST** /api/{version}/assignment/status/update | Update Assignment Status
*OASAssignmentApi* | [**assignmentUpdate**](OASAssignmentApi.md#assignmentUpdate) | **POST** /api/{version}/assignment/update | Update Assignment
*OASAudienceApi* | [**createAudience**](OASAudienceApi.md#createAudience) | **POST** /api/{version}/audience/create | Create Audience
*OASAudienceApi* | [**deleteAudience**](OASAudienceApi.md#deleteAudience) | **POST** /api/{version}/audience/delete | Delete Audience
*OASAudienceApi* | [**getAgeGroups**](OASAudienceApi.md#getAgeGroups) | **GET** /api/{version}/audience/ageGroups | Get Age Groups
*OASAudienceApi* | [**getAudience**](OASAudienceApi.md#getAudience) | **GET** /api/{version}/audience/get | Get Audience
*OASAudienceApi* | [**getAudienceList**](OASAudienceApi.md#getAudienceList) | **GET** /api/{version}/audience/search | Search Audiences
*OASAudienceApi* | [**getDevices**](OASAudienceApi.md#getDevices) | **GET** /api/{version}/audience/devices | Get Devices
*OASAudienceApi* | [**getExperiences**](OASAudienceApi.md#getExperiences) | **GET** /api/{version}/audience/experiences | Get Experiences
*OASAudienceApi* | [**getGroupedAudiences**](OASAudienceApi.md#getGroupedAudiences) | **GET** /api/{version}/audience/grouped/get | Get GroupedAudiences
*OASAudienceApi* | [**listByAccount**](OASAudienceApi.md#listByAccount) | **POST** /api/{version}/audience/suggestion/list | List Suggestions by Audience
*OASAudienceApi* | [**listByAudience**](OASAudienceApi.md#listByAudience) | **GET** /api/{version}/audience/suggestion/offersByAudience | List Offers by Audience
*OASAudienceApi* | [**listLastestByAccount**](OASAudienceApi.md#listLastestByAccount) | **GET** /api/{version}/audience/suggestion/latest | List Sent Suggestions 
*OASAudienceApi* | [**sendByAccount**](OASAudienceApi.md#sendByAccount) | **POST** /api/{version}/audience/suggestion/send | Send Suggestions
*OASAudienceApi* | [**updateAudience**](OASAudienceApi.md#updateAudience) | **POST** /api/{version}/audience/update | Update Audience
*OASBidApi* | [**createBid**](OASBidApi.md#createBid) | **POST** /api/{version}/bid/create | Create Bid
*OASBidApi* | [**deleteBid**](OASBidApi.md#deleteBid) | **POST** /api/{version}/bid/delete | Delete Bid
*OASBidApi* | [**getBid**](OASBidApi.md#getBid) | **GET** /api/{version}/bid/get | Get Bid
*OASBidApi* | [**updateBid**](OASBidApi.md#updateBid) | **POST** /api/{version}/bid/update | Update Bid
*OASBillableEntityApi* | [**createBillableEntity**](OASBillableEntityApi.md#createBillableEntity) | **POST** /api/{version}/billable/create | Create Billable
*OASBillableEntityApi* | [**deleteBillableEntity**](OASBillableEntityApi.md#deleteBillableEntity) | **POST** /api/{version}/billable/delete | Delete Billable
*OASBillableEntityApi* | [**getBillableEntity**](OASBillableEntityApi.md#getBillableEntity) | **GET** /api/{version}/billable/get | Get Billable
*OASBillableEntityApi* | [**updateBillableEntity**](OASBillableEntityApi.md#updateBillableEntity) | **POST** /api/{version}/billable/update | Update Billable
*OASBillingInfoApi* | [**addPaymentMethod**](OASBillingInfoApi.md#addPaymentMethod) | **POST** /api/{version}/billing/update | Update Payment Method
*OASBillingInfoApi* | [**createPaymentMethod**](OASBillingInfoApi.md#createPaymentMethod) | **POST** /api/{version}/billing/create | Create Payment Method
*OASBillingInfoApi* | [**createSmartContract**](OASBillingInfoApi.md#createSmartContract) | **POST** /api/{version}/billing/crypto/transfer | Create Smart Contract
*OASBillingInfoApi* | [**getCryptoBalance**](OASBillingInfoApi.md#getCryptoBalance) | **GET** /api/{version}/billing/crypto/get | Get Crypto Balances
*OASBillingInfoApi* | [**getPaymentMethod**](OASBillingInfoApi.md#getPaymentMethod) | **GET** /api/{version}/billing/get | Get Payment Method
*OASBillingInfoApi* | [**searchPaymentMethod**](OASBillingInfoApi.md#searchPaymentMethod) | **GET** /api/{version}/billing/search | Search Payment Methods
*OASCSVImportApi* | [**getStatusCSV**](OASCSVImportApi.md#getStatusCSV) | **GET** /api/{version}/csvimport/batch/status/details | Detail Status
*OASCSVImportApi* | [**listStatusCSV**](OASCSVImportApi.md#listStatusCSV) | **GET** /api/{version}/csvimport/batch/list | Search Status
*OASCSVImportApi* | [**statusCSV**](OASCSVImportApi.md#statusCSV) | **GET** /api/{version}/csvimport/batch/status | Batch Status
*OASCSVImportApi* | [**uploadCSV**](OASCSVImportApi.md#uploadCSV) | **POST** /api/{version}/csvimport/upload | Upload CSV
*OASCargoTypeApi* | [**createCargoType**](OASCargoTypeApi.md#createCargoType) | **POST** /api/{version}/cargo/type | Create Cargo Type
*OASCargoTypeApi* | [**deleteCargoType**](OASCargoTypeApi.md#deleteCargoType) | **DELETE** /api/{version}/cargo/type/{cargoTypeId} | Delete Cargo Type
*OASCargoTypeApi* | [**getCargoType**](OASCargoTypeApi.md#getCargoType) | **GET** /api/{version}/cargo/type/{cargoTypeId} | Get Cargo Type
*OASCargoTypeApi* | [**searchCargoTypes**](OASCargoTypeApi.md#searchCargoTypes) | **GET** /api/{version}/cargo/type | Search Cargo Type
*OASCargoTypeApi* | [**updateCargoType**](OASCargoTypeApi.md#updateCargoType) | **PUT** /api/{version}/cargo/type/{cargoTypeId} | Update Cargo Type
*OASCarrierApi* | [**searchCarriers**](OASCarrierApi.md#searchCarriers) | **GET** /api/{version}/carrier/search | Search Carriers
*OASCategoryApi* | [**categoryDistanceSearch**](OASCategoryApi.md#categoryDistanceSearch) | **GET** /api/{version}/category/distancesearch | Search Categories by Distance
*OASCategoryApi* | [**createCategory**](OASCategoryApi.md#createCategory) | **POST** /api/{version}/category/create | Create Category
*OASCategoryApi* | [**deleteCategory**](OASCategoryApi.md#deleteCategory) | **POST** /api/{version}/category/delete | Delete Category
*OASCategoryApi* | [**duplicateCategory**](OASCategoryApi.md#duplicateCategory) | **POST** /api/{version}/category/duplicate | Duplicate Category
*OASCategoryApi* | [**getCategory**](OASCategoryApi.md#getCategory) | **GET** /api/{version}/category/get | Get Category
*OASCategoryApi* | [**searchCategories**](OASCategoryApi.md#searchCategories) | **GET** /api/{version}/category/search | Search Categories
*OASCategoryApi* | [**updateCategory**](OASCategoryApi.md#updateCategory) | **POST** /api/{version}/category/update | Update Category
*OASConnectionApi* | [**addConnectionToGroup**](OASConnectionApi.md#addConnectionToGroup) | **POST** /api/{version}/consumer/connection/group/addConnection | Add Connection
*OASConnectionApi* | [**addConnectionsToGroup**](OASConnectionApi.md#addConnectionsToGroup) | **POST** /api/{version}/connection/group/addConnections | Add Connections
*OASConnectionApi* | [**addSubGroups**](OASConnectionApi.md#addSubGroups) | **POST** /api/{version}/consumer/connection/group/addSubGroup | Add Connection Groups
*OASConnectionApi* | [**createOrUpdateConnection**](OASConnectionApi.md#createOrUpdateConnection) | **POST** /api/{version}/consumer/connection/add | Create or Update Connection
*OASConnectionApi* | [**createOrUpdateGroup**](OASConnectionApi.md#createOrUpdateGroup) | **POST** /api/{version}/consumer/connection/group | Create or Update Connection Group
*OASConnectionApi* | [**followAccept**](OASConnectionApi.md#followAccept) | **POST** /api/{version}/consumer/follow/accept | Accept Follow Request
*OASConnectionApi* | [**followReject**](OASConnectionApi.md#followReject) | **POST** /api/{version}/consumer/follow/reject | Reject Follow Request
*OASConnectionApi* | [**followRemove**](OASConnectionApi.md#followRemove) | **POST** /api/{version}/consumer/follow/remove | Remove Follower / Unfollow
*OASConnectionApi* | [**followRequest**](OASConnectionApi.md#followRequest) | **POST** /api/{version}/consumer/follow/request | Send Follow Request
*OASConnectionApi* | [**friendAccept**](OASConnectionApi.md#friendAccept) | **POST** /api/{version}/consumer/friend/accept | Accept Friend
*OASConnectionApi* | [**friendReject**](OASConnectionApi.md#friendReject) | **POST** /api/{version}/consumer/friend/reject | Decline Friend
*OASConnectionApi* | [**friendRemove**](OASConnectionApi.md#friendRemove) | **POST** /api/{version}/consumer/friend/remove | Delete Friend
*OASConnectionApi* | [**friendRequest**](OASConnectionApi.md#friendRequest) | **POST** /api/{version}/consumer/friend/request | Request Friend
*OASConnectionApi* | [**getConnectionSentFriendRequests**](OASConnectionApi.md#getConnectionSentFriendRequests) | **GET** /api/{version}/consumer/connection/getRequested | Get Sent Friend Requests
*OASConnectionApi* | [**getConnections**](OASConnectionApi.md#getConnections) | **GET** /api/{version}/consumer/connection/get | Search Connections
*OASConnectionApi* | [**getGroupDetails**](OASConnectionApi.md#getGroupDetails) | **GET** /api/{version}/consumer/connection/group/details/get | Get Connection Group
*OASConnectionApi* | [**groupSearch**](OASConnectionApi.md#groupSearch) | **GET** /api/{version}/connection/group/search | Search Connection Groups
*OASConnectionApi* | [**removeConnectionFromGroup**](OASConnectionApi.md#removeConnectionFromGroup) | **POST** /api/{version}/consumer/connection/group/removeConnection | Delete Connection
*OASConnectionApi* | [**removeConnectionsFromGroup**](OASConnectionApi.md#removeConnectionsFromGroup) | **POST** /api/{version}/connection/group/removeConnections | Remove Connections
*OASConnectionApi* | [**removeGroup**](OASConnectionApi.md#removeGroup) | **POST** /api/{version}/consumer/connection/group/remove | Delete Connection Group
*OASConnectionApi* | [**removeSubGroups**](OASConnectionApi.md#removeSubGroups) | **POST** /api/{version}/consumer/connection/group/removeSubGroup | Remove Connection Groups
*OASConnectionApi* | [**searchConnections**](OASConnectionApi.md#searchConnections) | **GET** /api/{version}/connection/search | Search Possible Connections
*OASContestApi* | [**addOrUpdateAlbumContest**](OASContestApi.md#addOrUpdateAlbumContest) | **POST** /api/{version}/consumer/album/contest | Create or Update Contest
*OASContestApi* | [**approveAlbumContest**](OASContestApi.md#approveAlbumContest) | **POST** /api/{version}/consumer/album/contest/approve | Approve Contest
*OASContestApi* | [**deleteContest**](OASContestApi.md#deleteContest) | **POST** /api/{version}/consumer/album/contest/remove | Delete Contest
*OASContestApi* | [**getAlbumContest**](OASContestApi.md#getAlbumContest) | **GET** /api/{version}/consumer/album/contest/get | Get Contest
*OASContestApi* | [**getAlbumContests**](OASContestApi.md#getAlbumContests) | **GET** /api/{version}/consumer/album/contest/search | Search Contests
*OASContestApi* | [**voteOnAlbumContest**](OASContestApi.md#voteOnAlbumContest) | **POST** /api/{version}/consumer/album/contest/vote | Vote on Contest
*OASCreativeApi* | [**addPreview**](OASCreativeApi.md#addPreview) | **POST** /api/{version}/creative/addpreview | Add Preview
*OASCreativeApi* | [**adsFind**](OASCreativeApi.md#adsFind) | **GET** /api/{version}/ads/find | Find Missions
*OASCreativeApi* | [**createCreative**](OASCreativeApi.md#createCreative) | **POST** /api/{version}/creative/create | Create Creative
*OASCreativeApi* | [**deleteCreative**](OASCreativeApi.md#deleteCreative) | **POST** /api/{version}/creative/delete | Delete Creative
*OASCreativeApi* | [**getCreative**](OASCreativeApi.md#getCreative) | **GET** /api/{version}/creative/get | Get Creative
*OASCreativeApi* | [**getCreativesByApplication**](OASCreativeApi.md#getCreativesByApplication) | **GET** /api/{version}/creative/search | Search Creatives
*OASCreativeApi* | [**removePreview**](OASCreativeApi.md#removePreview) | **POST** /api/{version}/creative/removepreview | Remove Preview
*OASCreativeApi* | [**updateCreative**](OASCreativeApi.md#updateCreative) | **POST** /api/{version}/creative/update | Update Creative
*OASDependentApi* | [**create**](OASDependentApi.md#create) | **PUT** /api/{version}/cargo/dependent/{accountId} | Create Dependent
*OASDependentApi* | [**getDependents**](OASDependentApi.md#getDependents) | **GET** /api/{version}/cargo/dependent/{accountId} | Get dependent list of an account
*OASDependentApi* | [**removeDependent**](OASDependentApi.md#removeDependent) | **DELETE** /api/{version}/cargo/dependent/{accountId} | Delete Dependent
*OASDisbursementApi* | [**checkDisbursements**](OASDisbursementApi.md#checkDisbursements) | **GET** /api/{version}/disbursement/check | Check Disbursements
*OASDisbursementApi* | [**createDisbursement**](OASDisbursementApi.md#createDisbursement) | **POST** /api/{version}/disbursement/create | Create Disbursement
*OASDisbursementApi* | [**getDisbursement**](OASDisbursementApi.md#getDisbursement) | **GET** /api/{version}/disbursement/get | Get Disbursement
*OASDisbursementApi* | [**searchDisbursements**](OASDisbursementApi.md#searchDisbursements) | **GET** /api/{version}/disbursement/search | Search Disbursements
*OASDisbursementApi* | [**updateDisbursement**](OASDisbursementApi.md#updateDisbursement) | **POST** /api/{version}/disbursement/update | Update Disbursement
*OASEmployeeApi* | [**assignEmployee**](OASEmployeeApi.md#assignEmployee) | **POST** /api/{version}/employee/assign | Assign Employee
*OASEmployeeApi* | [**assignToLocationEmployee**](OASEmployeeApi.md#assignToLocationEmployee) | **POST** /api/{version}/employee/assignToLocation | Assign Employee to Location
*OASEmployeeApi* | [**createEmployee**](OASEmployeeApi.md#createEmployee) | **POST** /api/{version}/employee/create | Create Employee
*OASEmployeeApi* | [**deleteEmployee**](OASEmployeeApi.md#deleteEmployee) | **POST** /api/{version}/employee/delete | Delete Employee
*OASEmployeeApi* | [**getEmployee**](OASEmployeeApi.md#getEmployee) | **POST** /api/{version}/employee/get | Get Employee
*OASEmployeeApi* | [**searchEmployees**](OASEmployeeApi.md#searchEmployees) | **POST** /api/{version}/employee/search | Search Employees
*OASEmployeeApi* | [**unassignEmployee**](OASEmployeeApi.md#unassignEmployee) | **POST** /api/{version}/employee/unassign | Unassign Employee
*OASEmployeeApi* | [**updateEmployee**](OASEmployeeApi.md#updateEmployee) | **POST** /api/{version}/employee/update | Update Employee
*OASEventApi* | [**attendEvent**](OASEventApi.md#attendEvent) | **POST** /api/{version}/event/attend | Attend Event
*OASEventApi* | [**createEvent**](OASEventApi.md#createEvent) | **POST** /api/{version}/event/create | Create Event
*OASEventApi* | [**deleteEvent**](OASEventApi.md#deleteEvent) | **POST** /api/{version}/event/delete | Delete Event
*OASEventApi* | [**getEvent**](OASEventApi.md#getEvent) | **GET** /api/{version}/event/get | Get Event
*OASEventApi* | [**searchEventTransactions**](OASEventApi.md#searchEventTransactions) | **GET** /api/{version}/event/attendance/search | Search Event Attendance
*OASEventApi* | [**searchEvents**](OASEventApi.md#searchEvents) | **GET** /api/{version}/event/search | Search Events
*OASEventApi* | [**updateEvent**](OASEventApi.md#updateEvent) | **POST** /api/{version}/event/update | Update Event
*OASFacebookApi* | [**getToken**](OASFacebookApi.md#getToken) | **GET** /api/{version}/facebook/getfbtoken | Get Facebook Token
*OASFacebookApi* | [**graphInterface**](OASFacebookApi.md#graphInterface) | **POST** /api/{version}/facebook/graph | Post to Facebook
*OASFavoriteApi* | [**addFavorite**](OASFavoriteApi.md#addFavorite) | **POST** /api/{version}/favorite/create | Create Favorite
*OASFavoriteApi* | [**deleteFavorite**](OASFavoriteApi.md#deleteFavorite) | **POST** /api/{version}/favorite/delete | Delete Favorite
*OASFavoriteApi* | [**getFavorite**](OASFavoriteApi.md#getFavorite) | **GET** /api/{version}/favorite/get | Get Favorite
*OASFavoriteApi* | [**searchFavorites**](OASFavoriteApi.md#searchFavorites) | **GET** /api/{version}/favorite/search | Search Favorites
*OASFavoriteApi* | [**whoHasFavorited**](OASFavoriteApi.md#whoHasFavorited) | **GET** /api/{version}/favorite/whois | Who has Favorited
*OASFilterApi* | [**createFilter**](OASFilterApi.md#createFilter) | **POST** /api/{version}/filter/create | Create Filter
*OASFilterApi* | [**deleteFilter**](OASFilterApi.md#deleteFilter) | **POST** /api/{version}/filter/delete | Delete Filter
*OASFilterApi* | [**getFilter**](OASFilterApi.md#getFilter) | **GET** /api/{version}/filter/get | Get Filter
*OASFilterApi* | [**searchFilters**](OASFilterApi.md#searchFilters) | **GET** /api/{version}/filter/search | Search Filters
*OASFilterApi* | [**updateFilter**](OASFilterApi.md#updateFilter) | **POST** /api/{version}/filter/update | Update Filter
*OASFlagApi* | [**createFlag**](OASFlagApi.md#createFlag) | **POST** /api/{version}/flag/create | Create Flag
*OASFlagApi* | [**deleteFlag**](OASFlagApi.md#deleteFlag) | **POST** /api/{version}/flag/delete | Delete Flag
*OASFlagApi* | [**getFlag**](OASFlagApi.md#getFlag) | **GET** /api/{version}/flag/get | Get Flag
*OASFlagApi* | [**getFlagThreshold**](OASFlagApi.md#getFlagThreshold) | **GET** /api/{version}/flag/threshold/get | Get Flag Threshold
*OASFlagApi* | [**updateFlagThreshold**](OASFlagApi.md#updateFlagThreshold) | **POST** /api/{version}/flag/threshold/update | Update Flag Threshold
*OASGameApi* | [**createGame**](OASGameApi.md#createGame) | **POST** /api/{version}/game/create | Create a Game
*OASGameApi* | [**deleteGame**](OASGameApi.md#deleteGame) | **POST** /api/{version}/game/delete | Delete a Game
*OASGameApi* | [**getGame**](OASGameApi.md#getGame) | **GET** /api/{version}/game/get | Get a Game by id
*OASGameApi* | [**searchGames**](OASGameApi.md#searchGames) | **GET** /api/{version}/game/search | Search a Game
*OASGameApi* | [**updateGame**](OASGameApi.md#updateGame) | **POST** /api/{version}/game/update | Update a Game
*OASGameLevelApi* | [**createGameLevel**](OASGameLevelApi.md#createGameLevel) | **POST** /api/{version}/level/create | Create Game Level
*OASGameLevelApi* | [**deleteGameLevel**](OASGameLevelApi.md#deleteGameLevel) | **POST** /api/{version}/level/delete | Delete Game Level
*OASGameLevelApi* | [**getGameLevel**](OASGameLevelApi.md#getGameLevel) | **GET** /api/{version}/level/get | Get Game Level
*OASGameLevelApi* | [**getGameLevelsByApplication**](OASGameLevelApi.md#getGameLevelsByApplication) | **GET** /api/{version}/level/search | Search Game Levels
*OASGameLevelApi* | [**getGameLevelsByBillableEntity**](OASGameLevelApi.md#getGameLevelsByBillableEntity) | **GET** /api/{version}/level/searchByBillableEntity | Search Game Level by Billable Entity
*OASGameLevelApi* | [**getQuestionsInLevel**](OASGameLevelApi.md#getQuestionsInLevel) | **GET** /api/{version}/level/questions/get | Get Level Questions
*OASGameLevelApi* | [**getWordsInLevel**](OASGameLevelApi.md#getWordsInLevel) | **GET** /api/{version}/level/words/get | Get Level Words
*OASGameLevelApi* | [**updateGameLevel**](OASGameLevelApi.md#updateGameLevel) | **POST** /api/{version}/level/update | Update Game Level
*OASGameLevelApi* | [**updateQuestionsInLevel**](OASGameLevelApi.md#updateQuestionsInLevel) | **POST** /api/{version}/level/questions/update | Update Level Questions
*OASGameLevelApi* | [**updateWordsInLevel**](OASGameLevelApi.md#updateWordsInLevel) | **POST** /api/{version}/level/words/update | Update Level Words
*OASInviteApi* | [**acceptInvite**](OASInviteApi.md#acceptInvite) | **POST** /api/{version}/invite/accept | Accept Invite
*OASInviteApi* | [**albumContestInvite**](OASInviteApi.md#albumContestInvite) | **POST** /api/{version}/invite/albumContest | Invite to Contest
*OASInviteApi* | [**albumInvite**](OASInviteApi.md#albumInvite) | **POST** /api/{version}/invite/album | Invite to Collection
*OASInviteApi* | [**eventInvite**](OASInviteApi.md#eventInvite) | **POST** /api/{version}/invite/event | Invite to Event
*OASInviteApi* | [**gameInvite**](OASInviteApi.md#gameInvite) | **POST** /api/{version}/invite/gameLevel | Invite to Game Level
*OASInviteApi* | [**getInvite**](OASInviteApi.md#getInvite) | **GET** /api/{version}/invite/get | Get Invite
*OASInviteApi* | [**missionInvite**](OASInviteApi.md#missionInvite) | **POST** /api/{version}/invite/mission | Invite to Mission
*OASInviteApi* | [**offerInvite**](OASInviteApi.md#offerInvite) | **POST** /api/{version}/invite/offer | Invite to Offer
*OASInviteApi* | [**offerLocationInvite**](OASInviteApi.md#offerLocationInvite) | **POST** /api/{version}/invite/offerLocation | Invite to Offer Location
*OASInviteApi* | [**retailerLocationInvite**](OASInviteApi.md#retailerLocationInvite) | **POST** /api/{version}/invite/retailerLocation | Invite to Retailer Location
*OASLeaderboardApi* | [**createLeaderboard**](OASLeaderboardApi.md#createLeaderboard) | **POST** /api/{version}/leaderboard/create | Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
*OASLeaderboardApi* | [**deleteLeaderboard**](OASLeaderboardApi.md#deleteLeaderboard) | **POST** /api/{version}/leaderboard/delete | Delete the Leader Board
*OASLeaderboardApi* | [**getLeaderboard**](OASLeaderboardApi.md#getLeaderboard) | **GET** /api/{version}/leaderboard/get | Read a leaderboard by id and retrieve the matching ranking list
*OASLeaderboardApi* | [**searchLeaderboards**](OASLeaderboardApi.md#searchLeaderboards) | **GET** /api/{version}/leaderboard/search | Search leaderboard and retrieve the matching ranking list
*OASLeaderboardApi* | [**updateLeaderboard**](OASLeaderboardApi.md#updateLeaderboard) | **POST** /api/{version}/leaderboard/update | Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
*OASLikeApi* | [**registerLike**](OASLikeApi.md#registerLike) | **POST** /api/{version}/like | Create Like
*OASLikeApi* | [**removeLike**](OASLikeApi.md#removeLike) | **POST** /api/{version}/like/delete | Delete Like
*OASLikeApi* | [**searchLikes**](OASLikeApi.md#searchLikes) | **GET** /api/{version}/like/search | Search Likes
*OASListingApi* | [**createListing**](OASListingApi.md#createListing) | **POST** /api/{version}/listing/create | Create Listing
*OASListingApi* | [**deleteListing**](OASListingApi.md#deleteListing) | **POST** /api/{version}/listing/delete | Delete Listing
*OASListingApi* | [**getListing**](OASListingApi.md#getListing) | **GET** /api/{version}/listing/get | Get Listing
*OASListingApi* | [**searchListing**](OASListingApi.md#searchListing) | **GET** /api/{version}/listing/search | Search Listings
*OASListingApi* | [**summaryListing**](OASListingApi.md#summaryListing) | **GET** /api/{version}/listing/summary | Summary Listing
*OASListingApi* | [**updateListing**](OASListingApi.md#updateListing) | **POST** /api/{version}/listing/update | Update Listing
*OASLocationApi* | [**cacheTrilaterationData**](OASLocationApi.md#cacheTrilaterationData) | **POST** /api/{version}/location/trilaterate/cache | Create Trilateration Data with File
*OASLocationApi* | [**cacheTrilaterationDataGzip**](OASLocationApi.md#cacheTrilaterationDataGzip) | **POST** /api/{version}/location/trilaterate/cache/submit | Create Trilateration Data with Rest
*OASLocationApi* | [**getLocationByIp**](OASLocationApi.md#getLocationByIp) | **GET** /api/{version}/location/ip | Get Location by IP
*OASLocationApi* | [**getLocationByTrilateration**](OASLocationApi.md#getLocationByTrilateration) | **GET** /api/{version}/account/location/trilaterate | Get Location by Trilateration
*OASLocationApi* | [**getLocations**](OASLocationApi.md#getLocations) | **GET** /api/{version}/location/search | Search Regions or Postal Codes
*OASLocationApiV2Api* | [**createLocationV2**](OASLocationApiV2Api.md#createLocationV2) | **POST** /api/{version}/location | Create new location
*OASLocationApiV2Api* | [**updateLocationV2**](OASLocationApiV2Api.md#updateLocationV2) | **POST** /api/{version}/location/{id} | Update an existing location
*OASMediaApi* | [**createMedia**](OASMediaApi.md#createMedia) | **POST** /api/{version}/media/create | Create Media
*OASMediaApi* | [**deleteMedia**](OASMediaApi.md#deleteMedia) | **POST** /api/{version}/media/delete | Delete Media
*OASMediaApi* | [**getMedia**](OASMediaApi.md#getMedia) | **GET** /api/{version}/media/get | Media Get
*OASMediaApi* | [**searchMedia**](OASMediaApi.md#searchMedia) | **GET** /api/{version}/media/search | Search Media
*OASMediaApi* | [**updateMedia**](OASMediaApi.md#updateMedia) | **POST** /api/{version}/media/update | Update Media
*OASMissionApi* | [**createMission**](OASMissionApi.md#createMission) | **POST** /api/{version}/mission/create | Create Mission
*OASMissionApi* | [**deleteMission**](OASMissionApi.md#deleteMission) | **POST** /api/{version}/mission/delete | Delete Mission
*OASMissionApi* | [**findMissions**](OASMissionApi.md#findMissions) | **GET** /api/{version}/mission/find | Find Missions
*OASMissionApi* | [**getMission**](OASMissionApi.md#getMission) | **GET** /api/{version}/mission/get | Get Mission
*OASMissionApi* | [**importMission**](OASMissionApi.md#importMission) | **POST** /api/{version}/mission/import | Import Mission
*OASMissionApi* | [**searchMissionFormats**](OASMissionApi.md#searchMissionFormats) | **GET** /api/{version}/mission/format/search | Search Mission Formats
*OASMissionApi* | [**searchMissions**](OASMissionApi.md#searchMissions) | **GET** /api/{version}/mission/search | Search Missions
*OASMissionApi* | [**searchMissionsByBillableEntity**](OASMissionApi.md#searchMissionsByBillableEntity) | **GET** /api/{version}/mission/searchByBillableEntity | Search Missions by Billable Entity
*OASMissionApi* | [**updateMission**](OASMissionApi.md#updateMission) | **POST** /api/{version}/mission/update | Update Mission
*OASMissionInviteApi* | [**createMissionInvite**](OASMissionInviteApi.md#createMissionInvite) | **POST** /api/{version}/mission/invite/create | Create Mission Invite
*OASMissionInviteApi* | [**deleteMissionInvite**](OASMissionInviteApi.md#deleteMissionInvite) | **POST** /api/{version}/mission/invite/delete | Delete Mission Invite
*OASMissionInviteApi* | [**getMissionInvite**](OASMissionInviteApi.md#getMissionInvite) | **GET** /api/{version}/mission/invite/get | Get Mission Invite
*OASMissionInviteApi* | [**searchMissionInvites**](OASMissionInviteApi.md#searchMissionInvites) | **GET** /api/{version}/mission/invite/search | Search Mission Invites
*OASMissionInviteApi* | [**updateMissionInvite**](OASMissionInviteApi.md#updateMissionInvite) | **POST** /api/{version}/mission/invite/update | Update Mission Invite
*OASNoteApi* | [**batchOperation**](OASNoteApi.md#batchOperation) | **POST** /api/{version}/note/batch | Batch Note Operation
*OASNoteApi* | [**createNote**](OASNoteApi.md#createNote) | **POST** /api/{version}/note/create | Create Note
*OASNoteApi* | [**deleteNote**](OASNoteApi.md#deleteNote) | **POST** /api/{version}/note/delete | Delete Note
*OASNoteApi* | [**getNote**](OASNoteApi.md#getNote) | **POST** /api/{version}/note/get | Get Note
*OASNoteApi* | [**searchNotes**](OASNoteApi.md#searchNotes) | **POST** /api/{version}/note/search | Search Notes
*OASNoteApi* | [**updateNote**](OASNoteApi.md#updateNote) | **POST** /api/{version}/note/update | Update Note
*OASNotificationApi* | [**createNotificationTemplate**](OASNotificationApi.md#createNotificationTemplate) | **POST** /api/{version}/notification/template/create | Create Notification Template
*OASNotificationApi* | [**createOrUpdateBlockedNotifications**](OASNotificationApi.md#createOrUpdateBlockedNotifications) | **POST** /api/{version}/notification/blocked/batch | Create or update blocked notification settings
*OASNotificationApi* | [**deleteNotificationTemplate**](OASNotificationApi.md#deleteNotificationTemplate) | **POST** /api/{version}/notification/template/delete | Delete Notification Template
*OASNotificationApi* | [**getNotificationTemplate**](OASNotificationApi.md#getNotificationTemplate) | **GET** /api/{version}/notification/template/get | Get Notification Template
*OASNotificationApi* | [**getNotifications**](OASNotificationApi.md#getNotifications) | **GET** /api/{version}/notification/search | Get Notifications
*OASNotificationApi* | [**registerNotificationToken**](OASNotificationApi.md#registerNotificationToken) | **POST** /api/{version}/notification/token | Register Notification Token
*OASNotificationApi* | [**searchBlockedNotifications**](OASNotificationApi.md#searchBlockedNotifications) | **GET** /api/{version}/notification/blocked/search | Search on the user\&#39;s blocked notification settings
*OASNotificationApi* | [**searchNotificationTemplate**](OASNotificationApi.md#searchNotificationTemplate) | **GET** /api/{version}/notification/template/search | Search Notification Templates
*OASNotificationApi* | [**searchRecipients**](OASNotificationApi.md#searchRecipients) | **GET** /api/{version}/notification/recipient/search | Search for Recipients
*OASNotificationApi* | [**searchRecipientsCount**](OASNotificationApi.md#searchRecipientsCount) | **GET** /api/{version}/notification/recipient/search/count | Search for Recipients (Counts/Grouped)
*OASNotificationApi* | [**sendBatchNotifications**](OASNotificationApi.md#sendBatchNotifications) | **POST** /api/{version}/notification/batch | Send Batch Notifications
*OASNotificationApi* | [**sendCustomNotifications**](OASNotificationApi.md#sendCustomNotifications) | **POST** /api/{version}/notification/custom | Send Custom Notifications
*OASNotificationApi* | [**updateNotificationTemplate**](OASNotificationApi.md#updateNotificationTemplate) | **POST** /api/{version}/notification/template/update | Update Notification Template
*OASObjectStoreApi* | [**addField**](OASObjectStoreApi.md#addField) | **POST** /api/{version}/object/field/add | Create Field
*OASObjectStoreApi* | [**createData**](OASObjectStoreApi.md#createData) | **POST** /api/{version}/object/data/{objectName} | Create Data
*OASObjectStoreApi* | [**createObject**](OASObjectStoreApi.md#createObject) | **POST** /api/{version}/object/create | Create Object
*OASObjectStoreApi* | [**deleteData**](OASObjectStoreApi.md#deleteData) | **DELETE** /api/{version}/object/data/{objectName}/{objectId} | Delete Data
*OASObjectStoreApi* | [**deleteField**](OASObjectStoreApi.md#deleteField) | **POST** /api/{version}/object/field/delete | Delete Field
*OASObjectStoreApi* | [**deleteObject**](OASObjectStoreApi.md#deleteObject) | **POST** /api/{version}/object/delete | Delete Object
*OASObjectStoreApi* | [**getData**](OASObjectStoreApi.md#getData) | **GET** /api/{version}/object/data/{objectName}/{objectId} | Get Data
*OASObjectStoreApi* | [**getObject**](OASObjectStoreApi.md#getObject) | **GET** /api/{version}/object/get | Get Object
*OASObjectStoreApi* | [**searchData**](OASObjectStoreApi.md#searchData) | **GET** /api/{version}/object/data/{objectName} | Search Data
*OASObjectStoreApi* | [**searchObject**](OASObjectStoreApi.md#searchObject) | **GET** /api/{version}/object/search | Search Objects
*OASObjectStoreApi* | [**updateData**](OASObjectStoreApi.md#updateData) | **PUT** /api/{version}/object/data/{objectName}/{objectId} | Update Data
*OASOfferApi* | [**batchUpdateOfferLocations**](OASOfferApi.md#batchUpdateOfferLocations) | **POST** /api/{version}/retailer/offer/location/batchUpdate | Update Offer Locations
*OASOfferApi* | [**createOffer**](OASOfferApi.md#createOffer) | **POST** /api/{version}/retailer/offer/create | Create Offer
*OASOfferApi* | [**deleteOffer**](OASOfferApi.md#deleteOffer) | **POST** /api/{version}/retailer/offer/delete | Delete Offer
*OASOfferApi* | [**deleteOfferLocation**](OASOfferApi.md#deleteOfferLocation) | **POST** /api/{version}/retailer/offer/location/delete | Delete Offer Location
*OASOfferApi* | [**getOffer**](OASOfferApi.md#getOffer) | **GET** /api/{version}/retailer/offer/get | Get Offer
*OASOfferApi* | [**getOfferDetails**](OASOfferApi.md#getOfferDetails) | **GET** /api/{version}/offer/get | Get Offer
*OASOfferApi* | [**getOfferListCounts**](OASOfferApi.md#getOfferListCounts) | **GET** /api/{version}/offer/lists/count | Get Offers (Counts)
*OASOfferApi* | [**getOfferLocation**](OASOfferApi.md#getOfferLocation) | **GET** /api/{version}/offer/location/get | Get Offer Location
*OASOfferApi* | [**getOfferLocationsForRetailers**](OASOfferApi.md#getOfferLocationsForRetailers) | **GET** /api/{version}/retailer/offer/location/search | Search Offer Locations
*OASOfferApi* | [**getOffersForRetailers**](OASOfferApi.md#getOffersForRetailers) | **GET** /api/{version}/retailer/offer/search | Search Offers
*OASOfferApi* | [**redeemOfferTransaction**](OASOfferApi.md#redeemOfferTransaction) | **POST** /api/{version}/retailer/offer/transaction/update | Update Offer Transaction
*OASOfferApi* | [**searchOfferTransactionsForRetailers**](OASOfferApi.md#searchOfferTransactionsForRetailers) | **GET** /api/{version}/retailer/offer/transaction/search | Search Offer Transactions
*OASOfferApi* | [**searchOffersForConsumer**](OASOfferApi.md#searchOffersForConsumer) | **GET** /api/{version}/offer/lists | Search Offers
*OASOfferApi* | [**topOfferTransactions**](OASOfferApi.md#topOfferTransactions) | **GET** /api/{version}/offer/top | Get Offers (Top)
*OASOfferApi* | [**updateOffer**](OASOfferApi.md#updateOffer) | **POST** /api/{version}/retailer/offer/update | Update Offer
*OASOfferApi* | [**updateOfferStatus**](OASOfferApi.md#updateOfferStatus) | **POST** /api/{version}/retailer/offer/status | Activate Offer
*OASOfferStatusApi* | [**createOfferTransactionStatus**](OASOfferStatusApi.md#createOfferTransactionStatus) | **POST** /api/{version}/offer/status/create | Create Offer Status
*OASOfferStatusApi* | [**deleteOfferTransactionStatus**](OASOfferStatusApi.md#deleteOfferTransactionStatus) | **POST** /api/{version}/offer/status/delete | Delete Offer Status
*OASOfferStatusApi* | [**getOfferTransactionStatus**](OASOfferStatusApi.md#getOfferTransactionStatus) | **GET** /api/{version}/offer/status/get | Get Offer Status
*OASOfferStatusApi* | [**searchOfferTransactionStatuses**](OASOfferStatusApi.md#searchOfferTransactionStatuses) | **GET** /api/{version}/offer/status/search | Search Offer Status
*OASOfferStatusApi* | [**updateOfferTransactionStatus**](OASOfferStatusApi.md#updateOfferTransactionStatus) | **POST** /api/{version}/offer/status/update | Update Offer Status
*OASOpenAIApi* | [**imageGeneration**](OASOpenAIApi.md#imageGeneration) | **POST** /api/{version}/openai/v1/images/generations | Generate images with OpenAI
*OASOptimizeApi* | [**getOptimizationResult**](OASOptimizeApi.md#getOptimizationResult) | **GET** /api/{version}/optimize/result/{batchID} | Get Optimization Result
*OASOptimizeApi* | [**requestOptimization**](OASOptimizeApi.md#requestOptimization) | **POST** /api/{version}/optimize/request | Request Optimization
*OASOrsonApi* | [**addMovie**](OASOrsonApi.md#addMovie) | **POST** /api/{version}/orson/ai/addMovie | Add Movie
*OASOrsonApi* | [**aiDocs**](OASOrsonApi.md#aiDocs) | **GET** /api/{version}/orson/ai/docs | Search Docs
*OASOrsonApi* | [**aiFindImages**](OASOrsonApi.md#aiFindImages) | **GET** /api/{version}/orson/ai/img | Find images
*OASOrsonApi* | [**aiTags**](OASOrsonApi.md#aiTags) | **GET** /api/{version}/orson/ai/tags | Search Tags
*OASOrsonApi* | [**aiText**](OASOrsonApi.md#aiText) | **GET** /api/{version}/orson/ai/text | Search Text
*OASOrsonApi* | [**batch**](OASOrsonApi.md#batch) | **POST** /api/{version}/orson/ai/batch | Batch Analysis
*OASOrsonApi* | [**createInstantEpisode**](OASOrsonApi.md#createInstantEpisode) | **POST** /api/{version}/orson/stories/episodes/instant | Creates an instant episode
*OASOrsonApi* | [**createVoiceCanvas**](OASOrsonApi.md#createVoiceCanvas) | **POST** /api/{version}/orson/ai/voiceCanvas | Create VoiceCanvas images
*OASOrsonApi* | [**emotion**](OASOrsonApi.md#emotion) | **POST** /api/{version}/orson/ai/emotion | Detect emotions
*OASOrsonApi* | [**getAddMovieResult**](OASOrsonApi.md#getAddMovieResult) | **GET** /api/{version}/orson/ai/addMovie/{requestId} | Get Add Movie Result
*OASOrsonApi* | [**getBatch**](OASOrsonApi.md#getBatch) | **GET** /api/{version}/orson/ai/batch/{requestId} | Get Batch Analysis Results
*OASOrsonApi* | [**getEmotion**](OASOrsonApi.md#getEmotion) | **GET** /api/{version}/orson/ai/emotion/{requestId} | Get Emotion Results
*OASOrsonApi* | [**getEpisodeStatus**](OASOrsonApi.md#getEpisodeStatus) | **GET** /api/{version}/orson/stories/episodes/{episodeId}/status | Check episode status
*OASOrsonApi* | [**getRenderStatus**](OASOrsonApi.md#getRenderStatus) | **GET** /api/{version}/orson/stories/renders/{renderId}/status | Check episode status
*OASOrsonApi* | [**getSTT**](OASOrsonApi.md#getSTT) | **GET** /api/{version}/orson/ai/stt/{requestId} | Get Speach to Text Result
*OASOrsonApi* | [**getTTS**](OASOrsonApi.md#getTTS) | **GET** /api/{version}/orson/ai/tts/{requestId} | Get Text to Speach Result
*OASOrsonApi* | [**getTechTune**](OASOrsonApi.md#getTechTune) | **GET** /api/{version}/orson/ai/techTune/{requestId} | Get TechTune Results
*OASOrsonApi* | [**getTopics**](OASOrsonApi.md#getTopics) | **GET** /api/{version}/orson/ai/topics/{requestId} | Get Topics
*OASOrsonApi* | [**getVoiceCanvas**](OASOrsonApi.md#getVoiceCanvas) | **GET** /api/{version}/orson/ai/voiceCanvas/{requestId} | Get VoiceCanvas images
*OASOrsonApi* | [**startVideoRender**](OASOrsonApi.md#startVideoRender) | **POST** /api/{version}/orson/stories/renders | Starts a StoryStitch video render
*OASOrsonApi* | [**stt**](OASOrsonApi.md#stt) | **POST** /api/{version}/orson/ai/stt | Speach to Text
*OASOrsonApi* | [**summarizeTopics**](OASOrsonApi.md#summarizeTopics) | **POST** /api/{version}/orson/ai/topics | Summarize Topics
*OASOrsonApi* | [**techTune**](OASOrsonApi.md#techTune) | **POST** /api/{version}/orson/ai/techTune | Detect Technical Issues
*OASOrsonApi* | [**tts**](OASOrsonApi.md#tts) | **POST** /api/{version}/orson/ai/tts | Text to Speach
*OASPackApi* | [**createPack**](OASPackApi.md#createPack) | **POST** /api/{version}/pack/create | Create Pack
*OASPackApi* | [**deletePack**](OASPackApi.md#deletePack) | **POST** /api/{version}/pack/delete | Delete Pack
*OASPackApi* | [**getPack**](OASPackApi.md#getPack) | **GET** /api/{version}/pack/get | Get Pack
*OASPackApi* | [**searchPacks**](OASPackApi.md#searchPacks) | **GET** /api/{version}/pack/search | Search Packs
*OASPackApi* | [**updatePack**](OASPackApi.md#updatePack) | **POST** /api/{version}/pack/update | Update Pack
*OASParticipantsApi* | [**processAllParticipants**](OASParticipantsApi.md#processAllParticipants) | **POST** /api/{version}/participant/process/all | Process All Participant Feeds
*OASParticipantsApi* | [**processParticipants**](OASParticipantsApi.md#processParticipants) | **POST** /api/{version}/participant/process | Process Participants Feed
*OASPathingApi* | [**computePath**](OASPathingApi.md#computePath) | **GET** /api/{version}/pathing/compute | Calculate Path
*OASPostalCodeApi* | [**createPostalCode**](OASPostalCodeApi.md#createPostalCode) | **POST** /api/{version}/postalCode/create | Create Postal Code
*OASPostalCodeApi* | [**deletePostalCode**](OASPostalCodeApi.md#deletePostalCode) | **POST** /api/{version}/postalCode/delete | Delete Postal Code
*OASPostalCodeApi* | [**getPostalCode**](OASPostalCodeApi.md#getPostalCode) | **GET** /api/{version}/postalCode/get | Get Postal Code
*OASPostalCodeApi* | [**getPostalCodes**](OASPostalCodeApi.md#getPostalCodes) | **GET** /api/{version}/postalCode/search | Search Postal Codes
*OASPostalCodeApi* | [**updatePostalCode**](OASPostalCodeApi.md#updatePostalCode) | **POST** /api/{version}/postalCode/update | Update Postal Code
*OASPreviewPersonaApi* | [**createPersona**](OASPreviewPersonaApi.md#createPersona) | **POST** /api/{version}/persona/create | Create Persona
*OASPreviewPersonaApi* | [**deletePersona**](OASPreviewPersonaApi.md#deletePersona) | **POST** /api/{version}/persona/delete | Delete Persona
*OASPreviewPersonaApi* | [**getPersonaList**](OASPreviewPersonaApi.md#getPersonaList) | **GET** /api/{version}/persona/get | Get Persona
*OASPreviewPersonaApi* | [**searchPersona**](OASPreviewPersonaApi.md#searchPersona) | **GET** /api/{version}/persona/search | Search Personas
*OASPreviewPersonaApi* | [**updatePersona**](OASPreviewPersonaApi.md#updatePersona) | **POST** /api/{version}/persona/update | Update Persona
*OASProgramApi* | [**createProgram**](OASProgramApi.md#createProgram) | **POST** /api/{version}/program | Create Program
*OASProgramApi* | [**deleteProgram**](OASProgramApi.md#deleteProgram) | **DELETE** /api/{version}/program/{id} | Delete Program
*OASProgramApi* | [**getProgram**](OASProgramApi.md#getProgram) | **GET** /api/{version}/program/{id} | Get Program
*OASProgramApi* | [**postProgram**](OASProgramApi.md#postProgram) | **POST** /api/{version}/program/{id} | Update Program
*OASProgramApi* | [**putProgram**](OASProgramApi.md#putProgram) | **PUT** /api/{version}/program/{id} | Update Program
*OASProgramApi* | [**searchPrograms**](OASProgramApi.md#searchPrograms) | **GET** /api/{version}/program | Search Programs
*OASPurchaseItemApi* | [**createPurchaseItem**](OASPurchaseItemApi.md#createPurchaseItem) | **POST** /api/{version}/purchase/create | Create Purchase
*OASPurchaseItemApi* | [**deletePurchaseItem**](OASPurchaseItemApi.md#deletePurchaseItem) | **POST** /api/{version}/purchase/delete | Delete Purchase
*OASPurchaseItemApi* | [**getPurchaseItem**](OASPurchaseItemApi.md#getPurchaseItem) | **GET** /api/{version}/purchase/get | Get Purchase
*OASPurchaseItemApi* | [**searchPurchaseItems**](OASPurchaseItemApi.md#searchPurchaseItems) | **GET** /api/{version}/purchase/search | Search Purchases
*OASPurchaseItemApi* | [**updatePurchaseItem**](OASPurchaseItemApi.md#updatePurchaseItem) | **POST** /api/{version}/purchase/update | Update Purchase
*OASPurchaseOrderApi* | [**createOrder**](OASPurchaseOrderApi.md#createOrder) | **POST** /api/{version}/order/create | Create Order
*OASPurchaseOrderApi* | [**deleteOrder**](OASPurchaseOrderApi.md#deleteOrder) | **POST** /api/{version}/order/delete | Delete Order
*OASPurchaseOrderApi* | [**getOrder**](OASPurchaseOrderApi.md#getOrder) | **GET** /api/{version}/order/get | Get Order
*OASPurchaseOrderApi* | [**previewOrder**](OASPurchaseOrderApi.md#previewOrder) | **POST** /api/{version}/order/preview | Preview Order
*OASPurchaseOrderApi* | [**searchOrders**](OASPurchaseOrderApi.md#searchOrders) | **GET** /api/{version}/order/search | Search Orders
*OASPurchaseOrderApi* | [**updateOrder**](OASPurchaseOrderApi.md#updateOrder) | **POST** /api/{version}/order/update | Update Order
*OASQuestionApi* | [**createQuestion**](OASQuestionApi.md#createQuestion) | **POST** /api/{version}/game/question/create | Create Question
*OASQuestionApi* | [**deleteQuestion**](OASQuestionApi.md#deleteQuestion) | **POST** /api/{version}/game/question/delete | Delete Question
*OASQuestionApi* | [**getQuestion**](OASQuestionApi.md#getQuestion) | **GET** /api/{version}/game/question/get | Get Question
*OASQuestionApi* | [**searchQuestions**](OASQuestionApi.md#searchQuestions) | **GET** /api/{version}/game/question/search | Search Questions
*OASQuestionApi* | [**updateQuestion**](OASQuestionApi.md#updateQuestion) | **POST** /api/{version}/game/question/update | Update Question
*OASRankingApi* | [**getHistoricalRankings**](OASRankingApi.md#getHistoricalRankings) | **GET** /api/{version}/ranking/historical/search | Search Historical Rankings
*OASRankingApi* | [**getRankings**](OASRankingApi.md#getRankings) | **GET** /api/{version}/ranking/search | Search Rankings
*OASRankingApi* | [**getUserRank**](OASRankingApi.md#getUserRank) | **POST** /api/{version}/ranking/personal/ranks | Get Personal Rankings
*OASRankingApi* | [**overrideUserRank**](OASRankingApi.md#overrideUserRank) | **POST** /api/{version}/ranking/override | Override User Rank
*OASRankingApi* | [**updateRankings**](OASRankingApi.md#updateRankings) | **POST** /api/{version}/ranking/update | Update Ranking
*OASRatingApi* | [**createRating**](OASRatingApi.md#createRating) | **POST** /api/{version}/rating/create | Create Rating
*OASRatingApi* | [**deleteRating**](OASRatingApi.md#deleteRating) | **POST** /api/{version}/rating/delete | Delete Rating
*OASRatingApi* | [**searchLocationRatingIndexes**](OASRatingApi.md#searchLocationRatingIndexes) | **GET** /api/{version}/location/rating/index/search | Search Location Rating Indexes
*OASRatingApi* | [**searchRatingIndexes**](OASRatingApi.md#searchRatingIndexes) | **GET** /api/{version}/rating/index/search | Search Rating Indexes
*OASRatingApi* | [**searchRatings**](OASRatingApi.md#searchRatings) | **GET** /api/{version}/rating/search | Search Ratings
*OASRatingApi* | [**updateRating**](OASRatingApi.md#updateRating) | **POST** /api/{version}/rating/update | Update Rating
*OASRegionApi* | [**createRegion**](OASRegionApi.md#createRegion) | **POST** /api/{version}/region/create | Create Region
*OASRegionApi* | [**deleteRegion**](OASRegionApi.md#deleteRegion) | **POST** /api/{version}/region/delete | Delete Region
*OASRegionApi* | [**getRegion**](OASRegionApi.md#getRegion) | **GET** /api/{version}/region/get | Get Region
*OASRegionApi* | [**searchRegions**](OASRegionApi.md#searchRegions) | **GET** /api/{version}/region/search | Search Regions
*OASRegionApi* | [**updateRegion**](OASRegionApi.md#updateRegion) | **POST** /api/{version}/region/update | Update Region
*OASReportingApi* | [**createBatch**](OASReportingApi.md#createBatch) | **POST** /api/{version}/report/batch/create | Create Offline Report
*OASReportingApi* | [**createRegionLegSummaryBatch**](OASReportingApi.md#createRegionLegSummaryBatch) | **POST** /api/{version}/report/region/summary/batch | Create Offline Report
*OASReportingApi* | [**deleteBatch**](OASReportingApi.md#deleteBatch) | **POST** /api/{version}/report/batch/delete | Delete Offline Report
*OASReportingApi* | [**getReportBatch**](OASReportingApi.md#getReportBatch) | **GET** /api/{version}/report/batch/get | Get Offline Report
*OASReportingApi* | [**runReport**](OASReportingApi.md#runReport) | **POST** /api/{version}/report/run | Run Report
*OASReportingApi* | [**searchBatch**](OASReportingApi.md#searchBatch) | **GET** /api/{version}/report/batch/search | Search Offline Reports
*OASReservationApi* | [**createReservation**](OASReservationApi.md#createReservation) | **POST** /api/{version}/reservation/create | Create Reservation
*OASReservationApi* | [**deleteReservation**](OASReservationApi.md#deleteReservation) | **POST** /api/{version}/reservation/delete | Delete Reservation
*OASReservationApi* | [**reservableAvailability**](OASReservationApi.md#reservableAvailability) | **POST** /api/{version}/reservable/availability/update | Update Availability
*OASReservationApi* | [**searchAvailability**](OASReservationApi.md#searchAvailability) | **GET** /api/{version}/reservable/availability/search | Search Availability
*OASReservationApi* | [**searchReservations**](OASReservationApi.md#searchReservations) | **GET** /api/{version}/reservation/search | Search Reservations
*OASReservationApi* | [**searchSchedule**](OASReservationApi.md#searchSchedule) | **GET** /api/{version}/reservable/schedule/search | Search Schedule
*OASRetailerApi* | [**createRetailer**](OASRetailerApi.md#createRetailer) | **POST** /api/{version}/retailer/create | Create Retailer
*OASRetailerApi* | [**deleteRetailer**](OASRetailerApi.md#deleteRetailer) | **POST** /api/{version}/retailer/delete | Delete Retailer
*OASRetailerApi* | [**getRetailer**](OASRetailerApi.md#getRetailer) | **GET** /api/{version}/retailer/get | Get Retailer
*OASRetailerApi* | [**getRetailers**](OASRetailerApi.md#getRetailers) | **GET** /api/{version}/retailer/search | Search Retailers
*OASRetailerApi* | [**retailerLoginCheck**](OASRetailerApi.md#retailerLoginCheck) | **POST** /api/{version}/retailer/login | Login Retailer
*OASRetailerApi* | [**updateRetailer**](OASRetailerApi.md#updateRetailer) | **POST** /api/{version}/retailer/update | Update Retailer
*OASRetailerLocationApi* | [**createRetailerLocationConsumer**](OASRetailerLocationApi.md#createRetailerLocationConsumer) | **POST** /api/{version}/location/create | Create Retailer Location (Consumer)
*OASRetailerLocationApi* | [**createRetailerLocations**](OASRetailerLocationApi.md#createRetailerLocations) | **POST** /api/{version}/retailer/location/create | Create Retailer Location
*OASRetailerLocationApi* | [**deleteRetailerLocation**](OASRetailerLocationApi.md#deleteRetailerLocation) | **POST** /api/{version}/retailer/location/delete | Delete Retailer Location
*OASRetailerLocationApi* | [**getRetailerLocation**](OASRetailerLocationApi.md#getRetailerLocation) | **GET** /api/{version}/retailer/location/get | Get Retailer Location
*OASRetailerLocationApi* | [**getRetailerLocationConsumer**](OASRetailerLocationApi.md#getRetailerLocationConsumer) | **GET** /api/{version}/location/get | Get Retailer Location (Consumer)
*OASRetailerLocationApi* | [**indexedRetailerLocationDistanceSearch**](OASRetailerLocationApi.md#indexedRetailerLocationDistanceSearch) | **GET** /api/{version}/retailer/location/idistancesearch | Distance Search Retailer Locations (Indexed)
*OASRetailerLocationApi* | [**indexedRetailerLocationSearch**](OASRetailerLocationApi.md#indexedRetailerLocationSearch) | **GET** /api/{version}/retailer/location/isearch | Keyword Search Retailer Locations (Indexed)
*OASRetailerLocationApi* | [**searchRetailerLocations**](OASRetailerLocationApi.md#searchRetailerLocations) | **GET** /api/{version}/retailer/location/search | Search Retailer Locations (Owned)
*OASRetailerLocationApi* | [**updateRetailerLocations**](OASRetailerLocationApi.md#updateRetailerLocations) | **POST** /api/{version}/retailer/location/update | Update Retailer Location
*OASRetailerV2Api* | [**getRetaokiler**](OASRetailerV2Api.md#getRetaokiler) | **GET** /api/{version}/retailer | Get Retailer
*OASRouteApi* | [**approveRoute**](OASRouteApi.md#approveRoute) | **POST** /api/{version}/route/{routeId}/approve | Approve Route
*OASRouteApi* | [**copyRoute**](OASRouteApi.md#copyRoute) | **POST** /api/{version}/route/{routeId}/copy | Copy Route
*OASRouteApi* | [**createRoute**](OASRouteApi.md#createRoute) | **POST** /api/{version}/route | Create Route
*OASRouteApi* | [**createRouteDirections**](OASRouteApi.md#createRouteDirections) | **PUT** /api/{version}/route/{routeId}/directions | Update Route Directions
*OASRouteApi* | [**createRoutePolyline**](OASRouteApi.md#createRoutePolyline) | **PUT** /api/{version}/route/{routeId}/polyline | Create Route Polyline
*OASRouteApi* | [**deleteRoute**](OASRouteApi.md#deleteRoute) | **DELETE** /api/{version}/route/{routeId} | Delete Route
*OASRouteApi* | [**disapproveRoute**](OASRouteApi.md#disapproveRoute) | **POST** /api/{version}/route/{routeId}/disapprove | Disapprove Route
*OASRouteApi* | [**getRoute**](OASRouteApi.md#getRoute) | **GET** /api/{version}/route/{routeId} | Get Route
*OASRouteApi* | [**getRouteDirections**](OASRouteApi.md#getRouteDirections) | **GET** /api/{version}/route/{routeId}/directions | Get Route Directions
*OASRouteApi* | [**getRouteShipments**](OASRouteApi.md#getRouteShipments) | **GET** /api/{version}/route/{routeId}/shipments | Get Route Shipments
*OASRouteApi* | [**getRouteStop**](OASRouteApi.md#getRouteStop) | **GET** /api/{version}/route/{routeId}/stop/{stopId} | Get Route Stop
*OASRouteApi* | [**getRouteStops**](OASRouteApi.md#getRouteStops) | **GET** /api/{version}/route/{routeId}/stops | Get Route Stops
*OASRouteApi* | [**getShipmentsAtStop**](OASRouteApi.md#getShipmentsAtStop) | **GET** /api/{version}/route/{routeId}/stop/{stopId}/shipments | Get Shipments At Stop
*OASRouteApi* | [**optimizeRoute**](OASRouteApi.md#optimizeRoute) | **POST** /api/{version}/route/{routeId}/optimize | Optimize Route
*OASRouteApi* | [**removeStop**](OASRouteApi.md#removeStop) | **DELETE** /api/{version}/route/{routeId}/stop/{stopId} | Delete Stop
*OASRouteApi* | [**reorderRouteStopsPatch**](OASRouteApi.md#reorderRouteStopsPatch) | **PATCH** /api/{version}/route/{routeId}/stops/reorder | Reorder Route Stops
*OASRouteApi* | [**reorderRouteStopsPost**](OASRouteApi.md#reorderRouteStopsPost) | **POST** /api/{version}/route/{routeId}/stops/reorder | Reorder Route Stops
*OASRouteApi* | [**searchRoutes**](OASRouteApi.md#searchRoutes) | **GET** /api/{version}/route | Search Routes
*OASRouteApi* | [**setDriver**](OASRouteApi.md#setDriver) | **POST** /api/{version}/route/{id}/driver/{driverId} | Set Driver
*OASRouteApi* | [**updateRoute**](OASRouteApi.md#updateRoute) | **PUT** /api/{version}/route/{routeId} | Update Route
*OASRouteApi* | [**updateRouteStop**](OASRouteApi.md#updateRouteStop) | **PUT** /api/{version}/route/{routeId}/stop/{stopId} | Update Route Stop
*OASRouteSettingApi* | [**createRouteSettings**](OASRouteSettingApi.md#createRouteSettings) | **POST** /api/{version}/route/setting | Create Route Setting
*OASRouteSettingApi* | [**deleteRouteSettings**](OASRouteSettingApi.md#deleteRouteSettings) | **DELETE** /api/{version}/route/setting/{routeSettingsId} | Delete Route Setting
*OASRouteSettingApi* | [**getRouteSettings**](OASRouteSettingApi.md#getRouteSettings) | **GET** /api/{version}/route/setting/{routeSettingsId} | Get Route Setting
*OASRouteSettingApi* | [**searchRouteSettings**](OASRouteSettingApi.md#searchRouteSettings) | **GET** /api/{version}/route/setting | Search Route Settings
*OASRouteSettingApi* | [**updateRouteSettings**](OASRouteSettingApi.md#updateRouteSettings) | **PUT** /api/{version}/route/setting/{routeSettingsId} | Update Route Setting
*OASRoutingApi* | [**computeRouting**](OASRoutingApi.md#computeRouting) | **POST** /api/{version}/routing/compute | Compute Route
*OASScheduledNotificationApi* | [**createScheduledNotification**](OASScheduledNotificationApi.md#createScheduledNotification) | **POST** /api/{version}/notification/schedule/create | Create Scheduled Notification
*OASScheduledNotificationApi* | [**deleteScheduledNotification**](OASScheduledNotificationApi.md#deleteScheduledNotification) | **POST** /api/{version}/notification/schedule/delete | Delete Scheduled Notification
*OASScheduledNotificationApi* | [**getScheduledNotification**](OASScheduledNotificationApi.md#getScheduledNotification) | **GET** /api/{version}/notification/schedule/get | Get Scheduled Notification
*OASScheduledNotificationApi* | [**scheduleNotificationListings**](OASScheduledNotificationApi.md#scheduleNotificationListings) | **POST** /api/{version}/notification/schedule/generate | Generate Schedule Notifications
*OASScheduledNotificationApi* | [**searchScheduledNotifications**](OASScheduledNotificationApi.md#searchScheduledNotifications) | **GET** /api/{version}/notification/schedule/search | Search Scheduled Notifications
*OASScheduledNotificationApi* | [**updateScheduledNotification**](OASScheduledNotificationApi.md#updateScheduledNotification) | **POST** /api/{version}/notification/schedule/update | Update Scheduled Notification
*OASScoreApi* | [**createScore**](OASScoreApi.md#createScore) | **POST** /api/{version}/score/create | Create Score
*OASScoreApi* | [**getScore**](OASScoreApi.md#getScore) | **GET** /api/{version}/score/get | Get Score
*OASScoreApi* | [**searchScores**](OASScoreApi.md#searchScores) | **GET** /api/{version}/score/search | Search Score
*OASSecureAppApi* | [**createSecureApplication**](OASSecureAppApi.md#createSecureApplication) | **POST** /api/{version}/secure/application/create | Create Secure Application
*OASSecureAppApi* | [**deleteSecureApplication**](OASSecureAppApi.md#deleteSecureApplication) | **POST** /api/{version}/secure/application/delete | Delete Secure Application
*OASSecureAppApi* | [**loginSecure**](OASSecureAppApi.md#loginSecure) | **POST** /api/{version}/secure/login | Login Clear
*OASSecureAppApi* | [**purchaseSecure**](OASSecureAppApi.md#purchaseSecure) | **POST** /api/{version}/secure/purchase | Purchase Clear
*OASSecureAppApi* | [**resetSecure**](OASSecureAppApi.md#resetSecure) | **POST** /api/{version}/secure/application/reset | Rest Secure Application
*OASSecureAppApi* | [**updateSecureApplication**](OASSecureAppApi.md#updateSecureApplication) | **POST** /api/{version}/secure/application/update | Update Secure Application
*OASServiceHubApi* | [**createServiceHub**](OASServiceHubApi.md#createServiceHub) | **POST** /api/{version}/hub | Create Service Hub
*OASServiceHubApi* | [**deleteServiceHub**](OASServiceHubApi.md#deleteServiceHub) | **DELETE** /api/{version}/hub/{id} | Delete Service Hub
*OASServiceHubApi* | [**getServiceHub**](OASServiceHubApi.md#getServiceHub) | **GET** /api/{version}/hub/{id} | Get Service Hub
*OASServiceHubApi* | [**postServiceHub**](OASServiceHubApi.md#postServiceHub) | **POST** /api/{version}/hub/{id} | Update Service Hub
*OASServiceHubApi* | [**putServiceHub**](OASServiceHubApi.md#putServiceHub) | **PUT** /api/{version}/hub/{id} | Update Service Hub
*OASServiceHubApi* | [**searchServiceHubs**](OASServiceHubApi.md#searchServiceHubs) | **GET** /api/{version}/hub | Search Service Hubs
*OASShipmentApi* | [**cancelShipment**](OASShipmentApi.md#cancelShipment) | **POST** /api/{version}/shipment/{id}/cancel | Cancel Shipment
*OASShipmentApi* | [**createShipment**](OASShipmentApi.md#createShipment) | **POST** /api/{version}/shipment | Create Shipment
*OASShipmentApi* | [**deleteShipment**](OASShipmentApi.md#deleteShipment) | **DELETE** /api/{version}/shipment/{id} | Delete Shipment
*OASShipmentApi* | [**getShipment**](OASShipmentApi.md#getShipment) | **GET** /api/{version}/shipment/{id} | Get Shipment
*OASShipmentApi* | [**searchShipments**](OASShipmentApi.md#searchShipments) | **GET** /api/{version}/shipment | Search Shipments
*OASShipmentApi* | [**updateShipment**](OASShipmentApi.md#updateShipment) | **PUT** /api/{version}/shipment/{id} | Update Shipment
*OASShipmentApi* | [**updateShipmentStatus**](OASShipmentApi.md#updateShipmentStatus) | **POST** /api/{version}/shipment/{id}/status | Uupdate Shipment Status
*OASShipmentBatchApi* | [**createShipmentBatch**](OASShipmentBatchApi.md#createShipmentBatch) | **POST** /api/{version}/shipment/batch | Create Shipment Batch
*OASShipmentBatchApi* | [**deleteShipmentBatch**](OASShipmentBatchApi.md#deleteShipmentBatch) | **DELETE** /api/{version}/shipment/batch/{batchId} | Delete Shipment Batch
*OASShipmentBatchApi* | [**getShipmentBatch**](OASShipmentBatchApi.md#getShipmentBatch) | **GET** /api/{version}/shipment/batch/{batchId} | Get Shipment Batch
*OASShipmentBatchApi* | [**getShipmentBatchStatus**](OASShipmentBatchApi.md#getShipmentBatchStatus) | **GET** /api/{version}/shipment/batch/{batchId}/status | Get Shipment Batch Status
*OASShipmentBatchApi* | [**searchShipmentBatch**](OASShipmentBatchApi.md#searchShipmentBatch) | **GET** /api/{version}/shipment/batch | Search Shipment Batch
*OASSimulationApi* | [**simulation**](OASSimulationApi.md#simulation) | **POST** /api/{version}/simulation/routing | Routing Simulation
*OASStopApi* | [**getStop**](OASStopApi.md#getStop) | **GET** /api/{version}/stop/{id} | Get Stop
*OASStopApi* | [**updateStop**](OASStopApi.md#updateStop) | **PUT** /api/{version}/stop/{id} | Update Stop
*OASStripeApi* | [**createStripeCheckoutSession**](OASStripeApi.md#createStripeCheckoutSession) | **POST** /api/{version}/stripe/checkout/session/create | Create Stripe Checkout Session
*OASSubscriptionApi* | [**createSubscription**](OASSubscriptionApi.md#createSubscription) | **POST** /api/{version}/subscription/create | Create Subscription
*OASSubscriptionApi* | [**deleteSubscription**](OASSubscriptionApi.md#deleteSubscription) | **POST** /api/{version}/subscription/delete | Delete Subscription
*OASSubscriptionApi* | [**getSubscription**](OASSubscriptionApi.md#getSubscription) | **GET** /api/{version}/subscription/get | Get Subscription
*OASSubscriptionApi* | [**getSubscriptionPlan**](OASSubscriptionApi.md#getSubscriptionPlan) | **GET** /api/{version}/subscription/plan/get | Get Subscription Plan
*OASSubscriptionApi* | [**getSubscriptionPlans**](OASSubscriptionApi.md#getSubscriptionPlans) | **GET** /api/{version}/subscription/plan/list | List Subscription Plans
*OASSubscriptionApi* | [**getSubscriptionUsage**](OASSubscriptionApi.md#getSubscriptionUsage) | **GET** /api/{version}/subscription/usage/get | Get Subscription Usage
*OASSubscriptionApi* | [**updateSubscription**](OASSubscriptionApi.md#updateSubscription) | **POST** /api/{version}/subscription/update | Update Subscription
*OASTaskApi* | [**createTask**](OASTaskApi.md#createTask) | **POST** /api/{version}/task/create | Create Task
*OASTaskApi* | [**deleteTask**](OASTaskApi.md#deleteTask) | **POST** /api/{version}/task/delete | Delete Task
*OASTaskApi* | [**getTask**](OASTaskApi.md#getTask) | **GET** /api/{version}/task/get | Get Task
*OASTaskApi* | [**searchTasks**](OASTaskApi.md#searchTasks) | **GET** /api/{version}/task/search | Search Tasks
*OASTaskApi* | [**updateTask**](OASTaskApi.md#updateTask) | **POST** /api/{version}/task/update | Update Task
*OASTerritoryApi* | [**createTerritory**](OASTerritoryApi.md#createTerritory) | **POST** /api/{version}/territory/create | Create Territory
*OASTerritoryApi* | [**deleteTerritory**](OASTerritoryApi.md#deleteTerritory) | **POST** /api/{version}/territory/delete | Delete Territory
*OASTerritoryApi* | [**getTerritory**](OASTerritoryApi.md#getTerritory) | **GET** /api/{version}/territory/get | Get Territory
*OASTerritoryApi* | [**searchTerritories**](OASTerritoryApi.md#searchTerritories) | **GET** /api/{version}/territory/search | Search Territories
*OASTerritoryApi* | [**updateTerritory**](OASTerritoryApi.md#updateTerritory) | **POST** /api/{version}/territory/update | Update Territory
*OASThemeDescriptorApi* | [**addOrUpdateThemeDescriptor**](OASThemeDescriptorApi.md#addOrUpdateThemeDescriptor) | **POST** /api/{version}/consumer/theme | Create/Update Theme
*OASThemeDescriptorApi* | [**getThemeDescriptor**](OASThemeDescriptorApi.md#getThemeDescriptor) | **GET** /api/{version}/consumer/theme/get | Get Theme
*OASThemeDescriptorApi* | [**getThemeDescriptors**](OASThemeDescriptorApi.md#getThemeDescriptors) | **GET** /api/{version}/consumer/theme/search | Search Themes
*OASThemeDescriptorApi* | [**removeThemeDescriptor**](OASThemeDescriptorApi.md#removeThemeDescriptor) | **POST** /api/{version}/consumer/theme/remove | Delete Theme
*OASThirdPartyCredentialsApi* | [**createCredential**](OASThirdPartyCredentialsApi.md#createCredential) | **POST** /api/{version}/thirdparty/credential/create | Create Credential
*OASThirdPartyCredentialsApi* | [**createNetwork**](OASThirdPartyCredentialsApi.md#createNetwork) | **POST** /api/{version}/thirdparty/network/create | Create Network
*OASThirdPartyCredentialsApi* | [**deleteCredential**](OASThirdPartyCredentialsApi.md#deleteCredential) | **POST** /api/{version}/thirdparty/credential/delete | Delete Credential
*OASThirdPartyCredentialsApi* | [**deleteNetwork**](OASThirdPartyCredentialsApi.md#deleteNetwork) | **POST** /api/{version}/thirdparty/network/delete | Delete Network
*OASThirdPartyCredentialsApi* | [**getCredential**](OASThirdPartyCredentialsApi.md#getCredential) | **POST** /api/{version}/thirdparty/credential/get | Get Credential
*OASThirdPartyCredentialsApi* | [**getNetwork**](OASThirdPartyCredentialsApi.md#getNetwork) | **GET** /api/{version}/thirdparty/network/get | Get Network
*OASThirdPartyCredentialsApi* | [**searchCredentials**](OASThirdPartyCredentialsApi.md#searchCredentials) | **GET** /api/{version}/thirdparty/credential/search | Search Credentials
*OASThirdPartyCredentialsApi* | [**searchNetworks**](OASThirdPartyCredentialsApi.md#searchNetworks) | **GET** /api/{version}/thirdparty/network/search | Search Networks
*OASThirdPartyCredentialsApi* | [**sendMFAChallenge**](OASThirdPartyCredentialsApi.md#sendMFAChallenge) | **POST** /api/{version}/thirdparty/credential/mfa/send | Send MFA Challenge
*OASThirdPartyCredentialsApi* | [**updateCredential**](OASThirdPartyCredentialsApi.md#updateCredential) | **POST** /api/{version}/thirdparty/credential/update | Update Credential
*OASThirdPartyCredentialsApi* | [**updateNetwork**](OASThirdPartyCredentialsApi.md#updateNetwork) | **POST** /api/{version}/thirdparty/network/update | Update Network
*OASTicketApi* | [**getTicketCount**](OASTicketApi.md#getTicketCount) | **GET** /api/{version}/ticket/count | Get Ticket Count
*OASTicketApi* | [**getTicketList**](OASTicketApi.md#getTicketList) | **GET** /api/{version}/ticket/getList | Get Ticket List
*OASTicketApi* | [**giftPurchase**](OASTicketApi.md#giftPurchase) | **POST** /api/{version}/purchase/gift | Gift Tickets
*OASTicketApi* | [**saveTicket**](OASTicketApi.md#saveTicket) | **POST** /api/{version}/ticket/save | Save Ticket
*OASTicketApi* | [**saveTicketViaFileUpload**](OASTicketApi.md#saveTicketViaFileUpload) | **POST** /api/{version}/ticket/save/fileUpload | Save Ticket with Reciept
*OASTicketApi* | [**ticketOffers**](OASTicketApi.md#ticketOffers) | **GET** /api/{version}/ticket/ticketoffers | Get Ticket Offers
*OASTournamentApi* | [**createTournament**](OASTournamentApi.md#createTournament) | **POST** /api/{version}/tournament/create | Create Tournament
*OASTournamentApi* | [**deleteTournament**](OASTournamentApi.md#deleteTournament) | **POST** /api/{version}/tournament/delete | Delete Tournament
*OASTournamentApi* | [**getTournament**](OASTournamentApi.md#getTournament) | **GET** /api/{version}/tournament/get | Get Tournament
*OASTournamentApi* | [**searchObjects**](OASTournamentApi.md#searchObjects) | **GET** /api/{version}/tournament/object/search | Search Tournament Objects
*OASTournamentApi* | [**searchRounds**](OASTournamentApi.md#searchRounds) | **GET** /api/{version}/tournament/round/search | Search Tournament Rounds
*OASTournamentApi* | [**searchTournaments**](OASTournamentApi.md#searchTournaments) | **GET** /api/{version}/tournament/search | Search Tournaments
*OASTournamentApi* | [**submitTournamentScore**](OASTournamentApi.md#submitTournamentScore) | **POST** /api/{version}/tournament/score | Submit Tournament Score
*OASTournamentApi* | [**submitTournamentVote**](OASTournamentApi.md#submitTournamentVote) | **POST** /api/{version}/tournament/vote | Submit a vote for a multi-stage album tournament.
*OASTournamentApi* | [**substituteTournamentPlayer**](OASTournamentApi.md#substituteTournamentPlayer) | **POST** /api/{version}/tournament/substitute | Substitute Tournament Player
*OASTournamentApi* | [**updateTournament**](OASTournamentApi.md#updateTournament) | **POST** /api/{version}/tournament/update | Update Tournament
*OASTrackingApi* | [**batchSaveTracking**](OASTrackingApi.md#batchSaveTracking) | **POST** /api/{version}/tracking/batch/create | Create Batch Tracking
*OASTrackingApi* | [**getPredictedLocations**](OASTrackingApi.md#getPredictedLocations) | **GET** /api/{version}/tracking/predicted/get | Get Predicted Locations
*OASTrackingApi* | [**getPredictedPath**](OASTrackingApi.md#getPredictedPath) | **GET** /api/{version}/tracking/path/get | Get Tracking Path
*OASTrackingApi* | [**getPreferredLocations**](OASTrackingApi.md#getPreferredLocations) | **GET** /api/{version}/tracking/preferred/search | Search Preferred Locations
*OASTrackingApi* | [**getTrackingLegs**](OASTrackingApi.md#getTrackingLegs) | **GET** /api/{version}/tracking/search | Search Tracking
*OASTrackingApi* | [**saveTrackingLeg**](OASTrackingApi.md#saveTrackingLeg) | **POST** /api/{version}/tracking/leg/create | Create Tracking Leg
*OASTrackingApi* | [**saveTrackingStep**](OASTrackingApi.md#saveTrackingStep) | **POST** /api/{version}/tracking/step/create | Create Tracking Step
*OASTrackingApi* | [**searchAccountsWithTrackingLegs**](OASTrackingApi.md#searchAccountsWithTrackingLegs) | **GET** /api/{version}/tracking/list | List Tracking
*OASTrackingApi* | [**searchTrackingLegs**](OASTrackingApi.md#searchTrackingLegs) | **GET** /api/{version}/tracking/searchByBillable | Search Tracking (Billable)
*OASTriggerApi* | [**createTrigger**](OASTriggerApi.md#createTrigger) | **POST** /api/{version}/trigger/create | Create Trigger
*OASTriggerApi* | [**deleteTrigger**](OASTriggerApi.md#deleteTrigger) | **POST** /api/{version}/trigger/delete | Delete Trigger
*OASTriggerApi* | [**getTrigger**](OASTriggerApi.md#getTrigger) | **GET** /api/{version}/trigger/get | Get Trigger
*OASTriggerApi* | [**searchTriggers**](OASTriggerApi.md#searchTriggers) | **GET** /api/{version}/trigger/search | Search Triggers
*OASTriggerApi* | [**updateTrigger**](OASTriggerApi.md#updateTrigger) | **POST** /api/{version}/trigger/update | Update Trigger
*OASTripApi* | [**callDelete**](OASTripApi.md#callDelete) | **DELETE** /api/{version}/trip/{id} | Delete Trip
*OASTripApi* | [**createTrip**](OASTripApi.md#createTrip) | **POST** /api/{version}/trip | Create Trip
*OASTripApi* | [**driveTrip**](OASTripApi.md#driveTrip) | **POST** /api/{version}/trip/{id}/drive | Set Trip Preference Driver
*OASTripApi* | [**flexibleTrip**](OASTripApi.md#flexibleTrip) | **POST** /api/{version}/trip/{id}/flexible | Set Trip Preference Flexible
*OASTripApi* | [**getTrip**](OASTripApi.md#getTrip) | **GET** /api/{version}/trip/{id} | Get Trip
*OASTripApi* | [**getTripMatches**](OASTripApi.md#getTripMatches) | **GET** /api/{version}/trip/{id}/match | Get Trip Matches
*OASTripApi* | [**processTripMatches**](OASTripApi.md#processTripMatches) | **POST** /api/{version}/trip/match/process | Process Trip Matches
*OASTripApi* | [**ride**](OASTripApi.md#ride) | **POST** /api/{version}/trip/{id}/ride | Set Trip Preference Rider
*OASTripApi* | [**search**](OASTripApi.md#search) | **GET** /api/{version}/trip | Search Trips
*OASTripApi* | [**searchTrips**](OASTripApi.md#searchTrips) | **GET** /api/{version}/trip/match | Search Trips
*OASTripApi* | [**updateLocations**](OASTripApi.md#updateLocations) | **POST** /api/{version}/trip/{id}/locations | Update Trip Locations
*OASTripApi* | [**updateRecurrenceLocations**](OASTripApi.md#updateRecurrenceLocations) | **POST** /api/{version}/trip/{id}/locations/recurrence | Update Recurrence Locations
*OASTripApi* | [**updateRecurrenceShipments**](OASTripApi.md#updateRecurrenceShipments) | **POST** /api/{version}/trip/{id}/shipments/recurrence | Update Recurrence Shipments
*OASTripApi* | [**updateShipments**](OASTripApi.md#updateShipments) | **POST** /api/{version}/trip/{id}/shipments | Update Trip Shipments
*OASTripApi* | [**updateTrip**](OASTripApi.md#updateTrip) | **PUT** /api/{version}/trip/{id} | Update Trip
*OASTripApi* | [**updateTripNotifications**](OASTripApi.md#updateTripNotifications) | **POST** /api/{version}/trip/notifications | Trip Notifications
*OASTwilioApi* | [**smsBuyOffer**](OASTwilioApi.md#smsBuyOffer) | **POST** /api/{version}/sms/buyoffer/{appKey} | Buy Offer by SMS
*OASTwitterApi* | [**authorizeTwitter**](OASTwitterApi.md#authorizeTwitter) | **POST** /api/{version}/twitter/authorize | Authorize Twitter
*OASTwitterApi* | [**loginTwitter**](OASTwitterApi.md#loginTwitter) | **POST** /api/{version}/twitter/login | Login Twitter
*OASUserPermissionsApi* | [**addUsersToPermissionable**](OASUserPermissionsApi.md#addUsersToPermissionable) | **POST** /api/{version}/consumer/permissions/add | Add User
*OASUserPermissionsApi* | [**approvePermissionable**](OASUserPermissionsApi.md#approvePermissionable) | **POST** /api/{version}/permissionable/approve | Approve Permissionable
*OASUserPermissionsApi* | [**leaveFromPermissionable**](OASUserPermissionsApi.md#leaveFromPermissionable) | **POST** /api/{version}/consumer/permissions/leave | Leave
*OASUserPermissionsApi* | [**removeUsersFromPermissionable**](OASUserPermissionsApi.md#removeUsersFromPermissionable) | **POST** /api/{version}/consumer/permissions/remove | Remove User
*OASUserPermissionsApi* | [**searchPermissionables**](OASUserPermissionsApi.md#searchPermissionables) | **GET** /api/{version}/permissions/search | Search Permissionables
*OASUserPermissionsApi* | [**searchPermissionablesFollowingDistance**](OASUserPermissionsApi.md#searchPermissionablesFollowingDistance) | **GET** /api/{version}/permissions/distancesearch | Search Permissionables by Distnace
*OASVatomApi* | [**createFollowing**](OASVatomApi.md#createFollowing) | **POST** /api/{version}/vatom/me/rels/following/create | Create following
*OASVatomApi* | [**createSpace**](OASVatomApi.md#createSpace) | **POST** /api/{version}/vatom/b/spaces/create | Create Vatom Space
*OASVatomApi* | [**createVatomEvent**](OASVatomApi.md#createVatomEvent) | **POST** /api/{version}/vatom/b/events/create | Create Vatom Event
*OASVatomApi* | [**deleteFollowing**](OASVatomApi.md#deleteFollowing) | **POST** /api/{version}/vatom/me/rels/following/delete | Delete following
*OASVatomApi* | [**deletePointsBalance**](OASVatomApi.md#deletePointsBalance) | **POST** /api/{version}/vatom/b/campaign/points/delete | Reset All Points Balance
*OASVatomApi* | [**deleteSpace**](OASVatomApi.md#deleteSpace) | **POST** /api/{version}/vatom/b/spaces/delete | Delete Vatom Space
*OASVatomApi* | [**deleteVatomEvent**](OASVatomApi.md#deleteVatomEvent) | **POST** /api/{version}/vatom/b/events/delete | Delete Vatom Event
*OASVatomApi* | [**deleteVatomNFT**](OASVatomApi.md#deleteVatomNFT) | **POST** /api/{version}/vatom/vatoms/delete | Delete Vatom NFT
*OASVatomApi* | [**executeActionOnNFT**](OASVatomApi.md#executeActionOnNFT) | **POST** /api/{version}/vatom/vatoms/execute-action | Execute Action on NFT
*OASVatomApi* | [**geomapSearch**](OASVatomApi.md#geomapSearch) | **GET** /api/{version}/vatom/vatoms/geo-map/search | Search Vatom Geo Map
*OASVatomApi* | [**getBusinessBehaviors**](OASVatomApi.md#getBusinessBehaviors) | **GET** /api/{version}/vatom/b/behaviors | Get Vatom Business Behaviors
*OASVatomApi* | [**getBusinessCoinsBalance**](OASVatomApi.md#getBusinessCoinsBalance) | **GET** /api/{version}/vatom/b/coins/get | Get the coins for a Business
*OASVatomApi* | [**getBusinessIds**](OASVatomApi.md#getBusinessIds) | **GET** /api/{version}/vatom/me/businesses | Get the user business ids
*OASVatomApi* | [**getBusinessInfo**](OASVatomApi.md#getBusinessInfo) | **GET** /api/{version}/vatom/b/get | Get Vatom Business Info
*OASVatomApi* | [**getBusinessUsers**](OASVatomApi.md#getBusinessUsers) | **GET** /api/{version}/vatom/b/users | Get Vatom Business Users
*OASVatomApi* | [**getCampaignGroupEntities**](OASVatomApi.md#getCampaignGroupEntities) | **GET** /api/{version}/vatom/b/campaign-groups/entities | Get Campaign Group Entities
*OASVatomApi* | [**getCampaignGroupRules**](OASVatomApi.md#getCampaignGroupRules) | **GET** /api/{version}/vatom/b/campaign-groups/rules | Get Campaign Group Rules
*OASVatomApi* | [**getCampaignGroupStats**](OASVatomApi.md#getCampaignGroupStats) | **GET** /api/{version}/vatom/b/campaign-groups/stats | Get Campaign Group Stats
*OASVatomApi* | [**getCampaignInfo**](OASVatomApi.md#getCampaignInfo) | **GET** /api/{version}/vatom/b/campaign-groups/get | Get Campaign Info
*OASVatomApi* | [**getEventGuestList**](OASVatomApi.md#getEventGuestList) | **GET** /api/{version}/vatom/b/events/guests/get | Get Vatom Event Guest List
*OASVatomApi* | [**getInventory**](OASVatomApi.md#getInventory) | **GET** /api/{version}/vatom/me/inventory | Get Vatom User\&#39;s Inventory
*OASVatomApi* | [**getMyFollowing**](OASVatomApi.md#getMyFollowing) | **GET** /api/{version}/vatom/me/rels/following | Get following
*OASVatomApi* | [**getPointsBalance**](OASVatomApi.md#getPointsBalance) | **GET** /api/{version}/vatom/u/campaign/points/get | Get Points Balance
*OASVatomApi* | [**getPointsBalanceAsBusiness**](OASVatomApi.md#getPointsBalanceAsBusiness) | **GET** /api/{version}/vatom/b/campaign/u/points/get | Get Points Balance as Business
*OASVatomApi* | [**getSpace**](OASVatomApi.md#getSpace) | **GET** /api/{version}/vatom/b/spaces/get | Get Vatom Space
*OASVatomApi* | [**getUserCoinsAsBusiness**](OASVatomApi.md#getUserCoinsAsBusiness) | **GET** /api/{version}/vatom/b/users/coins/get | Get the coins for a user (as a Business)
*OASVatomApi* | [**getUserCoinsBalance**](OASVatomApi.md#getUserCoinsBalance) | **GET** /api/{version}/vatom/u/coins/get | Gets the coins balance for a Vatom User
*OASVatomApi* | [**getUserFollowers**](OASVatomApi.md#getUserFollowers) | **GET** /api/{version}/vatom/users/rels/followers | Get user followers
*OASVatomApi* | [**getUserFollowing**](OASVatomApi.md#getUserFollowing) | **GET** /api/{version}/vatom/users/rels/following | Get user following
*OASVatomApi* | [**getUserInfo**](OASVatomApi.md#getUserInfo) | **GET** /api/{version}/vatom/user/get | Get User Info
*OASVatomApi* | [**getUserProfile**](OASVatomApi.md#getUserProfile) | **GET** /api/{version}/vatom/me/get | Get Vatom User Profile
*OASVatomApi* | [**getVatomEvent**](OASVatomApi.md#getVatomEvent) | **GET** /api/{version}/vatom/b/events/get | Get Vatom Event
*OASVatomApi* | [**getVatomNFT**](OASVatomApi.md#getVatomNFT) | **GET** /api/{version}/vatom/vatoms/get | Get Vatom NFT Details
*OASVatomApi* | [**listCommunities**](OASVatomApi.md#listCommunities) | **GET** /api/{version}/vatom/b/communities/search | List Vatom Communities
*OASVatomApi* | [**listEvents**](OASVatomApi.md#listEvents) | **GET** /api/{version}/vatom/b/events/search | List Vatom Events
*OASVatomApi* | [**listSpaces**](OASVatomApi.md#listSpaces) | **GET** /api/{version}/vatom/b/spaces/search | List Vatom Spaces
*OASVatomApi* | [**listUserCoinTransactions**](OASVatomApi.md#listUserCoinTransactions) | **GET** /api/{version}/vatom/u/coins/txns/search | List Coin Transactions for a Vatom User
*OASVatomApi* | [**listUserCoinTransactionsAsBusiness**](OASVatomApi.md#listUserCoinTransactionsAsBusiness) | **GET** /api/{version}/vatom/b/users/coins/txns/search | List coin transactions for a user (as a Business)
*OASVatomApi* | [**performActionOnNFT**](OASVatomApi.md#performActionOnNFT) | **POST** /api/{version}/vatom/me/vatoms/actions | Perform Action on NFT
*OASVatomApi* | [**redeemNFT**](OASVatomApi.md#redeemNFT) | **POST** /api/{version}/vatom/b/redemptions | Redeem NFT
*OASVatomApi* | [**redeemUserCoinsAsBusiness**](OASVatomApi.md#redeemUserCoinsAsBusiness) | **POST** /api/{version}/vatom/b/users/coins/redeem | Redeem the coins for a user (as a Business)
*OASVatomApi* | [**searchBusinesses**](OASVatomApi.md#searchBusinesses) | **GET** /api/{version}/vatom/b/search | Search for Vatom Businesses
*OASVatomApi* | [**searchCampaignGroups**](OASVatomApi.md#searchCampaignGroups) | **GET** /api/{version}/vatom/b/campaign-groups/search | Search Campaign Groups
*OASVatomApi* | [**searchIdentities**](OASVatomApi.md#searchIdentities) | **GET** /api/{version}/vatom/me/identities/search | Search User Identities
*OASVatomApi* | [**searchInventory**](OASVatomApi.md#searchInventory) | **GET** /api/{version}/vatom/user-inventory/search | Search Vatom User\&#39;s Inventory
*OASVatomApi* | [**sendNFT**](OASVatomApi.md#sendNFT) | **POST** /api/{version}/vatom/b/campaigns/send | Send NFT
*OASVatomApi* | [**setPointsBalanceAsBusiness**](OASVatomApi.md#setPointsBalanceAsBusiness) | **POST** /api/{version}/vatom/b/campaign/u/points/update | Set Points Balance as Business
*OASVatomApi* | [**transferUserCoins**](OASVatomApi.md#transferUserCoins) | **POST** /api/{version}/vatom/u/coins/transfer | Transfer coins from Vatom Users
*OASVatomApi* | [**updateBusinessCoins**](OASVatomApi.md#updateBusinessCoins) | **POST** /api/{version}/vatom/b/coins/update | Fund coins for a Business
*OASVatomApi* | [**updateEventGuestList**](OASVatomApi.md#updateEventGuestList) | **POST** /api/{version}/vatom/b/events/guests/update | Update Vatom Event Guest List
*OASVatomApi* | [**updateSpace**](OASVatomApi.md#updateSpace) | **POST** /api/{version}/vatom/b/spaces/update | Update Vatom Space
*OASVatomApi* | [**updateUserCoinsAsBusiness**](OASVatomApi.md#updateUserCoinsAsBusiness) | **POST** /api/{version}/vatom/b/users/coins/update | Update the coins for a user (as a Business)
*OASVatomApi* | [**updateUserProfile**](OASVatomApi.md#updateUserProfile) | **POST** /api/{version}/vatom/me/update | Update Vatom User Profile
*OASVatomApi* | [**updateVatomEvent**](OASVatomApi.md#updateVatomEvent) | **POST** /api/{version}/vatom/b/events/update | Update Vatom Event
*OASVehicleApi* | [**createVehicle**](OASVehicleApi.md#createVehicle) | **POST** /api/{version}/vehicle | Create Vehicle
*OASVehicleApi* | [**deleteVehicle**](OASVehicleApi.md#deleteVehicle) | **DELETE** /api/{version}/vehicle/{id} | Delete Vehicle
*OASVehicleApi* | [**getVehicle**](OASVehicleApi.md#getVehicle) | **GET** /api/{version}/vehicle/{id} | Get Vehicle
*OASVehicleApi* | [**searchVehicle**](OASVehicleApi.md#searchVehicle) | **GET** /api/{version}/vehicle | Search Vehicle
*OASVehicleApi* | [**updateVehicle**](OASVehicleApi.md#updateVehicle) | **PUT** /api/{version}/vehicle/{id} | Update Vehicle
*OASVehicleTypeApi* | [**createVehicleType**](OASVehicleTypeApi.md#createVehicleType) | **POST** /api/{version}/vehicle/type | Create Vehicle Type
*OASVehicleTypeApi* | [**deleteVehicleType**](OASVehicleTypeApi.md#deleteVehicleType) | **DELETE** /api/{version}/vehicle/type/{vehicleTypeId} | Delete Vehicle Type
*OASVehicleTypeApi* | [**getVehicleType**](OASVehicleTypeApi.md#getVehicleType) | **GET** /api/{version}/vehicle/type/{vehicleTypeId} | Get Vehicle Type
*OASVehicleTypeApi* | [**searchVehicleTypes**](OASVehicleTypeApi.md#searchVehicleTypes) | **GET** /api/{version}/vehicle/type | Search Vehicle Type
*OASVehicleTypeApi* | [**updateVehicleType**](OASVehicleTypeApi.md#updateVehicleType) | **PUT** /api/{version}/vehicle/type/{vehicleTypeId} | Update Vehicle Type
*OASWalletApi* | [**createOfferTransaction**](OASWalletApi.md#createOfferTransaction) | **POST** /api/{version}/wallet/create | Create Wallet Offers
*OASWalletApi* | [**deleteOfferTransaction**](OASWalletApi.md#deleteOfferTransaction) | **POST** /api/{version}/wallet/delete | Delete Wallet Offer
*OASWalletApi* | [**getOfferTransaction**](OASWalletApi.md#getOfferTransaction) | **GET** /api/{version}/wallet/get | Get Wallet Offer
*OASWalletApi* | [**previewOfferTransaction**](OASWalletApi.md#previewOfferTransaction) | **POST** /api/{version}/wallet/preview | Preview Wallet Offers
*OASWalletApi* | [**searchOfferTransactions**](OASWalletApi.md#searchOfferTransactions) | **GET** /api/{version}/wallet/search | Search Wallet Offers
*OASWalletApi* | [**updateOfferTransaction**](OASWalletApi.md#updateOfferTransaction) | **POST** /api/{version}/wallet/update | Update Wallet Offer
*OASWeatherApi* | [**searchWeather**](OASWeatherApi.md#searchWeather) | **GET** /api/{version}/weather/search | Search Weather
*OASWordApi* | [**createWord**](OASWordApi.md#createWord) | **POST** /api/{version}/game/word/create | Create Word
*OASWordApi* | [**deleteWord**](OASWordApi.md#deleteWord) | **DELETE** /api/{version}/game/word/delete | Delete Word
*OASWordApi* | [**getWord**](OASWordApi.md#getWord) | **GET** /api/{version}/game/word/get | Get Word
*OASWordApi* | [**getWords**](OASWordApi.md#getWords) | **GET** /api/{version}/game/word/search | Search Words
*OASWordApi* | [**updateWord**](OASWordApi.md#updateWord) | **POST** /api/{version}/game/word/update | Update Word
*OASWorkflowApi* | [**runWorkflow**](OASWorkflowApi.md#runWorkflow) | **POST** /api/{version}/workflow/run | Run Workflow


## Documentation for Models

 - [OASAccount](OASAccount.md)
 - [OASAccountListResponse](OASAccountListResponse.md)
 - [OASAccountLoginResponse](OASAccountLoginResponse.md)
 - [OASAccountMiniResponse](OASAccountMiniResponse.md)
 - [OASAccountProfileInfo](OASAccountProfileInfo.md)
 - [OASAccountResponse](OASAccountResponse.md)
 - [OASAccountShortResponse](OASAccountShortResponse.md)
 - [OASAchievementProgressResponse](OASAchievementProgressResponse.md)
 - [OASAchievementResponse](OASAchievementResponse.md)
 - [OASAchievementShortResponse](OASAchievementShortResponse.md)
 - [OASAchievementTierResponse](OASAchievementTierResponse.md)
 - [OASActivityResponse](OASActivityResponse.md)
 - [OASAddress](OASAddress.md)
 - [OASAddressResponse](OASAddressResponse.md)
 - [OASAgeGroupResponse](OASAgeGroupResponse.md)
 - [OASAlbum](OASAlbum.md)
 - [OASAlbumContestListResponse](OASAlbumContestListResponse.md)
 - [OASAlbumContestResponse](OASAlbumContestResponse.md)
 - [OASAlbumFullResponse](OASAlbumFullResponse.md)
 - [OASAlbumResponse](OASAlbumResponse.md)
 - [OASAnswerResponse](OASAnswerResponse.md)
 - [OASAppInfoResponse](OASAppInfoResponse.md)
 - [OASAppResponse](OASAppResponse.md)
 - [OASAppVersion](OASAppVersion.md)
 - [OASApplication](OASApplication.md)
 - [OASApplicationConfigResponse](OASApplicationConfigResponse.md)
 - [OASApplicationMiniResponse](OASApplicationMiniResponse.md)
 - [OASApplicationResponse](OASApplicationResponse.md)
 - [OASApplicationSettingsResponse](OASApplicationSettingsResponse.md)
 - [OASApplicationShortResponse](OASApplicationShortResponse.md)
 - [OASApplicationUsageResponse](OASApplicationUsageResponse.md)
 - [OASAsset](OASAsset.md)
 - [OASAssetFullResponse](OASAssetFullResponse.md)
 - [OASAssetListResponse](OASAssetListResponse.md)
 - [OASAssetResponse](OASAssetResponse.md)
 - [OASAssetShortResponse](OASAssetShortResponse.md)
 - [OASAssignment](OASAssignment.md)
 - [OASAssignmentResponse](OASAssignmentResponse.md)
 - [OASAssignmentStatus](OASAssignmentStatus.md)
 - [OASAssignmentStatusResponse](OASAssignmentStatusResponse.md)
 - [OASAudience](OASAudience.md)
 - [OASAudienceDevice](OASAudienceDevice.md)
 - [OASAudienceDeviceResponse](OASAudienceDeviceResponse.md)
 - [OASAudienceDeviceVersionRange](OASAudienceDeviceVersionRange.md)
 - [OASAudienceLocation](OASAudienceLocation.md)
 - [OASAudienceResponse](OASAudienceResponse.md)
 - [OASAudienceTargetType](OASAudienceTargetType.md)
 - [OASAvailabilityResponse](OASAvailabilityResponse.md)
 - [OASBaseOfferResponse](OASBaseOfferResponse.md)
 - [OASBidResponse](OASBidResponse.md)
 - [OASBillableEntity](OASBillableEntity.md)
 - [OASBillableEntityResponse](OASBillableEntityResponse.md)
 - [OASBillableEntityShortResponse](OASBillableEntityShortResponse.md)
 - [OASBiometricImage](OASBiometricImage.md)
 - [OASBiometricRequest](OASBiometricRequest.md)
 - [OASBlobFile](OASBlobFile.md)
 - [OASBlockedNotificationResponse](OASBlockedNotificationResponse.md)
 - [OASBuilding](OASBuilding.md)
 - [OASCargoType](OASCargoType.md)
 - [OASCategory](OASCategory.md)
 - [OASCategoryResponse](OASCategoryResponse.md)
 - [OASCategoryTreeResponse](OASCategoryTreeResponse.md)
 - [OASCellCarrier](OASCellCarrier.md)
 - [OASCellCarrierResponse](OASCellCarrierResponse.md)
 - [OASChartData](OASChartData.md)
 - [OASChronology](OASChronology.md)
 - [OASConfigRoutingRequest](OASConfigRoutingRequest.md)
 - [OASConnectedFriend](OASConnectedFriend.md)
 - [OASConnection](OASConnection.md)
 - [OASConnectionGroup](OASConnectionGroup.md)
 - [OASConnectionGroupResponse](OASConnectionGroupResponse.md)
 - [OASConnectionGroupShortResponse](OASConnectionGroupShortResponse.md)
 - [OASConnectionInfoResponse](OASConnectionInfoResponse.md)
 - [OASConnectionListResponse](OASConnectionListResponse.md)
 - [OASConnectionResponse](OASConnectionResponse.md)
 - [OASConsumerInviteResponse](OASConsumerInviteResponse.md)
 - [OASContact](OASContact.md)
 - [OASContactInfo](OASContactInfo.md)
 - [OASContactInfoResponse](OASContactInfoResponse.md)
 - [OASContactResponse](OASContactResponse.md)
 - [OASCoordsResponse](OASCoordsResponse.md)
 - [OASCountResponse](OASCountResponse.md)
 - [OASCreativeResponse](OASCreativeResponse.md)
 - [OASCsvImportResponse](OASCsvImportResponse.md)
 - [OASDateTimeField](OASDateTimeField.md)
 - [OASDateTimeFieldType](OASDateTimeFieldType.md)
 - [OASDateTimeRange](OASDateTimeRange.md)
 - [OASDateTimeZone](OASDateTimeZone.md)
 - [OASDevice](OASDevice.md)
 - [OASDimensions](OASDimensions.md)
 - [OASDirection](OASDirection.md)
 - [OASDirectionResponse](OASDirectionResponse.md)
 - [OASDisbursementResponse](OASDisbursementResponse.md)
 - [OASDriverResponse](OASDriverResponse.md)
 - [OASDurationField](OASDurationField.md)
 - [OASDurationFieldType](OASDurationFieldType.md)
 - [OASEmployeeResponse](OASEmployeeResponse.md)
 - [OASEntityReference](OASEntityReference.md)
 - [OASEvent](OASEvent.md)
 - [OASEventAttendanceResponse](OASEventAttendanceResponse.md)
 - [OASEventResponse](OASEventResponse.md)
 - [OASFilter](OASFilter.md)
 - [OASFilterResponse](OASFilterResponse.md)
 - [OASFilterTreeResponse](OASFilterTreeResponse.md)
 - [OASFingerprintBiometricImage](OASFingerprintBiometricImage.md)
 - [OASFlag](OASFlag.md)
 - [OASFlagResponse](OASFlagResponse.md)
 - [OASFlagThreshold](OASFlagThreshold.md)
 - [OASGame](OASGame.md)
 - [OASGameLevel](OASGameLevel.md)
 - [OASGameLevelListResponse](OASGameLevelListResponse.md)
 - [OASGameLevelResponse](OASGameLevelResponse.md)
 - [OASGameListResponse](OASGameListResponse.md)
 - [OASGameObjectListResponse](OASGameObjectListResponse.md)
 - [OASGameObjectResponse](OASGameObjectResponse.md)
 - [OASGameResponse](OASGameResponse.md)
 - [OASGeoBox](OASGeoBox.md)
 - [OASGeoPointResponse](OASGeoPointResponse.md)
 - [OASGeoResponse](OASGeoResponse.md)
 - [OASGeocodeLatLngResponse](OASGeocodeLatLngResponse.md)
 - [OASGroupPermissions](OASGroupPermissions.md)
 - [OASImageGenerationResponse](OASImageGenerationResponse.md)
 - [OASImportStatuses](OASImportStatuses.md)
 - [OASInterval](OASInterval.md)
 - [OASInviteResponse](OASInviteResponse.md)
 - [OASInvoice](OASInvoice.md)
 - [OASItineraryResponse](OASItineraryResponse.md)
 - [OASJsonArray](OASJsonArray.md)
 - [OASJsonElement](OASJsonElement.md)
 - [OASJsonNull](OASJsonNull.md)
 - [OASJsonObject](OASJsonObject.md)
 - [OASJsonPrimitive](OASJsonPrimitive.md)
 - [OASLeaderboard](OASLeaderboard.md)
 - [OASLeaderboardFullResponse](OASLeaderboardFullResponse.md)
 - [OASLeaderboardResponse](OASLeaderboardResponse.md)
 - [OASLeg](OASLeg.md)
 - [OASLegResponse](OASLegResponse.md)
 - [OASLikableResponse](OASLikableResponse.md)
 - [OASLikeResponse](OASLikeResponse.md)
 - [OASLineItem](OASLineItem.md)
 - [OASListCountResponse](OASListCountResponse.md)
 - [OASListResponse](OASListResponse.md)
 - [OASListing](OASListing.md)
 - [OASListingFullResponse](OASListingFullResponse.md)
 - [OASListingGroupResponse](OASListingGroupResponse.md)
 - [OASListingResponse](OASListingResponse.md)
 - [OASLoadResponse](OASLoadResponse.md)
 - [OASLoadShortResponse](OASLoadShortResponse.md)
 - [OASLocalTime](OASLocalTime.md)
 - [OASLocation](OASLocation.md)
 - [OASLocationResponse](OASLocationResponse.md)
 - [OASLocationSearchResponse](OASLocationSearchResponse.md)
 - [OASMedia](OASMedia.md)
 - [OASMediaOfferResponse](OASMediaOfferResponse.md)
 - [OASMediaResponse](OASMediaResponse.md)
 - [OASMessageListResponse](OASMessageListResponse.md)
 - [OASMessageResponse](OASMessageResponse.md)
 - [OASMission](OASMission.md)
 - [OASMissionFormatResponse](OASMissionFormatResponse.md)
 - [OASMissionInviteResponse](OASMissionInviteResponse.md)
 - [OASMissionListResponse](OASMissionListResponse.md)
 - [OASMissionResponse](OASMissionResponse.md)
 - [OASMissionShortResponse](OASMissionShortResponse.md)
 - [OASMissionTask](OASMissionTask.md)
 - [OASNameStringValueResponse](OASNameStringValueResponse.md)
 - [OASNode](OASNode.md)
 - [OASNodeRequest](OASNodeRequest.md)
 - [OASNote](OASNote.md)
 - [OASNoteFullResponse](OASNoteFullResponse.md)
 - [OASNoteResponse](OASNoteResponse.md)
 - [OASNotificationMessageListResponse](OASNotificationMessageListResponse.md)
 - [OASNotificationMessageResponse](OASNotificationMessageResponse.md)
 - [OASNotificationRecipientResponse](OASNotificationRecipientResponse.md)
 - [OASNotificationRecipientResponseList](OASNotificationRecipientResponseList.md)
 - [OASNotificationSettingsResponse](OASNotificationSettingsResponse.md)
 - [OASNotificationTemplateResponse](OASNotificationTemplateResponse.md)
 - [OASObjectStoreResponse](OASObjectStoreResponse.md)
 - [OASOffer](OASOffer.md)
 - [OASOfferListResponse](OASOfferListResponse.md)
 - [OASOfferLocation](OASOfferLocation.md)
 - [OASOfferResponse](OASOfferResponse.md)
 - [OASOfferShortResponse](OASOfferShortResponse.md)
 - [OASOfferTransactionResponse](OASOfferTransactionResponse.md)
 - [OASOfferTransactionStatusResponse](OASOfferTransactionStatusResponse.md)
 - [OASOrderItemRequest](OASOrderItemRequest.md)
 - [OASOrderPackage](OASOrderPackage.md)
 - [OASOrderResponse](OASOrderResponse.md)
 - [OASOrders](OASOrders.md)
 - [OASOrsonAiAddMovieResponse](OASOrsonAiAddMovieResponse.md)
 - [OASOrsonAiBatchEmotionsResponse](OASOrsonAiBatchEmotionsResponse.md)
 - [OASOrsonAiBatchResponse](OASOrsonAiBatchResponse.md)
 - [OASOrsonAiBatchTopicsResponse](OASOrsonAiBatchTopicsResponse.md)
 - [OASOrsonAiBatchTranscriptResponse](OASOrsonAiBatchTranscriptResponse.md)
 - [OASOrsonAiEmotionsResponse](OASOrsonAiEmotionsResponse.md)
 - [OASOrsonAiProdResponse](OASOrsonAiProdResponse.md)
 - [OASOrsonAiProtoResponse](OASOrsonAiProtoResponse.md)
 - [OASOrsonAiSTTResponse](OASOrsonAiSTTResponse.md)
 - [OASOrsonAiTTSResponse](OASOrsonAiTTSResponse.md)
 - [OASOrsonAiTechTuneResponse](OASOrsonAiTechTuneResponse.md)
 - [OASOrsonAiTopicResponse](OASOrsonAiTopicResponse.md)
 - [OASOrsonAiTopicsResponse](OASOrsonAiTopicsResponse.md)
 - [OASOrsonAiVisualEmotionResponse](OASOrsonAiVisualEmotionResponse.md)
 - [OASOrsonAiVoiceCanvasResponse](OASOrsonAiVoiceCanvasResponse.md)
 - [OASOrsonEpisodeResponse](OASOrsonEpisodeResponse.md)
 - [OASOrsonRenderResponse](OASOrsonRenderResponse.md)
 - [OASOrsonVideoResponse](OASOrsonVideoResponse.md)
 - [OASPack](OASPack.md)
 - [OASPackListResponse](OASPackListResponse.md)
 - [OASPackResponse](OASPackResponse.md)
 - [OASParticipant](OASParticipant.md)
 - [OASParticipantResponse](OASParticipantResponse.md)
 - [OASPathingResponse](OASPathingResponse.md)
 - [OASPaymentRequest](OASPaymentRequest.md)
 - [OASPaymentTransactionResponse](OASPaymentTransactionResponse.md)
 - [OASPaymentTypesResponse](OASPaymentTypesResponse.md)
 - [OASPermissionResponse](OASPermissionResponse.md)
 - [OASPermissions](OASPermissions.md)
 - [OASPersonalProfileResponse](OASPersonalProfileResponse.md)
 - [OASPlacement](OASPlacement.md)
 - [OASPlacementResponse](OASPlacementResponse.md)
 - [OASPlatform](OASPlatform.md)
 - [OASPlatformResponse](OASPlatformResponse.md)
 - [OASPostalCode](OASPostalCode.md)
 - [OASPostalCodeResponse](OASPostalCodeResponse.md)
 - [OASPredictedLocationResponse](OASPredictedLocationResponse.md)
 - [OASPreferredLocationResponse](OASPreferredLocationResponse.md)
 - [OASPreviewPersonaResponse](OASPreviewPersonaResponse.md)
 - [OASProduct](OASProduct.md)
 - [OASProductResponse](OASProductResponse.md)
 - [OASProfileInfoResponse](OASProfileInfoResponse.md)
 - [OASProfileResponse](OASProfileResponse.md)
 - [OASProfileShortResponse](OASProfileShortResponse.md)
 - [OASProgram](OASProgram.md)
 - [OASPromoCode](OASPromoCode.md)
 - [OASPurchaseItemFullResponse](OASPurchaseItemFullResponse.md)
 - [OASPurchaseItemListResponse](OASPurchaseItemListResponse.md)
 - [OASPurchaseItemResponse](OASPurchaseItemResponse.md)
 - [OASPurchaseItemShortResponse](OASPurchaseItemShortResponse.md)
 - [OASPurchaseOrderItemResponse](OASPurchaseOrderItemResponse.md)
 - [OASQuestionResponse](OASQuestionResponse.md)
 - [OASQueueResponse](OASQueueResponse.md)
 - [OASRankFullResponse](OASRankFullResponse.md)
 - [OASRankListResponse](OASRankListResponse.md)
 - [OASRankResponse](OASRankResponse.md)
 - [OASRatingIndexResponse](OASRatingIndexResponse.md)
 - [OASRatingResponse](OASRatingResponse.md)
 - [OASRecurrence](OASRecurrence.md)
 - [OASRegion](OASRegion.md)
 - [OASRegionLegSummary](OASRegionLegSummary.md)
 - [OASRegionResponse](OASRegionResponse.md)
 - [OASReportBatchResponse](OASReportBatchResponse.md)
 - [OASReportDefinition](OASReportDefinition.md)
 - [OASReportRegionLegSummaryBatchRespon](OASReportRegionLegSummaryBatchRespon.md)
 - [OASReportResponse](OASReportResponse.md)
 - [OASReportTypeResponse](OASReportTypeResponse.md)
 - [OASReservationResponse](OASReservationResponse.md)
 - [OASRetailer](OASRetailer.md)
 - [OASRetailerCountResponse](OASRetailerCountResponse.md)
 - [OASRetailerFullResponse](OASRetailerFullResponse.md)
 - [OASRetailerLocation](OASRetailerLocation.md)
 - [OASRetailerLocationResponse](OASRetailerLocationResponse.md)
 - [OASRetailerLocationShortResponse](OASRetailerLocationShortResponse.md)
 - [OASRetailerOfferResponse](OASRetailerOfferResponse.md)
 - [OASRetailerProfile](OASRetailerProfile.md)
 - [OASRetailerResponse](OASRetailerResponse.md)
 - [OASRetailerShortResponse](OASRetailerShortResponse.md)
 - [OASRewardResponse](OASRewardResponse.md)
 - [OASRoute](OASRoute.md)
 - [OASRouteSettings](OASRouteSettings.md)
 - [OASRoutingListResponse](OASRoutingListResponse.md)
 - [OASRoutingResponse](OASRoutingResponse.md)
 - [OASRuleListResponse](OASRuleListResponse.md)
 - [OASRuleResponse](OASRuleResponse.md)
 - [OASScheduledNotification](OASScheduledNotification.md)
 - [OASScheduledNotificationFullResponse](OASScheduledNotificationFullResponse.md)
 - [OASScheduledNotificationShortRespons](OASScheduledNotificationShortRespons.md)
 - [OASScoreListResponse](OASScoreListResponse.md)
 - [OASScoreResponse](OASScoreResponse.md)
 - [OASSearchResponse](OASSearchResponse.md)
 - [OASServiceHub](OASServiceHub.md)
 - [OASServiceType](OASServiceType.md)
 - [OASShipment](OASShipment.md)
 - [OASShipmentBatch](OASShipmentBatch.md)
 - [OASShipmentImportStatus](OASShipmentImportStatus.md)
 - [OASShipmentOrder](OASShipmentOrder.md)
 - [OASSirqulResponse](OASSirqulResponse.md)
 - [OASSizeGroup](OASSizeGroup.md)
 - [OASSizeGroupResponse](OASSizeGroupResponse.md)
 - [OASStep](OASStep.md)
 - [OASStepResponse](OASStepResponse.md)
 - [OASStop](OASStop.md)
 - [OASStopResponse](OASStopResponse.md)
 - [OASSubscription](OASSubscription.md)
 - [OASSubscriptionOption](OASSubscriptionOption.md)
 - [OASSubscriptionOptionResponse](OASSubscriptionOptionResponse.md)
 - [OASSubscriptionPlan](OASSubscriptionPlan.md)
 - [OASSubscriptionPlanResponse](OASSubscriptionPlanResponse.md)
 - [OASSubscriptionResponse](OASSubscriptionResponse.md)
 - [OASTaskResponse](OASTaskResponse.md)
 - [OASTerritory](OASTerritory.md)
 - [OASTerritoryResponse](OASTerritoryResponse.md)
 - [OASThemeDescriptorResponse](OASThemeDescriptorResponse.md)
 - [OASThirdPartyCredentialResponse](OASThirdPartyCredentialResponse.md)
 - [OASThirdPartyCredentials](OASThirdPartyCredentials.md)
 - [OASThirdPartyNetwork](OASThirdPartyNetwork.md)
 - [OASThirdPartyNetworkResponse](OASThirdPartyNetworkResponse.md)
 - [OASThirdPartyNetworkShortResponse](OASThirdPartyNetworkShortResponse.md)
 - [OASTicketCountResponse](OASTicketCountResponse.md)
 - [OASTicketListResponse](OASTicketListResponse.md)
 - [OASTicketOfferResponse](OASTicketOfferResponse.md)
 - [OASTicketResponse](OASTicketResponse.md)
 - [OASTimeSlotResponse](OASTimeSlotResponse.md)
 - [OASTokenResponse](OASTokenResponse.md)
 - [OASTournamentResponse](OASTournamentResponse.md)
 - [OASTriggerResponse](OASTriggerResponse.md)
 - [OASTrilatAppSettings](OASTrilatAppSettings.md)
 - [OASTrilatCacheRequest](OASTrilatCacheRequest.md)
 - [OASTrilatCacheSample](OASTrilatCacheSample.md)
 - [OASTrip](OASTrip.md)
 - [OASTutorial](OASTutorial.md)
 - [OASTutorialResponse](OASTutorialResponse.md)
 - [OASTwiMLResponse](OASTwiMLResponse.md)
 - [OASUrlResponse](OASUrlResponse.md)
 - [OASUserActivityResponse](OASUserActivityResponse.md)
 - [OASUserLocationListResponse](OASUserLocationListResponse.md)
 - [OASUserLocationResponse](OASUserLocationResponse.md)
 - [OASUserLocationSearchResponse](OASUserLocationSearchResponse.md)
 - [OASUserPermissions](OASUserPermissions.md)
 - [OASUserPermissionsListResponse](OASUserPermissionsListResponse.md)
 - [OASUserPermissionsResponse](OASUserPermissionsResponse.md)
 - [OASUserSettingsResponse](OASUserSettingsResponse.md)
 - [OASVehicle](OASVehicle.md)
 - [OASVehicleCargoSetting](OASVehicleCargoSetting.md)
 - [OASVehicleResponse](OASVehicleResponse.md)
 - [OASVehicleType](OASVehicleType.md)
 - [OASVerb](OASVerb.md)
 - [OASWeatherForecastResponse](OASWeatherForecastResponse.md)
 - [OASWeatherResponse](OASWeatherResponse.md)
 - [OASWordzWordResponse](OASWordzWordResponse.md)
 - [OASWrappedProxyItemResponse](OASWrappedProxyItemResponse.md)
 - [OASWrappedProxyResponse](OASWrappedProxyResponse.md)
 - [OASWrappedResponse](OASWrappedResponse.md)
 - [OASYayOrNay](OASYayOrNay.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### appKey

- **Type**: API key
- **API key parameter name**: Application-Key
- **Location**: HTTP header

### restKey

- **Type**: API key
- **API key parameter name**: Application-Rest-Key
- **Location**: HTTP header


## Author

info@sirqul.com

