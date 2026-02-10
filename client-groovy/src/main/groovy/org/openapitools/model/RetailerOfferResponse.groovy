package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AssetResponse;
import org.openapitools.model.AudienceResponse;
import org.openapitools.model.CategoryResponse;
import org.openapitools.model.EventResponse;
import org.openapitools.model.FilterResponse;
import org.openapitools.model.MediaResponse;
import org.openapitools.model.MissionListResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.OfferShortResponse;
import org.openapitools.model.ProductResponse;
import org.openapitools.model.RetailerLocationResponse;

@Canonical
class RetailerOfferResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long offerLocationId
    
    Long offerId
    
    Long retailerId
    
    Long transactionId
    
    Long favoriteId
    
    String offerName
    
    String subTitle
    
    String locationName
    
    Date starts
    
    Date expires
    
    Long activated
    
    Long expiration
    
    Long redeemableStart
    
    Long redeemableEnd
    
    Double distance
    
    String offerType
    
    Double longitude
    
    Double latitude
    
    Boolean favorite
    
    Double fullPrice
    
    Double discountPrice
    
    Double estimatedValue
    
    Double voucherDiscountPrice
    
    MissionListResponse missionListResponse
    
    String image
    
    String image1
    
    String image2
    
    String image3
    
    String image4
    
    String image5
    
    List<AssetResponse> images = new ArrayList<>()
    
    String barcode
    
    String externalUrl
    
    String sqootUrl
    
    Boolean active
    
    RetailerLocationResponse location
    
    String subDetails
    
    Integer externalRedeemAuth
    
    String externalRedeemOptions
    
    String publisher
    
    ProductResponse product
    
    EventResponse event
    
    MediaResponse media
    
    Integer viewedCount
    
    Integer clickedCount
    
    Integer addedLimit
    
    Integer addedCount
    
    Integer usedCount
    
    Integer removedCount
    
    Integer locationAddedCount
    
    String barcodeEntry

    enum BarcodeTypeEnum {
    
        NONE("NONE"),
        
        UPC("UPC"),
        
        CODE_128("CODE_128"),
        
        QR("QR"),
        
        CUSTOM_MEDIA("CUSTOM_MEDIA")
    
        private final String value
    
        BarcodeTypeEnum(String value) {
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

    
    BarcodeTypeEnum barcodeType
    
    Long ticketsReward
    
    String ticketsRewardType

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
    
    Long likeCount
    
    Long dislikeCount
    
    Long favoriteCount
    
    Long noteCount
    
    Long logId
    
    Long billableEntityId
    
    Long responsibleAccountId
    
    String availabilitySummary
    
    String externalId
    
    OfferShortResponse parentOffer
    
    String address
    
    String details
    
    String finePrint
    
    String retailerPhoneNumber
    
    String ticketPriceType
    
    Long ticketPrice
    
    Double discountPercentage
    
    Double paymentFees
    
    Double voucherPrice
    
    Integer purchasesRemaining
    
    Integer redemptionsRemaining
    
    Integer redemptionStatus
    
    String redemptionCode
    
    List<AudienceResponse> audiences = new ArrayList<>()
    
    Integer audienceCount
    
    Integer walletCount
    
    String qrCodeUrl
    
    Boolean showRemaining
    
    Boolean showRedeemed
    
    Integer purchaseLimit
    
    Integer purchaseLimitPerUser
    
    Integer redemptionLimit
    
    Integer userRedemptionLimit
    
    List<CategoryResponse> categories = new ArrayList<>()
    
    List<FilterResponse> filters = new ArrayList<>()
    
    List<Map<String, Object>> locations = new ArrayList<>()
    
    String returning
}
