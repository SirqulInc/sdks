package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.Account;
import org.openapitools.model.Category;
import org.openapitools.model.Filter;
import org.openapitools.model.GeoBox;
import org.openapitools.model.PostalCode;

@Canonical
class Region {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    Account owner
    
    String shortName
    
    String fullName
    
    GeoBox bounds
    
    Date start
    
    Date end
    
    String polygon
    
    String metaData
    
    Set<Region> children = new LinkedHashSet<>()
    
    Set<Region> parents = new LinkedHashSet<>()
    
    Set<PostalCode> postalCodes = new LinkedHashSet<>()

    enum RegionClassEnum {
    
        NATIONAL("NATIONAL"),
        
        STATE("STATE"),
        
        COUNTY("COUNTY"),
        
        METRO_AREA("METRO_AREA"),
        
        CITY("CITY"),
        
        NEIGHBORHOOD("NEIGHBORHOOD"),
        
        TERRITORY("TERRITORY"),
        
        CUSTOM("CUSTOM"),
        
        ZONE("ZONE")
    
        private final String value
    
        RegionClassEnum(String value) {
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

    
    RegionClassEnum regionClass
    
    Boolean root
    
    Boolean webActive
    
    Boolean adminActive

    enum VisibilityEnum {
    
        PUBLIC("PUBLIC"),
        
        PRIVATE("PRIVATE"),
        
        FRIENDS("FRIENDS")
    
        private final String value
    
        VisibilityEnum(String value) {
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

    
    VisibilityEnum visibility
    
    List<Category> categories = new ArrayList<>()
    
    List<Filter> filters = new ArrayList<>()
    
    Double truncatedLatitude
    
    Double truncatedLongitude
    
    Integer versionCode
    
    String display
    
    String contentName
}
