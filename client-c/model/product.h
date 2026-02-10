/*
 * product.h
 *
 * 
 */

#ifndef _product_H_
#define _product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct product_t product_t;

#include "size_group.h"

// Enum PRODUCTTYPE for product

typedef enum  { sirqul_iot_platform_product_PRODUCTTYPE_NULL = 0, sirqul_iot_platform_product_PRODUCTTYPE_APPAREL, sirqul_iot_platform_product_PRODUCTTYPE_APPLIANCES, sirqul_iot_platform_product_PRODUCTTYPE_APPS, sirqul_iot_platform_product_PRODUCTTYPE_ARTS_CRAFTS, sirqul_iot_platform_product_PRODUCTTYPE_AUTOMOTIVE, sirqul_iot_platform_product_PRODUCTTYPE_BABY, sirqul_iot_platform_product_PRODUCTTYPE_BEAUTY, sirqul_iot_platform_product_PRODUCTTYPE_BOOKS, sirqul_iot_platform_product_PRODUCTTYPE_CLASSICAL, sirqul_iot_platform_product_PRODUCTTYPE_COLLECTIBLES, sirqul_iot_platform_product_PRODUCTTYPE_DVD, sirqul_iot_platform_product_PRODUCTTYPE_ELECTRONICS, sirqul_iot_platform_product_PRODUCTTYPE_GIFT_CARDS, sirqul_iot_platform_product_PRODUCTTYPE_GOURMET_FOOD, sirqul_iot_platform_product_PRODUCTTYPE_GROCERY, sirqul_iot_platform_product_PRODUCTTYPE_HEALTH_PERSONAL_CARE, sirqul_iot_platform_product_PRODUCTTYPE_HOME_GARDEN, sirqul_iot_platform_product_PRODUCTTYPE_INDUSTRIAL, sirqul_iot_platform_product_PRODUCTTYPE_JEWELRY, sirqul_iot_platform_product_PRODUCTTYPE_KITCHEN, sirqul_iot_platform_product_PRODUCTTYPE_LAWN_GARDEN, sirqul_iot_platform_product_PRODUCTTYPE_MAGAZINES, sirqul_iot_platform_product_PRODUCTTYPE_MISCELLANEOUS, sirqul_iot_platform_product_PRODUCTTYPE_MUSICAL_INSTRUMENTS, sirqul_iot_platform_product_PRODUCTTYPE_OFFICE_PRODUCTS, sirqul_iot_platform_product_PRODUCTTYPE_OTHER, sirqul_iot_platform_product_PRODUCTTYPE_OUTDOOR_LIVING, sirqul_iot_platform_product_PRODUCTTYPE_PC_HARDWARE, sirqul_iot_platform_product_PRODUCTTYPE_PET_SUPPLIES, sirqul_iot_platform_product_PRODUCTTYPE_SHOES, sirqul_iot_platform_product_PRODUCTTYPE_SOFTWARE, sirqul_iot_platform_product_PRODUCTTYPE_SPORTING_GOODS, sirqul_iot_platform_product_PRODUCTTYPE_TOOLS, sirqul_iot_platform_product_PRODUCTTYPE_TOYS, sirqul_iot_platform_product_PRODUCTTYPE_VIDEO_GAMES, sirqul_iot_platform_product_PRODUCTTYPE_WATCHES, sirqul_iot_platform_product_PRODUCTTYPE_WIRELESS, sirqul_iot_platform_product_PRODUCTTYPE_WIRELESS_ACCESSORIES } sirqul_iot_platform_product_PRODUCTTYPE_e;

char* product_product_type_ToString(sirqul_iot_platform_product_PRODUCTTYPE_e product_type);

sirqul_iot_platform_product_PRODUCTTYPE_e product_product_type_FromString(char* product_type);

// Enum CONDITION for product

typedef enum  { sirqul_iot_platform_product_CONDITION_NULL = 0, sirqul_iot_platform_product_CONDITION__NEW, sirqul_iot_platform_product_CONDITION_USED, sirqul_iot_platform_product_CONDITION_REFURBISHED, sirqul_iot_platform_product_CONDITION_OTHER } sirqul_iot_platform_product_CONDITION_e;

char* product_condition_ToString(sirqul_iot_platform_product_CONDITION_e condition);

sirqul_iot_platform_product_CONDITION_e product_condition_FromString(char* condition);

// Enum UNIT for product

typedef enum  { sirqul_iot_platform_product_UNIT_NULL = 0, sirqul_iot_platform_product_UNIT_MILIMETER, sirqul_iot_platform_product_UNIT_CENTIMETER, sirqul_iot_platform_product_UNIT_METER, sirqul_iot_platform_product_UNIT_INCH, sirqul_iot_platform_product_UNIT_FOOT, sirqul_iot_platform_product_UNIT_YARD } sirqul_iot_platform_product_UNIT_e;

char* product_unit_ToString(sirqul_iot_platform_product_UNIT_e unit);

sirqul_iot_platform_product_UNIT_e product_unit_FromString(char* unit);



typedef struct product_t {
    char *brand; // string
    sirqul_iot_platform_product_PRODUCTTYPE_e product_type; //enum
    sirqul_iot_platform_product_CONDITION_e condition; //enum
    char *isbn; // string
    char *asin; // string
    list_t *catalog_numbers; //primitive container
    char *department; // string
    list_t *features; //primitive container
    double minimum_price; //numeric
    double width; //numeric
    double height; //numeric
    double depth; //numeric
    double weight; //numeric
    sirqul_iot_platform_product_UNIT_e unit; //enum
    char *studio; // string
    char *parental_rating; // string
    long publish_date; //numeric
    long availability_date; //numeric
    struct size_group_t *size; //model

    int _library_owned; // Is the library responsible for freeing this object?
} product_t;

__attribute__((deprecated)) product_t *product_create(
    char *brand,
    sirqul_iot_platform_product_PRODUCTTYPE_e product_type,
    sirqul_iot_platform_product_CONDITION_e condition,
    char *isbn,
    char *asin,
    list_t *catalog_numbers,
    char *department,
    list_t *features,
    double minimum_price,
    double width,
    double height,
    double depth,
    double weight,
    sirqul_iot_platform_product_UNIT_e unit,
    char *studio,
    char *parental_rating,
    long publish_date,
    long availability_date,
    size_group_t *size
);

void product_free(product_t *product);

product_t *product_parseFromJSON(cJSON *productJSON);

cJSON *product_convertToJSON(product_t *product);

#endif /* _product_H_ */

