package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Asset;
import org.openapitools.model.Flag;
import org.openapitools.model.FlagThreshold;
import org.openapitools.model.YayOrNay;

@Canonical
class Note {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    Account owner
    
    String notableType
    
    Long notableId
    
    String noteTag
    
    List<Note> notes = new ArrayList<>()
    
    List<YayOrNay> likes = new ArrayList<>()
    
    List<Asset> assets = new ArrayList<>()
    
    String noteDescription
    
    Long likeCount
    
    Long dislikeCount
    
    Long noteCount
    
    List<Flag> flags = new ArrayList<>()
    
    Long flagCount
    
    FlagThreshold flagThreshold
    
    String contentName
    
    Long defaultThreshold
}
