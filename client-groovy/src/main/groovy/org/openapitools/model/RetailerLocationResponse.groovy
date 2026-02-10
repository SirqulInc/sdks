package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.BillableEntityResponse;
import org.openapitools.model.CategoryResponse;
import org.openapitools.model.ContactInfoResponse;
import org.openapitools.model.FilterResponse;
import org.openapitools.model.ListResponse;
import org.openapitools.model.ProfileShortResponse;
import org.openapitools.model.RetailerCountResponse;
import org.openapitools.model.RetailerShortResponse;

@Canonical
class RetailerLocationResponse {
    
    Long retailerLocationId
    
    String name
    
    ContactInfoResponse contact
    
    Double latitude
    
    Double longitude
    
    Boolean active
    
    Long favoriteId
    
    Boolean favorite
    
    ProfileShortResponse responsible
    
    ProfileShortResponse manager
    
    List<CategoryResponse> categories = new ArrayList<>()
    
    List<FilterResponse> filters = new ArrayList<>()
    
    AssetShortResponse logo
    
    AssetShortResponse picture1
    
    AssetShortResponse picture2
    
    BillableEntityResponse billableEntity
    
    RetailerCountResponse counts
    
    RetailerShortResponse retailer
    
    ListResponse offers
    
    String internalId
    
    String detailsHeader
    
    String detailsBody
    
    String hours
    
    String locationToken
    
    String building
    
    String qrCodeUrl
    
    Double distance
    
    String googlePlaceId
    
    String yelpId
}
