package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.Region;

@Canonical
class PostalCode {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    String code
    
    String plus4
    
    String stateCode
    
    String city
    
    String timeZone
    
    Integer utcOffset
    
    Set<Region> regions = new LinkedHashSet<>()
    
    Boolean eliminated
    
    Boolean searchPoint
    
    Date lastOfferImport
    
    Double truncatedLatitude
    
    Double truncatedLongitude
}
