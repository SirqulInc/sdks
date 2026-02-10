package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DateTimeFieldType;
import org.openapitools.model.DurationField;

@Canonical
class DateTimeField {
    
    String name
    
    DateTimeFieldType type
    
    Boolean supported
    
    Integer minimumValue
    
    Integer maximumValue
    
    DurationField durationField
    
    DurationField leapDurationField
    
    DurationField rangeDurationField
    
    Boolean lenient
}
