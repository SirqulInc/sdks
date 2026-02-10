package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Address;
import org.openapitools.model.Asset;
import org.openapitools.model.CellCarrier;
import org.openapitools.model.Note;
import org.openapitools.model.Program;
import org.openapitools.model.ServiceHub;
import org.openapitools.model.Territory;
import org.openapitools.model.YayOrNay;

@Canonical
class Location {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    String name
    
    Territory territory
    
    ServiceHub hub
    
    Asset picture
    
    List<Note> notes = new ArrayList<>()
    
    Long noteCount
    
    String homePhone
    
    String cellPhone
    
    CellCarrier cellCarrier
    
    String businessPhone
    
    String businessPhoneExt
    
    String faxNumber
    
    String timeZone
    
    String utcOffset
    
    String code501c3
    
    String emailAddress
    
    Address address
    
    String web
    
    Program program

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
    
    String groupingId
    
    Boolean destination
    
    Long dockingTime
    
    Long usageCount
    
    String timeFramesAllowed
    
    List<YayOrNay> likes = new ArrayList<>()
    
    Long likeCount
    
    Long dislikeCount
    
    String ownerDisplay
    
    String contentName
}
