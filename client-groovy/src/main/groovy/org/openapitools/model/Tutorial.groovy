package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Asset;

@Canonical
class Tutorial {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    String description

    enum AlignmentEnum {
    
        NONE("NONE"),
        
        IMAGE_ABOVE("IMAGE_ABOVE"),
        
        IMAGE_BELOW("IMAGE_BELOW"),
        
        IMAGE_LEFT("IMAGE_LEFT"),
        
        IMAGE_RIGHT("IMAGE_RIGHT"),
        
        IMAGE_ONLY("IMAGE_ONLY"),
        
        TEXT_ONLY("TEXT_ONLY")
    
        private final String value
    
        AlignmentEnum(String value) {
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

    
    AlignmentEnum alignment
    
    Asset image
    
    Long orderIndex

    enum TutorialObjectTypeEnum {
    
        GAME_OBJECT("GAME_OBJECT"),
        
        GAME_LEVEL("GAME_LEVEL"),
        
        PACK("PACK"),
        
        GAME("GAME"),
        
        MISSION("MISSION"),
        
        PROFILE("PROFILE"),
        
        APPLICATION("APPLICATION"),
        
        TICKETS("TICKETS"),
        
        ASSET("ASSET"),
        
        CUSTOM("CUSTOM")
    
        private final String value
    
        TutorialObjectTypeEnum(String value) {
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

    
    TutorialObjectTypeEnum tutorialObjectType
}
