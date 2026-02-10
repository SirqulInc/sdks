#' Create a new PaymentRequest
#'
#' @description
#' PaymentRequest Class
#'
#' @docType class
#' @title PaymentRequest
#' @description PaymentRequest Class
#' @format An \code{R6Class} generator object
#' @field appKey  character [optional]
#' @field clientPaymentId  character [optional]
#' @field minAgeYears  integer [optional]
#' @field invoice  \link{Invoice} [optional]
#' @field biometrics  \link{BiometricRequest} [optional]
#' @field orderItems  list(\link{OrderItemRequest}) [optional]
#' @field acceptedBilling  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaymentRequest <- R6::R6Class(
  "PaymentRequest",
  public = list(
    `appKey` = NULL,
    `clientPaymentId` = NULL,
    `minAgeYears` = NULL,
    `invoice` = NULL,
    `biometrics` = NULL,
    `orderItems` = NULL,
    `acceptedBilling` = NULL,

    #' @description
    #' Initialize a new PaymentRequest class.
    #'
    #' @param appKey appKey
    #' @param clientPaymentId clientPaymentId
    #' @param minAgeYears minAgeYears
    #' @param invoice invoice
    #' @param biometrics biometrics
    #' @param orderItems orderItems
    #' @param acceptedBilling acceptedBilling
    #' @param ... Other optional arguments.
    initialize = function(`appKey` = NULL, `clientPaymentId` = NULL, `minAgeYears` = NULL, `invoice` = NULL, `biometrics` = NULL, `orderItems` = NULL, `acceptedBilling` = NULL, ...) {
      if (!is.null(`appKey`)) {
        if (!(is.character(`appKey`) && length(`appKey`) == 1)) {
          stop(paste("Error! Invalid data for `appKey`. Must be a string:", `appKey`))
        }
        self$`appKey` <- `appKey`
      }
      if (!is.null(`clientPaymentId`)) {
        if (!(is.character(`clientPaymentId`) && length(`clientPaymentId`) == 1)) {
          stop(paste("Error! Invalid data for `clientPaymentId`. Must be a string:", `clientPaymentId`))
        }
        self$`clientPaymentId` <- `clientPaymentId`
      }
      if (!is.null(`minAgeYears`)) {
        if (!(is.numeric(`minAgeYears`) && length(`minAgeYears`) == 1)) {
          stop(paste("Error! Invalid data for `minAgeYears`. Must be an integer:", `minAgeYears`))
        }
        self$`minAgeYears` <- `minAgeYears`
      }
      if (!is.null(`invoice`)) {
        stopifnot(R6::is.R6(`invoice`))
        self$`invoice` <- `invoice`
      }
      if (!is.null(`biometrics`)) {
        stopifnot(R6::is.R6(`biometrics`))
        self$`biometrics` <- `biometrics`
      }
      if (!is.null(`orderItems`)) {
        stopifnot(is.vector(`orderItems`), length(`orderItems`) != 0)
        sapply(`orderItems`, function(x) stopifnot(R6::is.R6(x)))
        self$`orderItems` <- `orderItems`
      }
      if (!is.null(`acceptedBilling`)) {
        if (!(is.logical(`acceptedBilling`) && length(`acceptedBilling`) == 1)) {
          stop(paste("Error! Invalid data for `acceptedBilling`. Must be a boolean:", `acceptedBilling`))
        }
        self$`acceptedBilling` <- `acceptedBilling`
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
    #' @return PaymentRequest as a base R list.
    #' @examples
    #' # convert array of PaymentRequest (x) to a data frame
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
    #' Convert PaymentRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PaymentRequestObject <- list()
      if (!is.null(self$`appKey`)) {
        PaymentRequestObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`clientPaymentId`)) {
        PaymentRequestObject[["clientPaymentId"]] <-
          self$`clientPaymentId`
      }
      if (!is.null(self$`minAgeYears`)) {
        PaymentRequestObject[["minAgeYears"]] <-
          self$`minAgeYears`
      }
      if (!is.null(self$`invoice`)) {
        PaymentRequestObject[["invoice"]] <-
          self$extractSimpleType(self$`invoice`)
      }
      if (!is.null(self$`biometrics`)) {
        PaymentRequestObject[["biometrics"]] <-
          self$extractSimpleType(self$`biometrics`)
      }
      if (!is.null(self$`orderItems`)) {
        PaymentRequestObject[["orderItems"]] <-
          self$extractSimpleType(self$`orderItems`)
      }
      if (!is.null(self$`acceptedBilling`)) {
        PaymentRequestObject[["acceptedBilling"]] <-
          self$`acceptedBilling`
      }
      return(PaymentRequestObject)
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
    #' Deserialize JSON string into an instance of PaymentRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`clientPaymentId`)) {
        self$`clientPaymentId` <- this_object$`clientPaymentId`
      }
      if (!is.null(this_object$`minAgeYears`)) {
        self$`minAgeYears` <- this_object$`minAgeYears`
      }
      if (!is.null(this_object$`invoice`)) {
        `invoice_object` <- Invoice$new()
        `invoice_object`$fromJSON(jsonlite::toJSON(this_object$`invoice`, auto_unbox = TRUE, digits = NA))
        self$`invoice` <- `invoice_object`
      }
      if (!is.null(this_object$`biometrics`)) {
        `biometrics_object` <- BiometricRequest$new()
        `biometrics_object`$fromJSON(jsonlite::toJSON(this_object$`biometrics`, auto_unbox = TRUE, digits = NA))
        self$`biometrics` <- `biometrics_object`
      }
      if (!is.null(this_object$`orderItems`)) {
        self$`orderItems` <- ApiClient$new()$deserializeObj(this_object$`orderItems`, "array[OrderItemRequest]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`acceptedBilling`)) {
        self$`acceptedBilling` <- this_object$`acceptedBilling`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PaymentRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PaymentRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`appKey` <- this_object$`appKey`
      self$`clientPaymentId` <- this_object$`clientPaymentId`
      self$`minAgeYears` <- this_object$`minAgeYears`
      self$`invoice` <- Invoice$new()$fromJSON(jsonlite::toJSON(this_object$`invoice`, auto_unbox = TRUE, digits = NA))
      self$`biometrics` <- BiometricRequest$new()$fromJSON(jsonlite::toJSON(this_object$`biometrics`, auto_unbox = TRUE, digits = NA))
      self$`orderItems` <- ApiClient$new()$deserializeObj(this_object$`orderItems`, "array[OrderItemRequest]", loadNamespace("openapi"))
      self$`acceptedBilling` <- this_object$`acceptedBilling`
      self
    },

    #' @description
    #' Validate JSON input with respect to PaymentRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PaymentRequest
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
# PaymentRequest$unlock()
#
## Below is an example to define the print function
# PaymentRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PaymentRequest$lock()

