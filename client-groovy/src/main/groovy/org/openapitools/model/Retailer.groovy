package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Address;
import org.openapitools.model.Category;
import org.openapitools.model.CellCarrier;
import org.openapitools.model.Note;
import org.openapitools.model.RetailerLocation;
import org.openapitools.model.Territory;

@Canonical
class Retailer {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    String name
    
    Account responsible
    
    Account manager
    
    String detailsHeader
    
    String detailsBody
    
    String detailsLineLeft1
    
    String detailsLineLeft2
    
    String detailsLineRight1
    
    String metaDescription
    
    String directions
    
    String hours
    
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
    
    Boolean featured
    
    Boolean listed
    
    List<Category> categories = new ArrayList<>()
    
    Territory territory
    
    List<RetailerLocation> locations = new ArrayList<>()
    
    Long yipitId
    
    String facebookUrl
    
    String twitterUrl

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
    
    List<Note> notes = new ArrayList<>()
    
    Long noteCount
    
    String appKey
    
    String categoryTree
    
    String filterTree
    
    Long billableId
    
    String subType
    
    String contentName
    
    Account owner
}
