package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Asset;
import org.openapitools.model.BillableEntity;
import org.openapitools.model.Category;
import org.openapitools.model.Device;
import org.openapitools.model.Event;
import org.openapitools.model.Filter;
import org.openapitools.model.Flag;
import org.openapitools.model.FlagThreshold;
import org.openapitools.model.Media;
import org.openapitools.model.Mission;
import org.openapitools.model.Note;
import org.openapitools.model.OfferLocation;
import org.openapitools.model.Product;
import org.openapitools.model.YayOrNay;

@Canonical
class Offer {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String testField
    
    BillableEntity billableEntity
    
    List<OfferLocation> offerLocations = new ArrayList<>()
    
    List<Mission> missions = new ArrayList<>()
    
    Date activated
    
    Date expires
    
    Date redeemableStart
    
    Date redeemableEnd
    
    String title
    
    String subTitle

    enum TypeEnum {
    
        VOUCHER("VOUCHER"),
        
        COUPON("COUPON"),
        
        PRODUCT("PRODUCT"),
        
        MEDIA("MEDIA"),
        
        EVENT("EVENT"),
        
        DEVICE("DEVICE")
    
        private final String value
    
        TypeEnum(String value) {
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

    
    TypeEnum type

    enum SpecialOfferTypeEnum {
    
        ALL("ALL"),
        
        RESERVABLE("RESERVABLE"),
        
        REGULAR_OFFER("REGULAR_OFFER"),
        
        ACT_NOW("ACT_NOW"),
        
        GET_THERE_NOW("GET_THERE_NOW"),
        
        SQOOT("SQOOT"),
        
        TICKETS("TICKETS"),
        
        YIPIT("YIPIT")
    
        private final String value
    
        SpecialOfferTypeEnum(String value) {
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

    
    SpecialOfferTypeEnum specialOfferType
    
    String details
    
    String subDetails
    
    String finePrint
    
    String getThereNowNotification
    
    Integer maxPrints
    
    Integer viewLimit
    
    Boolean featured
    
    Boolean replaced
    
    Boolean showRemaining
    
    Boolean showRedeemed
    
    Offer parentOffer
    
    Asset artwork
    
    Asset offerImage1
    
    Asset offerImage2
    
    Asset offerImage3
    
    Asset offerImage4
    
    Asset offerImage5
    
    Asset barCode

    enum BarCodeTypeEnum {
    
        NONE("NONE"),
        
        UPC("UPC"),
        
        CODE_128("CODE_128"),
        
        QR("QR"),
        
        CUSTOM_MEDIA("CUSTOM_MEDIA")
    
        private final String value
    
        BarCodeTypeEnum(String value) {
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

    
    BarCodeTypeEnum barCodeType
    
    String barCodeEntry
    
    List<Category> categories = new ArrayList<>()
    
    List<Filter> filters = new ArrayList<>()
    
    String ticketType
    
    Boolean allocateTickets
    
    String ticketPriceType
    
    Long ticketPrice
    
    Double fullPrice
    
    Double discountPrice
    
    Integer availableLimit
    
    Integer availableLimitPerUser
    
    Integer addedLimit
    
    Integer usedCount
    
    Integer addedCount
    
    Integer removedCount
    
    Integer viewedCount
    
    Integer clickedCount

    enum OfferVisibilityEnum {
    
        PUBLIC("PUBLIC"),
        
        LISTABLE("LISTABLE"),
        
        REWARDABLE("REWARDABLE"),
        
        TRIGGERABLE("TRIGGERABLE"),
        
        PRIVATE("PRIVATE")
    
        private final String value
    
        OfferVisibilityEnum(String value) {
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

    
    OfferVisibilityEnum offerVisibility

    enum OfferProcessorIdEnum {
    
        SQOOT("SQOOT"),
        
        YIPIT("YIPIT"),
        
        API("API"),
        
        CSV("CSV")
    
        private final String value
    
        OfferProcessorIdEnum(String value) {
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

    
    OfferProcessorIdEnum offerProcessorId
    
    String externalId
    
    String externalUrl
    
    String externalUntrackedUrl
    
    Long sqootId
    
    String sqootUrl
    
    String sqootCategorySlug
    
    String sqootCategoryName
    
    Long yipitId
    
    String redeemAuthOptions
    
    String publisher
    
    Product product
    
    Media media
    
    Event event
    
    Device device
    
    List<Note> notes = new ArrayList<>()
    
    Long noteCount
    
    Long favoriteCount
    
    Boolean hasRatings
    
    List<YayOrNay> likes = new ArrayList<>()
    
    Long likeCount
    
    Long dislikeCount
    
    String availabilitySummary
    
    List<Flag> flags = new ArrayList<>()
    
    Long flagCount
    
    FlagThreshold flagThreshold
    
    Double savings
    
    Double clickStream
    
    Long ticketCount
    
    String display
    
    String appKey
    
    String categoryTree
    
    String filterTree
    
    Boolean indexable
    
    Long billableId
    
    String subType
    
    String contentName
    
    Long defaultThreshold
    
    Asset contentAsset
    
    Account owner
    
    String secondaryType
    
    Double discountPercentage
}
