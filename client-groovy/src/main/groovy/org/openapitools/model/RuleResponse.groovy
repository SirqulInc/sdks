package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class RuleResponse {
    
    Long ruleId
    
    String title
    
    String description
    
    Long ruleTypeId
    
    String ruleTypeTitle
    
    String ruleTypeDescription
    
    String ruleValueType
    
    String ruleValue
}
