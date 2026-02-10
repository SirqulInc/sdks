package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class ChartData {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    String identifier
    
    String idAttribute
    
    String label
    
    Long maxValue
    
    Long totalCount
    
    List<Object> items = new ArrayList<>()
    
    List<Object> aggregatedItems = new ArrayList<>()
    
    String caption
    
    String showAnchor
    
    String anchorAlpha
    
    String getxAxisName
    
    String getyAxisMinValue
    
    String getyAxisName
    
    String decimalPrecision
    
    String formatNumberScale
    
    String numberPrefix
    
    String showNames
    
    String showValues
    
    String showAlternateHGridColor
    
    String alternateHGridColor
    
    String divLineColor
    
    String divLineAlpha
    
    String alternateHGridAlpha
    
    String rotateNames
    
    String returning
}
