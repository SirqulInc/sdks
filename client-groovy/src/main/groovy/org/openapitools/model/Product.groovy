package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SizeGroup;

@Canonical
class Product {
    
    String brand

    enum ProductTypeEnum {
    
        APPAREL("APPAREL"),
        
        APPLIANCES("APPLIANCES"),
        
        APPS("APPS"),
        
        ARTS_CRAFTS("ARTS_CRAFTS"),
        
        AUTOMOTIVE("AUTOMOTIVE"),
        
        BABY("BABY"),
        
        BEAUTY("BEAUTY"),
        
        BOOKS("BOOKS"),
        
        CLASSICAL("CLASSICAL"),
        
        COLLECTIBLES("COLLECTIBLES"),
        
        DVD("DVD"),
        
        ELECTRONICS("ELECTRONICS"),
        
        GIFT_CARDS("GIFT_CARDS"),
        
        GOURMET_FOOD("GOURMET_FOOD"),
        
        GROCERY("GROCERY"),
        
        HEALTH_PERSONAL_CARE("HEALTH_PERSONAL_CARE"),
        
        HOME_GARDEN("HOME_GARDEN"),
        
        INDUSTRIAL("INDUSTRIAL"),
        
        JEWELRY("JEWELRY"),
        
        KITCHEN("KITCHEN"),
        
        LAWN_GARDEN("LAWN_GARDEN"),
        
        MAGAZINES("MAGAZINES"),
        
        MISCELLANEOUS("MISCELLANEOUS"),
        
        MUSICAL_INSTRUMENTS("MUSICAL_INSTRUMENTS"),
        
        OFFICE_PRODUCTS("OFFICE_PRODUCTS"),
        
        OTHER("OTHER"),
        
        OUTDOOR_LIVING("OUTDOOR_LIVING"),
        
        PC_HARDWARE("PC_HARDWARE"),
        
        PET_SUPPLIES("PET_SUPPLIES"),
        
        SHOES("SHOES"),
        
        SOFTWARE("SOFTWARE"),
        
        SPORTING_GOODS("SPORTING_GOODS"),
        
        TOOLS("TOOLS"),
        
        TOYS("TOYS"),
        
        VIDEO_GAMES("VIDEO_GAMES"),
        
        WATCHES("WATCHES"),
        
        WIRELESS("WIRELESS"),
        
        WIRELESS_ACCESSORIES("WIRELESS_ACCESSORIES")
    
        private final String value
    
        ProductTypeEnum(String value) {
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

    
    ProductTypeEnum productType

    enum ConditionEnum {
    
        NEW("NEW"),
        
        USED("USED"),
        
        REFURBISHED("REFURBISHED"),
        
        OTHER("OTHER")
    
        private final String value
    
        ConditionEnum(String value) {
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

    
    ConditionEnum condition
    
    String isbn
    
    String asin
    
    List<String> catalogNumbers = new ArrayList<>()
    
    String department
    
    List<String> features = new ArrayList<>()
    
    Double minimumPrice
    
    Double width
    
    Double height
    
    Double depth
    
    Double weight

    enum UnitEnum {
    
        MILIMETER("MILIMETER"),
        
        CENTIMETER("CENTIMETER"),
        
        METER("METER"),
        
        INCH("INCH"),
        
        FOOT("FOOT"),
        
        YARD("YARD")
    
        private final String value
    
        UnitEnum(String value) {
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

    
    UnitEnum unit
    
    String studio
    
    String parentalRating
    
    Long publishDate
    
    Long availabilityDate
    
    SizeGroup size
}
