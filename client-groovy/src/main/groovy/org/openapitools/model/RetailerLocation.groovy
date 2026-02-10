package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Asset;
import org.openapitools.model.Assignment;
import org.openapitools.model.Building;
import org.openapitools.model.Category;
import org.openapitools.model.Filter;
import org.openapitools.model.Note;
import org.openapitools.model.OfferLocation;
import org.openapitools.model.Region;
import org.openapitools.model.Retailer;
import org.openapitools.model.RetailerProfile;

@Canonical
class RetailerLocation {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    List<Category> categories = new ArrayList<>()
    
    List<Filter> filters = new ArrayList<>()
    
    List<OfferLocation> offerLocations = new ArrayList<>()
    
    Asset logo
    
    Asset picture1
    
    Asset picture2
    
    Asset qrCode
    
    String name
    
    String locationId
    
    String code
    
    Retailer retailer
    
    List<Assignment> assignments = new ArrayList<>()
    
    Assignment currentAssignment
    
    RetailerProfile profile
    
    List<Region> regions = new ArrayList<>()
    
    String offerPrintKeyPrefix
    
    List<Account> administrators = new ArrayList<>()
    
    Long sqootId
    
    Long yipitId
    
    String locationToken
    
    Building building
    
    List<Note> notes = new ArrayList<>()
    
    Long noteCount
    
    Date searchIndexUpdated
    
    Boolean inSearchIndex
    
    Long favoriteCount
    
    Boolean hasRatings
    
    String googlePlaceId
    
    String yelpId
    
    String display
    
    String appKey
    
    String categoryTree
    
    String filterTree
    
    String addressDisplay
    
    String mapQuery
    
    String sortName
    
    String fullDisplay
    
    Boolean hasOffers
    
    Long billableId
    
    String subType
    
    String contentName
    
    Account owner
    
    String secondaryType
    
    String locationAddress
    
    List<Long> validOfferLocationIds = new ArrayList<>()
}
