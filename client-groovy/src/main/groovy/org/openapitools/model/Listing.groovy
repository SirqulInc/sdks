package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Filter;
import org.openapitools.model.Participant;

@Canonical
class Listing {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Account owner
    
    String name
    
    String description
    
    Date start
    
    Date end
    
    String locationName
    
    String locationDescription
    
    List<Participant> participants = new ArrayList<>()
    
    String externalId
    
    String externalGroupId
    
    List<Filter> filters = new ArrayList<>()
    
    Boolean _private
}
