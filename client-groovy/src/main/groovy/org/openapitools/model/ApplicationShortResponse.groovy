package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.BillableEntityShortResponse;
import org.openapitools.model.CategoryResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.PlatformResponse;
import org.openapitools.model.TrilatAppSettings;

@Canonical
class ApplicationShortResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long applicationId
    
    String appKey
    
    String title
    
    String currentBuildVersion
    
    String currentApiVersion
    
    AssetShortResponse appIcon
    
    AssetShortResponse appLogo
    
    Boolean active
    
    String about
    
    String landingPageUrl
    
    String landingPageFullUrl
    
    String defaultImageFullUrl
    
    String activityDescription
    
    List<PlatformResponse> platforms = new ArrayList<>()
    
    List<CategoryResponse> categories = new ArrayList<>()
    
    Integer placementCount
    
    BillableEntityShortResponse billable
    
    Boolean hasAds
    
    Boolean publicNotifications
    
    String urlScheme
    
    Boolean global
    
    String downloadUrls
    
    Boolean localAdsEnabled
    
    TrilatAppSettings trilatSettings
    
    String returning
}
