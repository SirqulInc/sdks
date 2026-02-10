package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.AlbumResponse;
import org.openapitools.model.ApplicationShortResponse;
import org.openapitools.model.ConnectionResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.OfferShortResponse;
import org.openapitools.model.RetailerLocationResponse;

@Canonical
class ConsumerInviteResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long inviterId
    
    AccountShortResponse inviter
    
    ConnectionResponse connection
    
    String inviteText
    
    String token
    
    String albumCoverUrl
    
    String albumTitle
    
    String appName
    
    String welcomeText
    
    ApplicationShortResponse application
    
    RetailerLocationResponse retailerLocation
    
    OfferShortResponse offer
    
    AlbumResponse album
    
    String returning
}
