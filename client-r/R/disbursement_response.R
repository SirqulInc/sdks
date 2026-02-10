#' Create a new DisbursementResponse
#'
#' @description
#' DisbursementResponse Class
#'
#' @docType class
#' @title DisbursementResponse
#' @description DisbursementResponse Class
#' @format An \code{R6Class} generator object
#' @field disbursementId  integer [optional]
#' @field title  character [optional]
#' @field comment  character [optional]
#' @field externalId  character [optional]
#' @field introspectionParams  character [optional]
#' @field amount  numeric [optional]
#' @field scheduledDate  integer [optional]
#' @field captureDate  integer [optional]
#' @field estimatedDate  integer [optional]
#' @field settledDate  integer [optional]
#' @field status  character [optional]
#' @field provider  character [optional]
#' @field senderBillable  \link{BillableEntityShortResponse} [optional]
#' @field receiverBillable  \link{BillableEntityShortResponse} [optional]
#' @field errorCode  character [optional]
#' @field errorMessage  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DisbursementResponse <- R6::R6Class(
  "DisbursementResponse",
  public = list(
    `disbursementId` = NULL,
    `title` = NULL,
    `comment` = NULL,
    `externalId` = NULL,
    `introspectionParams` = NULL,
    `amount` = NULL,
    `scheduledDate` = NULL,
    `captureDate` = NULL,
    `estimatedDate` = NULL,
    `settledDate` = NULL,
    `status` = NULL,
    `provider` = NULL,
    `senderBillable` = NULL,
    `receiverBillable` = NULL,
    `errorCode` = NULL,
    `errorMessage` = NULL,

    #' @description
    #' Initialize a new DisbursementResponse class.
    #'
    #' @param disbursementId disbursementId
    #' @param title title
    #' @param comment comment
    #' @param externalId externalId
    #' @param introspectionParams introspectionParams
    #' @param amount amount
    #' @param scheduledDate scheduledDate
    #' @param captureDate captureDate
    #' @param estimatedDate estimatedDate
    #' @param settledDate settledDate
    #' @param status status
    #' @param provider provider
    #' @param senderBillable senderBillable
    #' @param receiverBillable receiverBillable
    #' @param errorCode errorCode
    #' @param errorMessage errorMessage
    #' @param ... Other optional arguments.
    initialize = function(`disbursementId` = NULL, `title` = NULL, `comment` = NULL, `externalId` = NULL, `introspectionParams` = NULL, `amount` = NULL, `scheduledDate` = NULL, `captureDate` = NULL, `estimatedDate` = NULL, `settledDate` = NULL, `status` = NULL, `provider` = NULL, `senderBillable` = NULL, `receiverBillable` = NULL, `errorCode` = NULL, `errorMessage` = NULL, ...) {
      if (!is.null(`disbursementId`)) {
        if (!(is.numeric(`disbursementId`) && length(`disbursementId`) == 1)) {
          stop(paste("Error! Invalid data for `disbursementId`. Must be an integer:", `disbursementId`))
        }
        self$`disbursementId` <- `disbursementId`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`comment`)) {
        if (!(is.character(`comment`) && length(`comment`) == 1)) {
          stop(paste("Error! Invalid data for `comment`. Must be a string:", `comment`))
        }
        self$`comment` <- `comment`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`introspectionParams`)) {
        if (!(is.character(`introspectionParams`) && length(`introspectionParams`) == 1)) {
          stop(paste("Error! Invalid data for `introspectionParams`. Must be a string:", `introspectionParams`))
        }
        self$`introspectionParams` <- `introspectionParams`
      }
      if (!is.null(`amount`)) {
        self$`amount` <- `amount`
      }
      if (!is.null(`scheduledDate`)) {
        if (!(is.numeric(`scheduledDate`) && length(`scheduledDate`) == 1)) {
          stop(paste("Error! Invalid data for `scheduledDate`. Must be an integer:", `scheduledDate`))
        }
        self$`scheduledDate` <- `scheduledDate`
      }
      if (!is.null(`captureDate`)) {
        if (!(is.numeric(`captureDate`) && length(`captureDate`) == 1)) {
          stop(paste("Error! Invalid data for `captureDate`. Must be an integer:", `captureDate`))
        }
        self$`captureDate` <- `captureDate`
      }
      if (!is.null(`estimatedDate`)) {
        if (!(is.numeric(`estimatedDate`) && length(`estimatedDate`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedDate`. Must be an integer:", `estimatedDate`))
        }
        self$`estimatedDate` <- `estimatedDate`
      }
      if (!is.null(`settledDate`)) {
        if (!(is.numeric(`settledDate`) && length(`settledDate`) == 1)) {
          stop(paste("Error! Invalid data for `settledDate`. Must be an integer:", `settledDate`))
        }
        self$`settledDate` <- `settledDate`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("NEW", "APPROVED", "VALIDATING", "ERROR", "AUTHORIZED", "CAPTURED", "SETTLED"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"NEW\", \"APPROVED\", \"VALIDATING\", \"ERROR\", \"AUTHORIZED\", \"CAPTURED\", \"SETTLED\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`provider`)) {
        if (!(`provider` %in% c("AUTHORIZE_NET", "AMAZON_FPS", "BILL_COM"))) {
          stop(paste("Error! \"", `provider`, "\" cannot be assigned to `provider`. Must be \"AUTHORIZE_NET\", \"AMAZON_FPS\", \"BILL_COM\".", sep = ""))
        }
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
      }
      if (!is.null(`senderBillable`)) {
        stopifnot(R6::is.R6(`senderBillable`))
        self$`senderBillable` <- `senderBillable`
      }
      if (!is.null(`receiverBillable`)) {
        stopifnot(R6::is.R6(`receiverBillable`))
        self$`receiverBillable` <- `receiverBillable`
      }
      if (!is.null(`errorCode`)) {
        if (!(is.character(`errorCode`) && length(`errorCode`) == 1)) {
          stop(paste("Error! Invalid data for `errorCode`. Must be a string:", `errorCode`))
        }
        self$`errorCode` <- `errorCode`
      }
      if (!is.null(`errorMessage`)) {
        if (!(is.character(`errorMessage`) && length(`errorMessage`) == 1)) {
          stop(paste("Error! Invalid data for `errorMessage`. Must be a string:", `errorMessage`))
        }
        self$`errorMessage` <- `errorMessage`
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
    #' @return DisbursementResponse as a base R list.
    #' @examples
    #' # convert array of DisbursementResponse (x) to a data frame
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
    #' Convert DisbursementResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DisbursementResponseObject <- list()
      if (!is.null(self$`disbursementId`)) {
        DisbursementResponseObject[["disbursementId"]] <-
          self$`disbursementId`
      }
      if (!is.null(self$`title`)) {
        DisbursementResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`comment`)) {
        DisbursementResponseObject[["comment"]] <-
          self$`comment`
      }
      if (!is.null(self$`externalId`)) {
        DisbursementResponseObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`introspectionParams`)) {
        DisbursementResponseObject[["introspectionParams"]] <-
          self$`introspectionParams`
      }
      if (!is.null(self$`amount`)) {
        DisbursementResponseObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`scheduledDate`)) {
        DisbursementResponseObject[["scheduledDate"]] <-
          self$`scheduledDate`
      }
      if (!is.null(self$`captureDate`)) {
        DisbursementResponseObject[["captureDate"]] <-
          self$`captureDate`
      }
      if (!is.null(self$`estimatedDate`)) {
        DisbursementResponseObject[["estimatedDate"]] <-
          self$`estimatedDate`
      }
      if (!is.null(self$`settledDate`)) {
        DisbursementResponseObject[["settledDate"]] <-
          self$`settledDate`
      }
      if (!is.null(self$`status`)) {
        DisbursementResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`provider`)) {
        DisbursementResponseObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`senderBillable`)) {
        DisbursementResponseObject[["senderBillable"]] <-
          self$extractSimpleType(self$`senderBillable`)
      }
      if (!is.null(self$`receiverBillable`)) {
        DisbursementResponseObject[["receiverBillable"]] <-
          self$extractSimpleType(self$`receiverBillable`)
      }
      if (!is.null(self$`errorCode`)) {
        DisbursementResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`errorMessage`)) {
        DisbursementResponseObject[["errorMessage"]] <-
          self$`errorMessage`
      }
      return(DisbursementResponseObject)
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
    #' Deserialize JSON string into an instance of DisbursementResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DisbursementResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`disbursementId`)) {
        self$`disbursementId` <- this_object$`disbursementId`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`comment`)) {
        self$`comment` <- this_object$`comment`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`introspectionParams`)) {
        self$`introspectionParams` <- this_object$`introspectionParams`
      }
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`scheduledDate`)) {
        self$`scheduledDate` <- this_object$`scheduledDate`
      }
      if (!is.null(this_object$`captureDate`)) {
        self$`captureDate` <- this_object$`captureDate`
      }
      if (!is.null(this_object$`estimatedDate`)) {
        self$`estimatedDate` <- this_object$`estimatedDate`
      }
      if (!is.null(this_object$`settledDate`)) {
        self$`settledDate` <- this_object$`settledDate`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("NEW", "APPROVED", "VALIDATING", "ERROR", "AUTHORIZED", "CAPTURED", "SETTLED"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"NEW\", \"APPROVED\", \"VALIDATING\", \"ERROR\", \"AUTHORIZED\", \"CAPTURED\", \"SETTLED\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`provider`)) {
        if (!is.null(this_object$`provider`) && !(this_object$`provider` %in% c("AUTHORIZE_NET", "AMAZON_FPS", "BILL_COM"))) {
          stop(paste("Error! \"", this_object$`provider`, "\" cannot be assigned to `provider`. Must be \"AUTHORIZE_NET\", \"AMAZON_FPS\", \"BILL_COM\".", sep = ""))
        }
        self$`provider` <- this_object$`provider`
      }
      if (!is.null(this_object$`senderBillable`)) {
        `senderbillable_object` <- BillableEntityShortResponse$new()
        `senderbillable_object`$fromJSON(jsonlite::toJSON(this_object$`senderBillable`, auto_unbox = TRUE, digits = NA))
        self$`senderBillable` <- `senderbillable_object`
      }
      if (!is.null(this_object$`receiverBillable`)) {
        `receiverbillable_object` <- BillableEntityShortResponse$new()
        `receiverbillable_object`$fromJSON(jsonlite::toJSON(this_object$`receiverBillable`, auto_unbox = TRUE, digits = NA))
        self$`receiverBillable` <- `receiverbillable_object`
      }
      if (!is.null(this_object$`errorCode`)) {
        self$`errorCode` <- this_object$`errorCode`
      }
      if (!is.null(this_object$`errorMessage`)) {
        self$`errorMessage` <- this_object$`errorMessage`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DisbursementResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DisbursementResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DisbursementResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`disbursementId` <- this_object$`disbursementId`
      self$`title` <- this_object$`title`
      self$`comment` <- this_object$`comment`
      self$`externalId` <- this_object$`externalId`
      self$`introspectionParams` <- this_object$`introspectionParams`
      self$`amount` <- this_object$`amount`
      self$`scheduledDate` <- this_object$`scheduledDate`
      self$`captureDate` <- this_object$`captureDate`
      self$`estimatedDate` <- this_object$`estimatedDate`
      self$`settledDate` <- this_object$`settledDate`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("NEW", "APPROVED", "VALIDATING", "ERROR", "AUTHORIZED", "CAPTURED", "SETTLED"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"NEW\", \"APPROVED\", \"VALIDATING\", \"ERROR\", \"AUTHORIZED\", \"CAPTURED\", \"SETTLED\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      if (!is.null(this_object$`provider`) && !(this_object$`provider` %in% c("AUTHORIZE_NET", "AMAZON_FPS", "BILL_COM"))) {
        stop(paste("Error! \"", this_object$`provider`, "\" cannot be assigned to `provider`. Must be \"AUTHORIZE_NET\", \"AMAZON_FPS\", \"BILL_COM\".", sep = ""))
      }
      self$`provider` <- this_object$`provider`
      self$`senderBillable` <- BillableEntityShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`senderBillable`, auto_unbox = TRUE, digits = NA))
      self$`receiverBillable` <- BillableEntityShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`receiverBillable`, auto_unbox = TRUE, digits = NA))
      self$`errorCode` <- this_object$`errorCode`
      self$`errorMessage` <- this_object$`errorMessage`
      self
    },

    #' @description
    #' Validate JSON input with respect to DisbursementResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DisbursementResponse
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
# DisbursementResponse$unlock()
#
## Below is an example to define the print function
# DisbursementResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DisbursementResponse$lock()

