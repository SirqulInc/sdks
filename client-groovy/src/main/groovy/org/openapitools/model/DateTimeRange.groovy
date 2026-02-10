package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Interval;

@Canonical
class DateTimeRange {
    
    Date start
    
    Date end
    
    Interval interval
}
