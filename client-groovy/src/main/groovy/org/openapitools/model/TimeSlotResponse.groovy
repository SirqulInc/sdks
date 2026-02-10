package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;

@Canonical
class TimeSlotResponse {
    
    Long scheduledDate
    
    Long startTime
    
    Long endTime
    
    Integer dayOfWeek
    
    String timeZone
    
    Integer reservationCount
    
    List<AccountShortResponse> reservations = new ArrayList<>()
}
