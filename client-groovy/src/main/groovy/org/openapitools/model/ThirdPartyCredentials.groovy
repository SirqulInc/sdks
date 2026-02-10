package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Account;
import org.openapitools.model.ThirdPartyNetwork;

@Canonical
class ThirdPartyCredentials {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Account account
    
    ThirdPartyNetwork thirdPartyNetwork
    
    Long thirdPartyUID
    
    String thirdPartyId
    
    String thirdPartyToken
    
    String thirdPartySecret
    
    String thirdPartyName
    
    String thirdPartyUnencryptedToken
}
