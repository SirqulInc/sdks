public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'http://localhost';
        calloutName = 'Sirqul_IoT_Platform';
        authentications.put('appKey', new OAS.ApiKeyHeaderAuth('Application-Key'));
        authentications.put('restKey', new OAS.ApiKeyHeaderAuth('Application-Rest-Key'));
    }
}
