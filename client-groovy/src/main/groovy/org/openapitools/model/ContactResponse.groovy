package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ContactInfoResponse;

@Canonical
class ContactResponse {
    
    String firstName
    
    String middleName
    
    String lastName
    
    String prefix
    
    String suffix
    
    String title
    
    ContactInfoResponse contactInfo
}
