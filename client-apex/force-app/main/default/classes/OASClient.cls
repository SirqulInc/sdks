public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://dev.sirqul.com/api/3.18';
        calloutName = 'Sirqul_IoT_Platform';
        authentications.put('appKey', new OAS.ApiKeyHeaderAuth('Application-Key'));
        authentications.put('restKey', new OAS.ApiKeyHeaderAuth('Application-Rest-Key'));
    }
}
