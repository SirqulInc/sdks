package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Address;
import org.openapitools.model.CellCarrier;

@Canonical
class RetailerProfile {
    
    String detailsHeader
    
    String detailsBody
    
    String detailsLineLeft1
    
    String detailsLineLeft2
    
    String detailsLineRight1
    
    String metaDescription
    
    String directions
    
    String hours
    
    String homePhone
    
    String cellPhone
    
    CellCarrier cellCarrier
    
    String businessPhone
    
    String businessPhoneExt
    
    String faxNumber
    
    String timeZone
    
    String utcOffset
    
    String code501c3
    
    String emailAddress
    
    Address address
    
    String web
    
    Boolean featured
    
    Boolean listed
}
