package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Chronology;
import org.openapitools.model.DateTimeField;
import org.openapitools.model.DateTimeFieldType;

@Canonical
class ModelLocalTime {
    
    Chronology chronology
    
    Integer hourOfDay
    
    Integer minuteOfHour
    
    Integer secondOfMinute
    
    Integer millisOfSecond
    
    Integer millisOfDay
    
    List<DateTimeField> fields = new ArrayList<>()
    
    List<Integer> values = new ArrayList<>()
    
    List<DateTimeFieldType> fieldTypes = new ArrayList<>()
}
