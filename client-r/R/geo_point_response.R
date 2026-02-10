#' Create a new GeoPointResponse
#'
#' @description
#' GeoPointResponse Class
#'
#' @docType class
#' @title GeoPointResponse
#' @description GeoPointResponse Class
#' @format An \code{R6Class} generator object
#' @field objectId  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field altitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field locatableId  integer [optional]
#' @field locatableObjectId  character [optional]
#' @field locatableObjectName  character [optional]
#' @field locatableDisplay  character [optional]
#' @field asset  \link{AssetShortResponse} [optional]
#' @field distance  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoPointResponse <- R6::R6Class(
  "GeoPointResponse",
  public = list(
    `objectId` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `altitude` = NULL,
    `locationDescription` = NULL,
    `locatableId` = NULL,
    `locatableObjectId` = NULL,
    `locatableObjectName` = NULL,
    `locatableDisplay` = NULL,
    `asset` = NULL,
    `distance` = NULL,

    #' @description
    #' Initialize a new GeoPointResponse class.
    #'
    #' @param objectId objectId
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param altitude altitude
    #' @param locationDescription locationDescription
    #' @param locatableId locatableId
    #' @param locatableObjectId locatableObjectId
    #' @param locatableObjectName locatableObjectName
    #' @param locatableDisplay locatableDisplay
    #' @param asset asset
    #' @param distance distance
    #' @param ... Other optional arguments.
    initialize = function(`objectId` = NULL, `latitude` = NULL, `longitude` = NULL, `altitude` = NULL, `locationDescription` = NULL, `locatableId` = NULL, `locatableObjectId` = NULL, `locatableObjectName` = NULL, `locatableDisplay` = NULL, `asset` = NULL, `distance` = NULL, ...) {
      if (!is.null(`objectId`)) {
        if (!(is.character(`objectId`) && length(`objectId`) == 1)) {
          stop(paste("Error! Invalid data for `objectId`. Must be a string:", `objectId`))
        }
        self$`objectId` <- `objectId`
      }
      if (!is.null(`latitude`)) {
        if (!(is.numeric(`latitude`) && length(`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", `latitude`))
        }
        self$`latitude` <- `latitude`
      }
      if (!is.null(`longitude`)) {
        if (!(is.numeric(`longitude`) && length(`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", `longitude`))
        }
        self$`longitude` <- `longitude`
      }
      if (!is.null(`altitude`)) {
        if (!(is.numeric(`altitude`) && length(`altitude`) == 1)) {
          stop(paste("Error! Invalid data for `altitude`. Must be a number:", `altitude`))
        }
        self$`altitude` <- `altitude`
      }
      if (!is.null(`locationDescription`)) {
        if (!(is.character(`locationDescription`) && length(`locationDescription`) == 1)) {
          stop(paste("Error! Invalid data for `locationDescription`. Must be a string:", `locationDescription`))
        }
        self$`locationDescription` <- `locationDescription`
      }
      if (!is.null(`locatableId`)) {
        if (!(is.numeric(`locatableId`) && length(`locatableId`) == 1)) {
          stop(paste("Error! Invalid data for `locatableId`. Must be an integer:", `locatableId`))
        }
        self$`locatableId` <- `locatableId`
      }
      if (!is.null(`locatableObjectId`)) {
        if (!(is.character(`locatableObjectId`) && length(`locatableObjectId`) == 1)) {
          stop(paste("Error! Invalid data for `locatableObjectId`. Must be a string:", `locatableObjectId`))
        }
        self$`locatableObjectId` <- `locatableObjectId`
      }
      if (!is.null(`locatableObjectName`)) {
        if (!(is.character(`locatableObjectName`) && length(`locatableObjectName`) == 1)) {
          stop(paste("Error! Invalid data for `locatableObjectName`. Must be a string:", `locatableObjectName`))
        }
        self$`locatableObjectName` <- `locatableObjectName`
      }
      if (!is.null(`locatableDisplay`)) {
        if (!(is.character(`locatableDisplay`) && length(`locatableDisplay`) == 1)) {
          stop(paste("Error! Invalid data for `locatableDisplay`. Must be a string:", `locatableDisplay`))
        }
        self$`locatableDisplay` <- `locatableDisplay`
      }
      if (!is.null(`asset`)) {
        stopifnot(R6::is.R6(`asset`))
        self$`asset` <- `asset`
      }
      if (!is.null(`distance`)) {
        if (!(is.numeric(`distance`) && length(`distance`) == 1)) {
          stop(paste("Error! Invalid data for `distance`. Must be a number:", `distance`))
        }
        self$`distance` <- `distance`
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
    #' @return GeoPointResponse as a base R list.
    #' @examples
    #' # convert array of GeoPointResponse (x) to a data frame
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
    #' Convert GeoPointResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoPointResponseObject <- list()
      if (!is.null(self$`objectId`)) {
        GeoPointResponseObject[["objectId"]] <-
          self$`objectId`
      }
      if (!is.null(self$`latitude`)) {
        GeoPointResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        GeoPointResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`altitude`)) {
        GeoPointResponseObject[["altitude"]] <-
          self$`altitude`
      }
      if (!is.null(self$`locationDescription`)) {
        GeoPointResponseObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`locatableId`)) {
        GeoPointResponseObject[["locatableId"]] <-
          self$`locatableId`
      }
      if (!is.null(self$`locatableObjectId`)) {
        GeoPointResponseObject[["locatableObjectId"]] <-
          self$`locatableObjectId`
      }
      if (!is.null(self$`locatableObjectName`)) {
        GeoPointResponseObject[["locatableObjectName"]] <-
          self$`locatableObjectName`
      }
      if (!is.null(self$`locatableDisplay`)) {
        GeoPointResponseObject[["locatableDisplay"]] <-
          self$`locatableDisplay`
      }
      if (!is.null(self$`asset`)) {
        GeoPointResponseObject[["asset"]] <-
          self$extractSimpleType(self$`asset`)
      }
      if (!is.null(self$`distance`)) {
        GeoPointResponseObject[["distance"]] <-
          self$`distance`
      }
      return(GeoPointResponseObject)
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
    #' Deserialize JSON string into an instance of GeoPointResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoPointResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`objectId`)) {
        self$`objectId` <- this_object$`objectId`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`altitude`)) {
        self$`altitude` <- this_object$`altitude`
      }
      if (!is.null(this_object$`locationDescription`)) {
        self$`locationDescription` <- this_object$`locationDescription`
      }
      if (!is.null(this_object$`locatableId`)) {
        self$`locatableId` <- this_object$`locatableId`
      }
      if (!is.null(this_object$`locatableObjectId`)) {
        self$`locatableObjectId` <- this_object$`locatableObjectId`
      }
      if (!is.null(this_object$`locatableObjectName`)) {
        self$`locatableObjectName` <- this_object$`locatableObjectName`
      }
      if (!is.null(this_object$`locatableDisplay`)) {
        self$`locatableDisplay` <- this_object$`locatableDisplay`
      }
      if (!is.null(this_object$`asset`)) {
        `asset_object` <- AssetShortResponse$new()
        `asset_object`$fromJSON(jsonlite::toJSON(this_object$`asset`, auto_unbox = TRUE, digits = NA))
        self$`asset` <- `asset_object`
      }
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoPointResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoPointResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoPointResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`objectId` <- this_object$`objectId`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`altitude` <- this_object$`altitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`locatableId` <- this_object$`locatableId`
      self$`locatableObjectId` <- this_object$`locatableObjectId`
      self$`locatableObjectName` <- this_object$`locatableObjectName`
      self$`locatableDisplay` <- this_object$`locatableDisplay`
      self$`asset` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`asset`, auto_unbox = TRUE, digits = NA))
      self$`distance` <- this_object$`distance`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoPointResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoPointResponse
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
# GeoPointResponse$unlock()
#
## Below is an example to define the print function
# GeoPointResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoPointResponse$lock()

