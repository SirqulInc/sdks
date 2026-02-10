#' Create a new PaymentTransactionResponse
#'
#' @description
#' PaymentTransactionResponse Class
#'
#' @docType class
#' @title PaymentTransactionResponse
#' @description PaymentTransactionResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field paymentTransactionId  integer [optional]
#' @field customer  \link{AccountShortResponse} [optional]
#' @field promoCode  character [optional]
#' @field remoteRefId  character [optional]
#' @field currencyType  character [optional]
#' @field amount  numeric [optional]
#' @field tax  numeric [optional]
#' @field offerTransactions  list(\link{OfferTransactionResponse}) [optional]
#' @field orderItems  list(\link{PurchaseOrderItemResponse}) [optional]
#' @field externalPaymentId  character [optional]
#' @field metadata  character [optional]
#' @field created  integer [optional]
#' @field updated  integer [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaymentTransactionResponse <- R6::R6Class(
  "PaymentTransactionResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `paymentTransactionId` = NULL,
    `customer` = NULL,
    `promoCode` = NULL,
    `remoteRefId` = NULL,
    `currencyType` = NULL,
    `amount` = NULL,
    `tax` = NULL,
    `offerTransactions` = NULL,
    `orderItems` = NULL,
    `externalPaymentId` = NULL,
    `metadata` = NULL,
    `created` = NULL,
    `updated` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new PaymentTransactionResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param paymentTransactionId paymentTransactionId
    #' @param customer customer
    #' @param promoCode promoCode
    #' @param remoteRefId remoteRefId
    #' @param currencyType currencyType
    #' @param amount amount
    #' @param tax tax
    #' @param offerTransactions offerTransactions
    #' @param orderItems orderItems
    #' @param externalPaymentId externalPaymentId
    #' @param metadata metadata
    #' @param created created
    #' @param updated updated
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `paymentTransactionId` = NULL, `customer` = NULL, `promoCode` = NULL, `remoteRefId` = NULL, `currencyType` = NULL, `amount` = NULL, `tax` = NULL, `offerTransactions` = NULL, `orderItems` = NULL, `externalPaymentId` = NULL, `metadata` = NULL, `created` = NULL, `updated` = NULL, `returning` = NULL, ...) {
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`version`)) {
        if (!(is.numeric(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a number:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`serializeNulls`)) {
        if (!(is.logical(`serializeNulls`) && length(`serializeNulls`) == 1)) {
          stop(paste("Error! Invalid data for `serializeNulls`. Must be a boolean:", `serializeNulls`))
        }
        self$`serializeNulls` <- `serializeNulls`
      }
      if (!is.null(`startTimeLog`)) {
        if (!(is.numeric(`startTimeLog`) && length(`startTimeLog`) == 1)) {
          stop(paste("Error! Invalid data for `startTimeLog`. Must be an integer:", `startTimeLog`))
        }
        self$`startTimeLog` <- `startTimeLog`
      }
      if (!is.null(`errorCode`)) {
        if (!(is.character(`errorCode`) && length(`errorCode`) == 1)) {
          stop(paste("Error! Invalid data for `errorCode`. Must be a string:", `errorCode`))
        }
        self$`errorCode` <- `errorCode`
      }
      if (!is.null(`request`)) {
        stopifnot(is.vector(`request`), length(`request`) != 0)
        sapply(`request`, function(x) stopifnot(R6::is.R6(x)))
        self$`request` <- `request`
      }
      if (!is.null(`paymentTransactionId`)) {
        if (!(is.numeric(`paymentTransactionId`) && length(`paymentTransactionId`) == 1)) {
          stop(paste("Error! Invalid data for `paymentTransactionId`. Must be an integer:", `paymentTransactionId`))
        }
        self$`paymentTransactionId` <- `paymentTransactionId`
      }
      if (!is.null(`customer`)) {
        stopifnot(R6::is.R6(`customer`))
        self$`customer` <- `customer`
      }
      if (!is.null(`promoCode`)) {
        if (!(is.character(`promoCode`) && length(`promoCode`) == 1)) {
          stop(paste("Error! Invalid data for `promoCode`. Must be a string:", `promoCode`))
        }
        self$`promoCode` <- `promoCode`
      }
      if (!is.null(`remoteRefId`)) {
        if (!(is.character(`remoteRefId`) && length(`remoteRefId`) == 1)) {
          stop(paste("Error! Invalid data for `remoteRefId`. Must be a string:", `remoteRefId`))
        }
        self$`remoteRefId` <- `remoteRefId`
      }
      if (!is.null(`currencyType`)) {
        if (!(is.character(`currencyType`) && length(`currencyType`) == 1)) {
          stop(paste("Error! Invalid data for `currencyType`. Must be a string:", `currencyType`))
        }
        self$`currencyType` <- `currencyType`
      }
      if (!is.null(`amount`)) {
        if (!(is.numeric(`amount`) && length(`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a number:", `amount`))
        }
        self$`amount` <- `amount`
      }
      if (!is.null(`tax`)) {
        if (!(is.numeric(`tax`) && length(`tax`) == 1)) {
          stop(paste("Error! Invalid data for `tax`. Must be a number:", `tax`))
        }
        self$`tax` <- `tax`
      }
      if (!is.null(`offerTransactions`)) {
        stopifnot(is.vector(`offerTransactions`), length(`offerTransactions`) != 0)
        sapply(`offerTransactions`, function(x) stopifnot(R6::is.R6(x)))
        self$`offerTransactions` <- `offerTransactions`
      }
      if (!is.null(`orderItems`)) {
        stopifnot(is.vector(`orderItems`), length(`orderItems`) != 0)
        sapply(`orderItems`, function(x) stopifnot(R6::is.R6(x)))
        self$`orderItems` <- `orderItems`
      }
      if (!is.null(`externalPaymentId`)) {
        if (!(is.character(`externalPaymentId`) && length(`externalPaymentId`) == 1)) {
          stop(paste("Error! Invalid data for `externalPaymentId`. Must be a string:", `externalPaymentId`))
        }
        self$`externalPaymentId` <- `externalPaymentId`
      }
      if (!is.null(`metadata`)) {
        if (!(is.character(`metadata`) && length(`metadata`) == 1)) {
          stop(paste("Error! Invalid data for `metadata`. Must be a string:", `metadata`))
        }
        self$`metadata` <- `metadata`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`returning`)) {
        if (!(is.character(`returning`) && length(`returning`) == 1)) {
          stop(paste("Error! Invalid data for `returning`. Must be a string:", `returning`))
        }
        self$`returning` <- `returning`
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
    #' @return PaymentTransactionResponse as a base R list.
    #' @examples
    #' # convert array of PaymentTransactionResponse (x) to a data frame
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
    #' Convert PaymentTransactionResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PaymentTransactionResponseObject <- list()
      if (!is.null(self$`valid`)) {
        PaymentTransactionResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        PaymentTransactionResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        PaymentTransactionResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        PaymentTransactionResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        PaymentTransactionResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        PaymentTransactionResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        PaymentTransactionResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`paymentTransactionId`)) {
        PaymentTransactionResponseObject[["paymentTransactionId"]] <-
          self$`paymentTransactionId`
      }
      if (!is.null(self$`customer`)) {
        PaymentTransactionResponseObject[["customer"]] <-
          self$extractSimpleType(self$`customer`)
      }
      if (!is.null(self$`promoCode`)) {
        PaymentTransactionResponseObject[["promoCode"]] <-
          self$`promoCode`
      }
      if (!is.null(self$`remoteRefId`)) {
        PaymentTransactionResponseObject[["remoteRefId"]] <-
          self$`remoteRefId`
      }
      if (!is.null(self$`currencyType`)) {
        PaymentTransactionResponseObject[["currencyType"]] <-
          self$`currencyType`
      }
      if (!is.null(self$`amount`)) {
        PaymentTransactionResponseObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`tax`)) {
        PaymentTransactionResponseObject[["tax"]] <-
          self$`tax`
      }
      if (!is.null(self$`offerTransactions`)) {
        PaymentTransactionResponseObject[["offerTransactions"]] <-
          self$extractSimpleType(self$`offerTransactions`)
      }
      if (!is.null(self$`orderItems`)) {
        PaymentTransactionResponseObject[["orderItems"]] <-
          self$extractSimpleType(self$`orderItems`)
      }
      if (!is.null(self$`externalPaymentId`)) {
        PaymentTransactionResponseObject[["externalPaymentId"]] <-
          self$`externalPaymentId`
      }
      if (!is.null(self$`metadata`)) {
        PaymentTransactionResponseObject[["metadata"]] <-
          self$`metadata`
      }
      if (!is.null(self$`created`)) {
        PaymentTransactionResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`updated`)) {
        PaymentTransactionResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`returning`)) {
        PaymentTransactionResponseObject[["returning"]] <-
          self$`returning`
      }
      return(PaymentTransactionResponseObject)
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
    #' Deserialize JSON string into an instance of PaymentTransactionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentTransactionResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`serializeNulls`)) {
        self$`serializeNulls` <- this_object$`serializeNulls`
      }
      if (!is.null(this_object$`startTimeLog`)) {
        self$`startTimeLog` <- this_object$`startTimeLog`
      }
      if (!is.null(this_object$`errorCode`)) {
        self$`errorCode` <- this_object$`errorCode`
      }
      if (!is.null(this_object$`request`)) {
        self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`paymentTransactionId`)) {
        self$`paymentTransactionId` <- this_object$`paymentTransactionId`
      }
      if (!is.null(this_object$`customer`)) {
        `customer_object` <- AccountShortResponse$new()
        `customer_object`$fromJSON(jsonlite::toJSON(this_object$`customer`, auto_unbox = TRUE, digits = NA))
        self$`customer` <- `customer_object`
      }
      if (!is.null(this_object$`promoCode`)) {
        self$`promoCode` <- this_object$`promoCode`
      }
      if (!is.null(this_object$`remoteRefId`)) {
        self$`remoteRefId` <- this_object$`remoteRefId`
      }
      if (!is.null(this_object$`currencyType`)) {
        self$`currencyType` <- this_object$`currencyType`
      }
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`tax`)) {
        self$`tax` <- this_object$`tax`
      }
      if (!is.null(this_object$`offerTransactions`)) {
        self$`offerTransactions` <- ApiClient$new()$deserializeObj(this_object$`offerTransactions`, "array[OfferTransactionResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`orderItems`)) {
        self$`orderItems` <- ApiClient$new()$deserializeObj(this_object$`orderItems`, "array[PurchaseOrderItemResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`externalPaymentId`)) {
        self$`externalPaymentId` <- this_object$`externalPaymentId`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`returning`)) {
        self$`returning` <- this_object$`returning`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PaymentTransactionResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PaymentTransactionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentTransactionResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`paymentTransactionId` <- this_object$`paymentTransactionId`
      self$`customer` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`customer`, auto_unbox = TRUE, digits = NA))
      self$`promoCode` <- this_object$`promoCode`
      self$`remoteRefId` <- this_object$`remoteRefId`
      self$`currencyType` <- this_object$`currencyType`
      self$`amount` <- this_object$`amount`
      self$`tax` <- this_object$`tax`
      self$`offerTransactions` <- ApiClient$new()$deserializeObj(this_object$`offerTransactions`, "array[OfferTransactionResponse]", loadNamespace("openapi"))
      self$`orderItems` <- ApiClient$new()$deserializeObj(this_object$`orderItems`, "array[PurchaseOrderItemResponse]", loadNamespace("openapi"))
      self$`externalPaymentId` <- this_object$`externalPaymentId`
      self$`metadata` <- this_object$`metadata`
      self$`created` <- this_object$`created`
      self$`updated` <- this_object$`updated`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to PaymentTransactionResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PaymentTransactionResponse
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
# PaymentTransactionResponse$unlock()
#
## Below is an example to define the print function
# PaymentTransactionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PaymentTransactionResponse$lock()

