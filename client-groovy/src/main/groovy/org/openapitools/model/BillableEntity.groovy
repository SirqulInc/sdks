package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Album;
import org.openapitools.model.Asset;
import org.openapitools.model.Category;
import org.openapitools.model.ContactInfo;
import org.openapitools.model.Filter;
import org.openapitools.model.Retailer;
import org.openapitools.model.Subscription;
import org.openapitools.model.ThirdPartyNetwork;

@Canonical
class BillableEntity {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    ContactInfo contactInfo
    
    Account responsible
    
    List<Retailer> retailers = new ArrayList<>()
    
    List<Account> managers = new ArrayList<>()
    
    List<Category> categories = new ArrayList<>()
    
    List<Filter> filters = new ArrayList<>()
    
    List<Asset> media = new ArrayList<>()
    
    Album mediaAlbum
    
    Subscription subscription
    
    ThirdPartyNetwork disbursementIntrospect
    
    String authorizeNetTransactionKey
    
    String authorizeNetApiKey
}
