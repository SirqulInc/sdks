package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Asset;
import org.openapitools.model.Audience;
import org.openapitools.model.Note;
import org.openapitools.model.Offer;
import org.openapitools.model.RetailerLocation;

@Canonical
class OfferLocation {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    Offer offer
    
    RetailerLocation location
    
    Double distance
    
    Double altitude
    
    Double customValue
    
    String locationDetail
    
    List<Audience> audiences = new ArrayList<>()
    
    Asset qrInviteCode
    
    List<Note> notes = new ArrayList<>()
    
    Long noteCount
    
    Date searchIndexUpdated
    
    Boolean inSearchIndex
    
    Long favoriteCount
    
    Integer addedCount
    
    String display
    
    String appKey
    
    Double devicePower
    
    Double powerLoss
    
    String udid
    
    Long billableId
    
    String subType
    
    String contentName
    
    Asset contentAsset
    
    Account owner
    
    String secondaryType
    
    List<Long> categoryIds = new ArrayList<>()
    
    List<Long> filterIds = new ArrayList<>()
}
