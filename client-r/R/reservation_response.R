#' Create a new ReservationResponse
#'
#' @description
#' ReservationResponse Class
#'
#' @docType class
#' @title ReservationResponse
#' @description ReservationResponse Class
#' @format An \code{R6Class} generator object
#' @field reservationId  integer [optional]
#' @field reservableId  integer [optional]
#' @field reservableType  character [optional]
#' @field account  \link{AccountShortResponse} [optional]
#' @field createdDate  integer [optional]
#' @field updatedDate  integer [optional]
#' @field startDate  integer [optional]
#' @field endDate  integer [optional]
#' @field transaction  \link{OfferShortResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReservationResponse <- R6::R6Class(
  "ReservationResponse",
  public = list(
    `reservationId` = NULL,
    `reservableId` = NULL,
    `reservableType` = NULL,
    `account` = NULL,
    `createdDate` = NULL,
    `updatedDate` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `transaction` = NULL,

    #' @description
    #' Initialize a new ReservationResponse class.
    #'
    #' @param reservationId reservationId
    #' @param reservableId reservableId
    #' @param reservableType reservableType
    #' @param account account
    #' @param createdDate createdDate
    #' @param updatedDate updatedDate
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param transaction transaction
    #' @param ... Other optional arguments.
    initialize = function(`reservationId` = NULL, `reservableId` = NULL, `reservableType` = NULL, `account` = NULL, `createdDate` = NULL, `updatedDate` = NULL, `startDate` = NULL, `endDate` = NULL, `transaction` = NULL, ...) {
      if (!is.null(`reservationId`)) {
        if (!(is.numeric(`reservationId`) && length(`reservationId`) == 1)) {
          stop(paste("Error! Invalid data for `reservationId`. Must be an integer:", `reservationId`))
        }
        self$`reservationId` <- `reservationId`
      }
      if (!is.null(`reservableId`)) {
        if (!(is.numeric(`reservableId`) && length(`reservableId`) == 1)) {
          stop(paste("Error! Invalid data for `reservableId`. Must be an integer:", `reservableId`))
        }
        self$`reservableId` <- `reservableId`
      }
      if (!is.null(`reservableType`)) {
        if (!(is.character(`reservableType`) && length(`reservableType`) == 1)) {
          stop(paste("Error! Invalid data for `reservableType`. Must be a string:", `reservableType`))
        }
        self$`reservableType` <- `reservableType`
      }
      if (!is.null(`account`)) {
        stopifnot(R6::is.R6(`account`))
        self$`account` <- `account`
      }
      if (!is.null(`createdDate`)) {
        if (!(is.numeric(`createdDate`) && length(`createdDate`) == 1)) {
          stop(paste("Error! Invalid data for `createdDate`. Must be an integer:", `createdDate`))
        }
        self$`createdDate` <- `createdDate`
      }
      if (!is.null(`updatedDate`)) {
        if (!(is.numeric(`updatedDate`) && length(`updatedDate`) == 1)) {
          stop(paste("Error! Invalid data for `updatedDate`. Must be an integer:", `updatedDate`))
        }
        self$`updatedDate` <- `updatedDate`
      }
      if (!is.null(`startDate`)) {
        if (!(is.numeric(`startDate`) && length(`startDate`) == 1)) {
          stop(paste("Error! Invalid data for `startDate`. Must be an integer:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`endDate`)) {
        if (!(is.numeric(`endDate`) && length(`endDate`) == 1)) {
          stop(paste("Error! Invalid data for `endDate`. Must be an integer:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`transaction`)) {
        stopifnot(R6::is.R6(`transaction`))
        self$`transaction` <- `transaction`
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
    #' @return ReservationResponse as a base R list.
    #' @examples
    #' # convert array of ReservationResponse (x) to a data frame
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
    #' Convert ReservationResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReservationResponseObject <- list()
      if (!is.null(self$`reservationId`)) {
        ReservationResponseObject[["reservationId"]] <-
          self$`reservationId`
      }
      if (!is.null(self$`reservableId`)) {
        ReservationResponseObject[["reservableId"]] <-
          self$`reservableId`
      }
      if (!is.null(self$`reservableType`)) {
        ReservationResponseObject[["reservableType"]] <-
          self$`reservableType`
      }
      if (!is.null(self$`account`)) {
        ReservationResponseObject[["account"]] <-
          self$extractSimpleType(self$`account`)
      }
      if (!is.null(self$`createdDate`)) {
        ReservationResponseObject[["createdDate"]] <-
          self$`createdDate`
      }
      if (!is.null(self$`updatedDate`)) {
        ReservationResponseObject[["updatedDate"]] <-
          self$`updatedDate`
      }
      if (!is.null(self$`startDate`)) {
        ReservationResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        ReservationResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`transaction`)) {
        ReservationResponseObject[["transaction"]] <-
          self$extractSimpleType(self$`transaction`)
      }
      return(ReservationResponseObject)
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
    #' Deserialize JSON string into an instance of ReservationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReservationResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`reservationId`)) {
        self$`reservationId` <- this_object$`reservationId`
      }
      if (!is.null(this_object$`reservableId`)) {
        self$`reservableId` <- this_object$`reservableId`
      }
      if (!is.null(this_object$`reservableType`)) {
        self$`reservableType` <- this_object$`reservableType`
      }
      if (!is.null(this_object$`account`)) {
        `account_object` <- AccountShortResponse$new()
        `account_object`$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
        self$`account` <- `account_object`
      }
      if (!is.null(this_object$`createdDate`)) {
        self$`createdDate` <- this_object$`createdDate`
      }
      if (!is.null(this_object$`updatedDate`)) {
        self$`updatedDate` <- this_object$`updatedDate`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`transaction`)) {
        `transaction_object` <- OfferShortResponse$new()
        `transaction_object`$fromJSON(jsonlite::toJSON(this_object$`transaction`, auto_unbox = TRUE, digits = NA))
        self$`transaction` <- `transaction_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReservationResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReservationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReservationResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`reservationId` <- this_object$`reservationId`
      self$`reservableId` <- this_object$`reservableId`
      self$`reservableType` <- this_object$`reservableType`
      self$`account` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
      self$`createdDate` <- this_object$`createdDate`
      self$`updatedDate` <- this_object$`updatedDate`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`transaction` <- OfferShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`transaction`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ReservationResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReservationResponse
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
# ReservationResponse$unlock()
#
## Below is an example to define the print function
# ReservationResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReservationResponse$lock()

