package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class Recurrence {

    enum FrequencyEnum {
    
        DAILY("DAILY"),
        
        WEEKLY("WEEKLY"),
        
        MONTHLY("MONTHLY"),
        
        ANNUALLY("ANNUALLY"),
        
        WEEK_DAY_ONLY("WEEK_DAY_ONLY")
    
        private final String value
    
        FrequencyEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    FrequencyEnum frequency
    
    List<Integer> daysOfWeek = new ArrayList<>()
    
    Date start
    
    Integer count
    
    Date until
}
