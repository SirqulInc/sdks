# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.AMQPApi;

public class AMQPApiExample {

    public static void main(String[] args) {
        AMQPApi apiInstance = new AMQPApi();
        String appKey = null; // String | The application key to use when creating an analytic or service request. The account needs to have permissions to the applicaton or it will be denied.
        String name = null; // String | The name of the queue to connect to
        String hostname = null; // String | The hostname of the server the queue is hosted on
        String username = null; // String | The username to access the server the queue is hosted on
        String password = null; // String | The password to access the queue to connect to
        String dataMapping = null; // String | The data mapping information in the format of AMQPRequest
        String deviceId = null; // String | The client deviceID
        Long accountId = null; // Long | The logged in user ID
        Integer port = 5672; // Integer | The port of the server the queue is hosted on
        String virtualHost = null; // String | The virtual host defined on the server the queue is associated on
        String exchanger = null; // String | The exchanger of the queue to connect to
        String exchangerType = null; // String | The exchanger type of the queue to connect to
        Integer workers = 1; // Integer | The number of workers to generate 
        Boolean useSSL = null; // Boolean | Use SSL
        try {
            QueueResponse result = apiInstance.consumerCreate(appKey, name, hostname, username, password, dataMapping, deviceId, accountId, port, virtualHost, exchanger, exchangerType, workers, useSSL);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AMQPApi#consumerCreate");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://dev.sirqul.com/api/3.18*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AMQPApi* | [**consumerCreate**](docs/AMQPApi.md#consumerCreate) | **POST** /queue/consumer/create | Create Consumer
*AMQPApi* | [**consumerUpdate**](docs/AMQPApi.md#consumerUpdate) | **POST** /queue/consumer/update | Update Consumer
*AMQPApi* | [**queueCreate**](docs/AMQPApi.md#queueCreate) | **POST** /queue/create | Create Queue
*AMQPApi* | [**queueDelete**](docs/AMQPApi.md#queueDelete) | **POST** /queue/delete | Delete Queue
*AMQPApi* | [**queueGet**](docs/AMQPApi.md#queueGet) | **GET** /queue/get | Get Queue
*AMQPApi* | [**queuePublish**](docs/AMQPApi.md#queuePublish) | **POST** /queue/publish | Publish Queue
*AMQPApi* | [**queueSearch**](docs/AMQPApi.md#queueSearch) | **GET** /queue/search | Search Queue
*AMQPApi* | [**queueUpdate**](docs/AMQPApi.md#queueUpdate) | **POST** /queue/update | Update Queue
*AccountApi* | [**accountLocationSearch**](docs/AccountApi.md#accountLocationSearch) | **GET** /account/search | Search Accounts by Location
*AccountApi* | [**blockAccount**](docs/AccountApi.md#blockAccount) | **POST** /account/block | Block Account
*AccountApi* | [**createAccount**](docs/AccountApi.md#createAccount) | **POST** /account/create | Create Account
*AccountApi* | [**editAccount**](docs/AccountApi.md#editAccount) | **POST** /account/profile/update | Update Account
*AccountApi* | [**editUsername**](docs/AccountApi.md#editUsername) | **POST** /account/username/update | Update Username and Email
*AccountApi* | [**getAccount**](docs/AccountApi.md#getAccount) | **GET** /account/profile/get | Get Account
*AccountApi* | [**getProfileAssets**](docs/AccountApi.md#getProfileAssets) | **GET** /account/profile/assets | Get Profile Assets
*AccountApi* | [**getReferralList**](docs/AccountApi.md#getReferralList) | **GET** /account/referral/list | Search Accounts
*AccountApi* | [**getSettings**](docs/AccountApi.md#getSettings) | **GET** /account/settings/get | Get Account Settings
*AccountApi* | [**loginDelegate**](docs/AccountApi.md#loginDelegate) | **POST** /account/login/delegate | Login as Account
*AccountApi* | [**loginGeneral**](docs/AccountApi.md#loginGeneral) | **POST** /account/login | Login Account
*AccountApi* | [**loginUsername**](docs/AccountApi.md#loginUsername) | **POST** /account/get | Login Account (Username)
*AccountApi* | [**logout**](docs/AccountApi.md#logout) | **POST** /account/logout | Logout Account
*AccountApi* | [**mergeAccount**](docs/AccountApi.md#mergeAccount) | **POST** /account/merge | Merge Account
*AccountApi* | [**passwordChange**](docs/AccountApi.md#passwordChange) | **POST** /account/passwordchange | Update Password
*AccountApi* | [**passwordReset**](docs/AccountApi.md#passwordReset) | **POST** /account/passwordreset | Reset Password
*AccountApi* | [**requestPasswordReset**](docs/AccountApi.md#requestPasswordReset) | **POST** /account/requestpasswordreset | Request Password Reset
*AccountApi* | [**requestValidateAccount**](docs/AccountApi.md#requestValidateAccount) | **POST** /account/requestValidateAccount | Send Validation Request
*AccountApi* | [**searchAccounts**](docs/AccountApi.md#searchAccounts) | **GET** /account/profile/search | Search Accounts
*AccountApi* | [**secureLogin**](docs/AccountApi.md#secureLogin) | **POST** /account/login/validate | Login Account (Encrypted Username)
*AccountApi* | [**secureSignup**](docs/AccountApi.md#secureSignup) | **POST** /account/create/validate | Create Account (Encrypted Username)
*AccountApi* | [**setMatchToken**](docs/AccountApi.md#setMatchToken) | **POST** /consumer/profile/matchToken | Save Match Token
*AccountApi* | [**updateActveStatus**](docs/AccountApi.md#updateActveStatus) | **POST** /account/active/update | Update Account Active Status
*AccountApi* | [**updateLocation**](docs/AccountApi.md#updateLocation) | **POST** /account/location/update | Update Location
*AccountApi* | [**updateSettings**](docs/AccountApi.md#updateSettings) | **POST** /account/settings/update | Update Account Settings
*AccountApi* | [**validateAccountSignup**](docs/AccountApi.md#validateAccountSignup) | **POST** /account/validateAccountSignup | Save Validation Status
*AccountApi* | [**validatePasswordReset**](docs/AccountApi.md#validatePasswordReset) | **POST** /account/validatepasswordreset | Validate Password Reset Token
*AchievementApi* | [**achievementTierSearchPost**](docs/AchievementApi.md#achievementTierSearchPost) | **POST** /achievement/tier/search | Searches an Achievement Tier
*AchievementApi* | [**createAchievement**](docs/AchievementApi.md#createAchievement) | **POST** /achievement/create | Create Achievement
*AchievementApi* | [**createAchievementTier**](docs/AchievementApi.md#createAchievementTier) | **POST** /achievement/tier/create | Create Achievement Tier
*AchievementApi* | [**deleteAchievement**](docs/AchievementApi.md#deleteAchievement) | **POST** /achievement/delete | Delete Achievement
*AchievementApi* | [**deleteAchievementTier**](docs/AchievementApi.md#deleteAchievementTier) | **POST** /achievement/tier/delete | Delete Achievement Tier
*AchievementApi* | [**getAchievement**](docs/AchievementApi.md#getAchievement) | **GET** /achievement/get | Get Achievement
*AchievementApi* | [**getAchievementTier**](docs/AchievementApi.md#getAchievementTier) | **POST** /achievement/tier/get | Gets an achievement tier
*AchievementApi* | [**getUserAchievements**](docs/AchievementApi.md#getUserAchievements) | **GET** /achievement/progress/get | Get Achievement Progress
*AchievementApi* | [**listAchievementTags**](docs/AchievementApi.md#listAchievementTags) | **GET** /achievement/tag/list | List Achievement Tags
*AchievementApi* | [**listAchievements**](docs/AchievementApi.md#listAchievements) | **GET** /achievement/list | List Achievements
*AchievementApi* | [**searchAchievements**](docs/AchievementApi.md#searchAchievements) | **GET** /achievement/search | Search Achievements
*AchievementApi* | [**updateAchievement**](docs/AchievementApi.md#updateAchievement) | **POST** /achievement/update | Update Achievement
*AchievementApi* | [**updateAchievementTier**](docs/AchievementApi.md#updateAchievementTier) | **POST** /achievement/tier/update | Update Achievement Tier
*AchievementApi* | [**updateUserAchievement**](docs/AchievementApi.md#updateUserAchievement) | **POST** /achievement/progress/update | Update Achievement Progress
*ActivityApi* | [**createEntityReference**](docs/ActivityApi.md#createEntityReference) | **POST** /entity/reference | Create an entity reference.
*AlbumApi* | [**addAlbumCollection**](docs/AlbumApi.md#addAlbumCollection) | **POST** /album/create | Create Album
*AlbumApi* | [**addAlbumUsers**](docs/AlbumApi.md#addAlbumUsers) | **POST** /album/user/add | Add Album Users
*AlbumApi* | [**approveAlbum**](docs/AlbumApi.md#approveAlbum) | **POST** /album/approve | Approve Album
*AlbumApi* | [**getAlbumCollection**](docs/AlbumApi.md#getAlbumCollection) | **GET** /album/get |  Get Album
*AlbumApi* | [**leaveAlbum**](docs/AlbumApi.md#leaveAlbum) | **POST** /album/user/leave | Leave Album
*AlbumApi* | [**removeAlbum**](docs/AlbumApi.md#removeAlbum) | **POST** /album/delete | Delete Album
*AlbumApi* | [**removeAlbumUsers**](docs/AlbumApi.md#removeAlbumUsers) | **POST** /album/user/delete | Remove Album Users
*AlbumApi* | [**searchAlbums**](docs/AlbumApi.md#searchAlbums) | **GET** /album/search | Search Albums
*AlbumApi* | [**updateAlbumCollection**](docs/AlbumApi.md#updateAlbumCollection) | **POST** /album/update | Update Album
*AnalyticsApi* | [**activities**](docs/AnalyticsApi.md#activities) | **GET** /analytics/useractivity | Get User Activity
*AnalyticsApi* | [**aggregatedFilteredUsage**](docs/AnalyticsApi.md#aggregatedFilteredUsage) | **GET** /analytics/aggregatedFilteredUsage | Get Aggregated Filtered Usage
*AnalyticsApi* | [**filteredUsage**](docs/AnalyticsApi.md#filteredUsage) | **GET** /analytics/filteredUsage | Get Filtered Usage
*AnalyticsApi* | [**usage**](docs/AnalyticsApi.md#usage) | **POST** /analytics/usage | Create Usage Record
*AnalyticsApi* | [**usageBatch**](docs/AnalyticsApi.md#usageBatch) | **POST** /analytics/usage/batch | Create Multiple Usage Records
*AppDataApi* | [**getAppData**](docs/AppDataApi.md#getAppData) | **GET** /app/get | Get App Data
*AppDataApi* | [**postAppData**](docs/AppDataApi.md#postAppData) | **POST** /app/post | Create App Data
*AppDataApi* | [**regenAppData**](docs/AppDataApi.md#regenAppData) | **POST** /app/regen | Regenerate App Data
*ApplicationApi* | [**createApplication**](docs/ApplicationApi.md#createApplication) | **POST** /application/create | Create Application
*ApplicationApi* | [**createApplicationPlacement**](docs/ApplicationApi.md#createApplicationPlacement) | **POST** /application/placement/create | Create Ad Placement
*ApplicationApi* | [**deleteApplication**](docs/ApplicationApi.md#deleteApplication) | **POST** /application/delete | Delete Application
*ApplicationApi* | [**deleteApplicationPlacement**](docs/ApplicationApi.md#deleteApplicationPlacement) | **POST** /application/placement/delete | Delete Ad Placement
*ApplicationApi* | [**getApplication**](docs/ApplicationApi.md#getApplication) | **GET** /application/get | Get Application
*ApplicationApi* | [**getApplicationPlacement**](docs/ApplicationApi.md#getApplicationPlacement) | **GET** /application/placement/get | Get Ad Placement
*ApplicationApi* | [**getApplicationVersions**](docs/ApplicationApi.md#getApplicationVersions) | **GET** /application/versions | Get API versions
*ApplicationApi* | [**getUniqueUsersByApp**](docs/ApplicationApi.md#getUniqueUsersByApp) | **GET** /application/users | Search Application Users
*ApplicationApi* | [**listApplications**](docs/ApplicationApi.md#listApplications) | **GET** /application/list | List Applications
*ApplicationApi* | [**searchApplicationPlacement**](docs/ApplicationApi.md#searchApplicationPlacement) | **GET** /application/placement/search | Search for Ad Placements
*ApplicationApi* | [**searchApplicationSettings**](docs/ApplicationApi.md#searchApplicationSettings) | **GET** /application/settings/search | Search for Application Settings
*ApplicationApi* | [**searchApplications**](docs/ApplicationApi.md#searchApplications) | **GET** /application/search | Search Applications
*ApplicationApi* | [**updateApplication**](docs/ApplicationApi.md#updateApplication) | **POST** /application/update | Update Application
*ApplicationApi* | [**updateApplicationActive**](docs/ApplicationApi.md#updateApplicationActive) | **POST** /application/active | Change Appliation Status
*ApplicationApi* | [**updateApplicationPlacement**](docs/ApplicationApi.md#updateApplicationPlacement) | **POST** /application/placement/update | Update Ad Placement
*ApplicationApi* | [**uploadApplicationCertificate**](docs/ApplicationApi.md#uploadApplicationCertificate) | **POST** /application/certificate/create | Create Application Certificate
*ApplicationConfigApi* | [**createApplicationConfig**](docs/ApplicationConfigApi.md#createApplicationConfig) | **POST** /appconfig/create | Create AppConfig
*ApplicationConfigApi* | [**deleteApplicationConfig**](docs/ApplicationConfigApi.md#deleteApplicationConfig) | **POST** /appconfig/delete | Delete AppConfig
*ApplicationConfigApi* | [**getApplicationConfig**](docs/ApplicationConfigApi.md#getApplicationConfig) | **GET** /appconfig/get | Get AppConfig
*ApplicationConfigApi* | [**getApplicationConfigByConfigVersion**](docs/ApplicationConfigApi.md#getApplicationConfigByConfigVersion) | **GET** /appconfig/getbyversion | Get AppConfig by Version
*ApplicationConfigApi* | [**searchApplicationConfig**](docs/ApplicationConfigApi.md#searchApplicationConfig) | **GET** /appconfig/search | Search AppConfigs
*ApplicationConfigApi* | [**updateApplicationConfig**](docs/ApplicationConfigApi.md#updateApplicationConfig) | **POST** /appconfig/update | Update AppConfig
*AssetApi* | [**assetDownload**](docs/AssetApi.md#assetDownload) | **GET** /asset/download/{filename} | Download Asset
*AssetApi* | [**assetMorph**](docs/AssetApi.md#assetMorph) | **POST** /asset/morph | Convert Offer to Creative
*AssetApi* | [**createAsset**](docs/AssetApi.md#createAsset) | **POST** /asset/create | Create Asset
*AssetApi* | [**deleteAsset**](docs/AssetApi.md#deleteAsset) | **POST** /asset/delete | Delete Asset
*AssetApi* | [**getAsset**](docs/AssetApi.md#getAsset) | **GET** /asset/get | Get Asset
*AssetApi* | [**removeAsset**](docs/AssetApi.md#removeAsset) | **POST** /asset/remove | Remove Asset from Collection
*AssetApi* | [**searchAssets**](docs/AssetApi.md#searchAssets) | **GET** /asset/search | Search Assets
*AssetApi* | [**updateAsset**](docs/AssetApi.md#updateAsset) | **POST** /asset/update | Update Asset
*AssignmentApi* | [**assigmentAssigneeAccountSearch**](docs/AssignmentApi.md#assigmentAssigneeAccountSearch) | **GET** /assignment/assignee/search | Search Assignment Assignees
*AssignmentApi* | [**assignmentCreate**](docs/AssignmentApi.md#assignmentCreate) | **POST** /assignment/create | Create Assignment
*AssignmentApi* | [**assignmentDelete**](docs/AssignmentApi.md#assignmentDelete) | **POST** /assignment/delete | Delete Assignment
*AssignmentApi* | [**assignmentGet**](docs/AssignmentApi.md#assignmentGet) | **GET** /assignment/get | Get Assignment
*AssignmentApi* | [**assignmentSearch**](docs/AssignmentApi.md#assignmentSearch) | **GET** /assignment/search | Search Assignments
*AssignmentApi* | [**assignmentStatusCreate**](docs/AssignmentApi.md#assignmentStatusCreate) | **POST** /assignment/status/create | Create Assignment Status
*AssignmentApi* | [**assignmentStatusDelete**](docs/AssignmentApi.md#assignmentStatusDelete) | **POST** /assignment/status/delete | Deletes Assignment Status
*AssignmentApi* | [**assignmentStatusGet**](docs/AssignmentApi.md#assignmentStatusGet) | **GET** /assignment/status/get | Get Assignment Status
*AssignmentApi* | [**assignmentStatusSearch**](docs/AssignmentApi.md#assignmentStatusSearch) | **GET** /assignment/status/search | Search Assignment Statuses
*AssignmentApi* | [**assignmentStatusUpdate**](docs/AssignmentApi.md#assignmentStatusUpdate) | **POST** /assignment/status/update | Update Assignment Status
*AssignmentApi* | [**assignmentUpdate**](docs/AssignmentApi.md#assignmentUpdate) | **POST** /assignment/update | Update Assignment
*AudienceApi* | [**createAudience**](docs/AudienceApi.md#createAudience) | **POST** /audience/create | Create Audience
*AudienceApi* | [**deleteAudience**](docs/AudienceApi.md#deleteAudience) | **POST** /audience/delete | Delete Audience
*AudienceApi* | [**getAgeGroups**](docs/AudienceApi.md#getAgeGroups) | **GET** /audience/ageGroups | Get Age Groups
*AudienceApi* | [**getAudience**](docs/AudienceApi.md#getAudience) | **GET** /audience/get | Get Audience
*AudienceApi* | [**getAudienceList**](docs/AudienceApi.md#getAudienceList) | **GET** /audience/search | Search Audiences
*AudienceApi* | [**getDevices**](docs/AudienceApi.md#getDevices) | **GET** /audience/devices | Get Devices
*AudienceApi* | [**getExperiences**](docs/AudienceApi.md#getExperiences) | **GET** /audience/experiences | Get Experiences
*AudienceApi* | [**getGroupedAudiences**](docs/AudienceApi.md#getGroupedAudiences) | **GET** /audience/grouped/get | Get GroupedAudiences
*AudienceApi* | [**listByAccount**](docs/AudienceApi.md#listByAccount) | **POST** /audience/suggestion/list | List Suggestions by Audience
*AudienceApi* | [**listByAudience**](docs/AudienceApi.md#listByAudience) | **GET** /audience/suggestion/offersByAudience | List Offers by Audience
*AudienceApi* | [**listLastestByAccount**](docs/AudienceApi.md#listLastestByAccount) | **GET** /audience/suggestion/latest | List Sent Suggestions 
*AudienceApi* | [**sendByAccount**](docs/AudienceApi.md#sendByAccount) | **POST** /audience/suggestion/send | Send Suggestions
*AudienceApi* | [**updateAudience**](docs/AudienceApi.md#updateAudience) | **POST** /audience/update | Update Audience
*BidApi* | [**createBid**](docs/BidApi.md#createBid) | **POST** /bid/create | Create Bid
*BidApi* | [**deleteBid**](docs/BidApi.md#deleteBid) | **POST** /bid/delete | Delete Bid
*BidApi* | [**getBid**](docs/BidApi.md#getBid) | **GET** /bid/get | Get Bid
*BidApi* | [**updateBid**](docs/BidApi.md#updateBid) | **POST** /bid/update | Update Bid
*BillableEntityApi* | [**createBillableEntity**](docs/BillableEntityApi.md#createBillableEntity) | **POST** /billable/create | Create Billable
*BillableEntityApi* | [**deleteBillableEntity**](docs/BillableEntityApi.md#deleteBillableEntity) | **POST** /billable/delete | Delete Billable
*BillableEntityApi* | [**getBillableEntity**](docs/BillableEntityApi.md#getBillableEntity) | **GET** /billable/get | Get Billable
*BillableEntityApi* | [**updateBillableEntity**](docs/BillableEntityApi.md#updateBillableEntity) | **POST** /billable/update | Update Billable
*BillingInfoApi* | [**addPaymentMethod**](docs/BillingInfoApi.md#addPaymentMethod) | **POST** /billing/update | Update Payment Method
*BillingInfoApi* | [**createPaymentMethod**](docs/BillingInfoApi.md#createPaymentMethod) | **POST** /billing/create | Create Payment Method
*BillingInfoApi* | [**createSmartContract**](docs/BillingInfoApi.md#createSmartContract) | **POST** /billing/crypto/transfer | Create Smart Contract
*BillingInfoApi* | [**getCryptoBalance**](docs/BillingInfoApi.md#getCryptoBalance) | **GET** /billing/crypto/get | Get Crypto Balances
*BillingInfoApi* | [**getPaymentMethod**](docs/BillingInfoApi.md#getPaymentMethod) | **GET** /billing/get | Get Payment Method
*BillingInfoApi* | [**searchPaymentMethod**](docs/BillingInfoApi.md#searchPaymentMethod) | **GET** /billing/search | Search Payment Methods
*CSVImportApi* | [**getStatusCSV**](docs/CSVImportApi.md#getStatusCSV) | **GET** /csvimport/batch/status/details | Detail Status
*CSVImportApi* | [**listStatusCSV**](docs/CSVImportApi.md#listStatusCSV) | **GET** /csvimport/batch/list | Search Status
*CSVImportApi* | [**statusCSV**](docs/CSVImportApi.md#statusCSV) | **GET** /csvimport/batch/status | Batch Status
*CSVImportApi* | [**uploadCSV**](docs/CSVImportApi.md#uploadCSV) | **POST** /csvimport/upload | Upload CSV
*CargoTypeApi* | [**createCargoType**](docs/CargoTypeApi.md#createCargoType) | **POST** /cargo/type | Create Cargo Type
*CargoTypeApi* | [**deleteCargoType**](docs/CargoTypeApi.md#deleteCargoType) | **DELETE** /cargo/type/{cargoTypeId} | Delete Cargo Type
*CargoTypeApi* | [**getCargoType**](docs/CargoTypeApi.md#getCargoType) | **GET** /cargo/type/{cargoTypeId} | Get Cargo Type
*CargoTypeApi* | [**searchCargoTypes**](docs/CargoTypeApi.md#searchCargoTypes) | **GET** /cargo/type | Search Cargo Type
*CargoTypeApi* | [**updateCargoType**](docs/CargoTypeApi.md#updateCargoType) | **PUT** /cargo/type/{cargoTypeId} | Update Cargo Type
*CarrierApi* | [**searchCarriers**](docs/CarrierApi.md#searchCarriers) | **GET** /carrier/search | Search Carriers
*CategoryApi* | [**categoryDistanceSearch**](docs/CategoryApi.md#categoryDistanceSearch) | **GET** /category/distancesearch | Search Categories by Distance
*CategoryApi* | [**createCategory**](docs/CategoryApi.md#createCategory) | **POST** /category/create | Create Category
*CategoryApi* | [**deleteCategory**](docs/CategoryApi.md#deleteCategory) | **POST** /category/delete | Delete Category
*CategoryApi* | [**duplicateCategory**](docs/CategoryApi.md#duplicateCategory) | **POST** /category/duplicate | Duplicate Category
*CategoryApi* | [**getCategory**](docs/CategoryApi.md#getCategory) | **GET** /category/get | Get Category
*CategoryApi* | [**searchCategories**](docs/CategoryApi.md#searchCategories) | **GET** /category/search | Search Categories
*CategoryApi* | [**updateCategory**](docs/CategoryApi.md#updateCategory) | **POST** /category/update | Update Category
*ConnectionApi* | [**addConnectionToGroup**](docs/ConnectionApi.md#addConnectionToGroup) | **POST** /consumer/connection/group/addConnection | Add Connection
*ConnectionApi* | [**addConnectionsToGroup**](docs/ConnectionApi.md#addConnectionsToGroup) | **POST** /connection/group/addConnections | Add Connections
*ConnectionApi* | [**addSubGroups**](docs/ConnectionApi.md#addSubGroups) | **POST** /consumer/connection/group/addSubGroup | Add Connection Groups
*ConnectionApi* | [**createOrUpdateConnection**](docs/ConnectionApi.md#createOrUpdateConnection) | **POST** /consumer/connection/add | Create or Update Connection
*ConnectionApi* | [**createOrUpdateGroup**](docs/ConnectionApi.md#createOrUpdateGroup) | **POST** /consumer/connection/group | Create or Update Connection Group
*ConnectionApi* | [**followAccept**](docs/ConnectionApi.md#followAccept) | **POST** /consumer/follow/accept | Accept Follow Request
*ConnectionApi* | [**followReject**](docs/ConnectionApi.md#followReject) | **POST** /consumer/follow/reject | Reject Follow Request
*ConnectionApi* | [**followRemove**](docs/ConnectionApi.md#followRemove) | **POST** /consumer/follow/remove | Remove Follower / Unfollow
*ConnectionApi* | [**followRequest**](docs/ConnectionApi.md#followRequest) | **POST** /consumer/follow/request | Send Follow Request
*ConnectionApi* | [**friendAccept**](docs/ConnectionApi.md#friendAccept) | **POST** /consumer/friend/accept | Accept Friend
*ConnectionApi* | [**friendReject**](docs/ConnectionApi.md#friendReject) | **POST** /consumer/friend/reject | Decline Friend
*ConnectionApi* | [**friendRemove**](docs/ConnectionApi.md#friendRemove) | **POST** /consumer/friend/remove | Delete Friend
*ConnectionApi* | [**friendRequest**](docs/ConnectionApi.md#friendRequest) | **POST** /consumer/friend/request | Request Friend
*ConnectionApi* | [**getConnectionSentFriendRequests**](docs/ConnectionApi.md#getConnectionSentFriendRequests) | **GET** /consumer/connection/getRequested | Get Sent Friend Requests
*ConnectionApi* | [**getConnections**](docs/ConnectionApi.md#getConnections) | **GET** /consumer/connection/get | Search Connections
*ConnectionApi* | [**getGroupDetails**](docs/ConnectionApi.md#getGroupDetails) | **GET** /consumer/connection/group/details/get | Get Connection Group
*ConnectionApi* | [**groupSearch**](docs/ConnectionApi.md#groupSearch) | **GET** /connection/group/search | Search Connection Groups
*ConnectionApi* | [**removeConnectionFromGroup**](docs/ConnectionApi.md#removeConnectionFromGroup) | **POST** /consumer/connection/group/removeConnection | Delete Connection
*ConnectionApi* | [**removeConnectionsFromGroup**](docs/ConnectionApi.md#removeConnectionsFromGroup) | **POST** /connection/group/removeConnections | Remove Connections
*ConnectionApi* | [**removeGroup**](docs/ConnectionApi.md#removeGroup) | **POST** /consumer/connection/group/remove | Delete Connection Group
*ConnectionApi* | [**removeSubGroups**](docs/ConnectionApi.md#removeSubGroups) | **POST** /consumer/connection/group/removeSubGroup | Remove Connection Groups
*ConnectionApi* | [**searchConnections**](docs/ConnectionApi.md#searchConnections) | **GET** /connection/search | Search Possible Connections
*ContestApi* | [**addOrUpdateAlbumContest**](docs/ContestApi.md#addOrUpdateAlbumContest) | **POST** /consumer/album/contest | Create or Update Contest
*ContestApi* | [**approveAlbumContest**](docs/ContestApi.md#approveAlbumContest) | **POST** /consumer/album/contest/approve | Approve Contest
*ContestApi* | [**deleteContest**](docs/ContestApi.md#deleteContest) | **POST** /consumer/album/contest/remove | Delete Contest
*ContestApi* | [**getAlbumContest**](docs/ContestApi.md#getAlbumContest) | **GET** /consumer/album/contest/get | Get Contest
*ContestApi* | [**getAlbumContests**](docs/ContestApi.md#getAlbumContests) | **GET** /consumer/album/contest/search | Search Contests
*ContestApi* | [**voteOnAlbumContest**](docs/ContestApi.md#voteOnAlbumContest) | **POST** /consumer/album/contest/vote | Vote on Contest
*CreativeApi* | [**addPreview**](docs/CreativeApi.md#addPreview) | **POST** /creative/addpreview | Add Preview
*CreativeApi* | [**adsFind**](docs/CreativeApi.md#adsFind) | **GET** /ads/find | Find Missions
*CreativeApi* | [**createCreative**](docs/CreativeApi.md#createCreative) | **POST** /creative/create | Create Creative
*CreativeApi* | [**deleteCreative**](docs/CreativeApi.md#deleteCreative) | **POST** /creative/delete | Delete Creative
*CreativeApi* | [**getCreative**](docs/CreativeApi.md#getCreative) | **GET** /creative/get | Get Creative
*CreativeApi* | [**getCreativesByApplication**](docs/CreativeApi.md#getCreativesByApplication) | **GET** /creative/search | Search Creatives
*CreativeApi* | [**removePreview**](docs/CreativeApi.md#removePreview) | **POST** /creative/removepreview | Remove Preview
*CreativeApi* | [**updateCreative**](docs/CreativeApi.md#updateCreative) | **POST** /creative/update | Update Creative
*DependentApi* | [**create**](docs/DependentApi.md#create) | **PUT** /cargo/dependent/{accountId} | Create Dependent
*DependentApi* | [**getDependents**](docs/DependentApi.md#getDependents) | **GET** /cargo/dependent/{accountId} | Get dependent list of an account
*DependentApi* | [**removeDependent**](docs/DependentApi.md#removeDependent) | **DELETE** /cargo/dependent/{accountId} | Delete Dependent
*DisbursementApi* | [**checkDisbursements**](docs/DisbursementApi.md#checkDisbursements) | **GET** /disbursement/check | Check Disbursements
*DisbursementApi* | [**createDisbursement**](docs/DisbursementApi.md#createDisbursement) | **POST** /disbursement/create | Create Disbursement
*DisbursementApi* | [**getDisbursement**](docs/DisbursementApi.md#getDisbursement) | **GET** /disbursement/get | Get Disbursement
*DisbursementApi* | [**searchDisbursements**](docs/DisbursementApi.md#searchDisbursements) | **GET** /disbursement/search | Search Disbursements
*DisbursementApi* | [**updateDisbursement**](docs/DisbursementApi.md#updateDisbursement) | **POST** /disbursement/update | Update Disbursement
*EmployeeApi* | [**assignEmployee**](docs/EmployeeApi.md#assignEmployee) | **POST** /employee/assign | Assign Employee
*EmployeeApi* | [**assignToLocationEmployee**](docs/EmployeeApi.md#assignToLocationEmployee) | **POST** /employee/assignToLocation | Assign Employee to Location
*EmployeeApi* | [**createEmployee**](docs/EmployeeApi.md#createEmployee) | **POST** /employee/create | Create Employee
*EmployeeApi* | [**deleteEmployee**](docs/EmployeeApi.md#deleteEmployee) | **POST** /employee/delete | Delete Employee
*EmployeeApi* | [**getEmployee**](docs/EmployeeApi.md#getEmployee) | **POST** /employee/get | Get Employee
*EmployeeApi* | [**searchEmployees**](docs/EmployeeApi.md#searchEmployees) | **POST** /employee/search | Search Employees
*EmployeeApi* | [**unassignEmployee**](docs/EmployeeApi.md#unassignEmployee) | **POST** /employee/unassign | Unassign Employee
*EmployeeApi* | [**updateEmployee**](docs/EmployeeApi.md#updateEmployee) | **POST** /employee/update | Update Employee
*EventApi* | [**attendEvent**](docs/EventApi.md#attendEvent) | **POST** /event/attend | Attend Event
*EventApi* | [**createEvent**](docs/EventApi.md#createEvent) | **POST** /event/create | Create Event
*EventApi* | [**deleteEvent**](docs/EventApi.md#deleteEvent) | **POST** /event/delete | Delete Event
*EventApi* | [**getEvent**](docs/EventApi.md#getEvent) | **GET** /event/get | Get Event
*EventApi* | [**searchEventTransactions**](docs/EventApi.md#searchEventTransactions) | **GET** /event/attendance/search | Search Event Attendance
*EventApi* | [**searchEvents**](docs/EventApi.md#searchEvents) | **GET** /event/search | Search Events
*EventApi* | [**updateEvent**](docs/EventApi.md#updateEvent) | **POST** /event/update | Update Event
*FacebookApi* | [**getToken**](docs/FacebookApi.md#getToken) | **GET** /facebook/getfbtoken | Get Facebook Token
*FacebookApi* | [**graphInterface**](docs/FacebookApi.md#graphInterface) | **POST** /facebook/graph | Post to Facebook
*FavoriteApi* | [**addFavorite**](docs/FavoriteApi.md#addFavorite) | **POST** /favorite/create | Create Favorite
*FavoriteApi* | [**deleteFavorite**](docs/FavoriteApi.md#deleteFavorite) | **POST** /favorite/delete | Delete Favorite
*FavoriteApi* | [**getFavorite**](docs/FavoriteApi.md#getFavorite) | **GET** /favorite/get | Get Favorite
*FavoriteApi* | [**searchFavorites**](docs/FavoriteApi.md#searchFavorites) | **GET** /favorite/search | Search Favorites
*FavoriteApi* | [**whoHasFavorited**](docs/FavoriteApi.md#whoHasFavorited) | **GET** /favorite/whois | Who has Favorited
*FilterApi* | [**createFilter**](docs/FilterApi.md#createFilter) | **POST** /filter/create | Create Filter
*FilterApi* | [**deleteFilter**](docs/FilterApi.md#deleteFilter) | **POST** /filter/delete | Delete Filter
*FilterApi* | [**getFilter**](docs/FilterApi.md#getFilter) | **GET** /filter/get | Get Filter
*FilterApi* | [**searchFilters**](docs/FilterApi.md#searchFilters) | **GET** /filter/search | Search Filters
*FilterApi* | [**updateFilter**](docs/FilterApi.md#updateFilter) | **POST** /filter/update | Update Filter
*FlagApi* | [**createFlag**](docs/FlagApi.md#createFlag) | **POST** /flag/create | Create Flag
*FlagApi* | [**deleteFlag**](docs/FlagApi.md#deleteFlag) | **POST** /flag/delete | Delete Flag
*FlagApi* | [**getFlag**](docs/FlagApi.md#getFlag) | **GET** /flag/get | Get Flag
*FlagApi* | [**getFlagThreshold**](docs/FlagApi.md#getFlagThreshold) | **GET** /flag/threshold/get | Get Flag Threshold
*FlagApi* | [**updateFlagThreshold**](docs/FlagApi.md#updateFlagThreshold) | **POST** /flag/threshold/update | Update Flag Threshold
*GameApi* | [**createGame**](docs/GameApi.md#createGame) | **POST** /game/create | Create a Game
*GameApi* | [**deleteGame**](docs/GameApi.md#deleteGame) | **POST** /game/delete | Delete a Game
*GameApi* | [**getGame**](docs/GameApi.md#getGame) | **GET** /game/get | Get a Game by id
*GameApi* | [**searchGames**](docs/GameApi.md#searchGames) | **GET** /game/search | Search a Game
*GameApi* | [**updateGame**](docs/GameApi.md#updateGame) | **POST** /game/update | Update a Game
*GameLevelApi* | [**createGameLevel**](docs/GameLevelApi.md#createGameLevel) | **POST** /level/create | Create Game Level
*GameLevelApi* | [**deleteGameLevel**](docs/GameLevelApi.md#deleteGameLevel) | **POST** /level/delete | Delete Game Level
*GameLevelApi* | [**getGameLevel**](docs/GameLevelApi.md#getGameLevel) | **GET** /level/get | Get Game Level
*GameLevelApi* | [**getGameLevelsByApplication**](docs/GameLevelApi.md#getGameLevelsByApplication) | **GET** /level/search | Search Game Levels
*GameLevelApi* | [**getGameLevelsByBillableEntity**](docs/GameLevelApi.md#getGameLevelsByBillableEntity) | **GET** /level/searchByBillableEntity | Search Game Level by Billable Entity
*GameLevelApi* | [**getQuestionsInLevel**](docs/GameLevelApi.md#getQuestionsInLevel) | **GET** /level/questions/get | Get Level Questions
*GameLevelApi* | [**getWordsInLevel**](docs/GameLevelApi.md#getWordsInLevel) | **GET** /level/words/get | Get Level Words
*GameLevelApi* | [**updateGameLevel**](docs/GameLevelApi.md#updateGameLevel) | **POST** /level/update | Update Game Level
*GameLevelApi* | [**updateQuestionsInLevel**](docs/GameLevelApi.md#updateQuestionsInLevel) | **POST** /level/questions/update | Update Level Questions
*GameLevelApi* | [**updateWordsInLevel**](docs/GameLevelApi.md#updateWordsInLevel) | **POST** /level/words/update | Update Level Words
*InviteApi* | [**acceptInvite**](docs/InviteApi.md#acceptInvite) | **POST** /invite/accept | Accept Invite
*InviteApi* | [**albumContestInvite**](docs/InviteApi.md#albumContestInvite) | **POST** /invite/albumContest | Invite to Contest
*InviteApi* | [**albumInvite**](docs/InviteApi.md#albumInvite) | **POST** /invite/album | Invite to Collection
*InviteApi* | [**eventInvite**](docs/InviteApi.md#eventInvite) | **POST** /invite/event | Invite to Event
*InviteApi* | [**gameInvite**](docs/InviteApi.md#gameInvite) | **POST** /invite/gameLevel | Invite to Game Level
*InviteApi* | [**getInvite**](docs/InviteApi.md#getInvite) | **GET** /invite/get | Get Invite
*InviteApi* | [**missionInvite**](docs/InviteApi.md#missionInvite) | **POST** /invite/mission | Invite to Mission
*InviteApi* | [**offerInvite**](docs/InviteApi.md#offerInvite) | **POST** /invite/offer | Invite to Offer
*InviteApi* | [**offerLocationInvite**](docs/InviteApi.md#offerLocationInvite) | **POST** /invite/offerLocation | Invite to Offer Location
*InviteApi* | [**retailerLocationInvite**](docs/InviteApi.md#retailerLocationInvite) | **POST** /invite/retailerLocation | Invite to Retailer Location
*LeaderboardApi* | [**createLeaderboard**](docs/LeaderboardApi.md#createLeaderboard) | **POST** /leaderboard/create | Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
*LeaderboardApi* | [**deleteLeaderboard**](docs/LeaderboardApi.md#deleteLeaderboard) | **POST** /leaderboard/delete | Delete the Leader Board
*LeaderboardApi* | [**getLeaderboard**](docs/LeaderboardApi.md#getLeaderboard) | **GET** /leaderboard/get | Read a leaderboard by id and retrieve the matching ranking list
*LeaderboardApi* | [**searchLeaderboards**](docs/LeaderboardApi.md#searchLeaderboards) | **GET** /leaderboard/search | Search leaderboard and retrieve the matching ranking list
*LeaderboardApi* | [**updateLeaderboard**](docs/LeaderboardApi.md#updateLeaderboard) | **POST** /leaderboard/update | Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
*LikeApi* | [**registerLike**](docs/LikeApi.md#registerLike) | **POST** /like | Create Like
*LikeApi* | [**removeLike**](docs/LikeApi.md#removeLike) | **POST** /like/delete | Delete Like
*LikeApi* | [**searchLikes**](docs/LikeApi.md#searchLikes) | **GET** /like/search | Search Likes
*ListingApi* | [**createListing**](docs/ListingApi.md#createListing) | **POST** /listing/create | Create Listing
*ListingApi* | [**deleteListing**](docs/ListingApi.md#deleteListing) | **POST** /listing/delete | Delete Listing
*ListingApi* | [**getListing**](docs/ListingApi.md#getListing) | **GET** /listing/get | Get Listing
*ListingApi* | [**searchListing**](docs/ListingApi.md#searchListing) | **GET** /listing/search | Search Listings
*ListingApi* | [**summaryListing**](docs/ListingApi.md#summaryListing) | **GET** /listing/summary | Summary Listing
*ListingApi* | [**updateListing**](docs/ListingApi.md#updateListing) | **POST** /listing/update | Update Listing
*LocationApi* | [**cacheTrilaterationData**](docs/LocationApi.md#cacheTrilaterationData) | **POST** /location/trilaterate/cache | Create Trilateration Data with File
*LocationApi* | [**cacheTrilaterationDataGzip**](docs/LocationApi.md#cacheTrilaterationDataGzip) | **POST** /location/trilaterate/cache/submit | Create Trilateration Data with Rest
*LocationApi* | [**getLocationByIp**](docs/LocationApi.md#getLocationByIp) | **GET** /location/ip | Get Location by IP
*LocationApi* | [**getLocationByTrilateration**](docs/LocationApi.md#getLocationByTrilateration) | **GET** /account/location/trilaterate | Get Location by Trilateration
*LocationApi* | [**getLocations**](docs/LocationApi.md#getLocations) | **GET** /location/search | Search Regions or Postal Codes
*LocationApiV2Api* | [**createLocationV2**](docs/LocationApiV2Api.md#createLocationV2) | **POST** /location | Create new location
*LocationApiV2Api* | [**updateLocationV2**](docs/LocationApiV2Api.md#updateLocationV2) | **POST** /location/{id} | Update an existing location
*MediaApi* | [**createMedia**](docs/MediaApi.md#createMedia) | **POST** /media/create | Create Media
*MediaApi* | [**deleteMedia**](docs/MediaApi.md#deleteMedia) | **POST** /media/delete | Delete Media
*MediaApi* | [**getMedia**](docs/MediaApi.md#getMedia) | **GET** /media/get | Media Get
*MediaApi* | [**searchMedia**](docs/MediaApi.md#searchMedia) | **GET** /media/search | Search Media
*MediaApi* | [**updateMedia**](docs/MediaApi.md#updateMedia) | **POST** /media/update | Update Media
*MissionApi* | [**createMission**](docs/MissionApi.md#createMission) | **POST** /mission/create | Create Mission
*MissionApi* | [**deleteMission**](docs/MissionApi.md#deleteMission) | **POST** /mission/delete | Delete Mission
*MissionApi* | [**findMissions**](docs/MissionApi.md#findMissions) | **GET** /mission/find | Find Missions
*MissionApi* | [**getMission**](docs/MissionApi.md#getMission) | **GET** /mission/get | Get Mission
*MissionApi* | [**importMission**](docs/MissionApi.md#importMission) | **POST** /mission/import | Import Mission
*MissionApi* | [**searchMissionFormats**](docs/MissionApi.md#searchMissionFormats) | **GET** /mission/format/search | Search Mission Formats
*MissionApi* | [**searchMissions**](docs/MissionApi.md#searchMissions) | **GET** /mission/search | Search Missions
*MissionApi* | [**searchMissionsByBillableEntity**](docs/MissionApi.md#searchMissionsByBillableEntity) | **GET** /mission/searchByBillableEntity | Search Missions by Billable Entity
*MissionApi* | [**updateMission**](docs/MissionApi.md#updateMission) | **POST** /mission/update | Update Mission
*MissionInviteApi* | [**createMissionInvite**](docs/MissionInviteApi.md#createMissionInvite) | **POST** /mission/invite/create | Create Mission Invite
*MissionInviteApi* | [**deleteMissionInvite**](docs/MissionInviteApi.md#deleteMissionInvite) | **POST** /mission/invite/delete | Delete Mission Invite
*MissionInviteApi* | [**getMissionInvite**](docs/MissionInviteApi.md#getMissionInvite) | **GET** /mission/invite/get | Get Mission Invite
*MissionInviteApi* | [**searchMissionInvites**](docs/MissionInviteApi.md#searchMissionInvites) | **GET** /mission/invite/search | Search Mission Invites
*MissionInviteApi* | [**updateMissionInvite**](docs/MissionInviteApi.md#updateMissionInvite) | **POST** /mission/invite/update | Update Mission Invite
*NoteApi* | [**batchOperation**](docs/NoteApi.md#batchOperation) | **POST** /note/batch | Batch Note Operation
*NoteApi* | [**createNote**](docs/NoteApi.md#createNote) | **POST** /note/create | Create Note
*NoteApi* | [**deleteNote**](docs/NoteApi.md#deleteNote) | **POST** /note/delete | Delete Note
*NoteApi* | [**getNote**](docs/NoteApi.md#getNote) | **POST** /note/get | Get Note
*NoteApi* | [**searchNotes**](docs/NoteApi.md#searchNotes) | **POST** /note/search | Search Notes
*NoteApi* | [**updateNote**](docs/NoteApi.md#updateNote) | **POST** /note/update | Update Note
*NotificationApi* | [**createNotificationTemplate**](docs/NotificationApi.md#createNotificationTemplate) | **POST** /notification/template/create | Create Notification Template
*NotificationApi* | [**createOrUpdateBlockedNotifications**](docs/NotificationApi.md#createOrUpdateBlockedNotifications) | **POST** /notification/blocked/batch | Create or update blocked notification settings
*NotificationApi* | [**deleteNotificationTemplate**](docs/NotificationApi.md#deleteNotificationTemplate) | **POST** /notification/template/delete | Delete Notification Template
*NotificationApi* | [**getNotificationTemplate**](docs/NotificationApi.md#getNotificationTemplate) | **GET** /notification/template/get | Get Notification Template
*NotificationApi* | [**getNotifications**](docs/NotificationApi.md#getNotifications) | **GET** /notification/search | Get Notifications
*NotificationApi* | [**registerNotificationToken**](docs/NotificationApi.md#registerNotificationToken) | **POST** /notification/token | Register Notification Token
*NotificationApi* | [**searchBlockedNotifications**](docs/NotificationApi.md#searchBlockedNotifications) | **GET** /notification/blocked/search | Search on the user&#39;s blocked notification settings
*NotificationApi* | [**searchNotificationTemplate**](docs/NotificationApi.md#searchNotificationTemplate) | **GET** /notification/template/search | Search Notification Templates
*NotificationApi* | [**searchRecipients**](docs/NotificationApi.md#searchRecipients) | **GET** /notification/recipient/search | Search for Recipients
*NotificationApi* | [**searchRecipientsCount**](docs/NotificationApi.md#searchRecipientsCount) | **GET** /notification/recipient/search/count | Search for Recipients (Counts/Grouped)
*NotificationApi* | [**sendBatchNotifications**](docs/NotificationApi.md#sendBatchNotifications) | **POST** /notification/batch | Send Batch Notifications
*NotificationApi* | [**sendCustomNotifications**](docs/NotificationApi.md#sendCustomNotifications) | **POST** /notification/custom | Send Custom Notifications
*NotificationApi* | [**updateNotificationTemplate**](docs/NotificationApi.md#updateNotificationTemplate) | **POST** /notification/template/update | Update Notification Template
*ObjectStoreApi* | [**addField**](docs/ObjectStoreApi.md#addField) | **POST** /object/field/add | Create Field
*ObjectStoreApi* | [**createData**](docs/ObjectStoreApi.md#createData) | **POST** /object/data/{objectName} | Create Data
*ObjectStoreApi* | [**createObject**](docs/ObjectStoreApi.md#createObject) | **POST** /object/create | Create Object
*ObjectStoreApi* | [**deleteData**](docs/ObjectStoreApi.md#deleteData) | **DELETE** /object/data/{objectName}/{objectId} | Delete Data
*ObjectStoreApi* | [**deleteField**](docs/ObjectStoreApi.md#deleteField) | **POST** /object/field/delete | Delete Field
*ObjectStoreApi* | [**deleteObject**](docs/ObjectStoreApi.md#deleteObject) | **POST** /object/delete | Delete Object
*ObjectStoreApi* | [**getData**](docs/ObjectStoreApi.md#getData) | **GET** /object/data/{objectName}/{objectId} | Get Data
*ObjectStoreApi* | [**getObject**](docs/ObjectStoreApi.md#getObject) | **GET** /object/get | Get Object
*ObjectStoreApi* | [**searchData**](docs/ObjectStoreApi.md#searchData) | **GET** /object/data/{objectName} | Search Data
*ObjectStoreApi* | [**searchObject**](docs/ObjectStoreApi.md#searchObject) | **GET** /object/search | Search Objects
*ObjectStoreApi* | [**updateData**](docs/ObjectStoreApi.md#updateData) | **PUT** /object/data/{objectName}/{objectId} | Update Data
*OfferApi* | [**batchUpdateOfferLocations**](docs/OfferApi.md#batchUpdateOfferLocations) | **POST** /retailer/offer/location/batchUpdate | Update Offer Locations
*OfferApi* | [**createOffer**](docs/OfferApi.md#createOffer) | **POST** /retailer/offer/create | Create Offer
*OfferApi* | [**deleteOffer**](docs/OfferApi.md#deleteOffer) | **POST** /retailer/offer/delete | Delete Offer
*OfferApi* | [**deleteOfferLocation**](docs/OfferApi.md#deleteOfferLocation) | **POST** /retailer/offer/location/delete | Delete Offer Location
*OfferApi* | [**getOffer**](docs/OfferApi.md#getOffer) | **GET** /retailer/offer/get | Get Offer
*OfferApi* | [**getOfferDetails**](docs/OfferApi.md#getOfferDetails) | **GET** /offer/get | Get Offer
*OfferApi* | [**getOfferListCounts**](docs/OfferApi.md#getOfferListCounts) | **GET** /offer/lists/count | Get Offers (Counts)
*OfferApi* | [**getOfferLocation**](docs/OfferApi.md#getOfferLocation) | **GET** /offer/location/get | Get Offer Location
*OfferApi* | [**getOfferLocationsForRetailers**](docs/OfferApi.md#getOfferLocationsForRetailers) | **GET** /retailer/offer/location/search | Search Offer Locations
*OfferApi* | [**getOffersForRetailers**](docs/OfferApi.md#getOffersForRetailers) | **GET** /retailer/offer/search | Search Offers
*OfferApi* | [**redeemOfferTransaction**](docs/OfferApi.md#redeemOfferTransaction) | **POST** /retailer/offer/transaction/update | Update Offer Transaction
*OfferApi* | [**searchOfferTransactionsForRetailers**](docs/OfferApi.md#searchOfferTransactionsForRetailers) | **GET** /retailer/offer/transaction/search | Search Offer Transactions
*OfferApi* | [**searchOffersForConsumer**](docs/OfferApi.md#searchOffersForConsumer) | **GET** /offer/lists | Search Offers
*OfferApi* | [**topOfferTransactions**](docs/OfferApi.md#topOfferTransactions) | **GET** /offer/top | Get Offers (Top)
*OfferApi* | [**updateOffer**](docs/OfferApi.md#updateOffer) | **POST** /retailer/offer/update | Update Offer
*OfferApi* | [**updateOfferStatus**](docs/OfferApi.md#updateOfferStatus) | **POST** /retailer/offer/status | Activate Offer
*OfferStatusApi* | [**createOfferTransactionStatus**](docs/OfferStatusApi.md#createOfferTransactionStatus) | **POST** /offer/status/create | Create Offer Status
*OfferStatusApi* | [**deleteOfferTransactionStatus**](docs/OfferStatusApi.md#deleteOfferTransactionStatus) | **POST** /offer/status/delete | Delete Offer Status
*OfferStatusApi* | [**getOfferTransactionStatus**](docs/OfferStatusApi.md#getOfferTransactionStatus) | **GET** /offer/status/get | Get Offer Status
*OfferStatusApi* | [**searchOfferTransactionStatuses**](docs/OfferStatusApi.md#searchOfferTransactionStatuses) | **GET** /offer/status/search | Search Offer Status
*OfferStatusApi* | [**updateOfferTransactionStatus**](docs/OfferStatusApi.md#updateOfferTransactionStatus) | **POST** /offer/status/update | Update Offer Status
*OpenAIApi* | [**imageGeneration**](docs/OpenAIApi.md#imageGeneration) | **POST** /openai/v1/images/generations | Generate images with OpenAI
*OptimizeApi* | [**getOptimizationResult**](docs/OptimizeApi.md#getOptimizationResult) | **GET** /optimize/result/{batchID} | Get Optimization Result
*OptimizeApi* | [**requestOptimization**](docs/OptimizeApi.md#requestOptimization) | **POST** /optimize/request | Request Optimization
*OrsonApi* | [**addMovie**](docs/OrsonApi.md#addMovie) | **POST** /orson/ai/addMovie | Add Movie
*OrsonApi* | [**aiDocs**](docs/OrsonApi.md#aiDocs) | **GET** /orson/ai/docs | Search Docs
*OrsonApi* | [**aiFindImages**](docs/OrsonApi.md#aiFindImages) | **GET** /orson/ai/img | Find images
*OrsonApi* | [**aiTags**](docs/OrsonApi.md#aiTags) | **GET** /orson/ai/tags | Search Tags
*OrsonApi* | [**aiText**](docs/OrsonApi.md#aiText) | **GET** /orson/ai/text | Search Text
*OrsonApi* | [**batch**](docs/OrsonApi.md#batch) | **POST** /orson/ai/batch | Batch Analysis
*OrsonApi* | [**createInstantEpisode**](docs/OrsonApi.md#createInstantEpisode) | **POST** /orson/stories/episodes/instant | Creates an instant episode
*OrsonApi* | [**createVoiceCanvas**](docs/OrsonApi.md#createVoiceCanvas) | **POST** /orson/ai/voiceCanvas | Create VoiceCanvas images
*OrsonApi* | [**emotion**](docs/OrsonApi.md#emotion) | **POST** /orson/ai/emotion | Detect emotions
*OrsonApi* | [**getAddMovieResult**](docs/OrsonApi.md#getAddMovieResult) | **GET** /orson/ai/addMovie/{requestId} | Get Add Movie Result
*OrsonApi* | [**getBatch**](docs/OrsonApi.md#getBatch) | **GET** /orson/ai/batch/{requestId} | Get Batch Analysis Results
*OrsonApi* | [**getEmotion**](docs/OrsonApi.md#getEmotion) | **GET** /orson/ai/emotion/{requestId} | Get Emotion Results
*OrsonApi* | [**getEpisodeStatus**](docs/OrsonApi.md#getEpisodeStatus) | **GET** /orson/stories/episodes/{episodeId}/status | Check episode status
*OrsonApi* | [**getRenderStatus**](docs/OrsonApi.md#getRenderStatus) | **GET** /orson/stories/renders/{renderId}/status | Check episode status
*OrsonApi* | [**getSTT**](docs/OrsonApi.md#getSTT) | **GET** /orson/ai/stt/{requestId} | Get Speach to Text Result
*OrsonApi* | [**getTTS**](docs/OrsonApi.md#getTTS) | **GET** /orson/ai/tts/{requestId} | Get Text to Speach Result
*OrsonApi* | [**getTechTune**](docs/OrsonApi.md#getTechTune) | **GET** /orson/ai/techTune/{requestId} | Get TechTune Results
*OrsonApi* | [**getTopics**](docs/OrsonApi.md#getTopics) | **GET** /orson/ai/topics/{requestId} | Get Topics
*OrsonApi* | [**getVoiceCanvas**](docs/OrsonApi.md#getVoiceCanvas) | **GET** /orson/ai/voiceCanvas/{requestId} | Get VoiceCanvas images
*OrsonApi* | [**startVideoRender**](docs/OrsonApi.md#startVideoRender) | **POST** /orson/stories/renders | Starts a StoryStitch video render
*OrsonApi* | [**stt**](docs/OrsonApi.md#stt) | **POST** /orson/ai/stt | Speach to Text
*OrsonApi* | [**summarizeTopics**](docs/OrsonApi.md#summarizeTopics) | **POST** /orson/ai/topics | Summarize Topics
*OrsonApi* | [**techTune**](docs/OrsonApi.md#techTune) | **POST** /orson/ai/techTune | Detect Technical Issues
*OrsonApi* | [**tts**](docs/OrsonApi.md#tts) | **POST** /orson/ai/tts | Text to Speach
*PackApi* | [**createPack**](docs/PackApi.md#createPack) | **POST** /pack/create | Create Pack
*PackApi* | [**deletePack**](docs/PackApi.md#deletePack) | **POST** /pack/delete | Delete Pack
*PackApi* | [**getPack**](docs/PackApi.md#getPack) | **GET** /pack/get | Get Pack
*PackApi* | [**searchPacks**](docs/PackApi.md#searchPacks) | **GET** /pack/search | Search Packs
*PackApi* | [**updatePack**](docs/PackApi.md#updatePack) | **POST** /pack/update | Update Pack
*ParticipantsApi* | [**processAllParticipants**](docs/ParticipantsApi.md#processAllParticipants) | **POST** /participant/process/all | Process All Participant Feeds
*ParticipantsApi* | [**processParticipants**](docs/ParticipantsApi.md#processParticipants) | **POST** /participant/process | Process Participants Feed
*PathingApi* | [**computePath**](docs/PathingApi.md#computePath) | **GET** /pathing/compute | Calculate Path
*PostalCodeApi* | [**createPostalCode**](docs/PostalCodeApi.md#createPostalCode) | **POST** /postalCode/create | Create Postal Code
*PostalCodeApi* | [**deletePostalCode**](docs/PostalCodeApi.md#deletePostalCode) | **POST** /postalCode/delete | Delete Postal Code
*PostalCodeApi* | [**getPostalCode**](docs/PostalCodeApi.md#getPostalCode) | **GET** /postalCode/get | Get Postal Code
*PostalCodeApi* | [**getPostalCodes**](docs/PostalCodeApi.md#getPostalCodes) | **GET** /postalCode/search | Search Postal Codes
*PostalCodeApi* | [**updatePostalCode**](docs/PostalCodeApi.md#updatePostalCode) | **POST** /postalCode/update | Update Postal Code
*PreviewPersonaApi* | [**createPersona**](docs/PreviewPersonaApi.md#createPersona) | **POST** /persona/create | Create Persona
*PreviewPersonaApi* | [**deletePersona**](docs/PreviewPersonaApi.md#deletePersona) | **POST** /persona/delete | Delete Persona
*PreviewPersonaApi* | [**getPersonaList**](docs/PreviewPersonaApi.md#getPersonaList) | **GET** /persona/get | Get Persona
*PreviewPersonaApi* | [**searchPersona**](docs/PreviewPersonaApi.md#searchPersona) | **GET** /persona/search | Search Personas
*PreviewPersonaApi* | [**updatePersona**](docs/PreviewPersonaApi.md#updatePersona) | **POST** /persona/update | Update Persona
*ProgramApi* | [**createProgram**](docs/ProgramApi.md#createProgram) | **POST** /program | Create Program
*ProgramApi* | [**deleteProgram**](docs/ProgramApi.md#deleteProgram) | **DELETE** /program/{id} | Delete Program
*ProgramApi* | [**getProgram**](docs/ProgramApi.md#getProgram) | **GET** /program/{id} | Get Program
*ProgramApi* | [**postProgram**](docs/ProgramApi.md#postProgram) | **POST** /program/{id} | Update Program
*ProgramApi* | [**putProgram**](docs/ProgramApi.md#putProgram) | **PUT** /program/{id} | Update Program
*ProgramApi* | [**searchPrograms**](docs/ProgramApi.md#searchPrograms) | **GET** /program | Search Programs
*PurchaseItemApi* | [**createPurchaseItem**](docs/PurchaseItemApi.md#createPurchaseItem) | **POST** /purchase/create | Create Purchase
*PurchaseItemApi* | [**deletePurchaseItem**](docs/PurchaseItemApi.md#deletePurchaseItem) | **POST** /purchase/delete | Delete Purchase
*PurchaseItemApi* | [**getPurchaseItem**](docs/PurchaseItemApi.md#getPurchaseItem) | **GET** /purchase/get | Get Purchase
*PurchaseItemApi* | [**searchPurchaseItems**](docs/PurchaseItemApi.md#searchPurchaseItems) | **GET** /purchase/search | Search Purchases
*PurchaseItemApi* | [**updatePurchaseItem**](docs/PurchaseItemApi.md#updatePurchaseItem) | **POST** /purchase/update | Update Purchase
*PurchaseOrderApi* | [**createOrder**](docs/PurchaseOrderApi.md#createOrder) | **POST** /order/create | Create Order
*PurchaseOrderApi* | [**deleteOrder**](docs/PurchaseOrderApi.md#deleteOrder) | **POST** /order/delete | Delete Order
*PurchaseOrderApi* | [**getOrder**](docs/PurchaseOrderApi.md#getOrder) | **GET** /order/get | Get Order
*PurchaseOrderApi* | [**previewOrder**](docs/PurchaseOrderApi.md#previewOrder) | **POST** /order/preview | Preview Order
*PurchaseOrderApi* | [**searchOrders**](docs/PurchaseOrderApi.md#searchOrders) | **GET** /order/search | Search Orders
*PurchaseOrderApi* | [**updateOrder**](docs/PurchaseOrderApi.md#updateOrder) | **POST** /order/update | Update Order
*QuestionApi* | [**createQuestion**](docs/QuestionApi.md#createQuestion) | **POST** /game/question/create | Create Question
*QuestionApi* | [**deleteQuestion**](docs/QuestionApi.md#deleteQuestion) | **POST** /game/question/delete | Delete Question
*QuestionApi* | [**getQuestion**](docs/QuestionApi.md#getQuestion) | **GET** /game/question/get | Get Question
*QuestionApi* | [**searchQuestions**](docs/QuestionApi.md#searchQuestions) | **GET** /game/question/search | Search Questions
*QuestionApi* | [**updateQuestion**](docs/QuestionApi.md#updateQuestion) | **POST** /game/question/update | Update Question
*RankingApi* | [**getHistoricalRankings**](docs/RankingApi.md#getHistoricalRankings) | **GET** /ranking/historical/search | Search Historical Rankings
*RankingApi* | [**getRankings**](docs/RankingApi.md#getRankings) | **GET** /ranking/search | Search Rankings
*RankingApi* | [**getUserRank**](docs/RankingApi.md#getUserRank) | **POST** /ranking/personal/ranks | Get Personal Rankings
*RankingApi* | [**overrideUserRank**](docs/RankingApi.md#overrideUserRank) | **POST** /ranking/override | Override User Rank
*RankingApi* | [**updateRankings**](docs/RankingApi.md#updateRankings) | **POST** /ranking/update | Update Ranking
*RatingApi* | [**createRating**](docs/RatingApi.md#createRating) | **POST** /rating/create | Create Rating
*RatingApi* | [**deleteRating**](docs/RatingApi.md#deleteRating) | **POST** /rating/delete | Delete Rating
*RatingApi* | [**searchLocationRatingIndexes**](docs/RatingApi.md#searchLocationRatingIndexes) | **GET** /location/rating/index/search | Search Location Rating Indexes
*RatingApi* | [**searchRatingIndexes**](docs/RatingApi.md#searchRatingIndexes) | **GET** /rating/index/search | Search Rating Indexes
*RatingApi* | [**searchRatings**](docs/RatingApi.md#searchRatings) | **GET** /rating/search | Search Ratings
*RatingApi* | [**updateRating**](docs/RatingApi.md#updateRating) | **POST** /rating/update | Update Rating
*RegionApi* | [**createRegion**](docs/RegionApi.md#createRegion) | **POST** /region/create | Create Region
*RegionApi* | [**deleteRegion**](docs/RegionApi.md#deleteRegion) | **POST** /region/delete | Delete Region
*RegionApi* | [**getRegion**](docs/RegionApi.md#getRegion) | **GET** /region/get | Get Region
*RegionApi* | [**searchRegions**](docs/RegionApi.md#searchRegions) | **GET** /region/search | Search Regions
*RegionApi* | [**updateRegion**](docs/RegionApi.md#updateRegion) | **POST** /region/update | Update Region
*ReportingApi* | [**createBatch**](docs/ReportingApi.md#createBatch) | **POST** /report/batch/create | Create Offline Report
*ReportingApi* | [**createRegionLegSummaryBatch**](docs/ReportingApi.md#createRegionLegSummaryBatch) | **POST** /report/region/summary/batch | Create Offline Report
*ReportingApi* | [**deleteBatch**](docs/ReportingApi.md#deleteBatch) | **POST** /report/batch/delete | Delete Offline Report
*ReportingApi* | [**getReportBatch**](docs/ReportingApi.md#getReportBatch) | **GET** /report/batch/get | Get Offline Report
*ReportingApi* | [**runReport**](docs/ReportingApi.md#runReport) | **POST** /report/run | Run Report
*ReportingApi* | [**searchBatch**](docs/ReportingApi.md#searchBatch) | **GET** /report/batch/search | Search Offline Reports
*ReservationApi* | [**createReservation**](docs/ReservationApi.md#createReservation) | **POST** /reservation/create | Create Reservation
*ReservationApi* | [**deleteReservation**](docs/ReservationApi.md#deleteReservation) | **POST** /reservation/delete | Delete Reservation
*ReservationApi* | [**reservableAvailability**](docs/ReservationApi.md#reservableAvailability) | **POST** /reservable/availability/update | Update Availability
*ReservationApi* | [**searchAvailability**](docs/ReservationApi.md#searchAvailability) | **GET** /reservable/availability/search | Search Availability
*ReservationApi* | [**searchReservations**](docs/ReservationApi.md#searchReservations) | **GET** /reservation/search | Search Reservations
*ReservationApi* | [**searchSchedule**](docs/ReservationApi.md#searchSchedule) | **GET** /reservable/schedule/search | Search Schedule
*RetailerApi* | [**createRetailer**](docs/RetailerApi.md#createRetailer) | **POST** /retailer/create | Create Retailer
*RetailerApi* | [**deleteRetailer**](docs/RetailerApi.md#deleteRetailer) | **POST** /retailer/delete | Delete Retailer
*RetailerApi* | [**getRetailer**](docs/RetailerApi.md#getRetailer) | **GET** /retailer/get | Get Retailer
*RetailerApi* | [**getRetailers**](docs/RetailerApi.md#getRetailers) | **GET** /retailer/search | Search Retailers
*RetailerApi* | [**retailerLoginCheck**](docs/RetailerApi.md#retailerLoginCheck) | **POST** /retailer/login | Login Retailer
*RetailerApi* | [**updateRetailer**](docs/RetailerApi.md#updateRetailer) | **POST** /retailer/update | Update Retailer
*RetailerLocationApi* | [**createRetailerLocationConsumer**](docs/RetailerLocationApi.md#createRetailerLocationConsumer) | **POST** /location/create | Create Retailer Location (Consumer)
*RetailerLocationApi* | [**createRetailerLocations**](docs/RetailerLocationApi.md#createRetailerLocations) | **POST** /retailer/location/create | Create Retailer Location
*RetailerLocationApi* | [**deleteRetailerLocation**](docs/RetailerLocationApi.md#deleteRetailerLocation) | **POST** /retailer/location/delete | Delete Retailer Location
*RetailerLocationApi* | [**getRetailerLocation**](docs/RetailerLocationApi.md#getRetailerLocation) | **GET** /retailer/location/get | Get Retailer Location
*RetailerLocationApi* | [**getRetailerLocationConsumer**](docs/RetailerLocationApi.md#getRetailerLocationConsumer) | **GET** /location/get | Get Retailer Location (Consumer)
*RetailerLocationApi* | [**indexedRetailerLocationDistanceSearch**](docs/RetailerLocationApi.md#indexedRetailerLocationDistanceSearch) | **GET** /retailer/location/idistancesearch | Distance Search Retailer Locations (Indexed)
*RetailerLocationApi* | [**indexedRetailerLocationSearch**](docs/RetailerLocationApi.md#indexedRetailerLocationSearch) | **GET** /retailer/location/isearch | Keyword Search Retailer Locations (Indexed)
*RetailerLocationApi* | [**searchRetailerLocations**](docs/RetailerLocationApi.md#searchRetailerLocations) | **GET** /retailer/location/search | Search Retailer Locations (Owned)
*RetailerLocationApi* | [**updateRetailerLocations**](docs/RetailerLocationApi.md#updateRetailerLocations) | **POST** /retailer/location/update | Update Retailer Location
*RetailerV2Api* | [**getRetaokiler**](docs/RetailerV2Api.md#getRetaokiler) | **GET** /retailer | Get Retailer
*RouteApi* | [**approveRoute**](docs/RouteApi.md#approveRoute) | **POST** /route/{routeId}/approve | Approve Route
*RouteApi* | [**copyRoute**](docs/RouteApi.md#copyRoute) | **POST** /route/{routeId}/copy | Copy Route
*RouteApi* | [**createRoute**](docs/RouteApi.md#createRoute) | **POST** /route | Create Route
*RouteApi* | [**createRouteDirections**](docs/RouteApi.md#createRouteDirections) | **PUT** /route/{routeId}/directions | Update Route Directions
*RouteApi* | [**createRoutePolyline**](docs/RouteApi.md#createRoutePolyline) | **PUT** /route/{routeId}/polyline | Create Route Polyline
*RouteApi* | [**deleteRoute**](docs/RouteApi.md#deleteRoute) | **DELETE** /route/{routeId} | Delete Route
*RouteApi* | [**disapproveRoute**](docs/RouteApi.md#disapproveRoute) | **POST** /route/{routeId}/disapprove | Disapprove Route
*RouteApi* | [**getRoute**](docs/RouteApi.md#getRoute) | **GET** /route/{routeId} | Get Route
*RouteApi* | [**getRouteDirections**](docs/RouteApi.md#getRouteDirections) | **GET** /route/{routeId}/directions | Get Route Directions
*RouteApi* | [**getRouteShipments**](docs/RouteApi.md#getRouteShipments) | **GET** /route/{routeId}/shipments | Get Route Shipments
*RouteApi* | [**getRouteStop**](docs/RouteApi.md#getRouteStop) | **GET** /route/{routeId}/stop/{stopId} | Get Route Stop
*RouteApi* | [**getRouteStops**](docs/RouteApi.md#getRouteStops) | **GET** /route/{routeId}/stops | Get Route Stops
*RouteApi* | [**getShipmentsAtStop**](docs/RouteApi.md#getShipmentsAtStop) | **GET** /route/{routeId}/stop/{stopId}/shipments | Get Shipments At Stop
*RouteApi* | [**optimizeRoute**](docs/RouteApi.md#optimizeRoute) | **POST** /route/{routeId}/optimize | Optimize Route
*RouteApi* | [**removeStop**](docs/RouteApi.md#removeStop) | **DELETE** /route/{routeId}/stop/{stopId} | Delete Stop
*RouteApi* | [**reorderRouteStopsPatch**](docs/RouteApi.md#reorderRouteStopsPatch) | **PATCH** /route/{routeId}/stops/reorder | Reorder Route Stops
*RouteApi* | [**reorderRouteStopsPost**](docs/RouteApi.md#reorderRouteStopsPost) | **POST** /route/{routeId}/stops/reorder | Reorder Route Stops
*RouteApi* | [**searchRoutes**](docs/RouteApi.md#searchRoutes) | **GET** /route | Search Routes
*RouteApi* | [**setDriver**](docs/RouteApi.md#setDriver) | **POST** /route/{id}/driver/{driverId} | Set Driver
*RouteApi* | [**updateRoute**](docs/RouteApi.md#updateRoute) | **PUT** /route/{routeId} | Update Route
*RouteApi* | [**updateRouteStop**](docs/RouteApi.md#updateRouteStop) | **PUT** /route/{routeId}/stop/{stopId} | Update Route Stop
*RouteSettingApi* | [**createRouteSettings**](docs/RouteSettingApi.md#createRouteSettings) | **POST** /route/setting | Create Route Setting
*RouteSettingApi* | [**deleteRouteSettings**](docs/RouteSettingApi.md#deleteRouteSettings) | **DELETE** /route/setting/{routeSettingsId} | Delete Route Setting
*RouteSettingApi* | [**getRouteSettings**](docs/RouteSettingApi.md#getRouteSettings) | **GET** /route/setting/{routeSettingsId} | Get Route Setting
*RouteSettingApi* | [**searchRouteSettings**](docs/RouteSettingApi.md#searchRouteSettings) | **GET** /route/setting | Search Route Settings
*RouteSettingApi* | [**updateRouteSettings**](docs/RouteSettingApi.md#updateRouteSettings) | **PUT** /route/setting/{routeSettingsId} | Update Route Setting
*RoutingApi* | [**computeRouting**](docs/RoutingApi.md#computeRouting) | **POST** /routing/compute | Compute Route
*ScheduledNotificationApi* | [**createScheduledNotification**](docs/ScheduledNotificationApi.md#createScheduledNotification) | **POST** /notification/schedule/create | Create Scheduled Notification
*ScheduledNotificationApi* | [**deleteScheduledNotification**](docs/ScheduledNotificationApi.md#deleteScheduledNotification) | **POST** /notification/schedule/delete | Delete Scheduled Notification
*ScheduledNotificationApi* | [**getScheduledNotification**](docs/ScheduledNotificationApi.md#getScheduledNotification) | **GET** /notification/schedule/get | Get Scheduled Notification
*ScheduledNotificationApi* | [**scheduleNotificationListings**](docs/ScheduledNotificationApi.md#scheduleNotificationListings) | **POST** /notification/schedule/generate | Generate Schedule Notifications
*ScheduledNotificationApi* | [**searchScheduledNotifications**](docs/ScheduledNotificationApi.md#searchScheduledNotifications) | **GET** /notification/schedule/search | Search Scheduled Notifications
*ScheduledNotificationApi* | [**updateScheduledNotification**](docs/ScheduledNotificationApi.md#updateScheduledNotification) | **POST** /notification/schedule/update | Update Scheduled Notification
*ScoreApi* | [**createScore**](docs/ScoreApi.md#createScore) | **POST** /score/create | Create Score
*ScoreApi* | [**getScore**](docs/ScoreApi.md#getScore) | **GET** /score/get | Get Score
*ScoreApi* | [**searchScores**](docs/ScoreApi.md#searchScores) | **GET** /score/search | Search Score
*SecureAppApi* | [**createSecureApplication**](docs/SecureAppApi.md#createSecureApplication) | **POST** /secure/application/create | Create Secure Application
*SecureAppApi* | [**deleteSecureApplication**](docs/SecureAppApi.md#deleteSecureApplication) | **POST** /secure/application/delete | Delete Secure Application
*SecureAppApi* | [**loginSecure**](docs/SecureAppApi.md#loginSecure) | **POST** /secure/login | Login Clear
*SecureAppApi* | [**purchaseSecure**](docs/SecureAppApi.md#purchaseSecure) | **POST** /secure/purchase | Purchase Clear
*SecureAppApi* | [**resetSecure**](docs/SecureAppApi.md#resetSecure) | **POST** /secure/application/reset | Rest Secure Application
*SecureAppApi* | [**updateSecureApplication**](docs/SecureAppApi.md#updateSecureApplication) | **POST** /secure/application/update | Update Secure Application
*ServiceHubApi* | [**createServiceHub**](docs/ServiceHubApi.md#createServiceHub) | **POST** /hub | Create Service Hub
*ServiceHubApi* | [**deleteServiceHub**](docs/ServiceHubApi.md#deleteServiceHub) | **DELETE** /hub/{id} | Delete Service Hub
*ServiceHubApi* | [**getServiceHub**](docs/ServiceHubApi.md#getServiceHub) | **GET** /hub/{id} | Get Service Hub
*ServiceHubApi* | [**postServiceHub**](docs/ServiceHubApi.md#postServiceHub) | **POST** /hub/{id} | Update Service Hub
*ServiceHubApi* | [**putServiceHub**](docs/ServiceHubApi.md#putServiceHub) | **PUT** /hub/{id} | Update Service Hub
*ServiceHubApi* | [**searchServiceHubs**](docs/ServiceHubApi.md#searchServiceHubs) | **GET** /hub | Search Service Hubs
*ShipmentApi* | [**cancelShipment**](docs/ShipmentApi.md#cancelShipment) | **POST** /shipment/{id}/cancel | Cancel Shipment
*ShipmentApi* | [**createShipment**](docs/ShipmentApi.md#createShipment) | **POST** /shipment | Create Shipment
*ShipmentApi* | [**deleteShipment**](docs/ShipmentApi.md#deleteShipment) | **DELETE** /shipment/{id} | Delete Shipment
*ShipmentApi* | [**getShipment**](docs/ShipmentApi.md#getShipment) | **GET** /shipment/{id} | Get Shipment
*ShipmentApi* | [**searchShipments**](docs/ShipmentApi.md#searchShipments) | **GET** /shipment | Search Shipments
*ShipmentApi* | [**updateShipment**](docs/ShipmentApi.md#updateShipment) | **PUT** /shipment/{id} | Update Shipment
*ShipmentApi* | [**updateShipmentStatus**](docs/ShipmentApi.md#updateShipmentStatus) | **POST** /shipment/{id}/status | Uupdate Shipment Status
*ShipmentBatchApi* | [**createShipmentBatch**](docs/ShipmentBatchApi.md#createShipmentBatch) | **POST** /shipment/batch | Create Shipment Batch
*ShipmentBatchApi* | [**deleteShipmentBatch**](docs/ShipmentBatchApi.md#deleteShipmentBatch) | **DELETE** /shipment/batch/{batchId} | Delete Shipment Batch
*ShipmentBatchApi* | [**getShipmentBatch**](docs/ShipmentBatchApi.md#getShipmentBatch) | **GET** /shipment/batch/{batchId} | Get Shipment Batch
*ShipmentBatchApi* | [**getShipmentBatchStatus**](docs/ShipmentBatchApi.md#getShipmentBatchStatus) | **GET** /shipment/batch/{batchId}/status | Get Shipment Batch Status
*ShipmentBatchApi* | [**searchShipmentBatch**](docs/ShipmentBatchApi.md#searchShipmentBatch) | **GET** /shipment/batch | Search Shipment Batch
*SimulationApi* | [**simulation**](docs/SimulationApi.md#simulation) | **POST** /simulation/routing | Routing Simulation
*StopApi* | [**getStop**](docs/StopApi.md#getStop) | **GET** /stop/{id} | Get Stop
*StopApi* | [**updateStop**](docs/StopApi.md#updateStop) | **PUT** /stop/{id} | Update Stop
*StripeApi* | [**createStripeCheckoutSession**](docs/StripeApi.md#createStripeCheckoutSession) | **POST** /stripe/checkout/session/create | Create Stripe Checkout Session
*SubscriptionApi* | [**createSubscription**](docs/SubscriptionApi.md#createSubscription) | **POST** /subscription/create | Create Subscription
*SubscriptionApi* | [**deleteSubscription**](docs/SubscriptionApi.md#deleteSubscription) | **POST** /subscription/delete | Delete Subscription
*SubscriptionApi* | [**getSubscription**](docs/SubscriptionApi.md#getSubscription) | **GET** /subscription/get | Get Subscription
*SubscriptionApi* | [**getSubscriptionPlan**](docs/SubscriptionApi.md#getSubscriptionPlan) | **GET** /subscription/plan/get | Get Subscription Plan
*SubscriptionApi* | [**getSubscriptionPlans**](docs/SubscriptionApi.md#getSubscriptionPlans) | **GET** /subscription/plan/list | List Subscription Plans
*SubscriptionApi* | [**getSubscriptionUsage**](docs/SubscriptionApi.md#getSubscriptionUsage) | **GET** /subscription/usage/get | Get Subscription Usage
*SubscriptionApi* | [**updateSubscription**](docs/SubscriptionApi.md#updateSubscription) | **POST** /subscription/update | Update Subscription
*TaskApi* | [**createTask**](docs/TaskApi.md#createTask) | **POST** /task/create | Create Task
*TaskApi* | [**deleteTask**](docs/TaskApi.md#deleteTask) | **POST** /task/delete | Delete Task
*TaskApi* | [**getTask**](docs/TaskApi.md#getTask) | **GET** /task/get | Get Task
*TaskApi* | [**searchTasks**](docs/TaskApi.md#searchTasks) | **GET** /task/search | Search Tasks
*TaskApi* | [**updateTask**](docs/TaskApi.md#updateTask) | **POST** /task/update | Update Task
*TerritoryApi* | [**createTerritory**](docs/TerritoryApi.md#createTerritory) | **POST** /territory/create | Create Territory
*TerritoryApi* | [**deleteTerritory**](docs/TerritoryApi.md#deleteTerritory) | **POST** /territory/delete | Delete Territory
*TerritoryApi* | [**getTerritory**](docs/TerritoryApi.md#getTerritory) | **GET** /territory/get | Get Territory
*TerritoryApi* | [**searchTerritories**](docs/TerritoryApi.md#searchTerritories) | **GET** /territory/search | Search Territories
*TerritoryApi* | [**updateTerritory**](docs/TerritoryApi.md#updateTerritory) | **POST** /territory/update | Update Territory
*ThemeDescriptorApi* | [**addOrUpdateThemeDescriptor**](docs/ThemeDescriptorApi.md#addOrUpdateThemeDescriptor) | **POST** /consumer/theme | Create/Update Theme
*ThemeDescriptorApi* | [**getThemeDescriptor**](docs/ThemeDescriptorApi.md#getThemeDescriptor) | **GET** /consumer/theme/get | Get Theme
*ThemeDescriptorApi* | [**getThemeDescriptors**](docs/ThemeDescriptorApi.md#getThemeDescriptors) | **GET** /consumer/theme/search | Search Themes
*ThemeDescriptorApi* | [**removeThemeDescriptor**](docs/ThemeDescriptorApi.md#removeThemeDescriptor) | **POST** /consumer/theme/remove | Delete Theme
*ThirdPartyCredentialsApi* | [**createCredential**](docs/ThirdPartyCredentialsApi.md#createCredential) | **POST** /thirdparty/credential/create | Create Credential
*ThirdPartyCredentialsApi* | [**createNetwork**](docs/ThirdPartyCredentialsApi.md#createNetwork) | **POST** /thirdparty/network/create | Create Network
*ThirdPartyCredentialsApi* | [**deleteCredential**](docs/ThirdPartyCredentialsApi.md#deleteCredential) | **POST** /thirdparty/credential/delete | Delete Credential
*ThirdPartyCredentialsApi* | [**deleteNetwork**](docs/ThirdPartyCredentialsApi.md#deleteNetwork) | **POST** /thirdparty/network/delete | Delete Network
*ThirdPartyCredentialsApi* | [**getCredential**](docs/ThirdPartyCredentialsApi.md#getCredential) | **POST** /thirdparty/credential/get | Get Credential
*ThirdPartyCredentialsApi* | [**getNetwork**](docs/ThirdPartyCredentialsApi.md#getNetwork) | **GET** /thirdparty/network/get | Get Network
*ThirdPartyCredentialsApi* | [**searchCredentials**](docs/ThirdPartyCredentialsApi.md#searchCredentials) | **GET** /thirdparty/credential/search | Search Credentials
*ThirdPartyCredentialsApi* | [**searchNetworks**](docs/ThirdPartyCredentialsApi.md#searchNetworks) | **GET** /thirdparty/network/search | Search Networks
*ThirdPartyCredentialsApi* | [**sendMFAChallenge**](docs/ThirdPartyCredentialsApi.md#sendMFAChallenge) | **POST** /thirdparty/credential/mfa/send | Send MFA Challenge
*ThirdPartyCredentialsApi* | [**updateCredential**](docs/ThirdPartyCredentialsApi.md#updateCredential) | **POST** /thirdparty/credential/update | Update Credential
*ThirdPartyCredentialsApi* | [**updateNetwork**](docs/ThirdPartyCredentialsApi.md#updateNetwork) | **POST** /thirdparty/network/update | Update Network
*TicketApi* | [**getTicketCount**](docs/TicketApi.md#getTicketCount) | **GET** /ticket/count | Get Ticket Count
*TicketApi* | [**getTicketList**](docs/TicketApi.md#getTicketList) | **GET** /ticket/getList | Get Ticket List
*TicketApi* | [**giftPurchase**](docs/TicketApi.md#giftPurchase) | **POST** /purchase/gift | Gift Tickets
*TicketApi* | [**saveTicket**](docs/TicketApi.md#saveTicket) | **POST** /ticket/save | Save Ticket
*TicketApi* | [**saveTicketViaFileUpload**](docs/TicketApi.md#saveTicketViaFileUpload) | **POST** /ticket/save/fileUpload | Save Ticket with Reciept
*TicketApi* | [**ticketOffers**](docs/TicketApi.md#ticketOffers) | **GET** /ticket/ticketoffers | Get Ticket Offers
*TournamentApi* | [**createTournament**](docs/TournamentApi.md#createTournament) | **POST** /tournament/create | Create Tournament
*TournamentApi* | [**deleteTournament**](docs/TournamentApi.md#deleteTournament) | **POST** /tournament/delete | Delete Tournament
*TournamentApi* | [**getTournament**](docs/TournamentApi.md#getTournament) | **GET** /tournament/get | Get Tournament
*TournamentApi* | [**searchObjects**](docs/TournamentApi.md#searchObjects) | **GET** /tournament/object/search | Search Tournament Objects
*TournamentApi* | [**searchRounds**](docs/TournamentApi.md#searchRounds) | **GET** /tournament/round/search | Search Tournament Rounds
*TournamentApi* | [**searchTournaments**](docs/TournamentApi.md#searchTournaments) | **GET** /tournament/search | Search Tournaments
*TournamentApi* | [**submitTournamentScore**](docs/TournamentApi.md#submitTournamentScore) | **POST** /tournament/score | Submit Tournament Score
*TournamentApi* | [**submitTournamentVote**](docs/TournamentApi.md#submitTournamentVote) | **POST** /tournament/vote | Submit a vote for a multi-stage album tournament.
*TournamentApi* | [**substituteTournamentPlayer**](docs/TournamentApi.md#substituteTournamentPlayer) | **POST** /tournament/substitute | Substitute Tournament Player
*TournamentApi* | [**updateTournament**](docs/TournamentApi.md#updateTournament) | **POST** /tournament/update | Update Tournament
*TrackingApi* | [**batchSaveTracking**](docs/TrackingApi.md#batchSaveTracking) | **POST** /tracking/batch/create | Create Batch Tracking
*TrackingApi* | [**getPredictedLocations**](docs/TrackingApi.md#getPredictedLocations) | **GET** /tracking/predicted/get | Get Predicted Locations
*TrackingApi* | [**getPredictedPath**](docs/TrackingApi.md#getPredictedPath) | **GET** /tracking/path/get | Get Tracking Path
*TrackingApi* | [**getPreferredLocations**](docs/TrackingApi.md#getPreferredLocations) | **GET** /tracking/preferred/search | Search Preferred Locations
*TrackingApi* | [**getTrackingLegs**](docs/TrackingApi.md#getTrackingLegs) | **GET** /tracking/search | Search Tracking
*TrackingApi* | [**saveTrackingLeg**](docs/TrackingApi.md#saveTrackingLeg) | **POST** /tracking/leg/create | Create Tracking Leg
*TrackingApi* | [**saveTrackingStep**](docs/TrackingApi.md#saveTrackingStep) | **POST** /tracking/step/create | Create Tracking Step
*TrackingApi* | [**searchAccountsWithTrackingLegs**](docs/TrackingApi.md#searchAccountsWithTrackingLegs) | **GET** /tracking/list | List Tracking
*TrackingApi* | [**searchTrackingLegs**](docs/TrackingApi.md#searchTrackingLegs) | **GET** /tracking/searchByBillable | Search Tracking (Billable)
*TriggerApi* | [**createTrigger**](docs/TriggerApi.md#createTrigger) | **POST** /trigger/create | Create Trigger
*TriggerApi* | [**deleteTrigger**](docs/TriggerApi.md#deleteTrigger) | **POST** /trigger/delete | Delete Trigger
*TriggerApi* | [**getTrigger**](docs/TriggerApi.md#getTrigger) | **GET** /trigger/get | Get Trigger
*TriggerApi* | [**searchTriggers**](docs/TriggerApi.md#searchTriggers) | **GET** /trigger/search | Search Triggers
*TriggerApi* | [**updateTrigger**](docs/TriggerApi.md#updateTrigger) | **POST** /trigger/update | Update Trigger
*TripApi* | [**createTrip**](docs/TripApi.md#createTrip) | **POST** /trip | Create Trip
*TripApi* | [**delete**](docs/TripApi.md#delete) | **DELETE** /trip/{id} | Delete Trip
*TripApi* | [**driveTrip**](docs/TripApi.md#driveTrip) | **POST** /trip/{id}/drive | Set Trip Preference Driver
*TripApi* | [**flexibleTrip**](docs/TripApi.md#flexibleTrip) | **POST** /trip/{id}/flexible | Set Trip Preference Flexible
*TripApi* | [**getTrip**](docs/TripApi.md#getTrip) | **GET** /trip/{id} | Get Trip
*TripApi* | [**getTripMatches**](docs/TripApi.md#getTripMatches) | **GET** /trip/{id}/match | Get Trip Matches
*TripApi* | [**processTripMatches**](docs/TripApi.md#processTripMatches) | **POST** /trip/match/process | Process Trip Matches
*TripApi* | [**ride**](docs/TripApi.md#ride) | **POST** /trip/{id}/ride | Set Trip Preference Rider
*TripApi* | [**search**](docs/TripApi.md#search) | **GET** /trip | Search Trips
*TripApi* | [**searchTrips**](docs/TripApi.md#searchTrips) | **GET** /trip/match | Search Trips
*TripApi* | [**updateLocations**](docs/TripApi.md#updateLocations) | **POST** /trip/{id}/locations | Update Trip Locations
*TripApi* | [**updateRecurrenceLocations**](docs/TripApi.md#updateRecurrenceLocations) | **POST** /trip/{id}/locations/recurrence | Update Recurrence Locations
*TripApi* | [**updateRecurrenceShipments**](docs/TripApi.md#updateRecurrenceShipments) | **POST** /trip/{id}/shipments/recurrence | Update Recurrence Shipments
*TripApi* | [**updateShipments**](docs/TripApi.md#updateShipments) | **POST** /trip/{id}/shipments | Update Trip Shipments
*TripApi* | [**updateTrip**](docs/TripApi.md#updateTrip) | **PUT** /trip/{id} | Update Trip
*TripApi* | [**updateTripNotifications**](docs/TripApi.md#updateTripNotifications) | **POST** /trip/notifications | Trip Notifications
*TwilioApi* | [**smsBuyOffer**](docs/TwilioApi.md#smsBuyOffer) | **POST** /sms/buyoffer/{appKey} | Buy Offer by SMS
*TwitterApi* | [**authorizeTwitter**](docs/TwitterApi.md#authorizeTwitter) | **POST** /twitter/authorize | Authorize Twitter
*TwitterApi* | [**loginTwitter**](docs/TwitterApi.md#loginTwitter) | **POST** /twitter/login | Login Twitter
*UserPermissionsApi* | [**addUsersToPermissionable**](docs/UserPermissionsApi.md#addUsersToPermissionable) | **POST** /consumer/permissions/add | Add User
*UserPermissionsApi* | [**approvePermissionable**](docs/UserPermissionsApi.md#approvePermissionable) | **POST** /permissionable/approve | Approve Permissionable
*UserPermissionsApi* | [**leaveFromPermissionable**](docs/UserPermissionsApi.md#leaveFromPermissionable) | **POST** /consumer/permissions/leave | Leave
*UserPermissionsApi* | [**removeUsersFromPermissionable**](docs/UserPermissionsApi.md#removeUsersFromPermissionable) | **POST** /consumer/permissions/remove | Remove User
*UserPermissionsApi* | [**searchPermissionables**](docs/UserPermissionsApi.md#searchPermissionables) | **GET** /permissions/search | Search Permissionables
*UserPermissionsApi* | [**searchPermissionablesFollowingDistance**](docs/UserPermissionsApi.md#searchPermissionablesFollowingDistance) | **GET** /permissions/distancesearch | Search Permissionables by Distnace
*VatomApi* | [**createFollowing**](docs/VatomApi.md#createFollowing) | **POST** /vatom/me/rels/following/create | Create following
*VatomApi* | [**createSpace**](docs/VatomApi.md#createSpace) | **POST** /vatom/b/spaces/create | Create Vatom Space
*VatomApi* | [**createVatomEvent**](docs/VatomApi.md#createVatomEvent) | **POST** /vatom/b/events/create | Create Vatom Event
*VatomApi* | [**deleteFollowing**](docs/VatomApi.md#deleteFollowing) | **POST** /vatom/me/rels/following/delete | Delete following
*VatomApi* | [**deletePointsBalance**](docs/VatomApi.md#deletePointsBalance) | **POST** /vatom/b/campaign/points/delete | Reset All Points Balance
*VatomApi* | [**deleteSpace**](docs/VatomApi.md#deleteSpace) | **POST** /vatom/b/spaces/delete | Delete Vatom Space
*VatomApi* | [**deleteVatomEvent**](docs/VatomApi.md#deleteVatomEvent) | **POST** /vatom/b/events/delete | Delete Vatom Event
*VatomApi* | [**deleteVatomNFT**](docs/VatomApi.md#deleteVatomNFT) | **POST** /vatom/vatoms/delete | Delete Vatom NFT
*VatomApi* | [**executeActionOnNFT**](docs/VatomApi.md#executeActionOnNFT) | **POST** /vatom/vatoms/execute-action | Execute Action on NFT
*VatomApi* | [**geomapSearch**](docs/VatomApi.md#geomapSearch) | **GET** /vatom/vatoms/geo-map/search | Search Vatom Geo Map
*VatomApi* | [**getBusinessBehaviors**](docs/VatomApi.md#getBusinessBehaviors) | **GET** /vatom/b/behaviors | Get Vatom Business Behaviors
*VatomApi* | [**getBusinessCoinsBalance**](docs/VatomApi.md#getBusinessCoinsBalance) | **GET** /vatom/b/coins/get | Get the coins for a Business
*VatomApi* | [**getBusinessIds**](docs/VatomApi.md#getBusinessIds) | **GET** /vatom/me/businesses | Get the user business ids
*VatomApi* | [**getBusinessInfo**](docs/VatomApi.md#getBusinessInfo) | **GET** /vatom/b/get | Get Vatom Business Info
*VatomApi* | [**getBusinessUsers**](docs/VatomApi.md#getBusinessUsers) | **GET** /vatom/b/users | Get Vatom Business Users
*VatomApi* | [**getCampaignGroupEntities**](docs/VatomApi.md#getCampaignGroupEntities) | **GET** /vatom/b/campaign-groups/entities | Get Campaign Group Entities
*VatomApi* | [**getCampaignGroupRules**](docs/VatomApi.md#getCampaignGroupRules) | **GET** /vatom/b/campaign-groups/rules | Get Campaign Group Rules
*VatomApi* | [**getCampaignGroupStats**](docs/VatomApi.md#getCampaignGroupStats) | **GET** /vatom/b/campaign-groups/stats | Get Campaign Group Stats
*VatomApi* | [**getCampaignInfo**](docs/VatomApi.md#getCampaignInfo) | **GET** /vatom/b/campaign-groups/get | Get Campaign Info
*VatomApi* | [**getEventGuestList**](docs/VatomApi.md#getEventGuestList) | **GET** /vatom/b/events/guests/get | Get Vatom Event Guest List
*VatomApi* | [**getInventory**](docs/VatomApi.md#getInventory) | **GET** /vatom/me/inventory | Get Vatom User&#39;s Inventory
*VatomApi* | [**getMyFollowing**](docs/VatomApi.md#getMyFollowing) | **GET** /vatom/me/rels/following | Get following
*VatomApi* | [**getPointsBalance**](docs/VatomApi.md#getPointsBalance) | **GET** /vatom/u/campaign/points/get | Get Points Balance
*VatomApi* | [**getPointsBalanceAsBusiness**](docs/VatomApi.md#getPointsBalanceAsBusiness) | **GET** /vatom/b/campaign/u/points/get | Get Points Balance as Business
*VatomApi* | [**getSpace**](docs/VatomApi.md#getSpace) | **GET** /vatom/b/spaces/get | Get Vatom Space
*VatomApi* | [**getUserCoinsAsBusiness**](docs/VatomApi.md#getUserCoinsAsBusiness) | **GET** /vatom/b/users/coins/get | Get the coins for a user (as a Business)
*VatomApi* | [**getUserCoinsBalance**](docs/VatomApi.md#getUserCoinsBalance) | **GET** /vatom/u/coins/get | Gets the coins balance for a Vatom User
*VatomApi* | [**getUserFollowers**](docs/VatomApi.md#getUserFollowers) | **GET** /vatom/users/rels/followers | Get user followers
*VatomApi* | [**getUserFollowing**](docs/VatomApi.md#getUserFollowing) | **GET** /vatom/users/rels/following | Get user following
*VatomApi* | [**getUserInfo**](docs/VatomApi.md#getUserInfo) | **GET** /vatom/user/get | Get User Info
*VatomApi* | [**getUserProfile**](docs/VatomApi.md#getUserProfile) | **GET** /vatom/me/get | Get Vatom User Profile
*VatomApi* | [**getVatomEvent**](docs/VatomApi.md#getVatomEvent) | **GET** /vatom/b/events/get | Get Vatom Event
*VatomApi* | [**getVatomNFT**](docs/VatomApi.md#getVatomNFT) | **GET** /vatom/vatoms/get | Get Vatom NFT Details
*VatomApi* | [**listCommunities**](docs/VatomApi.md#listCommunities) | **GET** /vatom/b/communities/search | List Vatom Communities
*VatomApi* | [**listEvents**](docs/VatomApi.md#listEvents) | **GET** /vatom/b/events/search | List Vatom Events
*VatomApi* | [**listSpaces**](docs/VatomApi.md#listSpaces) | **GET** /vatom/b/spaces/search | List Vatom Spaces
*VatomApi* | [**listUserCoinTransactions**](docs/VatomApi.md#listUserCoinTransactions) | **GET** /vatom/u/coins/txns/search | List Coin Transactions for a Vatom User
*VatomApi* | [**listUserCoinTransactionsAsBusiness**](docs/VatomApi.md#listUserCoinTransactionsAsBusiness) | **GET** /vatom/b/users/coins/txns/search | List coin transactions for a user (as a Business)
*VatomApi* | [**performActionOnNFT**](docs/VatomApi.md#performActionOnNFT) | **POST** /vatom/me/vatoms/actions | Perform Action on NFT
*VatomApi* | [**redeemNFT**](docs/VatomApi.md#redeemNFT) | **POST** /vatom/b/redemptions | Redeem NFT
*VatomApi* | [**redeemUserCoinsAsBusiness**](docs/VatomApi.md#redeemUserCoinsAsBusiness) | **POST** /vatom/b/users/coins/redeem | Redeem the coins for a user (as a Business)
*VatomApi* | [**searchBusinesses**](docs/VatomApi.md#searchBusinesses) | **GET** /vatom/b/search | Search for Vatom Businesses
*VatomApi* | [**searchCampaignGroups**](docs/VatomApi.md#searchCampaignGroups) | **GET** /vatom/b/campaign-groups/search | Search Campaign Groups
*VatomApi* | [**searchIdentities**](docs/VatomApi.md#searchIdentities) | **GET** /vatom/me/identities/search | Search User Identities
*VatomApi* | [**searchInventory**](docs/VatomApi.md#searchInventory) | **GET** /vatom/user-inventory/search | Search Vatom User&#39;s Inventory
*VatomApi* | [**sendNFT**](docs/VatomApi.md#sendNFT) | **POST** /vatom/b/campaigns/send | Send NFT
*VatomApi* | [**setPointsBalanceAsBusiness**](docs/VatomApi.md#setPointsBalanceAsBusiness) | **POST** /vatom/b/campaign/u/points/update | Set Points Balance as Business
*VatomApi* | [**transferUserCoins**](docs/VatomApi.md#transferUserCoins) | **POST** /vatom/u/coins/transfer | Transfer coins from Vatom Users
*VatomApi* | [**updateBusinessCoins**](docs/VatomApi.md#updateBusinessCoins) | **POST** /vatom/b/coins/update | Fund coins for a Business
*VatomApi* | [**updateEventGuestList**](docs/VatomApi.md#updateEventGuestList) | **POST** /vatom/b/events/guests/update | Update Vatom Event Guest List
*VatomApi* | [**updateSpace**](docs/VatomApi.md#updateSpace) | **POST** /vatom/b/spaces/update | Update Vatom Space
*VatomApi* | [**updateUserCoinsAsBusiness**](docs/VatomApi.md#updateUserCoinsAsBusiness) | **POST** /vatom/b/users/coins/update | Update the coins for a user (as a Business)
*VatomApi* | [**updateUserProfile**](docs/VatomApi.md#updateUserProfile) | **POST** /vatom/me/update | Update Vatom User Profile
*VatomApi* | [**updateVatomEvent**](docs/VatomApi.md#updateVatomEvent) | **POST** /vatom/b/events/update | Update Vatom Event
*VehicleApi* | [**createVehicle**](docs/VehicleApi.md#createVehicle) | **POST** /vehicle | Create Vehicle
*VehicleApi* | [**deleteVehicle**](docs/VehicleApi.md#deleteVehicle) | **DELETE** /vehicle/{id} | Delete Vehicle
*VehicleApi* | [**getVehicle**](docs/VehicleApi.md#getVehicle) | **GET** /vehicle/{id} | Get Vehicle
*VehicleApi* | [**searchVehicle**](docs/VehicleApi.md#searchVehicle) | **GET** /vehicle | Search Vehicle
*VehicleApi* | [**updateVehicle**](docs/VehicleApi.md#updateVehicle) | **PUT** /vehicle/{id} | Update Vehicle
*VehicleTypeApi* | [**createVehicleType**](docs/VehicleTypeApi.md#createVehicleType) | **POST** /vehicle/type | Create Vehicle Type
*VehicleTypeApi* | [**deleteVehicleType**](docs/VehicleTypeApi.md#deleteVehicleType) | **DELETE** /vehicle/type/{vehicleTypeId} | Delete Vehicle Type
*VehicleTypeApi* | [**getVehicleType**](docs/VehicleTypeApi.md#getVehicleType) | **GET** /vehicle/type/{vehicleTypeId} | Get Vehicle Type
*VehicleTypeApi* | [**searchVehicleTypes**](docs/VehicleTypeApi.md#searchVehicleTypes) | **GET** /vehicle/type | Search Vehicle Type
*VehicleTypeApi* | [**updateVehicleType**](docs/VehicleTypeApi.md#updateVehicleType) | **PUT** /vehicle/type/{vehicleTypeId} | Update Vehicle Type
*WalletApi* | [**createOfferTransaction**](docs/WalletApi.md#createOfferTransaction) | **POST** /wallet/create | Create Wallet Offers
*WalletApi* | [**deleteOfferTransaction**](docs/WalletApi.md#deleteOfferTransaction) | **POST** /wallet/delete | Delete Wallet Offer
*WalletApi* | [**getOfferTransaction**](docs/WalletApi.md#getOfferTransaction) | **GET** /wallet/get | Get Wallet Offer
*WalletApi* | [**previewOfferTransaction**](docs/WalletApi.md#previewOfferTransaction) | **POST** /wallet/preview | Preview Wallet Offers
*WalletApi* | [**searchOfferTransactions**](docs/WalletApi.md#searchOfferTransactions) | **GET** /wallet/search | Search Wallet Offers
*WalletApi* | [**updateOfferTransaction**](docs/WalletApi.md#updateOfferTransaction) | **POST** /wallet/update | Update Wallet Offer
*WeatherApi* | [**searchWeather**](docs/WeatherApi.md#searchWeather) | **GET** /weather/search | Search Weather
*WordApi* | [**createWord**](docs/WordApi.md#createWord) | **POST** /game/word/create | Create Word
*WordApi* | [**deleteWord**](docs/WordApi.md#deleteWord) | **DELETE** /game/word/delete | Delete Word
*WordApi* | [**getWord**](docs/WordApi.md#getWord) | **GET** /game/word/get | Get Word
*WordApi* | [**getWords**](docs/WordApi.md#getWords) | **GET** /game/word/search | Search Words
*WordApi* | [**updateWord**](docs/WordApi.md#updateWord) | **POST** /game/word/update | Update Word
*WorkflowApi* | [**runWorkflow**](docs/WorkflowApi.md#runWorkflow) | **POST** /workflow/run | Run Workflow


## Documentation for Models

 - [Account](docs/Account.md)
 - [AccountListResponse](docs/AccountListResponse.md)
 - [AccountLoginResponse](docs/AccountLoginResponse.md)
 - [AccountMiniResponse](docs/AccountMiniResponse.md)
 - [AccountProfileInfo](docs/AccountProfileInfo.md)
 - [AccountResponse](docs/AccountResponse.md)
 - [AccountShortResponse](docs/AccountShortResponse.md)
 - [AchievementProgressResponse](docs/AchievementProgressResponse.md)
 - [AchievementResponse](docs/AchievementResponse.md)
 - [AchievementShortResponse](docs/AchievementShortResponse.md)
 - [AchievementTierResponse](docs/AchievementTierResponse.md)
 - [ActivityResponse](docs/ActivityResponse.md)
 - [Address](docs/Address.md)
 - [AddressResponse](docs/AddressResponse.md)
 - [AgeGroupResponse](docs/AgeGroupResponse.md)
 - [Album](docs/Album.md)
 - [AlbumContestListResponse](docs/AlbumContestListResponse.md)
 - [AlbumContestResponse](docs/AlbumContestResponse.md)
 - [AlbumFullResponse](docs/AlbumFullResponse.md)
 - [AlbumResponse](docs/AlbumResponse.md)
 - [AnswerResponse](docs/AnswerResponse.md)
 - [AppInfoResponse](docs/AppInfoResponse.md)
 - [AppResponse](docs/AppResponse.md)
 - [AppVersion](docs/AppVersion.md)
 - [Application](docs/Application.md)
 - [ApplicationConfigResponse](docs/ApplicationConfigResponse.md)
 - [ApplicationMiniResponse](docs/ApplicationMiniResponse.md)
 - [ApplicationResponse](docs/ApplicationResponse.md)
 - [ApplicationSettingsResponse](docs/ApplicationSettingsResponse.md)
 - [ApplicationShortResponse](docs/ApplicationShortResponse.md)
 - [ApplicationUsageResponse](docs/ApplicationUsageResponse.md)
 - [Asset](docs/Asset.md)
 - [AssetFullResponse](docs/AssetFullResponse.md)
 - [AssetListResponse](docs/AssetListResponse.md)
 - [AssetResponse](docs/AssetResponse.md)
 - [AssetShortResponse](docs/AssetShortResponse.md)
 - [Assignment](docs/Assignment.md)
 - [AssignmentResponse](docs/AssignmentResponse.md)
 - [AssignmentStatus](docs/AssignmentStatus.md)
 - [AssignmentStatusResponse](docs/AssignmentStatusResponse.md)
 - [Audience](docs/Audience.md)
 - [AudienceDevice](docs/AudienceDevice.md)
 - [AudienceDeviceResponse](docs/AudienceDeviceResponse.md)
 - [AudienceDeviceVersionRange](docs/AudienceDeviceVersionRange.md)
 - [AudienceLocation](docs/AudienceLocation.md)
 - [AudienceResponse](docs/AudienceResponse.md)
 - [AudienceTargetType](docs/AudienceTargetType.md)
 - [AvailabilityResponse](docs/AvailabilityResponse.md)
 - [BaseOfferResponse](docs/BaseOfferResponse.md)
 - [BidResponse](docs/BidResponse.md)
 - [BillableEntity](docs/BillableEntity.md)
 - [BillableEntityResponse](docs/BillableEntityResponse.md)
 - [BillableEntityShortResponse](docs/BillableEntityShortResponse.md)
 - [BiometricImage](docs/BiometricImage.md)
 - [BiometricRequest](docs/BiometricRequest.md)
 - [BlobFile](docs/BlobFile.md)
 - [BlockedNotificationResponse](docs/BlockedNotificationResponse.md)
 - [Building](docs/Building.md)
 - [CargoType](docs/CargoType.md)
 - [Category](docs/Category.md)
 - [CategoryResponse](docs/CategoryResponse.md)
 - [CategoryTreeResponse](docs/CategoryTreeResponse.md)
 - [CellCarrier](docs/CellCarrier.md)
 - [CellCarrierResponse](docs/CellCarrierResponse.md)
 - [ChartData](docs/ChartData.md)
 - [Chronology](docs/Chronology.md)
 - [ConfigRoutingRequest](docs/ConfigRoutingRequest.md)
 - [ConnectedFriend](docs/ConnectedFriend.md)
 - [Connection](docs/Connection.md)
 - [ConnectionGroup](docs/ConnectionGroup.md)
 - [ConnectionGroupResponse](docs/ConnectionGroupResponse.md)
 - [ConnectionGroupShortResponse](docs/ConnectionGroupShortResponse.md)
 - [ConnectionInfoResponse](docs/ConnectionInfoResponse.md)
 - [ConnectionListResponse](docs/ConnectionListResponse.md)
 - [ConnectionResponse](docs/ConnectionResponse.md)
 - [ConsumerInviteResponse](docs/ConsumerInviteResponse.md)
 - [Contact](docs/Contact.md)
 - [ContactInfo](docs/ContactInfo.md)
 - [ContactInfoResponse](docs/ContactInfoResponse.md)
 - [ContactResponse](docs/ContactResponse.md)
 - [CoordsResponse](docs/CoordsResponse.md)
 - [CountResponse](docs/CountResponse.md)
 - [CreativeResponse](docs/CreativeResponse.md)
 - [CsvImportResponse](docs/CsvImportResponse.md)
 - [DateTimeField](docs/DateTimeField.md)
 - [DateTimeFieldType](docs/DateTimeFieldType.md)
 - [DateTimeRange](docs/DateTimeRange.md)
 - [DateTimeZone](docs/DateTimeZone.md)
 - [Device](docs/Device.md)
 - [Dimensions](docs/Dimensions.md)
 - [Direction](docs/Direction.md)
 - [DirectionResponse](docs/DirectionResponse.md)
 - [DisbursementResponse](docs/DisbursementResponse.md)
 - [DriverResponse](docs/DriverResponse.md)
 - [DurationField](docs/DurationField.md)
 - [DurationFieldType](docs/DurationFieldType.md)
 - [EmployeeResponse](docs/EmployeeResponse.md)
 - [EntityReference](docs/EntityReference.md)
 - [Event](docs/Event.md)
 - [EventAttendanceResponse](docs/EventAttendanceResponse.md)
 - [EventResponse](docs/EventResponse.md)
 - [Filter](docs/Filter.md)
 - [FilterResponse](docs/FilterResponse.md)
 - [FilterTreeResponse](docs/FilterTreeResponse.md)
 - [FingerprintBiometricImage](docs/FingerprintBiometricImage.md)
 - [Flag](docs/Flag.md)
 - [FlagResponse](docs/FlagResponse.md)
 - [FlagThreshold](docs/FlagThreshold.md)
 - [Game](docs/Game.md)
 - [GameLevel](docs/GameLevel.md)
 - [GameLevelListResponse](docs/GameLevelListResponse.md)
 - [GameLevelResponse](docs/GameLevelResponse.md)
 - [GameListResponse](docs/GameListResponse.md)
 - [GameObjectListResponse](docs/GameObjectListResponse.md)
 - [GameObjectResponse](docs/GameObjectResponse.md)
 - [GameResponse](docs/GameResponse.md)
 - [GeoBox](docs/GeoBox.md)
 - [GeoPointResponse](docs/GeoPointResponse.md)
 - [GeoResponse](docs/GeoResponse.md)
 - [GeocodeLatLngResponse](docs/GeocodeLatLngResponse.md)
 - [GroupPermissions](docs/GroupPermissions.md)
 - [ImageGenerationResponse](docs/ImageGenerationResponse.md)
 - [ImportStatuses](docs/ImportStatuses.md)
 - [Interval](docs/Interval.md)
 - [InviteResponse](docs/InviteResponse.md)
 - [Invoice](docs/Invoice.md)
 - [ItineraryResponse](docs/ItineraryResponse.md)
 - [JsonArray](docs/JsonArray.md)
 - [JsonElement](docs/JsonElement.md)
 - [JsonNull](docs/JsonNull.md)
 - [JsonObject](docs/JsonObject.md)
 - [JsonPrimitive](docs/JsonPrimitive.md)
 - [Leaderboard](docs/Leaderboard.md)
 - [LeaderboardFullResponse](docs/LeaderboardFullResponse.md)
 - [LeaderboardResponse](docs/LeaderboardResponse.md)
 - [Leg](docs/Leg.md)
 - [LegResponse](docs/LegResponse.md)
 - [LikableResponse](docs/LikableResponse.md)
 - [LikeResponse](docs/LikeResponse.md)
 - [LineItem](docs/LineItem.md)
 - [ListCountResponse](docs/ListCountResponse.md)
 - [ListResponse](docs/ListResponse.md)
 - [Listing](docs/Listing.md)
 - [ListingFullResponse](docs/ListingFullResponse.md)
 - [ListingGroupResponse](docs/ListingGroupResponse.md)
 - [ListingResponse](docs/ListingResponse.md)
 - [LoadResponse](docs/LoadResponse.md)
 - [LoadShortResponse](docs/LoadShortResponse.md)
 - [LocalTime](docs/LocalTime.md)
 - [Location](docs/Location.md)
 - [LocationResponse](docs/LocationResponse.md)
 - [LocationSearchResponse](docs/LocationSearchResponse.md)
 - [Media](docs/Media.md)
 - [MediaOfferResponse](docs/MediaOfferResponse.md)
 - [MediaResponse](docs/MediaResponse.md)
 - [MessageListResponse](docs/MessageListResponse.md)
 - [MessageResponse](docs/MessageResponse.md)
 - [Mission](docs/Mission.md)
 - [MissionFormatResponse](docs/MissionFormatResponse.md)
 - [MissionInviteResponse](docs/MissionInviteResponse.md)
 - [MissionListResponse](docs/MissionListResponse.md)
 - [MissionResponse](docs/MissionResponse.md)
 - [MissionShortResponse](docs/MissionShortResponse.md)
 - [MissionTask](docs/MissionTask.md)
 - [NameStringValueResponse](docs/NameStringValueResponse.md)
 - [Node](docs/Node.md)
 - [NodeRequest](docs/NodeRequest.md)
 - [Note](docs/Note.md)
 - [NoteFullResponse](docs/NoteFullResponse.md)
 - [NoteResponse](docs/NoteResponse.md)
 - [NotificationMessageListResponse](docs/NotificationMessageListResponse.md)
 - [NotificationMessageResponse](docs/NotificationMessageResponse.md)
 - [NotificationRecipientResponse](docs/NotificationRecipientResponse.md)
 - [NotificationRecipientResponseListResponse](docs/NotificationRecipientResponseListResponse.md)
 - [NotificationSettingsResponse](docs/NotificationSettingsResponse.md)
 - [NotificationTemplateResponse](docs/NotificationTemplateResponse.md)
 - [ObjectStoreResponse](docs/ObjectStoreResponse.md)
 - [Offer](docs/Offer.md)
 - [OfferListResponse](docs/OfferListResponse.md)
 - [OfferLocation](docs/OfferLocation.md)
 - [OfferResponse](docs/OfferResponse.md)
 - [OfferShortResponse](docs/OfferShortResponse.md)
 - [OfferTransactionResponse](docs/OfferTransactionResponse.md)
 - [OfferTransactionStatusResponse](docs/OfferTransactionStatusResponse.md)
 - [OrderItemRequest](docs/OrderItemRequest.md)
 - [OrderPackage](docs/OrderPackage.md)
 - [OrderResponse](docs/OrderResponse.md)
 - [Orders](docs/Orders.md)
 - [OrsonAiAddMovieResponse](docs/OrsonAiAddMovieResponse.md)
 - [OrsonAiBatchEmotionsResponse](docs/OrsonAiBatchEmotionsResponse.md)
 - [OrsonAiBatchResponse](docs/OrsonAiBatchResponse.md)
 - [OrsonAiBatchTopicsResponse](docs/OrsonAiBatchTopicsResponse.md)
 - [OrsonAiBatchTranscriptResponse](docs/OrsonAiBatchTranscriptResponse.md)
 - [OrsonAiEmotionsResponse](docs/OrsonAiEmotionsResponse.md)
 - [OrsonAiProdResponse](docs/OrsonAiProdResponse.md)
 - [OrsonAiProtoResponse](docs/OrsonAiProtoResponse.md)
 - [OrsonAiSTTResponse](docs/OrsonAiSTTResponse.md)
 - [OrsonAiTTSResponse](docs/OrsonAiTTSResponse.md)
 - [OrsonAiTechTuneResponse](docs/OrsonAiTechTuneResponse.md)
 - [OrsonAiTopicResponse](docs/OrsonAiTopicResponse.md)
 - [OrsonAiTopicsResponse](docs/OrsonAiTopicsResponse.md)
 - [OrsonAiVisualEmotionResponse](docs/OrsonAiVisualEmotionResponse.md)
 - [OrsonAiVoiceCanvasResponse](docs/OrsonAiVoiceCanvasResponse.md)
 - [OrsonEpisodeResponse](docs/OrsonEpisodeResponse.md)
 - [OrsonRenderResponse](docs/OrsonRenderResponse.md)
 - [OrsonVideoResponse](docs/OrsonVideoResponse.md)
 - [Pack](docs/Pack.md)
 - [PackListResponse](docs/PackListResponse.md)
 - [PackResponse](docs/PackResponse.md)
 - [Participant](docs/Participant.md)
 - [ParticipantResponse](docs/ParticipantResponse.md)
 - [PathingResponse](docs/PathingResponse.md)
 - [PaymentRequest](docs/PaymentRequest.md)
 - [PaymentTransactionResponse](docs/PaymentTransactionResponse.md)
 - [PaymentTypesResponse](docs/PaymentTypesResponse.md)
 - [PermissionResponse](docs/PermissionResponse.md)
 - [Permissions](docs/Permissions.md)
 - [PersonalProfileResponse](docs/PersonalProfileResponse.md)
 - [Placement](docs/Placement.md)
 - [PlacementResponse](docs/PlacementResponse.md)
 - [Platform](docs/Platform.md)
 - [PlatformResponse](docs/PlatformResponse.md)
 - [PostalCode](docs/PostalCode.md)
 - [PostalCodeResponse](docs/PostalCodeResponse.md)
 - [PredictedLocationResponse](docs/PredictedLocationResponse.md)
 - [PreferredLocationResponse](docs/PreferredLocationResponse.md)
 - [PreviewPersonaResponse](docs/PreviewPersonaResponse.md)
 - [Product](docs/Product.md)
 - [ProductResponse](docs/ProductResponse.md)
 - [ProfileInfoResponse](docs/ProfileInfoResponse.md)
 - [ProfileResponse](docs/ProfileResponse.md)
 - [ProfileShortResponse](docs/ProfileShortResponse.md)
 - [Program](docs/Program.md)
 - [PromoCode](docs/PromoCode.md)
 - [PurchaseItemFullResponse](docs/PurchaseItemFullResponse.md)
 - [PurchaseItemListResponse](docs/PurchaseItemListResponse.md)
 - [PurchaseItemResponse](docs/PurchaseItemResponse.md)
 - [PurchaseItemShortResponse](docs/PurchaseItemShortResponse.md)
 - [PurchaseOrderItemResponse](docs/PurchaseOrderItemResponse.md)
 - [QuestionResponse](docs/QuestionResponse.md)
 - [QueueResponse](docs/QueueResponse.md)
 - [RankFullResponse](docs/RankFullResponse.md)
 - [RankListResponse](docs/RankListResponse.md)
 - [RankResponse](docs/RankResponse.md)
 - [RatingIndexResponse](docs/RatingIndexResponse.md)
 - [RatingResponse](docs/RatingResponse.md)
 - [Recurrence](docs/Recurrence.md)
 - [Region](docs/Region.md)
 - [RegionLegSummary](docs/RegionLegSummary.md)
 - [RegionResponse](docs/RegionResponse.md)
 - [ReportBatchResponse](docs/ReportBatchResponse.md)
 - [ReportDefinition](docs/ReportDefinition.md)
 - [ReportRegionLegSummaryBatchResponse](docs/ReportRegionLegSummaryBatchResponse.md)
 - [ReportResponse](docs/ReportResponse.md)
 - [ReportTypeResponse](docs/ReportTypeResponse.md)
 - [ReservationResponse](docs/ReservationResponse.md)
 - [Retailer](docs/Retailer.md)
 - [RetailerCountResponse](docs/RetailerCountResponse.md)
 - [RetailerFullResponse](docs/RetailerFullResponse.md)
 - [RetailerLocation](docs/RetailerLocation.md)
 - [RetailerLocationResponse](docs/RetailerLocationResponse.md)
 - [RetailerLocationShortResponse](docs/RetailerLocationShortResponse.md)
 - [RetailerOfferResponse](docs/RetailerOfferResponse.md)
 - [RetailerProfile](docs/RetailerProfile.md)
 - [RetailerResponse](docs/RetailerResponse.md)
 - [RetailerShortResponse](docs/RetailerShortResponse.md)
 - [RewardResponse](docs/RewardResponse.md)
 - [Route](docs/Route.md)
 - [RouteSettings](docs/RouteSettings.md)
 - [RoutingListResponse](docs/RoutingListResponse.md)
 - [RoutingResponse](docs/RoutingResponse.md)
 - [RuleListResponse](docs/RuleListResponse.md)
 - [RuleResponse](docs/RuleResponse.md)
 - [ScheduledNotification](docs/ScheduledNotification.md)
 - [ScheduledNotificationFullResponse](docs/ScheduledNotificationFullResponse.md)
 - [ScheduledNotificationShortResponse](docs/ScheduledNotificationShortResponse.md)
 - [ScoreListResponse](docs/ScoreListResponse.md)
 - [ScoreResponse](docs/ScoreResponse.md)
 - [SearchResponse](docs/SearchResponse.md)
 - [ServiceHub](docs/ServiceHub.md)
 - [ServiceType](docs/ServiceType.md)
 - [Shipment](docs/Shipment.md)
 - [ShipmentBatch](docs/ShipmentBatch.md)
 - [ShipmentImportStatus](docs/ShipmentImportStatus.md)
 - [ShipmentOrder](docs/ShipmentOrder.md)
 - [SirqulResponse](docs/SirqulResponse.md)
 - [SizeGroup](docs/SizeGroup.md)
 - [SizeGroupResponse](docs/SizeGroupResponse.md)
 - [Step](docs/Step.md)
 - [StepResponse](docs/StepResponse.md)
 - [Stop](docs/Stop.md)
 - [StopResponse](docs/StopResponse.md)
 - [Subscription](docs/Subscription.md)
 - [SubscriptionOption](docs/SubscriptionOption.md)
 - [SubscriptionOptionResponse](docs/SubscriptionOptionResponse.md)
 - [SubscriptionPlan](docs/SubscriptionPlan.md)
 - [SubscriptionPlanResponse](docs/SubscriptionPlanResponse.md)
 - [SubscriptionResponse](docs/SubscriptionResponse.md)
 - [TaskResponse](docs/TaskResponse.md)
 - [Territory](docs/Territory.md)
 - [TerritoryResponse](docs/TerritoryResponse.md)
 - [ThemeDescriptorResponse](docs/ThemeDescriptorResponse.md)
 - [ThirdPartyCredentialResponse](docs/ThirdPartyCredentialResponse.md)
 - [ThirdPartyCredentials](docs/ThirdPartyCredentials.md)
 - [ThirdPartyNetwork](docs/ThirdPartyNetwork.md)
 - [ThirdPartyNetworkResponse](docs/ThirdPartyNetworkResponse.md)
 - [ThirdPartyNetworkShortResponse](docs/ThirdPartyNetworkShortResponse.md)
 - [TicketCountResponse](docs/TicketCountResponse.md)
 - [TicketListResponse](docs/TicketListResponse.md)
 - [TicketOfferResponse](docs/TicketOfferResponse.md)
 - [TicketResponse](docs/TicketResponse.md)
 - [TimeSlotResponse](docs/TimeSlotResponse.md)
 - [TokenResponse](docs/TokenResponse.md)
 - [TournamentResponse](docs/TournamentResponse.md)
 - [TriggerResponse](docs/TriggerResponse.md)
 - [TrilatAppSettings](docs/TrilatAppSettings.md)
 - [TrilatCacheRequest](docs/TrilatCacheRequest.md)
 - [TrilatCacheSample](docs/TrilatCacheSample.md)
 - [Trip](docs/Trip.md)
 - [Tutorial](docs/Tutorial.md)
 - [TutorialResponse](docs/TutorialResponse.md)
 - [TwiMLResponse](docs/TwiMLResponse.md)
 - [UrlResponse](docs/UrlResponse.md)
 - [UserActivityResponse](docs/UserActivityResponse.md)
 - [UserLocationListResponse](docs/UserLocationListResponse.md)
 - [UserLocationResponse](docs/UserLocationResponse.md)
 - [UserLocationSearchResponse](docs/UserLocationSearchResponse.md)
 - [UserPermissions](docs/UserPermissions.md)
 - [UserPermissionsListResponse](docs/UserPermissionsListResponse.md)
 - [UserPermissionsResponse](docs/UserPermissionsResponse.md)
 - [UserSettingsResponse](docs/UserSettingsResponse.md)
 - [Vehicle](docs/Vehicle.md)
 - [VehicleCargoSetting](docs/VehicleCargoSetting.md)
 - [VehicleResponse](docs/VehicleResponse.md)
 - [VehicleType](docs/VehicleType.md)
 - [Verb](docs/Verb.md)
 - [WeatherForecastResponse](docs/WeatherForecastResponse.md)
 - [WeatherResponse](docs/WeatherResponse.md)
 - [WordzWordResponse](docs/WordzWordResponse.md)
 - [WrappedProxyItemResponse](docs/WrappedProxyItemResponse.md)
 - [WrappedProxyResponse](docs/WrappedProxyResponse.md)
 - [WrappedResponse](docs/WrappedResponse.md)
 - [YayOrNay](docs/YayOrNay.md)


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


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

info@sirqul.com

