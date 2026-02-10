#' Create a new Product
#'
#' @description
#' Product Class
#'
#' @docType class
#' @title Product
#' @description Product Class
#' @format An \code{R6Class} generator object
#' @field brand  character [optional]
#' @field productType  character [optional]
#' @field condition  character [optional]
#' @field isbn  character [optional]
#' @field asin  character [optional]
#' @field catalogNumbers  list(character) [optional]
#' @field department  character [optional]
#' @field features  list(character) [optional]
#' @field minimumPrice  numeric [optional]
#' @field width  numeric [optional]
#' @field height  numeric [optional]
#' @field depth  numeric [optional]
#' @field weight  numeric [optional]
#' @field unit  character [optional]
#' @field studio  character [optional]
#' @field parentalRating  character [optional]
#' @field publishDate  integer [optional]
#' @field availabilityDate  integer [optional]
#' @field size  \link{SizeGroup} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Product <- R6::R6Class(
  "Product",
  public = list(
    `brand` = NULL,
    `productType` = NULL,
    `condition` = NULL,
    `isbn` = NULL,
    `asin` = NULL,
    `catalogNumbers` = NULL,
    `department` = NULL,
    `features` = NULL,
    `minimumPrice` = NULL,
    `width` = NULL,
    `height` = NULL,
    `depth` = NULL,
    `weight` = NULL,
    `unit` = NULL,
    `studio` = NULL,
    `parentalRating` = NULL,
    `publishDate` = NULL,
    `availabilityDate` = NULL,
    `size` = NULL,

    #' @description
    #' Initialize a new Product class.
    #'
    #' @param brand brand
    #' @param productType productType
    #' @param condition condition
    #' @param isbn isbn
    #' @param asin asin
    #' @param catalogNumbers catalogNumbers
    #' @param department department
    #' @param features features
    #' @param minimumPrice minimumPrice
    #' @param width width
    #' @param height height
    #' @param depth depth
    #' @param weight weight
    #' @param unit unit
    #' @param studio studio
    #' @param parentalRating parentalRating
    #' @param publishDate publishDate
    #' @param availabilityDate availabilityDate
    #' @param size size
    #' @param ... Other optional arguments.
    initialize = function(`brand` = NULL, `productType` = NULL, `condition` = NULL, `isbn` = NULL, `asin` = NULL, `catalogNumbers` = NULL, `department` = NULL, `features` = NULL, `minimumPrice` = NULL, `width` = NULL, `height` = NULL, `depth` = NULL, `weight` = NULL, `unit` = NULL, `studio` = NULL, `parentalRating` = NULL, `publishDate` = NULL, `availabilityDate` = NULL, `size` = NULL, ...) {
      if (!is.null(`brand`)) {
        if (!(is.character(`brand`) && length(`brand`) == 1)) {
          stop(paste("Error! Invalid data for `brand`. Must be a string:", `brand`))
        }
        self$`brand` <- `brand`
      }
      if (!is.null(`productType`)) {
        if (!(`productType` %in% c("APPAREL", "APPLIANCES", "APPS", "ARTS_CRAFTS", "AUTOMOTIVE", "BABY", "BEAUTY", "BOOKS", "CLASSICAL", "COLLECTIBLES", "DVD", "ELECTRONICS", "GIFT_CARDS", "GOURMET_FOOD", "GROCERY", "HEALTH_PERSONAL_CARE", "HOME_GARDEN", "INDUSTRIAL", "JEWELRY", "KITCHEN", "LAWN_GARDEN", "MAGAZINES", "MISCELLANEOUS", "MUSICAL_INSTRUMENTS", "OFFICE_PRODUCTS", "OTHER", "OUTDOOR_LIVING", "PC_HARDWARE", "PET_SUPPLIES", "SHOES", "SOFTWARE", "SPORTING_GOODS", "TOOLS", "TOYS", "VIDEO_GAMES", "WATCHES", "WIRELESS", "WIRELESS_ACCESSORIES"))) {
          stop(paste("Error! \"", `productType`, "\" cannot be assigned to `productType`. Must be \"APPAREL\", \"APPLIANCES\", \"APPS\", \"ARTS_CRAFTS\", \"AUTOMOTIVE\", \"BABY\", \"BEAUTY\", \"BOOKS\", \"CLASSICAL\", \"COLLECTIBLES\", \"DVD\", \"ELECTRONICS\", \"GIFT_CARDS\", \"GOURMET_FOOD\", \"GROCERY\", \"HEALTH_PERSONAL_CARE\", \"HOME_GARDEN\", \"INDUSTRIAL\", \"JEWELRY\", \"KITCHEN\", \"LAWN_GARDEN\", \"MAGAZINES\", \"MISCELLANEOUS\", \"MUSICAL_INSTRUMENTS\", \"OFFICE_PRODUCTS\", \"OTHER\", \"OUTDOOR_LIVING\", \"PC_HARDWARE\", \"PET_SUPPLIES\", \"SHOES\", \"SOFTWARE\", \"SPORTING_GOODS\", \"TOOLS\", \"TOYS\", \"VIDEO_GAMES\", \"WATCHES\", \"WIRELESS\", \"WIRELESS_ACCESSORIES\".", sep = ""))
        }
        if (!(is.character(`productType`) && length(`productType`) == 1)) {
          stop(paste("Error! Invalid data for `productType`. Must be a string:", `productType`))
        }
        self$`productType` <- `productType`
      }
      if (!is.null(`condition`)) {
        if (!(`condition` %in% c("NEW", "USED", "REFURBISHED", "OTHER"))) {
          stop(paste("Error! \"", `condition`, "\" cannot be assigned to `condition`. Must be \"NEW\", \"USED\", \"REFURBISHED\", \"OTHER\".", sep = ""))
        }
        if (!(is.character(`condition`) && length(`condition`) == 1)) {
          stop(paste("Error! Invalid data for `condition`. Must be a string:", `condition`))
        }
        self$`condition` <- `condition`
      }
      if (!is.null(`isbn`)) {
        if (!(is.character(`isbn`) && length(`isbn`) == 1)) {
          stop(paste("Error! Invalid data for `isbn`. Must be a string:", `isbn`))
        }
        self$`isbn` <- `isbn`
      }
      if (!is.null(`asin`)) {
        if (!(is.character(`asin`) && length(`asin`) == 1)) {
          stop(paste("Error! Invalid data for `asin`. Must be a string:", `asin`))
        }
        self$`asin` <- `asin`
      }
      if (!is.null(`catalogNumbers`)) {
        stopifnot(is.vector(`catalogNumbers`), length(`catalogNumbers`) != 0)
        sapply(`catalogNumbers`, function(x) stopifnot(is.character(x)))
        self$`catalogNumbers` <- `catalogNumbers`
      }
      if (!is.null(`department`)) {
        if (!(is.character(`department`) && length(`department`) == 1)) {
          stop(paste("Error! Invalid data for `department`. Must be a string:", `department`))
        }
        self$`department` <- `department`
      }
      if (!is.null(`features`)) {
        stopifnot(is.vector(`features`), length(`features`) != 0)
        sapply(`features`, function(x) stopifnot(is.character(x)))
        self$`features` <- `features`
      }
      if (!is.null(`minimumPrice`)) {
        if (!(is.numeric(`minimumPrice`) && length(`minimumPrice`) == 1)) {
          stop(paste("Error! Invalid data for `minimumPrice`. Must be a number:", `minimumPrice`))
        }
        self$`minimumPrice` <- `minimumPrice`
      }
      if (!is.null(`width`)) {
        if (!(is.numeric(`width`) && length(`width`) == 1)) {
          stop(paste("Error! Invalid data for `width`. Must be a number:", `width`))
        }
        self$`width` <- `width`
      }
      if (!is.null(`height`)) {
        if (!(is.numeric(`height`) && length(`height`) == 1)) {
          stop(paste("Error! Invalid data for `height`. Must be a number:", `height`))
        }
        self$`height` <- `height`
      }
      if (!is.null(`depth`)) {
        if (!(is.numeric(`depth`) && length(`depth`) == 1)) {
          stop(paste("Error! Invalid data for `depth`. Must be a number:", `depth`))
        }
        self$`depth` <- `depth`
      }
      if (!is.null(`weight`)) {
        if (!(is.numeric(`weight`) && length(`weight`) == 1)) {
          stop(paste("Error! Invalid data for `weight`. Must be a number:", `weight`))
        }
        self$`weight` <- `weight`
      }
      if (!is.null(`unit`)) {
        if (!(`unit` %in% c("MILIMETER", "CENTIMETER", "METER", "INCH", "FOOT", "YARD"))) {
          stop(paste("Error! \"", `unit`, "\" cannot be assigned to `unit`. Must be \"MILIMETER\", \"CENTIMETER\", \"METER\", \"INCH\", \"FOOT\", \"YARD\".", sep = ""))
        }
        if (!(is.character(`unit`) && length(`unit`) == 1)) {
          stop(paste("Error! Invalid data for `unit`. Must be a string:", `unit`))
        }
        self$`unit` <- `unit`
      }
      if (!is.null(`studio`)) {
        if (!(is.character(`studio`) && length(`studio`) == 1)) {
          stop(paste("Error! Invalid data for `studio`. Must be a string:", `studio`))
        }
        self$`studio` <- `studio`
      }
      if (!is.null(`parentalRating`)) {
        if (!(is.character(`parentalRating`) && length(`parentalRating`) == 1)) {
          stop(paste("Error! Invalid data for `parentalRating`. Must be a string:", `parentalRating`))
        }
        self$`parentalRating` <- `parentalRating`
      }
      if (!is.null(`publishDate`)) {
        if (!(is.numeric(`publishDate`) && length(`publishDate`) == 1)) {
          stop(paste("Error! Invalid data for `publishDate`. Must be an integer:", `publishDate`))
        }
        self$`publishDate` <- `publishDate`
      }
      if (!is.null(`availabilityDate`)) {
        if (!(is.numeric(`availabilityDate`) && length(`availabilityDate`) == 1)) {
          stop(paste("Error! Invalid data for `availabilityDate`. Must be an integer:", `availabilityDate`))
        }
        self$`availabilityDate` <- `availabilityDate`
      }
      if (!is.null(`size`)) {
        stopifnot(R6::is.R6(`size`))
        self$`size` <- `size`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return Product as a base R list.
    #' @examples
    #' # convert array of Product (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert Product to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductObject <- list()
      if (!is.null(self$`brand`)) {
        ProductObject[["brand"]] <-
          self$`brand`
      }
      if (!is.null(self$`productType`)) {
        ProductObject[["productType"]] <-
          self$`productType`
      }
      if (!is.null(self$`condition`)) {
        ProductObject[["condition"]] <-
          self$`condition`
      }
      if (!is.null(self$`isbn`)) {
        ProductObject[["isbn"]] <-
          self$`isbn`
      }
      if (!is.null(self$`asin`)) {
        ProductObject[["asin"]] <-
          self$`asin`
      }
      if (!is.null(self$`catalogNumbers`)) {
        ProductObject[["catalogNumbers"]] <-
          self$`catalogNumbers`
      }
      if (!is.null(self$`department`)) {
        ProductObject[["department"]] <-
          self$`department`
      }
      if (!is.null(self$`features`)) {
        ProductObject[["features"]] <-
          self$`features`
      }
      if (!is.null(self$`minimumPrice`)) {
        ProductObject[["minimumPrice"]] <-
          self$`minimumPrice`
      }
      if (!is.null(self$`width`)) {
        ProductObject[["width"]] <-
          self$`width`
      }
      if (!is.null(self$`height`)) {
        ProductObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`depth`)) {
        ProductObject[["depth"]] <-
          self$`depth`
      }
      if (!is.null(self$`weight`)) {
        ProductObject[["weight"]] <-
          self$`weight`
      }
      if (!is.null(self$`unit`)) {
        ProductObject[["unit"]] <-
          self$`unit`
      }
      if (!is.null(self$`studio`)) {
        ProductObject[["studio"]] <-
          self$`studio`
      }
      if (!is.null(self$`parentalRating`)) {
        ProductObject[["parentalRating"]] <-
          self$`parentalRating`
      }
      if (!is.null(self$`publishDate`)) {
        ProductObject[["publishDate"]] <-
          self$`publishDate`
      }
      if (!is.null(self$`availabilityDate`)) {
        ProductObject[["availabilityDate"]] <-
          self$`availabilityDate`
      }
      if (!is.null(self$`size`)) {
        ProductObject[["size"]] <-
          self$extractSimpleType(self$`size`)
      }
      return(ProductObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of Product
    #'
    #' @param input_json the JSON input
    #' @return the instance of Product
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`brand`)) {
        self$`brand` <- this_object$`brand`
      }
      if (!is.null(this_object$`productType`)) {
        if (!is.null(this_object$`productType`) && !(this_object$`productType` %in% c("APPAREL", "APPLIANCES", "APPS", "ARTS_CRAFTS", "AUTOMOTIVE", "BABY", "BEAUTY", "BOOKS", "CLASSICAL", "COLLECTIBLES", "DVD", "ELECTRONICS", "GIFT_CARDS", "GOURMET_FOOD", "GROCERY", "HEALTH_PERSONAL_CARE", "HOME_GARDEN", "INDUSTRIAL", "JEWELRY", "KITCHEN", "LAWN_GARDEN", "MAGAZINES", "MISCELLANEOUS", "MUSICAL_INSTRUMENTS", "OFFICE_PRODUCTS", "OTHER", "OUTDOOR_LIVING", "PC_HARDWARE", "PET_SUPPLIES", "SHOES", "SOFTWARE", "SPORTING_GOODS", "TOOLS", "TOYS", "VIDEO_GAMES", "WATCHES", "WIRELESS", "WIRELESS_ACCESSORIES"))) {
          stop(paste("Error! \"", this_object$`productType`, "\" cannot be assigned to `productType`. Must be \"APPAREL\", \"APPLIANCES\", \"APPS\", \"ARTS_CRAFTS\", \"AUTOMOTIVE\", \"BABY\", \"BEAUTY\", \"BOOKS\", \"CLASSICAL\", \"COLLECTIBLES\", \"DVD\", \"ELECTRONICS\", \"GIFT_CARDS\", \"GOURMET_FOOD\", \"GROCERY\", \"HEALTH_PERSONAL_CARE\", \"HOME_GARDEN\", \"INDUSTRIAL\", \"JEWELRY\", \"KITCHEN\", \"LAWN_GARDEN\", \"MAGAZINES\", \"MISCELLANEOUS\", \"MUSICAL_INSTRUMENTS\", \"OFFICE_PRODUCTS\", \"OTHER\", \"OUTDOOR_LIVING\", \"PC_HARDWARE\", \"PET_SUPPLIES\", \"SHOES\", \"SOFTWARE\", \"SPORTING_GOODS\", \"TOOLS\", \"TOYS\", \"VIDEO_GAMES\", \"WATCHES\", \"WIRELESS\", \"WIRELESS_ACCESSORIES\".", sep = ""))
        }
        self$`productType` <- this_object$`productType`
      }
      if (!is.null(this_object$`condition`)) {
        if (!is.null(this_object$`condition`) && !(this_object$`condition` %in% c("NEW", "USED", "REFURBISHED", "OTHER"))) {
          stop(paste("Error! \"", this_object$`condition`, "\" cannot be assigned to `condition`. Must be \"NEW\", \"USED\", \"REFURBISHED\", \"OTHER\".", sep = ""))
        }
        self$`condition` <- this_object$`condition`
      }
      if (!is.null(this_object$`isbn`)) {
        self$`isbn` <- this_object$`isbn`
      }
      if (!is.null(this_object$`asin`)) {
        self$`asin` <- this_object$`asin`
      }
      if (!is.null(this_object$`catalogNumbers`)) {
        self$`catalogNumbers` <- ApiClient$new()$deserializeObj(this_object$`catalogNumbers`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`department`)) {
        self$`department` <- this_object$`department`
      }
      if (!is.null(this_object$`features`)) {
        self$`features` <- ApiClient$new()$deserializeObj(this_object$`features`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`minimumPrice`)) {
        self$`minimumPrice` <- this_object$`minimumPrice`
      }
      if (!is.null(this_object$`width`)) {
        self$`width` <- this_object$`width`
      }
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`depth`)) {
        self$`depth` <- this_object$`depth`
      }
      if (!is.null(this_object$`weight`)) {
        self$`weight` <- this_object$`weight`
      }
      if (!is.null(this_object$`unit`)) {
        if (!is.null(this_object$`unit`) && !(this_object$`unit` %in% c("MILIMETER", "CENTIMETER", "METER", "INCH", "FOOT", "YARD"))) {
          stop(paste("Error! \"", this_object$`unit`, "\" cannot be assigned to `unit`. Must be \"MILIMETER\", \"CENTIMETER\", \"METER\", \"INCH\", \"FOOT\", \"YARD\".", sep = ""))
        }
        self$`unit` <- this_object$`unit`
      }
      if (!is.null(this_object$`studio`)) {
        self$`studio` <- this_object$`studio`
      }
      if (!is.null(this_object$`parentalRating`)) {
        self$`parentalRating` <- this_object$`parentalRating`
      }
      if (!is.null(this_object$`publishDate`)) {
        self$`publishDate` <- this_object$`publishDate`
      }
      if (!is.null(this_object$`availabilityDate`)) {
        self$`availabilityDate` <- this_object$`availabilityDate`
      }
      if (!is.null(this_object$`size`)) {
        `size_object` <- SizeGroup$new()
        `size_object`$fromJSON(jsonlite::toJSON(this_object$`size`, auto_unbox = TRUE, digits = NA))
        self$`size` <- `size_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Product in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Product
    #'
    #' @param input_json the JSON input
    #' @return the instance of Product
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`brand` <- this_object$`brand`
      if (!is.null(this_object$`productType`) && !(this_object$`productType` %in% c("APPAREL", "APPLIANCES", "APPS", "ARTS_CRAFTS", "AUTOMOTIVE", "BABY", "BEAUTY", "BOOKS", "CLASSICAL", "COLLECTIBLES", "DVD", "ELECTRONICS", "GIFT_CARDS", "GOURMET_FOOD", "GROCERY", "HEALTH_PERSONAL_CARE", "HOME_GARDEN", "INDUSTRIAL", "JEWELRY", "KITCHEN", "LAWN_GARDEN", "MAGAZINES", "MISCELLANEOUS", "MUSICAL_INSTRUMENTS", "OFFICE_PRODUCTS", "OTHER", "OUTDOOR_LIVING", "PC_HARDWARE", "PET_SUPPLIES", "SHOES", "SOFTWARE", "SPORTING_GOODS", "TOOLS", "TOYS", "VIDEO_GAMES", "WATCHES", "WIRELESS", "WIRELESS_ACCESSORIES"))) {
        stop(paste("Error! \"", this_object$`productType`, "\" cannot be assigned to `productType`. Must be \"APPAREL\", \"APPLIANCES\", \"APPS\", \"ARTS_CRAFTS\", \"AUTOMOTIVE\", \"BABY\", \"BEAUTY\", \"BOOKS\", \"CLASSICAL\", \"COLLECTIBLES\", \"DVD\", \"ELECTRONICS\", \"GIFT_CARDS\", \"GOURMET_FOOD\", \"GROCERY\", \"HEALTH_PERSONAL_CARE\", \"HOME_GARDEN\", \"INDUSTRIAL\", \"JEWELRY\", \"KITCHEN\", \"LAWN_GARDEN\", \"MAGAZINES\", \"MISCELLANEOUS\", \"MUSICAL_INSTRUMENTS\", \"OFFICE_PRODUCTS\", \"OTHER\", \"OUTDOOR_LIVING\", \"PC_HARDWARE\", \"PET_SUPPLIES\", \"SHOES\", \"SOFTWARE\", \"SPORTING_GOODS\", \"TOOLS\", \"TOYS\", \"VIDEO_GAMES\", \"WATCHES\", \"WIRELESS\", \"WIRELESS_ACCESSORIES\".", sep = ""))
      }
      self$`productType` <- this_object$`productType`
      if (!is.null(this_object$`condition`) && !(this_object$`condition` %in% c("NEW", "USED", "REFURBISHED", "OTHER"))) {
        stop(paste("Error! \"", this_object$`condition`, "\" cannot be assigned to `condition`. Must be \"NEW\", \"USED\", \"REFURBISHED\", \"OTHER\".", sep = ""))
      }
      self$`condition` <- this_object$`condition`
      self$`isbn` <- this_object$`isbn`
      self$`asin` <- this_object$`asin`
      self$`catalogNumbers` <- ApiClient$new()$deserializeObj(this_object$`catalogNumbers`, "array[character]", loadNamespace("openapi"))
      self$`department` <- this_object$`department`
      self$`features` <- ApiClient$new()$deserializeObj(this_object$`features`, "array[character]", loadNamespace("openapi"))
      self$`minimumPrice` <- this_object$`minimumPrice`
      self$`width` <- this_object$`width`
      self$`height` <- this_object$`height`
      self$`depth` <- this_object$`depth`
      self$`weight` <- this_object$`weight`
      if (!is.null(this_object$`unit`) && !(this_object$`unit` %in% c("MILIMETER", "CENTIMETER", "METER", "INCH", "FOOT", "YARD"))) {
        stop(paste("Error! \"", this_object$`unit`, "\" cannot be assigned to `unit`. Must be \"MILIMETER\", \"CENTIMETER\", \"METER\", \"INCH\", \"FOOT\", \"YARD\".", sep = ""))
      }
      self$`unit` <- this_object$`unit`
      self$`studio` <- this_object$`studio`
      self$`parentalRating` <- this_object$`parentalRating`
      self$`publishDate` <- this_object$`publishDate`
      self$`availabilityDate` <- this_object$`availabilityDate`
      self$`size` <- SizeGroup$new()$fromJSON(jsonlite::toJSON(this_object$`size`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Product and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Product
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# Product$unlock()
#
## Below is an example to define the print function
# Product$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Product$lock()

