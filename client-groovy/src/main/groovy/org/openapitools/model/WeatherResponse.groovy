package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.WeatherForecastResponse;

@Canonical
class WeatherResponse {
    
    Long id
    
    Integer cloudcover
    
    Integer humidity
    
    Long observationTime
    
    Double precipMM
    
    Integer pressure
    
    Integer tempC
    
    Integer tempF
    
    Integer visibility
    
    Integer weatherCode
    
    String weatherDesc
    
    String weatherIconUrl
    
    String winddir16Point
    
    Integer winddirDegree
    
    Integer windspeedKmph
    
    Integer windspeedMiles
    
    List<WeatherForecastResponse> forecasts = new ArrayList<>()
}
