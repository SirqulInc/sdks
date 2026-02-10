package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Address;
import org.openapitools.model.CellCarrier;

@Canonical
class Contact {
    
    String firstName
    
    String middleName
    
    String lastName
    
    String prefix
    
    String suffix
    
    String title
    
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
    
    String display
}
