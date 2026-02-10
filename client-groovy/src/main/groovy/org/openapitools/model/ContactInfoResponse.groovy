package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AddressResponse;
import org.openapitools.model.CellCarrierResponse;

@Canonical
class ContactInfoResponse {
    
    String homePhone
    
    String cellPhone
    
    String cellPhoneCarrier
    
    String businessPhone
    
    String businessPhoneExt
    
    String faxNumber
    
    String timeZone
    
    String utcOffset
    
    String code501c3
    
    String emailAddress
    
    AddressResponse address
    
    String web
    
    CellCarrierResponse cellCarrier
}
