package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DurationFieldType;

@Canonical
class DateTimeFieldType {
    
    String name
    
    DurationFieldType rangeDurationType
    
    DurationFieldType durationType
}
