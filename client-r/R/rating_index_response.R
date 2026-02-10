#' Create a new RatingIndexResponse
#'
#' @description
#' RatingIndexResponse Class
#'
#' @docType class
#' @title RatingIndexResponse
#' @description RatingIndexResponse Class
#' @format An \code{R6Class} generator object
#' @field ratingIndexId  integer [optional]
#' @field ratingCount  integer [optional]
#' @field ratingAverage  numeric [optional]
#' @field value  numeric [optional]
#' @field display  character [optional]
#' @field ratableType  character [optional]
#' @field ratableId  integer [optional]
#' @field category  \link{CategoryResponse} [optional]
#' @field ratable  object [optional]
#' @field secondaryType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RatingIndexResponse <- R6::R6Class(
  "RatingIndexResponse",
  public = list(
    `ratingIndexId` = NULL,
    `ratingCount` = NULL,
    `ratingAverage` = NULL,
    `value` = NULL,
    `display` = NULL,
    `ratableType` = NULL,
    `ratableId` = NULL,
    `category` = NULL,
    `ratable` = NULL,
    `secondaryType` = NULL,

    #' @description
    #' Initialize a new RatingIndexResponse class.
    #'
    #' @param ratingIndexId ratingIndexId
    #' @param ratingCount ratingCount
    #' @param ratingAverage ratingAverage
    #' @param value value
    #' @param display display
    #' @param ratableType ratableType
    #' @param ratableId ratableId
    #' @param category category
    #' @param ratable ratable
    #' @param secondaryType secondaryType
    #' @param ... Other optional arguments.
    initialize = function(`ratingIndexId` = NULL, `ratingCount` = NULL, `ratingAverage` = NULL, `value` = NULL, `display` = NULL, `ratableType` = NULL, `ratableId` = NULL, `category` = NULL, `ratable` = NULL, `secondaryType` = NULL, ...) {
      if (!is.null(`ratingIndexId`)) {
        if (!(is.numeric(`ratingIndexId`) && length(`ratingIndexId`) == 1)) {
          stop(paste("Error! Invalid data for `ratingIndexId`. Must be an integer:", `ratingIndexId`))
        }
        self$`ratingIndexId` <- `ratingIndexId`
      }
      if (!is.null(`ratingCount`)) {
        if (!(is.numeric(`ratingCount`) && length(`ratingCount`) == 1)) {
          stop(paste("Error! Invalid data for `ratingCount`. Must be an integer:", `ratingCount`))
        }
        self$`ratingCount` <- `ratingCount`
      }
      if (!is.null(`ratingAverage`)) {
        if (!(is.numeric(`ratingAverage`) && length(`ratingAverage`) == 1)) {
          stop(paste("Error! Invalid data for `ratingAverage`. Must be a number:", `ratingAverage`))
        }
        self$`ratingAverage` <- `ratingAverage`
      }
      if (!is.null(`value`)) {
        if (!(is.numeric(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a number:", `value`))
        }
        self$`value` <- `value`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`ratableType`)) {
        if (!(`ratableType` %in% c("LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION"))) {
          stop(paste("Error! \"", `ratableType`, "\" cannot be assigned to `ratableType`. Must be \"LOCATABLE\", \"RESERVABLE\", \"PERMISSIONABLE\", \"NOTABLE\", \"ASSETABLE\", \"LIKABLE\", \"FLAGABLE\", \"FAVORITABLE\", \"RATABLE\", \"ALBUM\", \"COLLECTION\", \"APPLICATION\", \"APPLICATION_SETTING\", \"APPLICATION_CERT\", \"APPLICATION_PLACEMENT\", \"ACCOUNT\", \"ACCOUNT_SETTING\", \"GAME_LEVEL\", \"PACK\", \"MISSION\", \"TOURNAMENT\", \"ASSET\", \"ALBUM_CONTEST\", \"THEME_DESCRIPTOR\", \"OFFER\", \"OFFER_LOCATION\", \"EVENT\", \"RETAILER\", \"RETAILER_LOCATION\", \"NOTE\", \"CREATIVE\", \"FAVORITE\", \"LIKE\", \"RATING\", \"ANALYTIC\", \"THIRD_PARTY_CREDENTIAL\", \"THIRD_PARTY_NETWORK\", \"REGION\".", sep = ""))
        }
        if (!(is.character(`ratableType`) && length(`ratableType`) == 1)) {
          stop(paste("Error! Invalid data for `ratableType`. Must be a string:", `ratableType`))
        }
        self$`ratableType` <- `ratableType`
      }
      if (!is.null(`ratableId`)) {
        if (!(is.numeric(`ratableId`) && length(`ratableId`) == 1)) {
          stop(paste("Error! Invalid data for `ratableId`. Must be an integer:", `ratableId`))
        }
        self$`ratableId` <- `ratableId`
      }
      if (!is.null(`category`)) {
        stopifnot(R6::is.R6(`category`))
        self$`category` <- `category`
      }
      if (!is.null(`ratable`)) {
        self$`ratable` <- `ratable`
      }
      if (!is.null(`secondaryType`)) {
        if (!(is.character(`secondaryType`) && length(`secondaryType`) == 1)) {
          stop(paste("Error! Invalid data for `secondaryType`. Must be a string:", `secondaryType`))
        }
        self$`secondaryType` <- `secondaryType`
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
    #' @return RatingIndexResponse as a base R list.
    #' @examples
    #' # convert array of RatingIndexResponse (x) to a data frame
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
    #' Convert RatingIndexResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RatingIndexResponseObject <- list()
      if (!is.null(self$`ratingIndexId`)) {
        RatingIndexResponseObject[["ratingIndexId"]] <-
          self$`ratingIndexId`
      }
      if (!is.null(self$`ratingCount`)) {
        RatingIndexResponseObject[["ratingCount"]] <-
          self$`ratingCount`
      }
      if (!is.null(self$`ratingAverage`)) {
        RatingIndexResponseObject[["ratingAverage"]] <-
          self$`ratingAverage`
      }
      if (!is.null(self$`value`)) {
        RatingIndexResponseObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`display`)) {
        RatingIndexResponseObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`ratableType`)) {
        RatingIndexResponseObject[["ratableType"]] <-
          self$`ratableType`
      }
      if (!is.null(self$`ratableId`)) {
        RatingIndexResponseObject[["ratableId"]] <-
          self$`ratableId`
      }
      if (!is.null(self$`category`)) {
        RatingIndexResponseObject[["category"]] <-
          self$extractSimpleType(self$`category`)
      }
      if (!is.null(self$`ratable`)) {
        RatingIndexResponseObject[["ratable"]] <-
          self$`ratable`
      }
      if (!is.null(self$`secondaryType`)) {
        RatingIndexResponseObject[["secondaryType"]] <-
          self$`secondaryType`
      }
      return(RatingIndexResponseObject)
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
    #' Deserialize JSON string into an instance of RatingIndexResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RatingIndexResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ratingIndexId`)) {
        self$`ratingIndexId` <- this_object$`ratingIndexId`
      }
      if (!is.null(this_object$`ratingCount`)) {
        self$`ratingCount` <- this_object$`ratingCount`
      }
      if (!is.null(this_object$`ratingAverage`)) {
        self$`ratingAverage` <- this_object$`ratingAverage`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`ratableType`)) {
        if (!is.null(this_object$`ratableType`) && !(this_object$`ratableType` %in% c("LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION"))) {
          stop(paste("Error! \"", this_object$`ratableType`, "\" cannot be assigned to `ratableType`. Must be \"LOCATABLE\", \"RESERVABLE\", \"PERMISSIONABLE\", \"NOTABLE\", \"ASSETABLE\", \"LIKABLE\", \"FLAGABLE\", \"FAVORITABLE\", \"RATABLE\", \"ALBUM\", \"COLLECTION\", \"APPLICATION\", \"APPLICATION_SETTING\", \"APPLICATION_CERT\", \"APPLICATION_PLACEMENT\", \"ACCOUNT\", \"ACCOUNT_SETTING\", \"GAME_LEVEL\", \"PACK\", \"MISSION\", \"TOURNAMENT\", \"ASSET\", \"ALBUM_CONTEST\", \"THEME_DESCRIPTOR\", \"OFFER\", \"OFFER_LOCATION\", \"EVENT\", \"RETAILER\", \"RETAILER_LOCATION\", \"NOTE\", \"CREATIVE\", \"FAVORITE\", \"LIKE\", \"RATING\", \"ANALYTIC\", \"THIRD_PARTY_CREDENTIAL\", \"THIRD_PARTY_NETWORK\", \"REGION\".", sep = ""))
        }
        self$`ratableType` <- this_object$`ratableType`
      }
      if (!is.null(this_object$`ratableId`)) {
        self$`ratableId` <- this_object$`ratableId`
      }
      if (!is.null(this_object$`category`)) {
        `category_object` <- CategoryResponse$new()
        `category_object`$fromJSON(jsonlite::toJSON(this_object$`category`, auto_unbox = TRUE, digits = NA))
        self$`category` <- `category_object`
      }
      if (!is.null(this_object$`ratable`)) {
        self$`ratable` <- this_object$`ratable`
      }
      if (!is.null(this_object$`secondaryType`)) {
        self$`secondaryType` <- this_object$`secondaryType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RatingIndexResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RatingIndexResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RatingIndexResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ratingIndexId` <- this_object$`ratingIndexId`
      self$`ratingCount` <- this_object$`ratingCount`
      self$`ratingAverage` <- this_object$`ratingAverage`
      self$`value` <- this_object$`value`
      self$`display` <- this_object$`display`
      if (!is.null(this_object$`ratableType`) && !(this_object$`ratableType` %in% c("LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION"))) {
        stop(paste("Error! \"", this_object$`ratableType`, "\" cannot be assigned to `ratableType`. Must be \"LOCATABLE\", \"RESERVABLE\", \"PERMISSIONABLE\", \"NOTABLE\", \"ASSETABLE\", \"LIKABLE\", \"FLAGABLE\", \"FAVORITABLE\", \"RATABLE\", \"ALBUM\", \"COLLECTION\", \"APPLICATION\", \"APPLICATION_SETTING\", \"APPLICATION_CERT\", \"APPLICATION_PLACEMENT\", \"ACCOUNT\", \"ACCOUNT_SETTING\", \"GAME_LEVEL\", \"PACK\", \"MISSION\", \"TOURNAMENT\", \"ASSET\", \"ALBUM_CONTEST\", \"THEME_DESCRIPTOR\", \"OFFER\", \"OFFER_LOCATION\", \"EVENT\", \"RETAILER\", \"RETAILER_LOCATION\", \"NOTE\", \"CREATIVE\", \"FAVORITE\", \"LIKE\", \"RATING\", \"ANALYTIC\", \"THIRD_PARTY_CREDENTIAL\", \"THIRD_PARTY_NETWORK\", \"REGION\".", sep = ""))
      }
      self$`ratableType` <- this_object$`ratableType`
      self$`ratableId` <- this_object$`ratableId`
      self$`category` <- CategoryResponse$new()$fromJSON(jsonlite::toJSON(this_object$`category`, auto_unbox = TRUE, digits = NA))
      self$`ratable` <- this_object$`ratable`
      self$`secondaryType` <- this_object$`secondaryType`
      self
    },

    #' @description
    #' Validate JSON input with respect to RatingIndexResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RatingIndexResponse
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
# RatingIndexResponse$unlock()
#
## Below is an example to define the print function
# RatingIndexResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RatingIndexResponse$lock()

