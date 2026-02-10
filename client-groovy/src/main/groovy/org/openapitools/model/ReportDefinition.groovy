package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ReportDefinition {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String query
    
    String queryName
    
    String displayName
    
    List<String> columnNames = new ArrayList<>()
    
    Boolean nativeSql
    
    Boolean display

    enum DataSourceEnum {
    
        WRITE("WRITE"),
        
        ANALYTIC("ANALYTIC"),
        
        READ1("READ1")
    
        private final String value
    
        DataSourceEnum(String value) {
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

    
    DataSourceEnum dataSource
    
    Long maxLimit
    
    Integer maxDateRange
    
    String displayParams
    
    String metaData
    
    String columnNamesRaw
}
