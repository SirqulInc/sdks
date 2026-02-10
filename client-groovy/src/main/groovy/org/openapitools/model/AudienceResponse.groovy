package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AgeGroupResponse;
import org.openapitools.model.ApplicationShortResponse;
import org.openapitools.model.AudienceDeviceResponse;
import org.openapitools.model.CategoryResponse;
import org.openapitools.model.GeocodeLatLngResponse;

@Canonical
class AudienceResponse {
    
    Long id
    
    String name
    
    Double latitude
    
    Double longitude
    
    Double radius
    
    Boolean sendSuggestion
    
    String description
    
    Boolean active
    
    String searchTags
    
    Long ownerId
    
    String gender
    
    List<AgeGroupResponse> ageGroups = new ArrayList<>()
    
    List<CategoryResponse> categories = new ArrayList<>()
    
    List<ApplicationShortResponse> applications = new ArrayList<>()
    
    List<AudienceDeviceResponse> devices = new ArrayList<>()
    
    String gameExperienceLevel
    
    List<GeocodeLatLngResponse> locations = new ArrayList<>()
    
    String associateType
    
    Long associateId
    
    String associateDescription
}
