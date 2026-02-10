package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.CategoryResponse;
import org.openapitools.model.OfferShortResponse;

@Canonical
class EventAttendanceResponse {
    
    OfferShortResponse event
    
    List<CategoryResponse> affiliatedCategories = new ArrayList<>()
    
    AccountShortResponse attendee
    
    Boolean friend
}
