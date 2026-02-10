#' Create a new RetailerLocationShortResponse
#'
#' @description
#' RetailerLocationShortResponse Class
#'
#' @docType class
#' @title RetailerLocationShortResponse
#' @description RetailerLocationShortResponse Class
#' @format An \code{R6Class} generator object
#' @field retailerLocationId  integer [optional]
#' @field name  character [optional]
#' @field contact  \link{ContactInfoResponse} [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field active  character [optional]
#' @field favoriteId  integer [optional]
#' @field favorite  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RetailerLocationShortResponse <- R6::R6Class(
  "RetailerLocationShortResponse",
  public = list(
    `retailerLocationId` = NULL,
    `name` = NULL,
    `contact` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `active` = NULL,
    `favoriteId` = NULL,
    `favorite` = NULL,

    #' @description
    #' Initialize a new RetailerLocationShortResponse class.
    #'
    #' @param retailerLocationId retailerLocationId
    #' @param name name
    #' @param contact contact
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param active active
    #' @param favoriteId favoriteId
    #' @param favorite favorite
    #' @param ... Other optional arguments.
    initialize = function(`retailerLocationId` = NULL, `name` = NULL, `contact` = NULL, `latitude` = NULL, `longitude` = NULL, `active` = NULL, `favoriteId` = NULL, `favorite` = NULL, ...) {
      if (!is.null(`retailerLocationId`)) {
        if (!(is.numeric(`retailerLocationId`) && length(`retailerLocationId`) == 1)) {
          stop(paste("Error! Invalid data for `retailerLocationId`. Must be an integer:", `retailerLocationId`))
        }
        self$`retailerLocationId` <- `retailerLocationId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`contact`)) {
        stopifnot(R6::is.R6(`contact`))
        self$`contact` <- `contact`
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
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`favoriteId`)) {
        if (!(is.numeric(`favoriteId`) && length(`favoriteId`) == 1)) {
          stop(paste("Error! Invalid data for `favoriteId`. Must be an integer:", `favoriteId`))
        }
        self$`favoriteId` <- `favoriteId`
      }
      if (!is.null(`favorite`)) {
        if (!(is.logical(`favorite`) && length(`favorite`) == 1)) {
          stop(paste("Error! Invalid data for `favorite`. Must be a boolean:", `favorite`))
        }
        self$`favorite` <- `favorite`
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
    #' @return RetailerLocationShortResponse as a base R list.
    #' @examples
    #' # convert array of RetailerLocationShortResponse (x) to a data frame
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
    #' Convert RetailerLocationShortResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RetailerLocationShortResponseObject <- list()
      if (!is.null(self$`retailerLocationId`)) {
        RetailerLocationShortResponseObject[["retailerLocationId"]] <-
          self$`retailerLocationId`
      }
      if (!is.null(self$`name`)) {
        RetailerLocationShortResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`contact`)) {
        RetailerLocationShortResponseObject[["contact"]] <-
          self$extractSimpleType(self$`contact`)
      }
      if (!is.null(self$`latitude`)) {
        RetailerLocationShortResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        RetailerLocationShortResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`active`)) {
        RetailerLocationShortResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`favoriteId`)) {
        RetailerLocationShortResponseObject[["favoriteId"]] <-
          self$`favoriteId`
      }
      if (!is.null(self$`favorite`)) {
        RetailerLocationShortResponseObject[["favorite"]] <-
          self$`favorite`
      }
      return(RetailerLocationShortResponseObject)
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
    #' Deserialize JSON string into an instance of RetailerLocationShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerLocationShortResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`retailerLocationId`)) {
        self$`retailerLocationId` <- this_object$`retailerLocationId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`contact`)) {
        `contact_object` <- ContactInfoResponse$new()
        `contact_object`$fromJSON(jsonlite::toJSON(this_object$`contact`, auto_unbox = TRUE, digits = NA))
        self$`contact` <- `contact_object`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`favoriteId`)) {
        self$`favoriteId` <- this_object$`favoriteId`
      }
      if (!is.null(this_object$`favorite`)) {
        self$`favorite` <- this_object$`favorite`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RetailerLocationShortResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RetailerLocationShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerLocationShortResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`retailerLocationId` <- this_object$`retailerLocationId`
      self$`name` <- this_object$`name`
      self$`contact` <- ContactInfoResponse$new()$fromJSON(jsonlite::toJSON(this_object$`contact`, auto_unbox = TRUE, digits = NA))
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`active` <- this_object$`active`
      self$`favoriteId` <- this_object$`favoriteId`
      self$`favorite` <- this_object$`favorite`
      self
    },

    #' @description
    #' Validate JSON input with respect to RetailerLocationShortResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RetailerLocationShortResponse
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
# RetailerLocationShortResponse$unlock()
#
## Below is an example to define the print function
# RetailerLocationShortResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RetailerLocationShortResponse$lock()

