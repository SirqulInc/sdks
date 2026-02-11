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

All URIs are relative to *https://dev.sirqul.com/api/3.18*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASAMQPApi* | [**consumerCreate**](OASAMQPApi.md#consumerCreate) | **POST** /queue/consumer/create | Create Consumer
*OASAMQPApi* | [**consumerUpdate**](OASAMQPApi.md#consumerUpdate) | **POST** /queue/consumer/update | Update Consumer
*OASAMQPApi* | [**queueCreate**](OASAMQPApi.md#queueCreate) | **POST** /queue/create | Create Queue
*OASAMQPApi* | [**queueDelete**](OASAMQPApi.md#queueDelete) | **POST** /queue/delete | Delete Queue
*OASAMQPApi* | [**queueGet**](OASAMQPApi.md#queueGet) | **GET** /queue/get | Get Queue
*OASAMQPApi* | [**queuePublish**](OASAMQPApi.md#queuePublish) | **POST** /queue/publish | Publish Queue
*OASAMQPApi* | [**queueSearch**](OASAMQPApi.md#queueSearch) | **GET** /queue/search | Search Queue
*OASAMQPApi* | [**queueUpdate**](OASAMQPApi.md#queueUpdate) | **POST** /queue/update | Update Queue
*OASAccountApi* | [**accountLocationSearch**](OASAccountApi.md#accountLocationSearch) | **GET** /account/search | Search Accounts by Location
*OASAccountApi* | [**blockAccount**](OASAccountApi.md#blockAccount) | **POST** /account/block | Block Account
*OASAccountApi* | [**createAccount**](OASAccountApi.md#createAccount) | **POST** /account/create | Create Account
*OASAccountApi* | [**editAccount**](OASAccountApi.md#editAccount) | **POST** /account/profile/update | Update Account
*OASAccountApi* | [**editUsername**](OASAccountApi.md#editUsername) | **POST** /account/username/update | Update Username and Email
*OASAccountApi* | [**getAccount**](OASAccountApi.md#getAccount) | **GET** /account/profile/get | Get Account
*OASAccountApi* | [**getProfileAssets**](OASAccountApi.md#getProfileAssets) | **GET** /account/profile/assets | Get Profile Assets
*OASAccountApi* | [**getReferralList**](OASAccountApi.md#getReferralList) | **GET** /account/referral/list | Search Accounts
*OASAccountApi* | [**getSettings**](OASAccountApi.md#getSettings) | **GET** /account/settings/get | Get Account Settings
*OASAccountApi* | [**loginDelegate**](OASAccountApi.md#loginDelegate) | **POST** /account/login/delegate | Login as Account
*OASAccountApi* | [**loginGeneral**](OASAccountApi.md#loginGeneral) | **POST** /account/login | Login Account
*OASAccountApi* | [**loginUsername**](OASAccountApi.md#loginUsername) | **POST** /account/get | Login Account (Username)
*OASAccountApi* | [**logout**](OASAccountApi.md#logout) | **POST** /account/logout | Logout Account
*OASAccountApi* | [**mergeAccount**](OASAccountApi.md#mergeAccount) | **POST** /account/merge | Merge Account
*OASAccountApi* | [**passwordChange**](OASAccountApi.md#passwordChange) | **POST** /account/passwordchange | Update Password
*OASAccountApi* | [**passwordReset**](OASAccountApi.md#passwordReset) | **POST** /account/passwordreset | Reset Password
*OASAccountApi* | [**requestPasswordReset**](OASAccountApi.md#requestPasswordReset) | **POST** /account/requestpasswordreset | Request Password Reset
*OASAccountApi* | [**requestValidateAccount**](OASAccountApi.md#requestValidateAccount) | **POST** /account/requestValidateAccount | Send Validation Request
*OASAccountApi* | [**searchAccounts**](OASAccountApi.md#searchAccounts) | **GET** /account/profile/search | Search Accounts
*OASAccountApi* | [**secureLogin**](OASAccountApi.md#secureLogin) | **POST** /account/login/validate | Login Account (Encrypted Username)
*OASAccountApi* | [**secureSignup**](OASAccountApi.md#secureSignup) | **POST** /account/create/validate | Create Account (Encrypted Username)
*OASAccountApi* | [**setMatchToken**](OASAccountApi.md#setMatchToken) | **POST** /consumer/profile/matchToken | Save Match Token
*OASAccountApi* | [**updateActveStatus**](OASAccountApi.md#updateActveStatus) | **POST** /account/active/update | Update Account Active Status
*OASAccountApi* | [**updateLocation**](OASAccountApi.md#updateLocation) | **POST** /account/location/update | Update Location
*OASAccountApi* | [**updateSettings**](OASAccountApi.md#updateSettings) | **POST** /account/settings/update | Update Account Settings
*OASAccountApi* | [**validateAccountSignup**](OASAccountApi.md#validateAccountSignup) | **POST** /account/validateAccountSignup | Save Validation Status
*OASAccountApi* | [**validatePasswordReset**](OASAccountApi.md#validatePasswordReset) | **POST** /account/validatepasswordreset | Validate Password Reset Token
*OASAchievementApi* | [**achievementTierSearchPost**](OASAchievementApi.md#achievementTierSearchPost) | **POST** /achievement/tier/search | Searches an Achievement Tier
*OASAchievementApi* | [**createAchievement**](OASAchievementApi.md#createAchievement) | **POST** /achievement/create | Create Achievement
*OASAchievementApi* | [**createAchievementTier**](OASAchievementApi.md#createAchievementTier) | **POST** /achievement/tier/create | Create Achievement Tier
*OASAchievementApi* | [**deleteAchievement**](OASAchievementApi.md#deleteAchievement) | **POST** /achievement/delete | Delete Achievement
*OASAchievementApi* | [**deleteAchievementTier**](OASAchievementApi.md#deleteAchievementTier) | **POST** /achievement/tier/delete | Delete Achievement Tier
*OASAchievementApi* | [**getAchievement**](OASAchievementApi.md#getAchievement) | **GET** /achievement/get | Get Achievement
*OASAchievementApi* | [**getAchievementTier**](OASAchievementApi.md#getAchievementTier) | **POST** /achievement/tier/get | Gets an achievement tier
*OASAchievementApi* | [**getUserAchievements**](OASAchievementApi.md#getUserAchievements) | **GET** /achievement/progress/get | Get Achievement Progress
*OASAchievementApi* | [**listAchievementTags**](OASAchievementApi.md#listAchievementTags) | **GET** /achievement/tag/list | List Achievement Tags
*OASAchievementApi* | [**listAchievements**](OASAchievementApi.md#listAchievements) | **GET** /achievement/list | List Achievements
*OASAchievementApi* | [**searchAchievements**](OASAchievementApi.md#searchAchievements) | **GET** /achievement/search | Search Achievements
*OASAchievementApi* | [**updateAchievement**](OASAchievementApi.md#updateAchievement) | **POST** /achievement/update | Update Achievement
*OASAchievementApi* | [**updateAchievementTier**](OASAchievementApi.md#updateAchievementTier) | **POST** /achievement/tier/update | Update Achievement Tier
*OASAchievementApi* | [**updateUserAchievement**](OASAchievementApi.md#updateUserAchievement) | **POST** /achievement/progress/update | Update Achievement Progress
*OASActivityApi* | [**createEntityReference**](OASActivityApi.md#createEntityReference) | **POST** /entity/reference | Create an entity reference.
*OASAlbumApi* | [**addAlbumCollection**](OASAlbumApi.md#addAlbumCollection) | **POST** /album/create | Create Album
*OASAlbumApi* | [**addAlbumUsers**](OASAlbumApi.md#addAlbumUsers) | **POST** /album/user/add | Add Album Users
*OASAlbumApi* | [**approveAlbum**](OASAlbumApi.md#approveAlbum) | **POST** /album/approve | Approve Album
*OASAlbumApi* | [**getAlbumCollection**](OASAlbumApi.md#getAlbumCollection) | **GET** /album/get |  Get Album
*OASAlbumApi* | [**leaveAlbum**](OASAlbumApi.md#leaveAlbum) | **POST** /album/user/leave | Leave Album
*OASAlbumApi* | [**removeAlbum**](OASAlbumApi.md#removeAlbum) | **POST** /album/delete | Delete Album
*OASAlbumApi* | [**removeAlbumUsers**](OASAlbumApi.md#removeAlbumUsers) | **POST** /album/user/delete | Remove Album Users
*OASAlbumApi* | [**searchAlbums**](OASAlbumApi.md#searchAlbums) | **GET** /album/search | Search Albums
*OASAlbumApi* | [**updateAlbumCollection**](OASAlbumApi.md#updateAlbumCollection) | **POST** /album/update | Update Album
*OASAnalyticsApi* | [**activities**](OASAnalyticsApi.md#activities) | **GET** /analytics/useractivity | Get User Activity
*OASAnalyticsApi* | [**aggregatedFilteredUsage**](OASAnalyticsApi.md#aggregatedFilteredUsage) | **GET** /analytics/aggregatedFilteredUsage | Get Aggregated Filtered Usage
*OASAnalyticsApi* | [**filteredUsage**](OASAnalyticsApi.md#filteredUsage) | **GET** /analytics/filteredUsage | Get Filtered Usage
*OASAnalyticsApi* | [**usage**](OASAnalyticsApi.md#usage) | **POST** /analytics/usage | Create Usage Record
*OASAnalyticsApi* | [**usageBatch**](OASAnalyticsApi.md#usageBatch) | **POST** /analytics/usage/batch | Create Multiple Usage Records
*OASAppDataApi* | [**getAppData**](OASAppDataApi.md#getAppData) | **GET** /app/get | Get App Data
*OASAppDataApi* | [**postAppData**](OASAppDataApi.md#postAppData) | **POST** /app/post | Create App Data
*OASAppDataApi* | [**regenAppData**](OASAppDataApi.md#regenAppData) | **POST** /app/regen | Regenerate App Data
*OASApplicationApi* | [**createApplication**](OASApplicationApi.md#createApplication) | **POST** /application/create | Create Application
*OASApplicationApi* | [**createApplicationPlacement**](OASApplicationApi.md#createApplicationPlacement) | **POST** /application/placement/create | Create Ad Placement
*OASApplicationApi* | [**deleteApplication**](OASApplicationApi.md#deleteApplication) | **POST** /application/delete | Delete Application
*OASApplicationApi* | [**deleteApplicationPlacement**](OASApplicationApi.md#deleteApplicationPlacement) | **POST** /application/placement/delete | Delete Ad Placement
*OASApplicationApi* | [**getApplication**](OASApplicationApi.md#getApplication) | **GET** /application/get | Get Application
*OASApplicationApi* | [**getApplicationPlacement**](OASApplicationApi.md#getApplicationPlacement) | **GET** /application/placement/get | Get Ad Placement
*OASApplicationApi* | [**getApplicationVersions**](OASApplicationApi.md#getApplicationVersions) | **GET** /application/versions | Get API versions
*OASApplicationApi* | [**getUniqueUsersByApp**](OASApplicationApi.md#getUniqueUsersByApp) | **GET** /application/users | Search Application Users
*OASApplicationApi* | [**listApplications**](OASApplicationApi.md#listApplications) | **GET** /application/list | List Applications
*OASApplicationApi* | [**searchApplicationPlacement**](OASApplicationApi.md#searchApplicationPlacement) | **GET** /application/placement/search | Search for Ad Placements
*OASApplicationApi* | [**searchApplicationSettings**](OASApplicationApi.md#searchApplicationSettings) | **GET** /application/settings/search | Search for Application Settings
*OASApplicationApi* | [**searchApplications**](OASApplicationApi.md#searchApplications) | **GET** /application/search | Search Applications
*OASApplicationApi* | [**updateApplication**](OASApplicationApi.md#updateApplication) | **POST** /application/update | Update Application
*OASApplicationApi* | [**updateApplicationActive**](OASApplicationApi.md#updateApplicationActive) | **POST** /application/active | Change Appliation Status
*OASApplicationApi* | [**updateApplicationPlacement**](OASApplicationApi.md#updateApplicationPlacement) | **POST** /application/placement/update | Update Ad Placement
*OASApplicationApi* | [**uploadApplicationCertificate**](OASApplicationApi.md#uploadApplicationCertificate) | **POST** /application/certificate/create | Create Application Certificate
*OASApplicationConfigApi* | [**createApplicationConfig**](OASApplicationConfigApi.md#createApplicationConfig) | **POST** /appconfig/create | Create AppConfig
*OASApplicationConfigApi* | [**deleteApplicationConfig**](OASApplicationConfigApi.md#deleteApplicationConfig) | **POST** /appconfig/delete | Delete AppConfig
*OASApplicationConfigApi* | [**getApplicationConfig**](OASApplicationConfigApi.md#getApplicationConfig) | **GET** /appconfig/get | Get AppConfig
*OASApplicationConfigApi* | [**getApplicationConfigByConfigVersion**](OASApplicationConfigApi.md#getApplicationConfigByConfigVersion) | **GET** /appconfig/getbyversion | Get AppConfig by Version
*OASApplicationConfigApi* | [**searchApplicationConfig**](OASApplicationConfigApi.md#searchApplicationConfig) | **GET** /appconfig/search | Search AppConfigs
*OASApplicationConfigApi* | [**updateApplicationConfig**](OASApplicationConfigApi.md#updateApplicationConfig) | **POST** /appconfig/update | Update AppConfig
*OASAssetApi* | [**assetDownload**](OASAssetApi.md#assetDownload) | **GET** /asset/download/{filename} | Download Asset
*OASAssetApi* | [**assetMorph**](OASAssetApi.md#assetMorph) | **POST** /asset/morph | Convert Offer to Creative
*OASAssetApi* | [**createAsset**](OASAssetApi.md#createAsset) | **POST** /asset/create | Create Asset
*OASAssetApi* | [**deleteAsset**](OASAssetApi.md#deleteAsset) | **POST** /asset/delete | Delete Asset
*OASAssetApi* | [**getAsset**](OASAssetApi.md#getAsset) | **GET** /asset/get | Get Asset
*OASAssetApi* | [**removeAsset**](OASAssetApi.md#removeAsset) | **POST** /asset/remove | Remove Asset from Collection
*OASAssetApi* | [**searchAssets**](OASAssetApi.md#searchAssets) | **GET** /asset/search | Search Assets
*OASAssetApi* | [**updateAsset**](OASAssetApi.md#updateAsset) | **POST** /asset/update | Update Asset
*OASAssignmentApi* | [**assigmentAssigneeAccountSearch**](OASAssignmentApi.md#assigmentAssigneeAccountSearch) | **GET** /assignment/assignee/search | Search Assignment Assignees
*OASAssignmentApi* | [**assignmentCreate**](OASAssignmentApi.md#assignmentCreate) | **POST** /assignment/create | Create Assignment
*OASAssignmentApi* | [**assignmentDelete**](OASAssignmentApi.md#assignmentDelete) | **POST** /assignment/delete | Delete Assignment
*OASAssignmentApi* | [**assignmentGet**](OASAssignmentApi.md#assignmentGet) | **GET** /assignment/get | Get Assignment
*OASAssignmentApi* | [**assignmentSearch**](OASAssignmentApi.md#assignmentSearch) | **GET** /assignment/search | Search Assignments
*OASAssignmentApi* | [**assignmentStatusCreate**](OASAssignmentApi.md#assignmentStatusCreate) | **POST** /assignment/status/create | Create Assignment Status
*OASAssignmentApi* | [**assignmentStatusDelete**](OASAssignmentApi.md#assignmentStatusDelete) | **POST** /assignment/status/delete | Deletes Assignment Status
*OASAssignmentApi* | [**assignmentStatusGet**](OASAssignmentApi.md#assignmentStatusGet) | **GET** /assignment/status/get | Get Assignment Status
*OASAssignmentApi* | [**assignmentStatusSearch**](OASAssignmentApi.md#assignmentStatusSearch) | **GET** /assignment/status/search | Search Assignment Statuses
*OASAssignmentApi* | [**assignmentStatusUpdate**](OASAssignmentApi.md#assignmentStatusUpdate) | **POST** /assignment/status/update | Update Assignment Status
*OASAssignmentApi* | [**assignmentUpdate**](OASAssignmentApi.md#assignmentUpdate) | **POST** /assignment/update | Update Assignment
*OASAudienceApi* | [**createAudience**](OASAudienceApi.md#createAudience) | **POST** /audience/create | Create Audience
*OASAudienceApi* | [**deleteAudience**](OASAudienceApi.md#deleteAudience) | **POST** /audience/delete | Delete Audience
*OASAudienceApi* | [**getAgeGroups**](OASAudienceApi.md#getAgeGroups) | **GET** /audience/ageGroups | Get Age Groups
*OASAudienceApi* | [**getAudience**](OASAudienceApi.md#getAudience) | **GET** /audience/get | Get Audience
*OASAudienceApi* | [**getAudienceList**](OASAudienceApi.md#getAudienceList) | **GET** /audience/search | Search Audiences
*OASAudienceApi* | [**getDevices**](OASAudienceApi.md#getDevices) | **GET** /audience/devices | Get Devices
*OASAudienceApi* | [**getExperiences**](OASAudienceApi.md#getExperiences) | **GET** /audience/experiences | Get Experiences
*OASAudienceApi* | [**getGroupedAudiences**](OASAudienceApi.md#getGroupedAudiences) | **GET** /audience/grouped/get | Get GroupedAudiences
*OASAudienceApi* | [**listByAccount**](OASAudienceApi.md#listByAccount) | **POST** /audience/suggestion/list | List Suggestions by Audience
*OASAudienceApi* | [**listByAudience**](OASAudienceApi.md#listByAudience) | **GET** /audience/suggestion/offersByAudience | List Offers by Audience
*OASAudienceApi* | [**listLastestByAccount**](OASAudienceApi.md#listLastestByAccount) | **GET** /audience/suggestion/latest | List Sent Suggestions 
*OASAudienceApi* | [**sendByAccount**](OASAudienceApi.md#sendByAccount) | **POST** /audience/suggestion/send | Send Suggestions
*OASAudienceApi* | [**updateAudience**](OASAudienceApi.md#updateAudience) | **POST** /audience/update | Update Audience
*OASBidApi* | [**createBid**](OASBidApi.md#createBid) | **POST** /bid/create | Create Bid
*OASBidApi* | [**deleteBid**](OASBidApi.md#deleteBid) | **POST** /bid/delete | Delete Bid
*OASBidApi* | [**getBid**](OASBidApi.md#getBid) | **GET** /bid/get | Get Bid
*OASBidApi* | [**updateBid**](OASBidApi.md#updateBid) | **POST** /bid/update | Update Bid
*OASBillableEntityApi* | [**createBillableEntity**](OASBillableEntityApi.md#createBillableEntity) | **POST** /billable/create | Create Billable
*OASBillableEntityApi* | [**deleteBillableEntity**](OASBillableEntityApi.md#deleteBillableEntity) | **POST** /billable/delete | Delete Billable
*OASBillableEntityApi* | [**getBillableEntity**](OASBillableEntityApi.md#getBillableEntity) | **GET** /billable/get | Get Billable
*OASBillableEntityApi* | [**updateBillableEntity**](OASBillableEntityApi.md#updateBillableEntity) | **POST** /billable/update | Update Billable
*OASBillingInfoApi* | [**addPaymentMethod**](OASBillingInfoApi.md#addPaymentMethod) | **POST** /billing/update | Update Payment Method
*OASBillingInfoApi* | [**createPaymentMethod**](OASBillingInfoApi.md#createPaymentMethod) | **POST** /billing/create | Create Payment Method
*OASBillingInfoApi* | [**createSmartContract**](OASBillingInfoApi.md#createSmartContract) | **POST** /billing/crypto/transfer | Create Smart Contract
*OASBillingInfoApi* | [**getCryptoBalance**](OASBillingInfoApi.md#getCryptoBalance) | **GET** /billing/crypto/get | Get Crypto Balances
*OASBillingInfoApi* | [**getPaymentMethod**](OASBillingInfoApi.md#getPaymentMethod) | **GET** /billing/get | Get Payment Method
*OASBillingInfoApi* | [**searchPaymentMethod**](OASBillingInfoApi.md#searchPaymentMethod) | **GET** /billing/search | Search Payment Methods
*OASCSVImportApi* | [**getStatusCSV**](OASCSVImportApi.md#getStatusCSV) | **GET** /csvimport/batch/status/details | Detail Status
*OASCSVImportApi* | [**listStatusCSV**](OASCSVImportApi.md#listStatusCSV) | **GET** /csvimport/batch/list | Search Status
*OASCSVImportApi* | [**statusCSV**](OASCSVImportApi.md#statusCSV) | **GET** /csvimport/batch/status | Batch Status
*OASCSVImportApi* | [**uploadCSV**](OASCSVImportApi.md#uploadCSV) | **POST** /csvimport/upload | Upload CSV
*OASCargoTypeApi* | [**createCargoType**](OASCargoTypeApi.md#createCargoType) | **POST** /cargo/type | Create Cargo Type
*OASCargoTypeApi* | [**deleteCargoType**](OASCargoTypeApi.md#deleteCargoType) | **DELETE** /cargo/type/{cargoTypeId} | Delete Cargo Type
*OASCargoTypeApi* | [**getCargoType**](OASCargoTypeApi.md#getCargoType) | **GET** /cargo/type/{cargoTypeId} | Get Cargo Type
*OASCargoTypeApi* | [**searchCargoTypes**](OASCargoTypeApi.md#searchCargoTypes) | **GET** /cargo/type | Search Cargo Type
*OASCargoTypeApi* | [**updateCargoType**](OASCargoTypeApi.md#updateCargoType) | **PUT** /cargo/type/{cargoTypeId} | Update Cargo Type
*OASCarrierApi* | [**searchCarriers**](OASCarrierApi.md#searchCarriers) | **GET** /carrier/search | Search Carriers
*OASCategoryApi* | [**categoryDistanceSearch**](OASCategoryApi.md#categoryDistanceSearch) | **GET** /category/distancesearch | Search Categories by Distance
*OASCategoryApi* | [**createCategory**](OASCategoryApi.md#createCategory) | **POST** /category/create | Create Category
*OASCategoryApi* | [**deleteCategory**](OASCategoryApi.md#deleteCategory) | **POST** /category/delete | Delete Category
*OASCategoryApi* | [**duplicateCategory**](OASCategoryApi.md#duplicateCategory) | **POST** /category/duplicate | Duplicate Category
*OASCategoryApi* | [**getCategory**](OASCategoryApi.md#getCategory) | **GET** /category/get | Get Category
*OASCategoryApi* | [**searchCategories**](OASCategoryApi.md#searchCategories) | **GET** /category/search | Search Categories
*OASCategoryApi* | [**updateCategory**](OASCategoryApi.md#updateCategory) | **POST** /category/update | Update Category
*OASConnectionApi* | [**addConnectionToGroup**](OASConnectionApi.md#addConnectionToGroup) | **POST** /consumer/connection/group/addConnection | Add Connection
*OASConnectionApi* | [**addConnectionsToGroup**](OASConnectionApi.md#addConnectionsToGroup) | **POST** /connection/group/addConnections | Add Connections
*OASConnectionApi* | [**addSubGroups**](OASConnectionApi.md#addSubGroups) | **POST** /consumer/connection/group/addSubGroup | Add Connection Groups
*OASConnectionApi* | [**createOrUpdateConnection**](OASConnectionApi.md#createOrUpdateConnection) | **POST** /consumer/connection/add | Create or Update Connection
*OASConnectionApi* | [**createOrUpdateGroup**](OASConnectionApi.md#createOrUpdateGroup) | **POST** /consumer/connection/group | Create or Update Connection Group
*OASConnectionApi* | [**followAccept**](OASConnectionApi.md#followAccept) | **POST** /consumer/follow/accept | Accept Follow Request
*OASConnectionApi* | [**followReject**](OASConnectionApi.md#followReject) | **POST** /consumer/follow/reject | Reject Follow Request
*OASConnectionApi* | [**followRemove**](OASConnectionApi.md#followRemove) | **POST** /consumer/follow/remove | Remove Follower / Unfollow
*OASConnectionApi* | [**followRequest**](OASConnectionApi.md#followRequest) | **POST** /consumer/follow/request | Send Follow Request
*OASConnectionApi* | [**friendAccept**](OASConnectionApi.md#friendAccept) | **POST** /consumer/friend/accept | Accept Friend
*OASConnectionApi* | [**friendReject**](OASConnectionApi.md#friendReject) | **POST** /consumer/friend/reject | Decline Friend
*OASConnectionApi* | [**friendRemove**](OASConnectionApi.md#friendRemove) | **POST** /consumer/friend/remove | Delete Friend
*OASConnectionApi* | [**friendRequest**](OASConnectionApi.md#friendRequest) | **POST** /consumer/friend/request | Request Friend
*OASConnectionApi* | [**getConnectionSentFriendRequests**](OASConnectionApi.md#getConnectionSentFriendRequests) | **GET** /consumer/connection/getRequested | Get Sent Friend Requests
*OASConnectionApi* | [**getConnections**](OASConnectionApi.md#getConnections) | **GET** /consumer/connection/get | Search Connections
*OASConnectionApi* | [**getGroupDetails**](OASConnectionApi.md#getGroupDetails) | **GET** /consumer/connection/group/details/get | Get Connection Group
*OASConnectionApi* | [**groupSearch**](OASConnectionApi.md#groupSearch) | **GET** /connection/group/search | Search Connection Groups
*OASConnectionApi* | [**removeConnectionFromGroup**](OASConnectionApi.md#removeConnectionFromGroup) | **POST** /consumer/connection/group/removeConnection | Delete Connection
*OASConnectionApi* | [**removeConnectionsFromGroup**](OASConnectionApi.md#removeConnectionsFromGroup) | **POST** /connection/group/removeConnections | Remove Connections
*OASConnectionApi* | [**removeGroup**](OASConnectionApi.md#removeGroup) | **POST** /consumer/connection/group/remove | Delete Connection Group
*OASConnectionApi* | [**removeSubGroups**](OASConnectionApi.md#removeSubGroups) | **POST** /consumer/connection/group/removeSubGroup | Remove Connection Groups
*OASConnectionApi* | [**searchConnections**](OASConnectionApi.md#searchConnections) | **GET** /connection/search | Search Possible Connections
*OASContestApi* | [**addOrUpdateAlbumContest**](OASContestApi.md#addOrUpdateAlbumContest) | **POST** /consumer/album/contest | Create or Update Contest
*OASContestApi* | [**approveAlbumContest**](OASContestApi.md#approveAlbumContest) | **POST** /consumer/album/contest/approve | Approve Contest
*OASContestApi* | [**deleteContest**](OASContestApi.md#deleteContest) | **POST** /consumer/album/contest/remove | Delete Contest
*OASContestApi* | [**getAlbumContest**](OASContestApi.md#getAlbumContest) | **GET** /consumer/album/contest/get | Get Contest
*OASContestApi* | [**getAlbumContests**](OASContestApi.md#getAlbumContests) | **GET** /consumer/album/contest/search | Search Contests
*OASContestApi* | [**voteOnAlbumContest**](OASContestApi.md#voteOnAlbumContest) | **POST** /consumer/album/contest/vote | Vote on Contest
*OASCreativeApi* | [**addPreview**](OASCreativeApi.md#addPreview) | **POST** /creative/addpreview | Add Preview
*OASCreativeApi* | [**adsFind**](OASCreativeApi.md#adsFind) | **GET** /ads/find | Find Missions
*OASCreativeApi* | [**createCreative**](OASCreativeApi.md#createCreative) | **POST** /creative/create | Create Creative
*OASCreativeApi* | [**deleteCreative**](OASCreativeApi.md#deleteCreative) | **POST** /creative/delete | Delete Creative
*OASCreativeApi* | [**getCreative**](OASCreativeApi.md#getCreative) | **GET** /creative/get | Get Creative
*OASCreativeApi* | [**getCreativesByApplication**](OASCreativeApi.md#getCreativesByApplication) | **GET** /creative/search | Search Creatives
*OASCreativeApi* | [**removePreview**](OASCreativeApi.md#removePreview) | **POST** /creative/removepreview | Remove Preview
*OASCreativeApi* | [**updateCreative**](OASCreativeApi.md#updateCreative) | **POST** /creative/update | Update Creative
*OASDependentApi* | [**create**](OASDependentApi.md#create) | **PUT** /cargo/dependent/{accountId} | Create Dependent
*OASDependentApi* | [**getDependents**](OASDependentApi.md#getDependents) | **GET** /cargo/dependent/{accountId} | Get dependent list of an account
*OASDependentApi* | [**removeDependent**](OASDependentApi.md#removeDependent) | **DELETE** /cargo/dependent/{accountId} | Delete Dependent
*OASDisbursementApi* | [**checkDisbursements**](OASDisbursementApi.md#checkDisbursements) | **GET** /disbursement/check | Check Disbursements
*OASDisbursementApi* | [**createDisbursement**](OASDisbursementApi.md#createDisbursement) | **POST** /disbursement/create | Create Disbursement
*OASDisbursementApi* | [**getDisbursement**](OASDisbursementApi.md#getDisbursement) | **GET** /disbursement/get | Get Disbursement
*OASDisbursementApi* | [**searchDisbursements**](OASDisbursementApi.md#searchDisbursements) | **GET** /disbursement/search | Search Disbursements
*OASDisbursementApi* | [**updateDisbursement**](OASDisbursementApi.md#updateDisbursement) | **POST** /disbursement/update | Update Disbursement
*OASEmployeeApi* | [**assignEmployee**](OASEmployeeApi.md#assignEmployee) | **POST** /employee/assign | Assign Employee
*OASEmployeeApi* | [**assignToLocationEmployee**](OASEmployeeApi.md#assignToLocationEmployee) | **POST** /employee/assignToLocation | Assign Employee to Location
*OASEmployeeApi* | [**createEmployee**](OASEmployeeApi.md#createEmployee) | **POST** /employee/create | Create Employee
*OASEmployeeApi* | [**deleteEmployee**](OASEmployeeApi.md#deleteEmployee) | **POST** /employee/delete | Delete Employee
*OASEmployeeApi* | [**getEmployee**](OASEmployeeApi.md#getEmployee) | **POST** /employee/get | Get Employee
*OASEmployeeApi* | [**searchEmployees**](OASEmployeeApi.md#searchEmployees) | **POST** /employee/search | Search Employees
*OASEmployeeApi* | [**unassignEmployee**](OASEmployeeApi.md#unassignEmployee) | **POST** /employee/unassign | Unassign Employee
*OASEmployeeApi* | [**updateEmployee**](OASEmployeeApi.md#updateEmployee) | **POST** /employee/update | Update Employee
*OASEventApi* | [**attendEvent**](OASEventApi.md#attendEvent) | **POST** /event/attend | Attend Event
*OASEventApi* | [**createEvent**](OASEventApi.md#createEvent) | **POST** /event/create | Create Event
*OASEventApi* | [**deleteEvent**](OASEventApi.md#deleteEvent) | **POST** /event/delete | Delete Event
*OASEventApi* | [**getEvent**](OASEventApi.md#getEvent) | **GET** /event/get | Get Event
*OASEventApi* | [**searchEventTransactions**](OASEventApi.md#searchEventTransactions) | **GET** /event/attendance/search | Search Event Attendance
*OASEventApi* | [**searchEvents**](OASEventApi.md#searchEvents) | **GET** /event/search | Search Events
*OASEventApi* | [**updateEvent**](OASEventApi.md#updateEvent) | **POST** /event/update | Update Event
*OASFacebookApi* | [**getToken**](OASFacebookApi.md#getToken) | **GET** /facebook/getfbtoken | Get Facebook Token
*OASFacebookApi* | [**graphInterface**](OASFacebookApi.md#graphInterface) | **POST** /facebook/graph | Post to Facebook
*OASFavoriteApi* | [**addFavorite**](OASFavoriteApi.md#addFavorite) | **POST** /favorite/create | Create Favorite
*OASFavoriteApi* | [**deleteFavorite**](OASFavoriteApi.md#deleteFavorite) | **POST** /favorite/delete | Delete Favorite
*OASFavoriteApi* | [**getFavorite**](OASFavoriteApi.md#getFavorite) | **GET** /favorite/get | Get Favorite
*OASFavoriteApi* | [**searchFavorites**](OASFavoriteApi.md#searchFavorites) | **GET** /favorite/search | Search Favorites
*OASFavoriteApi* | [**whoHasFavorited**](OASFavoriteApi.md#whoHasFavorited) | **GET** /favorite/whois | Who has Favorited
*OASFilterApi* | [**createFilter**](OASFilterApi.md#createFilter) | **POST** /filter/create | Create Filter
*OASFilterApi* | [**deleteFilter**](OASFilterApi.md#deleteFilter) | **POST** /filter/delete | Delete Filter
*OASFilterApi* | [**getFilter**](OASFilterApi.md#getFilter) | **GET** /filter/get | Get Filter
*OASFilterApi* | [**searchFilters**](OASFilterApi.md#searchFilters) | **GET** /filter/search | Search Filters
*OASFilterApi* | [**updateFilter**](OASFilterApi.md#updateFilter) | **POST** /filter/update | Update Filter
*OASFlagApi* | [**createFlag**](OASFlagApi.md#createFlag) | **POST** /flag/create | Create Flag
*OASFlagApi* | [**deleteFlag**](OASFlagApi.md#deleteFlag) | **POST** /flag/delete | Delete Flag
*OASFlagApi* | [**getFlag**](OASFlagApi.md#getFlag) | **GET** /flag/get | Get Flag
*OASFlagApi* | [**getFlagThreshold**](OASFlagApi.md#getFlagThreshold) | **GET** /flag/threshold/get | Get Flag Threshold
*OASFlagApi* | [**updateFlagThreshold**](OASFlagApi.md#updateFlagThreshold) | **POST** /flag/threshold/update | Update Flag Threshold
*OASGameApi* | [**createGame**](OASGameApi.md#createGame) | **POST** /game/create | Create a Game
*OASGameApi* | [**deleteGame**](OASGameApi.md#deleteGame) | **POST** /game/delete | Delete a Game
*OASGameApi* | [**getGame**](OASGameApi.md#getGame) | **GET** /game/get | Get a Game by id
*OASGameApi* | [**searchGames**](OASGameApi.md#searchGames) | **GET** /game/search | Search a Game
*OASGameApi* | [**updateGame**](OASGameApi.md#updateGame) | **POST** /game/update | Update a Game
*OASGameLevelApi* | [**createGameLevel**](OASGameLevelApi.md#createGameLevel) | **POST** /level/create | Create Game Level
*OASGameLevelApi* | [**deleteGameLevel**](OASGameLevelApi.md#deleteGameLevel) | **POST** /level/delete | Delete Game Level
*OASGameLevelApi* | [**getGameLevel**](OASGameLevelApi.md#getGameLevel) | **GET** /level/get | Get Game Level
*OASGameLevelApi* | [**getGameLevelsByApplication**](OASGameLevelApi.md#getGameLevelsByApplication) | **GET** /level/search | Search Game Levels
*OASGameLevelApi* | [**getGameLevelsByBillableEntity**](OASGameLevelApi.md#getGameLevelsByBillableEntity) | **GET** /level/searchByBillableEntity | Search Game Level by Billable Entity
*OASGameLevelApi* | [**getQuestionsInLevel**](OASGameLevelApi.md#getQuestionsInLevel) | **GET** /level/questions/get | Get Level Questions
*OASGameLevelApi* | [**getWordsInLevel**](OASGameLevelApi.md#getWordsInLevel) | **GET** /level/words/get | Get Level Words
*OASGameLevelApi* | [**updateGameLevel**](OASGameLevelApi.md#updateGameLevel) | **POST** /level/update | Update Game Level
*OASGameLevelApi* | [**updateQuestionsInLevel**](OASGameLevelApi.md#updateQuestionsInLevel) | **POST** /level/questions/update | Update Level Questions
*OASGameLevelApi* | [**updateWordsInLevel**](OASGameLevelApi.md#updateWordsInLevel) | **POST** /level/words/update | Update Level Words
*OASInviteApi* | [**acceptInvite**](OASInviteApi.md#acceptInvite) | **POST** /invite/accept | Accept Invite
*OASInviteApi* | [**albumContestInvite**](OASInviteApi.md#albumContestInvite) | **POST** /invite/albumContest | Invite to Contest
*OASInviteApi* | [**albumInvite**](OASInviteApi.md#albumInvite) | **POST** /invite/album | Invite to Collection
*OASInviteApi* | [**eventInvite**](OASInviteApi.md#eventInvite) | **POST** /invite/event | Invite to Event
*OASInviteApi* | [**gameInvite**](OASInviteApi.md#gameInvite) | **POST** /invite/gameLevel | Invite to Game Level
*OASInviteApi* | [**getInvite**](OASInviteApi.md#getInvite) | **GET** /invite/get | Get Invite
*OASInviteApi* | [**missionInvite**](OASInviteApi.md#missionInvite) | **POST** /invite/mission | Invite to Mission
*OASInviteApi* | [**offerInvite**](OASInviteApi.md#offerInvite) | **POST** /invite/offer | Invite to Offer
*OASInviteApi* | [**offerLocationInvite**](OASInviteApi.md#offerLocationInvite) | **POST** /invite/offerLocation | Invite to Offer Location
*OASInviteApi* | [**retailerLocationInvite**](OASInviteApi.md#retailerLocationInvite) | **POST** /invite/retailerLocation | Invite to Retailer Location
*OASLeaderboardApi* | [**createLeaderboard**](OASLeaderboardApi.md#createLeaderboard) | **POST** /leaderboard/create | Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
*OASLeaderboardApi* | [**deleteLeaderboard**](OASLeaderboardApi.md#deleteLeaderboard) | **POST** /leaderboard/delete | Delete the Leader Board
*OASLeaderboardApi* | [**getLeaderboard**](OASLeaderboardApi.md#getLeaderboard) | **GET** /leaderboard/get | Read a leaderboard by id and retrieve the matching ranking list
*OASLeaderboardApi* | [**searchLeaderboards**](OASLeaderboardApi.md#searchLeaderboards) | **GET** /leaderboard/search | Search leaderboard and retrieve the matching ranking list
*OASLeaderboardApi* | [**updateLeaderboard**](OASLeaderboardApi.md#updateLeaderboard) | **POST** /leaderboard/update | Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
*OASLikeApi* | [**registerLike**](OASLikeApi.md#registerLike) | **POST** /like | Create Like
*OASLikeApi* | [**removeLike**](OASLikeApi.md#removeLike) | **POST** /like/delete | Delete Like
*OASLikeApi* | [**searchLikes**](OASLikeApi.md#searchLikes) | **GET** /like/search | Search Likes
*OASListingApi* | [**createListing**](OASListingApi.md#createListing) | **POST** /listing/create | Create Listing
*OASListingApi* | [**deleteListing**](OASListingApi.md#deleteListing) | **POST** /listing/delete | Delete Listing
*OASListingApi* | [**getListing**](OASListingApi.md#getListing) | **GET** /listing/get | Get Listing
*OASListingApi* | [**searchListing**](OASListingApi.md#searchListing) | **GET** /listing/search | Search Listings
*OASListingApi* | [**summaryListing**](OASListingApi.md#summaryListing) | **GET** /listing/summary | Summary Listing
*OASListingApi* | [**updateListing**](OASListingApi.md#updateListing) | **POST** /listing/update | Update Listing
*OASLocationApi* | [**cacheTrilaterationData**](OASLocationApi.md#cacheTrilaterationData) | **POST** /location/trilaterate/cache | Create Trilateration Data with File
*OASLocationApi* | [**cacheTrilaterationDataGzip**](OASLocationApi.md#cacheTrilaterationDataGzip) | **POST** /location/trilaterate/cache/submit | Create Trilateration Data with Rest
*OASLocationApi* | [**getLocationByIp**](OASLocationApi.md#getLocationByIp) | **GET** /location/ip | Get Location by IP
*OASLocationApi* | [**getLocationByTrilateration**](OASLocationApi.md#getLocationByTrilateration) | **GET** /account/location/trilaterate | Get Location by Trilateration
*OASLocationApi* | [**getLocations**](OASLocationApi.md#getLocations) | **GET** /location/search | Search Regions or Postal Codes
*OASLocationApiV2Api* | [**createLocationV2**](OASLocationApiV2Api.md#createLocationV2) | **POST** /location | Create new location
*OASLocationApiV2Api* | [**updateLocationV2**](OASLocationApiV2Api.md#updateLocationV2) | **POST** /location/{id} | Update an existing location
*OASMediaApi* | [**createMedia**](OASMediaApi.md#createMedia) | **POST** /media/create | Create Media
*OASMediaApi* | [**deleteMedia**](OASMediaApi.md#deleteMedia) | **POST** /media/delete | Delete Media
*OASMediaApi* | [**getMedia**](OASMediaApi.md#getMedia) | **GET** /media/get | Media Get
*OASMediaApi* | [**searchMedia**](OASMediaApi.md#searchMedia) | **GET** /media/search | Search Media
*OASMediaApi* | [**updateMedia**](OASMediaApi.md#updateMedia) | **POST** /media/update | Update Media
*OASMissionApi* | [**createMission**](OASMissionApi.md#createMission) | **POST** /mission/create | Create Mission
*OASMissionApi* | [**deleteMission**](OASMissionApi.md#deleteMission) | **POST** /mission/delete | Delete Mission
*OASMissionApi* | [**findMissions**](OASMissionApi.md#findMissions) | **GET** /mission/find | Find Missions
*OASMissionApi* | [**getMission**](OASMissionApi.md#getMission) | **GET** /mission/get | Get Mission
*OASMissionApi* | [**importMission**](OASMissionApi.md#importMission) | **POST** /mission/import | Import Mission
*OASMissionApi* | [**searchMissionFormats**](OASMissionApi.md#searchMissionFormats) | **GET** /mission/format/search | Search Mission Formats
*OASMissionApi* | [**searchMissions**](OASMissionApi.md#searchMissions) | **GET** /mission/search | Search Missions
*OASMissionApi* | [**searchMissionsByBillableEntity**](OASMissionApi.md#searchMissionsByBillableEntity) | **GET** /mission/searchByBillableEntity | Search Missions by Billable Entity
*OASMissionApi* | [**updateMission**](OASMissionApi.md#updateMission) | **POST** /mission/update | Update Mission
*OASMissionInviteApi* | [**createMissionInvite**](OASMissionInviteApi.md#createMissionInvite) | **POST** /mission/invite/create | Create Mission Invite
*OASMissionInviteApi* | [**deleteMissionInvite**](OASMissionInviteApi.md#deleteMissionInvite) | **POST** /mission/invite/delete | Delete Mission Invite
*OASMissionInviteApi* | [**getMissionInvite**](OASMissionInviteApi.md#getMissionInvite) | **GET** /mission/invite/get | Get Mission Invite
*OASMissionInviteApi* | [**searchMissionInvites**](OASMissionInviteApi.md#searchMissionInvites) | **GET** /mission/invite/search | Search Mission Invites
*OASMissionInviteApi* | [**updateMissionInvite**](OASMissionInviteApi.md#updateMissionInvite) | **POST** /mission/invite/update | Update Mission Invite
*OASNoteApi* | [**batchOperation**](OASNoteApi.md#batchOperation) | **POST** /note/batch | Batch Note Operation
*OASNoteApi* | [**createNote**](OASNoteApi.md#createNote) | **POST** /note/create | Create Note
*OASNoteApi* | [**deleteNote**](OASNoteApi.md#deleteNote) | **POST** /note/delete | Delete Note
*OASNoteApi* | [**getNote**](OASNoteApi.md#getNote) | **POST** /note/get | Get Note
*OASNoteApi* | [**searchNotes**](OASNoteApi.md#searchNotes) | **POST** /note/search | Search Notes
*OASNoteApi* | [**updateNote**](OASNoteApi.md#updateNote) | **POST** /note/update | Update Note
*OASNotificationApi* | [**createNotificationTemplate**](OASNotificationApi.md#createNotificationTemplate) | **POST** /notification/template/create | Create Notification Template
*OASNotificationApi* | [**createOrUpdateBlockedNotifications**](OASNotificationApi.md#createOrUpdateBlockedNotifications) | **POST** /notification/blocked/batch | Create or update blocked notification settings
*OASNotificationApi* | [**deleteNotificationTemplate**](OASNotificationApi.md#deleteNotificationTemplate) | **POST** /notification/template/delete | Delete Notification Template
*OASNotificationApi* | [**getNotificationTemplate**](OASNotificationApi.md#getNotificationTemplate) | **GET** /notification/template/get | Get Notification Template
*OASNotificationApi* | [**getNotifications**](OASNotificationApi.md#getNotifications) | **GET** /notification/search | Get Notifications
*OASNotificationApi* | [**registerNotificationToken**](OASNotificationApi.md#registerNotificationToken) | **POST** /notification/token | Register Notification Token
*OASNotificationApi* | [**searchBlockedNotifications**](OASNotificationApi.md#searchBlockedNotifications) | **GET** /notification/blocked/search | Search on the user\&#39;s blocked notification settings
*OASNotificationApi* | [**searchNotificationTemplate**](OASNotificationApi.md#searchNotificationTemplate) | **GET** /notification/template/search | Search Notification Templates
*OASNotificationApi* | [**searchRecipients**](OASNotificationApi.md#searchRecipients) | **GET** /notification/recipient/search | Search for Recipients
*OASNotificationApi* | [**searchRecipientsCount**](OASNotificationApi.md#searchRecipientsCount) | **GET** /notification/recipient/search/count | Search for Recipients (Counts/Grouped)
*OASNotificationApi* | [**sendBatchNotifications**](OASNotificationApi.md#sendBatchNotifications) | **POST** /notification/batch | Send Batch Notifications
*OASNotificationApi* | [**sendCustomNotifications**](OASNotificationApi.md#sendCustomNotifications) | **POST** /notification/custom | Send Custom Notifications
*OASNotificationApi* | [**updateNotificationTemplate**](OASNotificationApi.md#updateNotificationTemplate) | **POST** /notification/template/update | Update Notification Template
*OASObjectStoreApi* | [**addField**](OASObjectStoreApi.md#addField) | **POST** /object/field/add | Create Field
*OASObjectStoreApi* | [**createData**](OASObjectStoreApi.md#createData) | **POST** /object/data/{objectName} | Create Data
*OASObjectStoreApi* | [**createObject**](OASObjectStoreApi.md#createObject) | **POST** /object/create | Create Object
*OASObjectStoreApi* | [**deleteData**](OASObjectStoreApi.md#deleteData) | **DELETE** /object/data/{objectName}/{objectId} | Delete Data
*OASObjectStoreApi* | [**deleteField**](OASObjectStoreApi.md#deleteField) | **POST** /object/field/delete | Delete Field
*OASObjectStoreApi* | [**deleteObject**](OASObjectStoreApi.md#deleteObject) | **POST** /object/delete | Delete Object
*OASObjectStoreApi* | [**getData**](OASObjectStoreApi.md#getData) | **GET** /object/data/{objectName}/{objectId} | Get Data
*OASObjectStoreApi* | [**getObject**](OASObjectStoreApi.md#getObject) | **GET** /object/get | Get Object
*OASObjectStoreApi* | [**searchData**](OASObjectStoreApi.md#searchData) | **GET** /object/data/{objectName} | Search Data
*OASObjectStoreApi* | [**searchObject**](OASObjectStoreApi.md#searchObject) | **GET** /object/search | Search Objects
*OASObjectStoreApi* | [**updateData**](OASObjectStoreApi.md#updateData) | **PUT** /object/data/{objectName}/{objectId} | Update Data
*OASOfferApi* | [**batchUpdateOfferLocations**](OASOfferApi.md#batchUpdateOfferLocations) | **POST** /retailer/offer/location/batchUpdate | Update Offer Locations
*OASOfferApi* | [**createOffer**](OASOfferApi.md#createOffer) | **POST** /retailer/offer/create | Create Offer
*OASOfferApi* | [**deleteOffer**](OASOfferApi.md#deleteOffer) | **POST** /retailer/offer/delete | Delete Offer
*OASOfferApi* | [**deleteOfferLocation**](OASOfferApi.md#deleteOfferLocation) | **POST** /retailer/offer/location/delete | Delete Offer Location
*OASOfferApi* | [**getOffer**](OASOfferApi.md#getOffer) | **GET** /retailer/offer/get | Get Offer
*OASOfferApi* | [**getOfferDetails**](OASOfferApi.md#getOfferDetails) | **GET** /offer/get | Get Offer
*OASOfferApi* | [**getOfferListCounts**](OASOfferApi.md#getOfferListCounts) | **GET** /offer/lists/count | Get Offers (Counts)
*OASOfferApi* | [**getOfferLocation**](OASOfferApi.md#getOfferLocation) | **GET** /offer/location/get | Get Offer Location
*OASOfferApi* | [**getOfferLocationsForRetailers**](OASOfferApi.md#getOfferLocationsForRetailers) | **GET** /retailer/offer/location/search | Search Offer Locations
*OASOfferApi* | [**getOffersForRetailers**](OASOfferApi.md#getOffersForRetailers) | **GET** /retailer/offer/search | Search Offers
*OASOfferApi* | [**redeemOfferTransaction**](OASOfferApi.md#redeemOfferTransaction) | **POST** /retailer/offer/transaction/update | Update Offer Transaction
*OASOfferApi* | [**searchOfferTransactionsForRetailers**](OASOfferApi.md#searchOfferTransactionsForRetailers) | **GET** /retailer/offer/transaction/search | Search Offer Transactions
*OASOfferApi* | [**searchOffersForConsumer**](OASOfferApi.md#searchOffersForConsumer) | **GET** /offer/lists | Search Offers
*OASOfferApi* | [**topOfferTransactions**](OASOfferApi.md#topOfferTransactions) | **GET** /offer/top | Get Offers (Top)
*OASOfferApi* | [**updateOffer**](OASOfferApi.md#updateOffer) | **POST** /retailer/offer/update | Update Offer
*OASOfferApi* | [**updateOfferStatus**](OASOfferApi.md#updateOfferStatus) | **POST** /retailer/offer/status | Activate Offer
*OASOfferStatusApi* | [**createOfferTransactionStatus**](OASOfferStatusApi.md#createOfferTransactionStatus) | **POST** /offer/status/create | Create Offer Status
*OASOfferStatusApi* | [**deleteOfferTransactionStatus**](OASOfferStatusApi.md#deleteOfferTransactionStatus) | **POST** /offer/status/delete | Delete Offer Status
*OASOfferStatusApi* | [**getOfferTransactionStatus**](OASOfferStatusApi.md#getOfferTransactionStatus) | **GET** /offer/status/get | Get Offer Status
*OASOfferStatusApi* | [**searchOfferTransactionStatuses**](OASOfferStatusApi.md#searchOfferTransactionStatuses) | **GET** /offer/status/search | Search Offer Status
*OASOfferStatusApi* | [**updateOfferTransactionStatus**](OASOfferStatusApi.md#updateOfferTransactionStatus) | **POST** /offer/status/update | Update Offer Status
*OASOpenAIApi* | [**imageGeneration**](OASOpenAIApi.md#imageGeneration) | **POST** /openai/v1/images/generations | Generate images with OpenAI
*OASOptimizeApi* | [**getOptimizationResult**](OASOptimizeApi.md#getOptimizationResult) | **GET** /optimize/result/{batchID} | Get Optimization Result
*OASOptimizeApi* | [**requestOptimization**](OASOptimizeApi.md#requestOptimization) | **POST** /optimize/request | Request Optimization
*OASOrsonApi* | [**addMovie**](OASOrsonApi.md#addMovie) | **POST** /orson/ai/addMovie | Add Movie
*OASOrsonApi* | [**aiDocs**](OASOrsonApi.md#aiDocs) | **GET** /orson/ai/docs | Search Docs
*OASOrsonApi* | [**aiFindImages**](OASOrsonApi.md#aiFindImages) | **GET** /orson/ai/img | Find images
*OASOrsonApi* | [**aiTags**](OASOrsonApi.md#aiTags) | **GET** /orson/ai/tags | Search Tags
*OASOrsonApi* | [**aiText**](OASOrsonApi.md#aiText) | **GET** /orson/ai/text | Search Text
*OASOrsonApi* | [**batch**](OASOrsonApi.md#batch) | **POST** /orson/ai/batch | Batch Analysis
*OASOrsonApi* | [**createInstantEpisode**](OASOrsonApi.md#createInstantEpisode) | **POST** /orson/stories/episodes/instant | Creates an instant episode
*OASOrsonApi* | [**createVoiceCanvas**](OASOrsonApi.md#createVoiceCanvas) | **POST** /orson/ai/voiceCanvas | Create VoiceCanvas images
*OASOrsonApi* | [**emotion**](OASOrsonApi.md#emotion) | **POST** /orson/ai/emotion | Detect emotions
*OASOrsonApi* | [**getAddMovieResult**](OASOrsonApi.md#getAddMovieResult) | **GET** /orson/ai/addMovie/{requestId} | Get Add Movie Result
*OASOrsonApi* | [**getBatch**](OASOrsonApi.md#getBatch) | **GET** /orson/ai/batch/{requestId} | Get Batch Analysis Results
*OASOrsonApi* | [**getEmotion**](OASOrsonApi.md#getEmotion) | **GET** /orson/ai/emotion/{requestId} | Get Emotion Results
*OASOrsonApi* | [**getEpisodeStatus**](OASOrsonApi.md#getEpisodeStatus) | **GET** /orson/stories/episodes/{episodeId}/status | Check episode status
*OASOrsonApi* | [**getRenderStatus**](OASOrsonApi.md#getRenderStatus) | **GET** /orson/stories/renders/{renderId}/status | Check episode status
*OASOrsonApi* | [**getSTT**](OASOrsonApi.md#getSTT) | **GET** /orson/ai/stt/{requestId} | Get Speach to Text Result
*OASOrsonApi* | [**getTTS**](OASOrsonApi.md#getTTS) | **GET** /orson/ai/tts/{requestId} | Get Text to Speach Result
*OASOrsonApi* | [**getTechTune**](OASOrsonApi.md#getTechTune) | **GET** /orson/ai/techTune/{requestId} | Get TechTune Results
*OASOrsonApi* | [**getTopics**](OASOrsonApi.md#getTopics) | **GET** /orson/ai/topics/{requestId} | Get Topics
*OASOrsonApi* | [**getVoiceCanvas**](OASOrsonApi.md#getVoiceCanvas) | **GET** /orson/ai/voiceCanvas/{requestId} | Get VoiceCanvas images
*OASOrsonApi* | [**startVideoRender**](OASOrsonApi.md#startVideoRender) | **POST** /orson/stories/renders | Starts a StoryStitch video render
*OASOrsonApi* | [**stt**](OASOrsonApi.md#stt) | **POST** /orson/ai/stt | Speach to Text
*OASOrsonApi* | [**summarizeTopics**](OASOrsonApi.md#summarizeTopics) | **POST** /orson/ai/topics | Summarize Topics
*OASOrsonApi* | [**techTune**](OASOrsonApi.md#techTune) | **POST** /orson/ai/techTune | Detect Technical Issues
*OASOrsonApi* | [**tts**](OASOrsonApi.md#tts) | **POST** /orson/ai/tts | Text to Speach
*OASPackApi* | [**createPack**](OASPackApi.md#createPack) | **POST** /pack/create | Create Pack
*OASPackApi* | [**deletePack**](OASPackApi.md#deletePack) | **POST** /pack/delete | Delete Pack
*OASPackApi* | [**getPack**](OASPackApi.md#getPack) | **GET** /pack/get | Get Pack
*OASPackApi* | [**searchPacks**](OASPackApi.md#searchPacks) | **GET** /pack/search | Search Packs
*OASPackApi* | [**updatePack**](OASPackApi.md#updatePack) | **POST** /pack/update | Update Pack
*OASParticipantsApi* | [**processAllParticipants**](OASParticipantsApi.md#processAllParticipants) | **POST** /participant/process/all | Process All Participant Feeds
*OASParticipantsApi* | [**processParticipants**](OASParticipantsApi.md#processParticipants) | **POST** /participant/process | Process Participants Feed
*OASPathingApi* | [**computePath**](OASPathingApi.md#computePath) | **GET** /pathing/compute | Calculate Path
*OASPostalCodeApi* | [**createPostalCode**](OASPostalCodeApi.md#createPostalCode) | **POST** /postalCode/create | Create Postal Code
*OASPostalCodeApi* | [**deletePostalCode**](OASPostalCodeApi.md#deletePostalCode) | **POST** /postalCode/delete | Delete Postal Code
*OASPostalCodeApi* | [**getPostalCode**](OASPostalCodeApi.md#getPostalCode) | **GET** /postalCode/get | Get Postal Code
*OASPostalCodeApi* | [**getPostalCodes**](OASPostalCodeApi.md#getPostalCodes) | **GET** /postalCode/search | Search Postal Codes
*OASPostalCodeApi* | [**updatePostalCode**](OASPostalCodeApi.md#updatePostalCode) | **POST** /postalCode/update | Update Postal Code
*OASPreviewPersonaApi* | [**createPersona**](OASPreviewPersonaApi.md#createPersona) | **POST** /persona/create | Create Persona
*OASPreviewPersonaApi* | [**deletePersona**](OASPreviewPersonaApi.md#deletePersona) | **POST** /persona/delete | Delete Persona
*OASPreviewPersonaApi* | [**getPersonaList**](OASPreviewPersonaApi.md#getPersonaList) | **GET** /persona/get | Get Persona
*OASPreviewPersonaApi* | [**searchPersona**](OASPreviewPersonaApi.md#searchPersona) | **GET** /persona/search | Search Personas
*OASPreviewPersonaApi* | [**updatePersona**](OASPreviewPersonaApi.md#updatePersona) | **POST** /persona/update | Update Persona
*OASProgramApi* | [**createProgram**](OASProgramApi.md#createProgram) | **POST** /program | Create Program
*OASProgramApi* | [**deleteProgram**](OASProgramApi.md#deleteProgram) | **DELETE** /program/{id} | Delete Program
*OASProgramApi* | [**getProgram**](OASProgramApi.md#getProgram) | **GET** /program/{id} | Get Program
*OASProgramApi* | [**postProgram**](OASProgramApi.md#postProgram) | **POST** /program/{id} | Update Program
*OASProgramApi* | [**putProgram**](OASProgramApi.md#putProgram) | **PUT** /program/{id} | Update Program
*OASProgramApi* | [**searchPrograms**](OASProgramApi.md#searchPrograms) | **GET** /program | Search Programs
*OASPurchaseItemApi* | [**createPurchaseItem**](OASPurchaseItemApi.md#createPurchaseItem) | **POST** /purchase/create | Create Purchase
*OASPurchaseItemApi* | [**deletePurchaseItem**](OASPurchaseItemApi.md#deletePurchaseItem) | **POST** /purchase/delete | Delete Purchase
*OASPurchaseItemApi* | [**getPurchaseItem**](OASPurchaseItemApi.md#getPurchaseItem) | **GET** /purchase/get | Get Purchase
*OASPurchaseItemApi* | [**searchPurchaseItems**](OASPurchaseItemApi.md#searchPurchaseItems) | **GET** /purchase/search | Search Purchases
*OASPurchaseItemApi* | [**updatePurchaseItem**](OASPurchaseItemApi.md#updatePurchaseItem) | **POST** /purchase/update | Update Purchase
*OASPurchaseOrderApi* | [**createOrder**](OASPurchaseOrderApi.md#createOrder) | **POST** /order/create | Create Order
*OASPurchaseOrderApi* | [**deleteOrder**](OASPurchaseOrderApi.md#deleteOrder) | **POST** /order/delete | Delete Order
*OASPurchaseOrderApi* | [**getOrder**](OASPurchaseOrderApi.md#getOrder) | **GET** /order/get | Get Order
*OASPurchaseOrderApi* | [**previewOrder**](OASPurchaseOrderApi.md#previewOrder) | **POST** /order/preview | Preview Order
*OASPurchaseOrderApi* | [**searchOrders**](OASPurchaseOrderApi.md#searchOrders) | **GET** /order/search | Search Orders
*OASPurchaseOrderApi* | [**updateOrder**](OASPurchaseOrderApi.md#updateOrder) | **POST** /order/update | Update Order
*OASQuestionApi* | [**createQuestion**](OASQuestionApi.md#createQuestion) | **POST** /game/question/create | Create Question
*OASQuestionApi* | [**deleteQuestion**](OASQuestionApi.md#deleteQuestion) | **POST** /game/question/delete | Delete Question
*OASQuestionApi* | [**getQuestion**](OASQuestionApi.md#getQuestion) | **GET** /game/question/get | Get Question
*OASQuestionApi* | [**searchQuestions**](OASQuestionApi.md#searchQuestions) | **GET** /game/question/search | Search Questions
*OASQuestionApi* | [**updateQuestion**](OASQuestionApi.md#updateQuestion) | **POST** /game/question/update | Update Question
*OASRankingApi* | [**getHistoricalRankings**](OASRankingApi.md#getHistoricalRankings) | **GET** /ranking/historical/search | Search Historical Rankings
*OASRankingApi* | [**getRankings**](OASRankingApi.md#getRankings) | **GET** /ranking/search | Search Rankings
*OASRankingApi* | [**getUserRank**](OASRankingApi.md#getUserRank) | **POST** /ranking/personal/ranks | Get Personal Rankings
*OASRankingApi* | [**overrideUserRank**](OASRankingApi.md#overrideUserRank) | **POST** /ranking/override | Override User Rank
*OASRankingApi* | [**updateRankings**](OASRankingApi.md#updateRankings) | **POST** /ranking/update | Update Ranking
*OASRatingApi* | [**createRating**](OASRatingApi.md#createRating) | **POST** /rating/create | Create Rating
*OASRatingApi* | [**deleteRating**](OASRatingApi.md#deleteRating) | **POST** /rating/delete | Delete Rating
*OASRatingApi* | [**searchLocationRatingIndexes**](OASRatingApi.md#searchLocationRatingIndexes) | **GET** /location/rating/index/search | Search Location Rating Indexes
*OASRatingApi* | [**searchRatingIndexes**](OASRatingApi.md#searchRatingIndexes) | **GET** /rating/index/search | Search Rating Indexes
*OASRatingApi* | [**searchRatings**](OASRatingApi.md#searchRatings) | **GET** /rating/search | Search Ratings
*OASRatingApi* | [**updateRating**](OASRatingApi.md#updateRating) | **POST** /rating/update | Update Rating
*OASRegionApi* | [**createRegion**](OASRegionApi.md#createRegion) | **POST** /region/create | Create Region
*OASRegionApi* | [**deleteRegion**](OASRegionApi.md#deleteRegion) | **POST** /region/delete | Delete Region
*OASRegionApi* | [**getRegion**](OASRegionApi.md#getRegion) | **GET** /region/get | Get Region
*OASRegionApi* | [**searchRegions**](OASRegionApi.md#searchRegions) | **GET** /region/search | Search Regions
*OASRegionApi* | [**updateRegion**](OASRegionApi.md#updateRegion) | **POST** /region/update | Update Region
*OASReportingApi* | [**createBatch**](OASReportingApi.md#createBatch) | **POST** /report/batch/create | Create Offline Report
*OASReportingApi* | [**createRegionLegSummaryBatch**](OASReportingApi.md#createRegionLegSummaryBatch) | **POST** /report/region/summary/batch | Create Offline Report
*OASReportingApi* | [**deleteBatch**](OASReportingApi.md#deleteBatch) | **POST** /report/batch/delete | Delete Offline Report
*OASReportingApi* | [**getReportBatch**](OASReportingApi.md#getReportBatch) | **GET** /report/batch/get | Get Offline Report
*OASReportingApi* | [**runReport**](OASReportingApi.md#runReport) | **POST** /report/run | Run Report
*OASReportingApi* | [**searchBatch**](OASReportingApi.md#searchBatch) | **GET** /report/batch/search | Search Offline Reports
*OASReservationApi* | [**createReservation**](OASReservationApi.md#createReservation) | **POST** /reservation/create | Create Reservation
*OASReservationApi* | [**deleteReservation**](OASReservationApi.md#deleteReservation) | **POST** /reservation/delete | Delete Reservation
*OASReservationApi* | [**reservableAvailability**](OASReservationApi.md#reservableAvailability) | **POST** /reservable/availability/update | Update Availability
*OASReservationApi* | [**searchAvailability**](OASReservationApi.md#searchAvailability) | **GET** /reservable/availability/search | Search Availability
*OASReservationApi* | [**searchReservations**](OASReservationApi.md#searchReservations) | **GET** /reservation/search | Search Reservations
*OASReservationApi* | [**searchSchedule**](OASReservationApi.md#searchSchedule) | **GET** /reservable/schedule/search | Search Schedule
*OASRetailerApi* | [**createRetailer**](OASRetailerApi.md#createRetailer) | **POST** /retailer/create | Create Retailer
*OASRetailerApi* | [**deleteRetailer**](OASRetailerApi.md#deleteRetailer) | **POST** /retailer/delete | Delete Retailer
*OASRetailerApi* | [**getRetailer**](OASRetailerApi.md#getRetailer) | **GET** /retailer/get | Get Retailer
*OASRetailerApi* | [**getRetailers**](OASRetailerApi.md#getRetailers) | **GET** /retailer/search | Search Retailers
*OASRetailerApi* | [**retailerLoginCheck**](OASRetailerApi.md#retailerLoginCheck) | **POST** /retailer/login | Login Retailer
*OASRetailerApi* | [**updateRetailer**](OASRetailerApi.md#updateRetailer) | **POST** /retailer/update | Update Retailer
*OASRetailerLocationApi* | [**createRetailerLocationConsumer**](OASRetailerLocationApi.md#createRetailerLocationConsumer) | **POST** /location/create | Create Retailer Location (Consumer)
*OASRetailerLocationApi* | [**createRetailerLocations**](OASRetailerLocationApi.md#createRetailerLocations) | **POST** /retailer/location/create | Create Retailer Location
*OASRetailerLocationApi* | [**deleteRetailerLocation**](OASRetailerLocationApi.md#deleteRetailerLocation) | **POST** /retailer/location/delete | Delete Retailer Location
*OASRetailerLocationApi* | [**getRetailerLocation**](OASRetailerLocationApi.md#getRetailerLocation) | **GET** /retailer/location/get | Get Retailer Location
*OASRetailerLocationApi* | [**getRetailerLocationConsumer**](OASRetailerLocationApi.md#getRetailerLocationConsumer) | **GET** /location/get | Get Retailer Location (Consumer)
*OASRetailerLocationApi* | [**indexedRetailerLocationDistanceSearch**](OASRetailerLocationApi.md#indexedRetailerLocationDistanceSearch) | **GET** /retailer/location/idistancesearch | Distance Search Retailer Locations (Indexed)
*OASRetailerLocationApi* | [**indexedRetailerLocationSearch**](OASRetailerLocationApi.md#indexedRetailerLocationSearch) | **GET** /retailer/location/isearch | Keyword Search Retailer Locations (Indexed)
*OASRetailerLocationApi* | [**searchRetailerLocations**](OASRetailerLocationApi.md#searchRetailerLocations) | **GET** /retailer/location/search | Search Retailer Locations (Owned)
*OASRetailerLocationApi* | [**updateRetailerLocations**](OASRetailerLocationApi.md#updateRetailerLocations) | **POST** /retailer/location/update | Update Retailer Location
*OASRetailerV2Api* | [**getRetaokiler**](OASRetailerV2Api.md#getRetaokiler) | **GET** /retailer | Get Retailer
*OASRouteApi* | [**approveRoute**](OASRouteApi.md#approveRoute) | **POST** /route/{routeId}/approve | Approve Route
*OASRouteApi* | [**copyRoute**](OASRouteApi.md#copyRoute) | **POST** /route/{routeId}/copy | Copy Route
*OASRouteApi* | [**createRoute**](OASRouteApi.md#createRoute) | **POST** /route | Create Route
*OASRouteApi* | [**createRouteDirections**](OASRouteApi.md#createRouteDirections) | **PUT** /route/{routeId}/directions | Update Route Directions
*OASRouteApi* | [**createRoutePolyline**](OASRouteApi.md#createRoutePolyline) | **PUT** /route/{routeId}/polyline | Create Route Polyline
*OASRouteApi* | [**deleteRoute**](OASRouteApi.md#deleteRoute) | **DELETE** /route/{routeId} | Delete Route
*OASRouteApi* | [**disapproveRoute**](OASRouteApi.md#disapproveRoute) | **POST** /route/{routeId}/disapprove | Disapprove Route
*OASRouteApi* | [**getRoute**](OASRouteApi.md#getRoute) | **GET** /route/{routeId} | Get Route
*OASRouteApi* | [**getRouteDirections**](OASRouteApi.md#getRouteDirections) | **GET** /route/{routeId}/directions | Get Route Directions
*OASRouteApi* | [**getRouteShipments**](OASRouteApi.md#getRouteShipments) | **GET** /route/{routeId}/shipments | Get Route Shipments
*OASRouteApi* | [**getRouteStop**](OASRouteApi.md#getRouteStop) | **GET** /route/{routeId}/stop/{stopId} | Get Route Stop
*OASRouteApi* | [**getRouteStops**](OASRouteApi.md#getRouteStops) | **GET** /route/{routeId}/stops | Get Route Stops
*OASRouteApi* | [**getShipmentsAtStop**](OASRouteApi.md#getShipmentsAtStop) | **GET** /route/{routeId}/stop/{stopId}/shipments | Get Shipments At Stop
*OASRouteApi* | [**optimizeRoute**](OASRouteApi.md#optimizeRoute) | **POST** /route/{routeId}/optimize | Optimize Route
*OASRouteApi* | [**removeStop**](OASRouteApi.md#removeStop) | **DELETE** /route/{routeId}/stop/{stopId} | Delete Stop
*OASRouteApi* | [**reorderRouteStopsPatch**](OASRouteApi.md#reorderRouteStopsPatch) | **PATCH** /route/{routeId}/stops/reorder | Reorder Route Stops
*OASRouteApi* | [**reorderRouteStopsPost**](OASRouteApi.md#reorderRouteStopsPost) | **POST** /route/{routeId}/stops/reorder | Reorder Route Stops
*OASRouteApi* | [**searchRoutes**](OASRouteApi.md#searchRoutes) | **GET** /route | Search Routes
*OASRouteApi* | [**setDriver**](OASRouteApi.md#setDriver) | **POST** /route/{id}/driver/{driverId} | Set Driver
*OASRouteApi* | [**updateRoute**](OASRouteApi.md#updateRoute) | **PUT** /route/{routeId} | Update Route
*OASRouteApi* | [**updateRouteStop**](OASRouteApi.md#updateRouteStop) | **PUT** /route/{routeId}/stop/{stopId} | Update Route Stop
*OASRouteSettingApi* | [**createRouteSettings**](OASRouteSettingApi.md#createRouteSettings) | **POST** /route/setting | Create Route Setting
*OASRouteSettingApi* | [**deleteRouteSettings**](OASRouteSettingApi.md#deleteRouteSettings) | **DELETE** /route/setting/{routeSettingsId} | Delete Route Setting
*OASRouteSettingApi* | [**getRouteSettings**](OASRouteSettingApi.md#getRouteSettings) | **GET** /route/setting/{routeSettingsId} | Get Route Setting
*OASRouteSettingApi* | [**searchRouteSettings**](OASRouteSettingApi.md#searchRouteSettings) | **GET** /route/setting | Search Route Settings
*OASRouteSettingApi* | [**updateRouteSettings**](OASRouteSettingApi.md#updateRouteSettings) | **PUT** /route/setting/{routeSettingsId} | Update Route Setting
*OASRoutingApi* | [**computeRouting**](OASRoutingApi.md#computeRouting) | **POST** /routing/compute | Compute Route
*OASScheduledNotificationApi* | [**createScheduledNotification**](OASScheduledNotificationApi.md#createScheduledNotification) | **POST** /notification/schedule/create | Create Scheduled Notification
*OASScheduledNotificationApi* | [**deleteScheduledNotification**](OASScheduledNotificationApi.md#deleteScheduledNotification) | **POST** /notification/schedule/delete | Delete Scheduled Notification
*OASScheduledNotificationApi* | [**getScheduledNotification**](OASScheduledNotificationApi.md#getScheduledNotification) | **GET** /notification/schedule/get | Get Scheduled Notification
*OASScheduledNotificationApi* | [**scheduleNotificationListings**](OASScheduledNotificationApi.md#scheduleNotificationListings) | **POST** /notification/schedule/generate | Generate Schedule Notifications
*OASScheduledNotificationApi* | [**searchScheduledNotifications**](OASScheduledNotificationApi.md#searchScheduledNotifications) | **GET** /notification/schedule/search | Search Scheduled Notifications
*OASScheduledNotificationApi* | [**updateScheduledNotification**](OASScheduledNotificationApi.md#updateScheduledNotification) | **POST** /notification/schedule/update | Update Scheduled Notification
*OASScoreApi* | [**createScore**](OASScoreApi.md#createScore) | **POST** /score/create | Create Score
*OASScoreApi* | [**getScore**](OASScoreApi.md#getScore) | **GET** /score/get | Get Score
*OASScoreApi* | [**searchScores**](OASScoreApi.md#searchScores) | **GET** /score/search | Search Score
*OASSecureAppApi* | [**createSecureApplication**](OASSecureAppApi.md#createSecureApplication) | **POST** /secure/application/create | Create Secure Application
*OASSecureAppApi* | [**deleteSecureApplication**](OASSecureAppApi.md#deleteSecureApplication) | **POST** /secure/application/delete | Delete Secure Application
*OASSecureAppApi* | [**loginSecure**](OASSecureAppApi.md#loginSecure) | **POST** /secure/login | Login Clear
*OASSecureAppApi* | [**purchaseSecure**](OASSecureAppApi.md#purchaseSecure) | **POST** /secure/purchase | Purchase Clear
*OASSecureAppApi* | [**resetSecure**](OASSecureAppApi.md#resetSecure) | **POST** /secure/application/reset | Rest Secure Application
*OASSecureAppApi* | [**updateSecureApplication**](OASSecureAppApi.md#updateSecureApplication) | **POST** /secure/application/update | Update Secure Application
*OASServiceHubApi* | [**createServiceHub**](OASServiceHubApi.md#createServiceHub) | **POST** /hub | Create Service Hub
*OASServiceHubApi* | [**deleteServiceHub**](OASServiceHubApi.md#deleteServiceHub) | **DELETE** /hub/{id} | Delete Service Hub
*OASServiceHubApi* | [**getServiceHub**](OASServiceHubApi.md#getServiceHub) | **GET** /hub/{id} | Get Service Hub
*OASServiceHubApi* | [**postServiceHub**](OASServiceHubApi.md#postServiceHub) | **POST** /hub/{id} | Update Service Hub
*OASServiceHubApi* | [**putServiceHub**](OASServiceHubApi.md#putServiceHub) | **PUT** /hub/{id} | Update Service Hub
*OASServiceHubApi* | [**searchServiceHubs**](OASServiceHubApi.md#searchServiceHubs) | **GET** /hub | Search Service Hubs
*OASShipmentApi* | [**cancelShipment**](OASShipmentApi.md#cancelShipment) | **POST** /shipment/{id}/cancel | Cancel Shipment
*OASShipmentApi* | [**createShipment**](OASShipmentApi.md#createShipment) | **POST** /shipment | Create Shipment
*OASShipmentApi* | [**deleteShipment**](OASShipmentApi.md#deleteShipment) | **DELETE** /shipment/{id} | Delete Shipment
*OASShipmentApi* | [**getShipment**](OASShipmentApi.md#getShipment) | **GET** /shipment/{id} | Get Shipment
*OASShipmentApi* | [**searchShipments**](OASShipmentApi.md#searchShipments) | **GET** /shipment | Search Shipments
*OASShipmentApi* | [**updateShipment**](OASShipmentApi.md#updateShipment) | **PUT** /shipment/{id} | Update Shipment
*OASShipmentApi* | [**updateShipmentStatus**](OASShipmentApi.md#updateShipmentStatus) | **POST** /shipment/{id}/status | Uupdate Shipment Status
*OASShipmentBatchApi* | [**createShipmentBatch**](OASShipmentBatchApi.md#createShipmentBatch) | **POST** /shipment/batch | Create Shipment Batch
*OASShipmentBatchApi* | [**deleteShipmentBatch**](OASShipmentBatchApi.md#deleteShipmentBatch) | **DELETE** /shipment/batch/{batchId} | Delete Shipment Batch
*OASShipmentBatchApi* | [**getShipmentBatch**](OASShipmentBatchApi.md#getShipmentBatch) | **GET** /shipment/batch/{batchId} | Get Shipment Batch
*OASShipmentBatchApi* | [**getShipmentBatchStatus**](OASShipmentBatchApi.md#getShipmentBatchStatus) | **GET** /shipment/batch/{batchId}/status | Get Shipment Batch Status
*OASShipmentBatchApi* | [**searchShipmentBatch**](OASShipmentBatchApi.md#searchShipmentBatch) | **GET** /shipment/batch | Search Shipment Batch
*OASSimulationApi* | [**simulation**](OASSimulationApi.md#simulation) | **POST** /simulation/routing | Routing Simulation
*OASStopApi* | [**getStop**](OASStopApi.md#getStop) | **GET** /stop/{id} | Get Stop
*OASStopApi* | [**updateStop**](OASStopApi.md#updateStop) | **PUT** /stop/{id} | Update Stop
*OASStripeApi* | [**createStripeCheckoutSession**](OASStripeApi.md#createStripeCheckoutSession) | **POST** /stripe/checkout/session/create | Create Stripe Checkout Session
*OASSubscriptionApi* | [**createSubscription**](OASSubscriptionApi.md#createSubscription) | **POST** /subscription/create | Create Subscription
*OASSubscriptionApi* | [**deleteSubscription**](OASSubscriptionApi.md#deleteSubscription) | **POST** /subscription/delete | Delete Subscription
*OASSubscriptionApi* | [**getSubscription**](OASSubscriptionApi.md#getSubscription) | **GET** /subscription/get | Get Subscription
*OASSubscriptionApi* | [**getSubscriptionPlan**](OASSubscriptionApi.md#getSubscriptionPlan) | **GET** /subscription/plan/get | Get Subscription Plan
*OASSubscriptionApi* | [**getSubscriptionPlans**](OASSubscriptionApi.md#getSubscriptionPlans) | **GET** /subscription/plan/list | List Subscription Plans
*OASSubscriptionApi* | [**getSubscriptionUsage**](OASSubscriptionApi.md#getSubscriptionUsage) | **GET** /subscription/usage/get | Get Subscription Usage
*OASSubscriptionApi* | [**updateSubscription**](OASSubscriptionApi.md#updateSubscription) | **POST** /subscription/update | Update Subscription
*OASTaskApi* | [**createTask**](OASTaskApi.md#createTask) | **POST** /task/create | Create Task
*OASTaskApi* | [**deleteTask**](OASTaskApi.md#deleteTask) | **POST** /task/delete | Delete Task
*OASTaskApi* | [**getTask**](OASTaskApi.md#getTask) | **GET** /task/get | Get Task
*OASTaskApi* | [**searchTasks**](OASTaskApi.md#searchTasks) | **GET** /task/search | Search Tasks
*OASTaskApi* | [**updateTask**](OASTaskApi.md#updateTask) | **POST** /task/update | Update Task
*OASTerritoryApi* | [**createTerritory**](OASTerritoryApi.md#createTerritory) | **POST** /territory/create | Create Territory
*OASTerritoryApi* | [**deleteTerritory**](OASTerritoryApi.md#deleteTerritory) | **POST** /territory/delete | Delete Territory
*OASTerritoryApi* | [**getTerritory**](OASTerritoryApi.md#getTerritory) | **GET** /territory/get | Get Territory
*OASTerritoryApi* | [**searchTerritories**](OASTerritoryApi.md#searchTerritories) | **GET** /territory/search | Search Territories
*OASTerritoryApi* | [**updateTerritory**](OASTerritoryApi.md#updateTerritory) | **POST** /territory/update | Update Territory
*OASThemeDescriptorApi* | [**addOrUpdateThemeDescriptor**](OASThemeDescriptorApi.md#addOrUpdateThemeDescriptor) | **POST** /consumer/theme | Create/Update Theme
*OASThemeDescriptorApi* | [**getThemeDescriptor**](OASThemeDescriptorApi.md#getThemeDescriptor) | **GET** /consumer/theme/get | Get Theme
*OASThemeDescriptorApi* | [**getThemeDescriptors**](OASThemeDescriptorApi.md#getThemeDescriptors) | **GET** /consumer/theme/search | Search Themes
*OASThemeDescriptorApi* | [**removeThemeDescriptor**](OASThemeDescriptorApi.md#removeThemeDescriptor) | **POST** /consumer/theme/remove | Delete Theme
*OASThirdPartyCredentialsApi* | [**createCredential**](OASThirdPartyCredentialsApi.md#createCredential) | **POST** /thirdparty/credential/create | Create Credential
*OASThirdPartyCredentialsApi* | [**createNetwork**](OASThirdPartyCredentialsApi.md#createNetwork) | **POST** /thirdparty/network/create | Create Network
*OASThirdPartyCredentialsApi* | [**deleteCredential**](OASThirdPartyCredentialsApi.md#deleteCredential) | **POST** /thirdparty/credential/delete | Delete Credential
*OASThirdPartyCredentialsApi* | [**deleteNetwork**](OASThirdPartyCredentialsApi.md#deleteNetwork) | **POST** /thirdparty/network/delete | Delete Network
*OASThirdPartyCredentialsApi* | [**getCredential**](OASThirdPartyCredentialsApi.md#getCredential) | **POST** /thirdparty/credential/get | Get Credential
*OASThirdPartyCredentialsApi* | [**getNetwork**](OASThirdPartyCredentialsApi.md#getNetwork) | **GET** /thirdparty/network/get | Get Network
*OASThirdPartyCredentialsApi* | [**searchCredentials**](OASThirdPartyCredentialsApi.md#searchCredentials) | **GET** /thirdparty/credential/search | Search Credentials
*OASThirdPartyCredentialsApi* | [**searchNetworks**](OASThirdPartyCredentialsApi.md#searchNetworks) | **GET** /thirdparty/network/search | Search Networks
*OASThirdPartyCredentialsApi* | [**sendMFAChallenge**](OASThirdPartyCredentialsApi.md#sendMFAChallenge) | **POST** /thirdparty/credential/mfa/send | Send MFA Challenge
*OASThirdPartyCredentialsApi* | [**updateCredential**](OASThirdPartyCredentialsApi.md#updateCredential) | **POST** /thirdparty/credential/update | Update Credential
*OASThirdPartyCredentialsApi* | [**updateNetwork**](OASThirdPartyCredentialsApi.md#updateNetwork) | **POST** /thirdparty/network/update | Update Network
*OASTicketApi* | [**getTicketCount**](OASTicketApi.md#getTicketCount) | **GET** /ticket/count | Get Ticket Count
*OASTicketApi* | [**getTicketList**](OASTicketApi.md#getTicketList) | **GET** /ticket/getList | Get Ticket List
*OASTicketApi* | [**giftPurchase**](OASTicketApi.md#giftPurchase) | **POST** /purchase/gift | Gift Tickets
*OASTicketApi* | [**saveTicket**](OASTicketApi.md#saveTicket) | **POST** /ticket/save | Save Ticket
*OASTicketApi* | [**saveTicketViaFileUpload**](OASTicketApi.md#saveTicketViaFileUpload) | **POST** /ticket/save/fileUpload | Save Ticket with Reciept
*OASTicketApi* | [**ticketOffers**](OASTicketApi.md#ticketOffers) | **GET** /ticket/ticketoffers | Get Ticket Offers
*OASTournamentApi* | [**createTournament**](OASTournamentApi.md#createTournament) | **POST** /tournament/create | Create Tournament
*OASTournamentApi* | [**deleteTournament**](OASTournamentApi.md#deleteTournament) | **POST** /tournament/delete | Delete Tournament
*OASTournamentApi* | [**getTournament**](OASTournamentApi.md#getTournament) | **GET** /tournament/get | Get Tournament
*OASTournamentApi* | [**searchObjects**](OASTournamentApi.md#searchObjects) | **GET** /tournament/object/search | Search Tournament Objects
*OASTournamentApi* | [**searchRounds**](OASTournamentApi.md#searchRounds) | **GET** /tournament/round/search | Search Tournament Rounds
*OASTournamentApi* | [**searchTournaments**](OASTournamentApi.md#searchTournaments) | **GET** /tournament/search | Search Tournaments
*OASTournamentApi* | [**submitTournamentScore**](OASTournamentApi.md#submitTournamentScore) | **POST** /tournament/score | Submit Tournament Score
*OASTournamentApi* | [**submitTournamentVote**](OASTournamentApi.md#submitTournamentVote) | **POST** /tournament/vote | Submit a vote for a multi-stage album tournament.
*OASTournamentApi* | [**substituteTournamentPlayer**](OASTournamentApi.md#substituteTournamentPlayer) | **POST** /tournament/substitute | Substitute Tournament Player
*OASTournamentApi* | [**updateTournament**](OASTournamentApi.md#updateTournament) | **POST** /tournament/update | Update Tournament
*OASTrackingApi* | [**batchSaveTracking**](OASTrackingApi.md#batchSaveTracking) | **POST** /tracking/batch/create | Create Batch Tracking
*OASTrackingApi* | [**getPredictedLocations**](OASTrackingApi.md#getPredictedLocations) | **GET** /tracking/predicted/get | Get Predicted Locations
*OASTrackingApi* | [**getPredictedPath**](OASTrackingApi.md#getPredictedPath) | **GET** /tracking/path/get | Get Tracking Path
*OASTrackingApi* | [**getPreferredLocations**](OASTrackingApi.md#getPreferredLocations) | **GET** /tracking/preferred/search | Search Preferred Locations
*OASTrackingApi* | [**getTrackingLegs**](OASTrackingApi.md#getTrackingLegs) | **GET** /tracking/search | Search Tracking
*OASTrackingApi* | [**saveTrackingLeg**](OASTrackingApi.md#saveTrackingLeg) | **POST** /tracking/leg/create | Create Tracking Leg
*OASTrackingApi* | [**saveTrackingStep**](OASTrackingApi.md#saveTrackingStep) | **POST** /tracking/step/create | Create Tracking Step
*OASTrackingApi* | [**searchAccountsWithTrackingLegs**](OASTrackingApi.md#searchAccountsWithTrackingLegs) | **GET** /tracking/list | List Tracking
*OASTrackingApi* | [**searchTrackingLegs**](OASTrackingApi.md#searchTrackingLegs) | **GET** /tracking/searchByBillable | Search Tracking (Billable)
*OASTriggerApi* | [**createTrigger**](OASTriggerApi.md#createTrigger) | **POST** /trigger/create | Create Trigger
*OASTriggerApi* | [**deleteTrigger**](OASTriggerApi.md#deleteTrigger) | **POST** /trigger/delete | Delete Trigger
*OASTriggerApi* | [**getTrigger**](OASTriggerApi.md#getTrigger) | **GET** /trigger/get | Get Trigger
*OASTriggerApi* | [**searchTriggers**](OASTriggerApi.md#searchTriggers) | **GET** /trigger/search | Search Triggers
*OASTriggerApi* | [**updateTrigger**](OASTriggerApi.md#updateTrigger) | **POST** /trigger/update | Update Trigger
*OASTripApi* | [**callDelete**](OASTripApi.md#callDelete) | **DELETE** /trip/{id} | Delete Trip
*OASTripApi* | [**createTrip**](OASTripApi.md#createTrip) | **POST** /trip | Create Trip
*OASTripApi* | [**driveTrip**](OASTripApi.md#driveTrip) | **POST** /trip/{id}/drive | Set Trip Preference Driver
*OASTripApi* | [**flexibleTrip**](OASTripApi.md#flexibleTrip) | **POST** /trip/{id}/flexible | Set Trip Preference Flexible
*OASTripApi* | [**getTrip**](OASTripApi.md#getTrip) | **GET** /trip/{id} | Get Trip
*OASTripApi* | [**getTripMatches**](OASTripApi.md#getTripMatches) | **GET** /trip/{id}/match | Get Trip Matches
*OASTripApi* | [**processTripMatches**](OASTripApi.md#processTripMatches) | **POST** /trip/match/process | Process Trip Matches
*OASTripApi* | [**ride**](OASTripApi.md#ride) | **POST** /trip/{id}/ride | Set Trip Preference Rider
*OASTripApi* | [**search**](OASTripApi.md#search) | **GET** /trip | Search Trips
*OASTripApi* | [**searchTrips**](OASTripApi.md#searchTrips) | **GET** /trip/match | Search Trips
*OASTripApi* | [**updateLocations**](OASTripApi.md#updateLocations) | **POST** /trip/{id}/locations | Update Trip Locations
*OASTripApi* | [**updateRecurrenceLocations**](OASTripApi.md#updateRecurrenceLocations) | **POST** /trip/{id}/locations/recurrence | Update Recurrence Locations
*OASTripApi* | [**updateRecurrenceShipments**](OASTripApi.md#updateRecurrenceShipments) | **POST** /trip/{id}/shipments/recurrence | Update Recurrence Shipments
*OASTripApi* | [**updateShipments**](OASTripApi.md#updateShipments) | **POST** /trip/{id}/shipments | Update Trip Shipments
*OASTripApi* | [**updateTrip**](OASTripApi.md#updateTrip) | **PUT** /trip/{id} | Update Trip
*OASTripApi* | [**updateTripNotifications**](OASTripApi.md#updateTripNotifications) | **POST** /trip/notifications | Trip Notifications
*OASTwilioApi* | [**smsBuyOffer**](OASTwilioApi.md#smsBuyOffer) | **POST** /sms/buyoffer/{appKey} | Buy Offer by SMS
*OASTwitterApi* | [**authorizeTwitter**](OASTwitterApi.md#authorizeTwitter) | **POST** /twitter/authorize | Authorize Twitter
*OASTwitterApi* | [**loginTwitter**](OASTwitterApi.md#loginTwitter) | **POST** /twitter/login | Login Twitter
*OASUserPermissionsApi* | [**addUsersToPermissionable**](OASUserPermissionsApi.md#addUsersToPermissionable) | **POST** /consumer/permissions/add | Add User
*OASUserPermissionsApi* | [**approvePermissionable**](OASUserPermissionsApi.md#approvePermissionable) | **POST** /permissionable/approve | Approve Permissionable
*OASUserPermissionsApi* | [**leaveFromPermissionable**](OASUserPermissionsApi.md#leaveFromPermissionable) | **POST** /consumer/permissions/leave | Leave
*OASUserPermissionsApi* | [**removeUsersFromPermissionable**](OASUserPermissionsApi.md#removeUsersFromPermissionable) | **POST** /consumer/permissions/remove | Remove User
*OASUserPermissionsApi* | [**searchPermissionables**](OASUserPermissionsApi.md#searchPermissionables) | **GET** /permissions/search | Search Permissionables
*OASUserPermissionsApi* | [**searchPermissionablesFollowingDistance**](OASUserPermissionsApi.md#searchPermissionablesFollowingDistance) | **GET** /permissions/distancesearch | Search Permissionables by Distnace
*OASVatomApi* | [**createFollowing**](OASVatomApi.md#createFollowing) | **POST** /vatom/me/rels/following/create | Create following
*OASVatomApi* | [**createSpace**](OASVatomApi.md#createSpace) | **POST** /vatom/b/spaces/create | Create Vatom Space
*OASVatomApi* | [**createVatomEvent**](OASVatomApi.md#createVatomEvent) | **POST** /vatom/b/events/create | Create Vatom Event
*OASVatomApi* | [**deleteFollowing**](OASVatomApi.md#deleteFollowing) | **POST** /vatom/me/rels/following/delete | Delete following
*OASVatomApi* | [**deletePointsBalance**](OASVatomApi.md#deletePointsBalance) | **POST** /vatom/b/campaign/points/delete | Reset All Points Balance
*OASVatomApi* | [**deleteSpace**](OASVatomApi.md#deleteSpace) | **POST** /vatom/b/spaces/delete | Delete Vatom Space
*OASVatomApi* | [**deleteVatomEvent**](OASVatomApi.md#deleteVatomEvent) | **POST** /vatom/b/events/delete | Delete Vatom Event
*OASVatomApi* | [**deleteVatomNFT**](OASVatomApi.md#deleteVatomNFT) | **POST** /vatom/vatoms/delete | Delete Vatom NFT
*OASVatomApi* | [**executeActionOnNFT**](OASVatomApi.md#executeActionOnNFT) | **POST** /vatom/vatoms/execute-action | Execute Action on NFT
*OASVatomApi* | [**geomapSearch**](OASVatomApi.md#geomapSearch) | **GET** /vatom/vatoms/geo-map/search | Search Vatom Geo Map
*OASVatomApi* | [**getBusinessBehaviors**](OASVatomApi.md#getBusinessBehaviors) | **GET** /vatom/b/behaviors | Get Vatom Business Behaviors
*OASVatomApi* | [**getBusinessCoinsBalance**](OASVatomApi.md#getBusinessCoinsBalance) | **GET** /vatom/b/coins/get | Get the coins for a Business
*OASVatomApi* | [**getBusinessIds**](OASVatomApi.md#getBusinessIds) | **GET** /vatom/me/businesses | Get the user business ids
*OASVatomApi* | [**getBusinessInfo**](OASVatomApi.md#getBusinessInfo) | **GET** /vatom/b/get | Get Vatom Business Info
*OASVatomApi* | [**getBusinessUsers**](OASVatomApi.md#getBusinessUsers) | **GET** /vatom/b/users | Get Vatom Business Users
*OASVatomApi* | [**getCampaignGroupEntities**](OASVatomApi.md#getCampaignGroupEntities) | **GET** /vatom/b/campaign-groups/entities | Get Campaign Group Entities
*OASVatomApi* | [**getCampaignGroupRules**](OASVatomApi.md#getCampaignGroupRules) | **GET** /vatom/b/campaign-groups/rules | Get Campaign Group Rules
*OASVatomApi* | [**getCampaignGroupStats**](OASVatomApi.md#getCampaignGroupStats) | **GET** /vatom/b/campaign-groups/stats | Get Campaign Group Stats
*OASVatomApi* | [**getCampaignInfo**](OASVatomApi.md#getCampaignInfo) | **GET** /vatom/b/campaign-groups/get | Get Campaign Info
*OASVatomApi* | [**getEventGuestList**](OASVatomApi.md#getEventGuestList) | **GET** /vatom/b/events/guests/get | Get Vatom Event Guest List
*OASVatomApi* | [**getInventory**](OASVatomApi.md#getInventory) | **GET** /vatom/me/inventory | Get Vatom User\&#39;s Inventory
*OASVatomApi* | [**getMyFollowing**](OASVatomApi.md#getMyFollowing) | **GET** /vatom/me/rels/following | Get following
*OASVatomApi* | [**getPointsBalance**](OASVatomApi.md#getPointsBalance) | **GET** /vatom/u/campaign/points/get | Get Points Balance
*OASVatomApi* | [**getPointsBalanceAsBusiness**](OASVatomApi.md#getPointsBalanceAsBusiness) | **GET** /vatom/b/campaign/u/points/get | Get Points Balance as Business
*OASVatomApi* | [**getSpace**](OASVatomApi.md#getSpace) | **GET** /vatom/b/spaces/get | Get Vatom Space
*OASVatomApi* | [**getUserCoinsAsBusiness**](OASVatomApi.md#getUserCoinsAsBusiness) | **GET** /vatom/b/users/coins/get | Get the coins for a user (as a Business)
*OASVatomApi* | [**getUserCoinsBalance**](OASVatomApi.md#getUserCoinsBalance) | **GET** /vatom/u/coins/get | Gets the coins balance for a Vatom User
*OASVatomApi* | [**getUserFollowers**](OASVatomApi.md#getUserFollowers) | **GET** /vatom/users/rels/followers | Get user followers
*OASVatomApi* | [**getUserFollowing**](OASVatomApi.md#getUserFollowing) | **GET** /vatom/users/rels/following | Get user following
*OASVatomApi* | [**getUserInfo**](OASVatomApi.md#getUserInfo) | **GET** /vatom/user/get | Get User Info
*OASVatomApi* | [**getUserProfile**](OASVatomApi.md#getUserProfile) | **GET** /vatom/me/get | Get Vatom User Profile
*OASVatomApi* | [**getVatomEvent**](OASVatomApi.md#getVatomEvent) | **GET** /vatom/b/events/get | Get Vatom Event
*OASVatomApi* | [**getVatomNFT**](OASVatomApi.md#getVatomNFT) | **GET** /vatom/vatoms/get | Get Vatom NFT Details
*OASVatomApi* | [**listCommunities**](OASVatomApi.md#listCommunities) | **GET** /vatom/b/communities/search | List Vatom Communities
*OASVatomApi* | [**listEvents**](OASVatomApi.md#listEvents) | **GET** /vatom/b/events/search | List Vatom Events
*OASVatomApi* | [**listSpaces**](OASVatomApi.md#listSpaces) | **GET** /vatom/b/spaces/search | List Vatom Spaces
*OASVatomApi* | [**listUserCoinTransactions**](OASVatomApi.md#listUserCoinTransactions) | **GET** /vatom/u/coins/txns/search | List Coin Transactions for a Vatom User
*OASVatomApi* | [**listUserCoinTransactionsAsBusiness**](OASVatomApi.md#listUserCoinTransactionsAsBusiness) | **GET** /vatom/b/users/coins/txns/search | List coin transactions for a user (as a Business)
*OASVatomApi* | [**performActionOnNFT**](OASVatomApi.md#performActionOnNFT) | **POST** /vatom/me/vatoms/actions | Perform Action on NFT
*OASVatomApi* | [**redeemNFT**](OASVatomApi.md#redeemNFT) | **POST** /vatom/b/redemptions | Redeem NFT
*OASVatomApi* | [**redeemUserCoinsAsBusiness**](OASVatomApi.md#redeemUserCoinsAsBusiness) | **POST** /vatom/b/users/coins/redeem | Redeem the coins for a user (as a Business)
*OASVatomApi* | [**searchBusinesses**](OASVatomApi.md#searchBusinesses) | **GET** /vatom/b/search | Search for Vatom Businesses
*OASVatomApi* | [**searchCampaignGroups**](OASVatomApi.md#searchCampaignGroups) | **GET** /vatom/b/campaign-groups/search | Search Campaign Groups
*OASVatomApi* | [**searchIdentities**](OASVatomApi.md#searchIdentities) | **GET** /vatom/me/identities/search | Search User Identities
*OASVatomApi* | [**searchInventory**](OASVatomApi.md#searchInventory) | **GET** /vatom/user-inventory/search | Search Vatom User\&#39;s Inventory
*OASVatomApi* | [**sendNFT**](OASVatomApi.md#sendNFT) | **POST** /vatom/b/campaigns/send | Send NFT
*OASVatomApi* | [**setPointsBalanceAsBusiness**](OASVatomApi.md#setPointsBalanceAsBusiness) | **POST** /vatom/b/campaign/u/points/update | Set Points Balance as Business
*OASVatomApi* | [**transferUserCoins**](OASVatomApi.md#transferUserCoins) | **POST** /vatom/u/coins/transfer | Transfer coins from Vatom Users
*OASVatomApi* | [**updateBusinessCoins**](OASVatomApi.md#updateBusinessCoins) | **POST** /vatom/b/coins/update | Fund coins for a Business
*OASVatomApi* | [**updateEventGuestList**](OASVatomApi.md#updateEventGuestList) | **POST** /vatom/b/events/guests/update | Update Vatom Event Guest List
*OASVatomApi* | [**updateSpace**](OASVatomApi.md#updateSpace) | **POST** /vatom/b/spaces/update | Update Vatom Space
*OASVatomApi* | [**updateUserCoinsAsBusiness**](OASVatomApi.md#updateUserCoinsAsBusiness) | **POST** /vatom/b/users/coins/update | Update the coins for a user (as a Business)
*OASVatomApi* | [**updateUserProfile**](OASVatomApi.md#updateUserProfile) | **POST** /vatom/me/update | Update Vatom User Profile
*OASVatomApi* | [**updateVatomEvent**](OASVatomApi.md#updateVatomEvent) | **POST** /vatom/b/events/update | Update Vatom Event
*OASVehicleApi* | [**createVehicle**](OASVehicleApi.md#createVehicle) | **POST** /vehicle | Create Vehicle
*OASVehicleApi* | [**deleteVehicle**](OASVehicleApi.md#deleteVehicle) | **DELETE** /vehicle/{id} | Delete Vehicle
*OASVehicleApi* | [**getVehicle**](OASVehicleApi.md#getVehicle) | **GET** /vehicle/{id} | Get Vehicle
*OASVehicleApi* | [**searchVehicle**](OASVehicleApi.md#searchVehicle) | **GET** /vehicle | Search Vehicle
*OASVehicleApi* | [**updateVehicle**](OASVehicleApi.md#updateVehicle) | **PUT** /vehicle/{id} | Update Vehicle
*OASVehicleTypeApi* | [**createVehicleType**](OASVehicleTypeApi.md#createVehicleType) | **POST** /vehicle/type | Create Vehicle Type
*OASVehicleTypeApi* | [**deleteVehicleType**](OASVehicleTypeApi.md#deleteVehicleType) | **DELETE** /vehicle/type/{vehicleTypeId} | Delete Vehicle Type
*OASVehicleTypeApi* | [**getVehicleType**](OASVehicleTypeApi.md#getVehicleType) | **GET** /vehicle/type/{vehicleTypeId} | Get Vehicle Type
*OASVehicleTypeApi* | [**searchVehicleTypes**](OASVehicleTypeApi.md#searchVehicleTypes) | **GET** /vehicle/type | Search Vehicle Type
*OASVehicleTypeApi* | [**updateVehicleType**](OASVehicleTypeApi.md#updateVehicleType) | **PUT** /vehicle/type/{vehicleTypeId} | Update Vehicle Type
*OASWalletApi* | [**createOfferTransaction**](OASWalletApi.md#createOfferTransaction) | **POST** /wallet/create | Create Wallet Offers
*OASWalletApi* | [**deleteOfferTransaction**](OASWalletApi.md#deleteOfferTransaction) | **POST** /wallet/delete | Delete Wallet Offer
*OASWalletApi* | [**getOfferTransaction**](OASWalletApi.md#getOfferTransaction) | **GET** /wallet/get | Get Wallet Offer
*OASWalletApi* | [**previewOfferTransaction**](OASWalletApi.md#previewOfferTransaction) | **POST** /wallet/preview | Preview Wallet Offers
*OASWalletApi* | [**searchOfferTransactions**](OASWalletApi.md#searchOfferTransactions) | **GET** /wallet/search | Search Wallet Offers
*OASWalletApi* | [**updateOfferTransaction**](OASWalletApi.md#updateOfferTransaction) | **POST** /wallet/update | Update Wallet Offer
*OASWeatherApi* | [**searchWeather**](OASWeatherApi.md#searchWeather) | **GET** /weather/search | Search Weather
*OASWordApi* | [**createWord**](OASWordApi.md#createWord) | **POST** /game/word/create | Create Word
*OASWordApi* | [**deleteWord**](OASWordApi.md#deleteWord) | **DELETE** /game/word/delete | Delete Word
*OASWordApi* | [**getWord**](OASWordApi.md#getWord) | **GET** /game/word/get | Get Word
*OASWordApi* | [**getWords**](OASWordApi.md#getWords) | **GET** /game/word/search | Search Words
*OASWordApi* | [**updateWord**](OASWordApi.md#updateWord) | **POST** /game/word/update | Update Word
*OASWorkflowApi* | [**runWorkflow**](OASWorkflowApi.md#runWorkflow) | **POST** /workflow/run | Run Workflow


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

