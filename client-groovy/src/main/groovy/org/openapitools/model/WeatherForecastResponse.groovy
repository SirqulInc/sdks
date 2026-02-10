package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WeatherForecastResponse {
    
    Long id
    
    Long forecastDate
    
    Double precipMM
    
    Integer tempMaxC
    
    Integer tempMaxF
    
    Integer tempMinC
    
    Integer tempMinF
    
    Integer weatherCode
    
    String weatherDesc
    
    String weatherIconUrl
    
    String winddir16Point
    
    Integer winddirDegree
    
    String winddirection
    
    Integer windspeedKmph
    
    Integer windspeedMiles
}
