#' Create a new OrderResponse
#'
#' @description
#' OrderResponse Class
#'
#' @docType class
#' @title OrderResponse
#' @description OrderResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field orderId  integer [optional]
#' @field application  \link{ApplicationMiniResponse} [optional]
#' @field customer  \link{AccountShortResponse} [optional]
#' @field amount  numeric [optional]
#' @field purchases  numeric [optional]
#' @field credits  numeric [optional]
#' @field payments  list(\link{PaymentTransactionResponse}) [optional]
#' @field externalOrderId  character [optional]
#' @field created  integer [optional]
#' @field updated  integer [optional]
#' @field externalDate  integer [optional]
#' @field description  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderResponse <- R6::R6Class(
  "OrderResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `orderId` = NULL,
    `application` = NULL,
    `customer` = NULL,
    `amount` = NULL,
    `purchases` = NULL,
    `credits` = NULL,
    `payments` = NULL,
    `externalOrderId` = NULL,
    `created` = NULL,
    `updated` = NULL,
    `externalDate` = NULL,
    `description` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new OrderResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param orderId orderId
    #' @param application application
    #' @param customer customer
    #' @param amount amount
    #' @param purchases purchases
    #' @param credits credits
    #' @param payments payments
    #' @param externalOrderId externalOrderId
    #' @param created created
    #' @param updated updated
    #' @param externalDate externalDate
    #' @param description description
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `orderId` = NULL, `application` = NULL, `customer` = NULL, `amount` = NULL, `purchases` = NULL, `credits` = NULL, `payments` = NULL, `externalOrderId` = NULL, `created` = NULL, `updated` = NULL, `externalDate` = NULL, `description` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`orderId`)) {
        if (!(is.numeric(`orderId`) && length(`orderId`) == 1)) {
          stop(paste("Error! Invalid data for `orderId`. Must be an integer:", `orderId`))
        }
        self$`orderId` <- `orderId`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
      }
      if (!is.null(`customer`)) {
        stopifnot(R6::is.R6(`customer`))
        self$`customer` <- `customer`
      }
      if (!is.null(`amount`)) {
        if (!(is.numeric(`amount`) && length(`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a number:", `amount`))
        }
        self$`amount` <- `amount`
      }
      if (!is.null(`purchases`)) {
        if (!(is.numeric(`purchases`) && length(`purchases`) == 1)) {
          stop(paste("Error! Invalid data for `purchases`. Must be a number:", `purchases`))
        }
        self$`purchases` <- `purchases`
      }
      if (!is.null(`credits`)) {
        if (!(is.numeric(`credits`) && length(`credits`) == 1)) {
          stop(paste("Error! Invalid data for `credits`. Must be a number:", `credits`))
        }
        self$`credits` <- `credits`
      }
      if (!is.null(`payments`)) {
        stopifnot(is.vector(`payments`), length(`payments`) != 0)
        sapply(`payments`, function(x) stopifnot(R6::is.R6(x)))
        self$`payments` <- `payments`
      }
      if (!is.null(`externalOrderId`)) {
        if (!(is.character(`externalOrderId`) && length(`externalOrderId`) == 1)) {
          stop(paste("Error! Invalid data for `externalOrderId`. Must be a string:", `externalOrderId`))
        }
        self$`externalOrderId` <- `externalOrderId`
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
      if (!is.null(`externalDate`)) {
        if (!(is.numeric(`externalDate`) && length(`externalDate`) == 1)) {
          stop(paste("Error! Invalid data for `externalDate`. Must be an integer:", `externalDate`))
        }
        self$`externalDate` <- `externalDate`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
    #' @return OrderResponse as a base R list.
    #' @examples
    #' # convert array of OrderResponse (x) to a data frame
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
    #' Convert OrderResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrderResponseObject <- list()
      if (!is.null(self$`valid`)) {
        OrderResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        OrderResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        OrderResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        OrderResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        OrderResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        OrderResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        OrderResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`orderId`)) {
        OrderResponseObject[["orderId"]] <-
          self$`orderId`
      }
      if (!is.null(self$`application`)) {
        OrderResponseObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`customer`)) {
        OrderResponseObject[["customer"]] <-
          self$extractSimpleType(self$`customer`)
      }
      if (!is.null(self$`amount`)) {
        OrderResponseObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`purchases`)) {
        OrderResponseObject[["purchases"]] <-
          self$`purchases`
      }
      if (!is.null(self$`credits`)) {
        OrderResponseObject[["credits"]] <-
          self$`credits`
      }
      if (!is.null(self$`payments`)) {
        OrderResponseObject[["payments"]] <-
          self$extractSimpleType(self$`payments`)
      }
      if (!is.null(self$`externalOrderId`)) {
        OrderResponseObject[["externalOrderId"]] <-
          self$`externalOrderId`
      }
      if (!is.null(self$`created`)) {
        OrderResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`updated`)) {
        OrderResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`externalDate`)) {
        OrderResponseObject[["externalDate"]] <-
          self$`externalDate`
      }
      if (!is.null(self$`description`)) {
        OrderResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`returning`)) {
        OrderResponseObject[["returning"]] <-
          self$`returning`
      }
      return(OrderResponseObject)
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
    #' Deserialize JSON string into an instance of OrderResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderResponse
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
      if (!is.null(this_object$`orderId`)) {
        self$`orderId` <- this_object$`orderId`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- ApplicationMiniResponse$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`customer`)) {
        `customer_object` <- AccountShortResponse$new()
        `customer_object`$fromJSON(jsonlite::toJSON(this_object$`customer`, auto_unbox = TRUE, digits = NA))
        self$`customer` <- `customer_object`
      }
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`purchases`)) {
        self$`purchases` <- this_object$`purchases`
      }
      if (!is.null(this_object$`credits`)) {
        self$`credits` <- this_object$`credits`
      }
      if (!is.null(this_object$`payments`)) {
        self$`payments` <- ApiClient$new()$deserializeObj(this_object$`payments`, "array[PaymentTransactionResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`externalOrderId`)) {
        self$`externalOrderId` <- this_object$`externalOrderId`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`externalDate`)) {
        self$`externalDate` <- this_object$`externalDate`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
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
    #' @return OrderResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrderResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`orderId` <- this_object$`orderId`
      self$`application` <- ApplicationMiniResponse$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`customer` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`customer`, auto_unbox = TRUE, digits = NA))
      self$`amount` <- this_object$`amount`
      self$`purchases` <- this_object$`purchases`
      self$`credits` <- this_object$`credits`
      self$`payments` <- ApiClient$new()$deserializeObj(this_object$`payments`, "array[PaymentTransactionResponse]", loadNamespace("openapi"))
      self$`externalOrderId` <- this_object$`externalOrderId`
      self$`created` <- this_object$`created`
      self$`updated` <- this_object$`updated`
      self$`externalDate` <- this_object$`externalDate`
      self$`description` <- this_object$`description`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to OrderResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrderResponse
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
# OrderResponse$unlock()
#
## Below is an example to define the print function
# OrderResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderResponse$lock()

