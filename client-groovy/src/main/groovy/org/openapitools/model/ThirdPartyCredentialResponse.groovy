package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ThirdPartyNetworkShortResponse;

@Canonical
class ThirdPartyCredentialResponse {
    
    Long thirdPartyCredentialId
    
    String thirdPartyId
    
    String thirdPartyName
    
    ThirdPartyNetworkShortResponse network
    
    Long updated
    
    Long created
}
