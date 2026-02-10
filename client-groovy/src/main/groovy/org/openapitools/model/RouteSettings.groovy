package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Program;
import org.openapitools.model.ServiceHub;

@Canonical
class RouteSettings {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    String description
    
    String setting

    enum SettingTypeEnum {
    
        FLOAT("FLOAT"),
        
        DOUBLE("DOUBLE"),
        
        INTEGER("INTEGER"),
        
        LONG("LONG"),
        
        BOOLEAN("BOOLEAN"),
        
        STRING("STRING")
    
        private final String value
    
        SettingTypeEnum(String value) {
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

    
    SettingTypeEnum settingType
    
    Program program
    
    ServiceHub hub
}
