package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Album;

@Canonical
class Media {

    enum MediaTypeEnum {
    
        APK("APK"),
        
        APPLICATION("APPLICATION"),
        
        IMAGE("IMAGE"),
        
        AUDIO("AUDIO"),
        
        VIDEO("VIDEO"),
        
        MULTIPART("MULTIPART"),
        
        BAR_CODE("BAR_CODE"),
        
        TEXT("TEXT"),
        
        OTHER("OTHER")
    
        private final String value
    
        MediaTypeEnum(String value) {
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

    
    MediaTypeEnum mediaType

    enum ConditionEnum {
    
        NEW("NEW"),
        
        USED("USED"),
        
        REFURBISHED("REFURBISHED"),
        
        OTHER("OTHER")
    
        private final String value
    
        ConditionEnum(String value) {
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

    
    ConditionEnum condition
    
    String isbn
    
    String asin
    
    List<String> catalogNumbers = new ArrayList<>()
    
    Integer duration
    
    String author
    
    Long releaseDate
    
    Long availabilityDate
    
    String parentalRating
    
    List<Album> collections = new ArrayList<>()
    
    Integer collectionCount
}
