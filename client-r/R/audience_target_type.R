#' Create a new AudienceTargetType
#'
#' @description
#' AudienceTargetType Class
#'
#' @docType class
#' @title AudienceTargetType
#' @description AudienceTargetType Class
#' @format An \code{R6Class} generator object
#' @field targetType  character [optional]
#' @field targetDescription  character [optional]
#' @field retailerLocation  \link{RetailerLocation} [optional]
#' @field offerLocation  \link{OfferLocation} [optional]
#' @field account  \link{Account} [optional]
#' @field region  \link{Region} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AudienceTargetType <- R6::R6Class(
  "AudienceTargetType",
  public = list(
    `targetType` = NULL,
    `targetDescription` = NULL,
    `retailerLocation` = NULL,
    `offerLocation` = NULL,
    `account` = NULL,
    `region` = NULL,

    #' @description
    #' Initialize a new AudienceTargetType class.
    #'
    #' @param targetType targetType
    #' @param targetDescription targetDescription
    #' @param retailerLocation retailerLocation
    #' @param offerLocation offerLocation
    #' @param account account
    #' @param region region
    #' @param ... Other optional arguments.
    initialize = function(`targetType` = NULL, `targetDescription` = NULL, `retailerLocation` = NULL, `offerLocation` = NULL, `account` = NULL, `region` = NULL, ...) {
      if (!is.null(`targetType`)) {
        if (!(`targetType` %in% c("RETAILER_LOCATION", "OFFER_LOCATION", "ACCOUNT", "REGION"))) {
          stop(paste("Error! \"", `targetType`, "\" cannot be assigned to `targetType`. Must be \"RETAILER_LOCATION\", \"OFFER_LOCATION\", \"ACCOUNT\", \"REGION\".", sep = ""))
        }
        if (!(is.character(`targetType`) && length(`targetType`) == 1)) {
          stop(paste("Error! Invalid data for `targetType`. Must be a string:", `targetType`))
        }
        self$`targetType` <- `targetType`
      }
      if (!is.null(`targetDescription`)) {
        if (!(is.character(`targetDescription`) && length(`targetDescription`) == 1)) {
          stop(paste("Error! Invalid data for `targetDescription`. Must be a string:", `targetDescription`))
        }
        self$`targetDescription` <- `targetDescription`
      }
      if (!is.null(`retailerLocation`)) {
        stopifnot(R6::is.R6(`retailerLocation`))
        self$`retailerLocation` <- `retailerLocation`
      }
      if (!is.null(`offerLocation`)) {
        stopifnot(R6::is.R6(`offerLocation`))
        self$`offerLocation` <- `offerLocation`
      }
      if (!is.null(`account`)) {
        stopifnot(R6::is.R6(`account`))
        self$`account` <- `account`
      }
      if (!is.null(`region`)) {
        stopifnot(R6::is.R6(`region`))
        self$`region` <- `region`
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
    #' @return AudienceTargetType as a base R list.
    #' @examples
    #' # convert array of AudienceTargetType (x) to a data frame
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
    #' Convert AudienceTargetType to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AudienceTargetTypeObject <- list()
      if (!is.null(self$`targetType`)) {
        AudienceTargetTypeObject[["targetType"]] <-
          self$`targetType`
      }
      if (!is.null(self$`targetDescription`)) {
        AudienceTargetTypeObject[["targetDescription"]] <-
          self$`targetDescription`
      }
      if (!is.null(self$`retailerLocation`)) {
        AudienceTargetTypeObject[["retailerLocation"]] <-
          self$extractSimpleType(self$`retailerLocation`)
      }
      if (!is.null(self$`offerLocation`)) {
        AudienceTargetTypeObject[["offerLocation"]] <-
          self$extractSimpleType(self$`offerLocation`)
      }
      if (!is.null(self$`account`)) {
        AudienceTargetTypeObject[["account"]] <-
          self$extractSimpleType(self$`account`)
      }
      if (!is.null(self$`region`)) {
        AudienceTargetTypeObject[["region"]] <-
          self$extractSimpleType(self$`region`)
      }
      return(AudienceTargetTypeObject)
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
    #' Deserialize JSON string into an instance of AudienceTargetType
    #'
    #' @param input_json the JSON input
    #' @return the instance of AudienceTargetType
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`targetType`)) {
        if (!is.null(this_object$`targetType`) && !(this_object$`targetType` %in% c("RETAILER_LOCATION", "OFFER_LOCATION", "ACCOUNT", "REGION"))) {
          stop(paste("Error! \"", this_object$`targetType`, "\" cannot be assigned to `targetType`. Must be \"RETAILER_LOCATION\", \"OFFER_LOCATION\", \"ACCOUNT\", \"REGION\".", sep = ""))
        }
        self$`targetType` <- this_object$`targetType`
      }
      if (!is.null(this_object$`targetDescription`)) {
        self$`targetDescription` <- this_object$`targetDescription`
      }
      if (!is.null(this_object$`retailerLocation`)) {
        `retailerlocation_object` <- RetailerLocation$new()
        `retailerlocation_object`$fromJSON(jsonlite::toJSON(this_object$`retailerLocation`, auto_unbox = TRUE, digits = NA))
        self$`retailerLocation` <- `retailerlocation_object`
      }
      if (!is.null(this_object$`offerLocation`)) {
        `offerlocation_object` <- OfferLocation$new()
        `offerlocation_object`$fromJSON(jsonlite::toJSON(this_object$`offerLocation`, auto_unbox = TRUE, digits = NA))
        self$`offerLocation` <- `offerlocation_object`
      }
      if (!is.null(this_object$`account`)) {
        `account_object` <- Account$new()
        `account_object`$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
        self$`account` <- `account_object`
      }
      if (!is.null(this_object$`region`)) {
        `region_object` <- Region$new()
        `region_object`$fromJSON(jsonlite::toJSON(this_object$`region`, auto_unbox = TRUE, digits = NA))
        self$`region` <- `region_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AudienceTargetType in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AudienceTargetType
    #'
    #' @param input_json the JSON input
    #' @return the instance of AudienceTargetType
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`targetType`) && !(this_object$`targetType` %in% c("RETAILER_LOCATION", "OFFER_LOCATION", "ACCOUNT", "REGION"))) {
        stop(paste("Error! \"", this_object$`targetType`, "\" cannot be assigned to `targetType`. Must be \"RETAILER_LOCATION\", \"OFFER_LOCATION\", \"ACCOUNT\", \"REGION\".", sep = ""))
      }
      self$`targetType` <- this_object$`targetType`
      self$`targetDescription` <- this_object$`targetDescription`
      self$`retailerLocation` <- RetailerLocation$new()$fromJSON(jsonlite::toJSON(this_object$`retailerLocation`, auto_unbox = TRUE, digits = NA))
      self$`offerLocation` <- OfferLocation$new()$fromJSON(jsonlite::toJSON(this_object$`offerLocation`, auto_unbox = TRUE, digits = NA))
      self$`account` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
      self$`region` <- Region$new()$fromJSON(jsonlite::toJSON(this_object$`region`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AudienceTargetType and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AudienceTargetType
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
# AudienceTargetType$unlock()
#
## Below is an example to define the print function
# AudienceTargetType$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AudienceTargetType$lock()

