package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.BillableEntityResponse;
import org.openapitools.model.ContactInfoResponse;
import org.openapitools.model.ProfileShortResponse;
import org.openapitools.model.RetailerCountResponse;
import org.openapitools.model.RetailerLocationShortResponse;

@Canonical
class RetailerFullResponse {
    
    Long retailerId
    
    String name
    
    String facebookUrl
    
    String twitterUrl
    
    Boolean active
    
    ContactInfoResponse contact
    
    AssetShortResponse logo
    
    AssetShortResponse picture1
    
    AssetShortResponse picture2
    
    Double latitude
    
    Double longitude
    
    String visibility
    
    ProfileShortResponse responsible
    
    ProfileShortResponse manager
    
    BillableEntityResponse billableEntity
    
    RetailerCountResponse counts
    
    List<RetailerLocationShortResponse> locations = new ArrayList<>()
}
