#' Create a new PurchaseOrderItemResponse
#'
#' @description
#' PurchaseOrderItemResponse Class
#'
#' @docType class
#' @title PurchaseOrderItemResponse
#' @description PurchaseOrderItemResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field purchaseOrderItemId  integer [optional]
#' @field created  integer [optional]
#' @field updated  integer [optional]
#' @field customer  \link{AccountShortResponse} [optional]
#' @field orderItemType  character [optional]
#' @field orderItemId  integer [optional]
#' @field orderCustomType  character [optional]
#' @field orderCustomId  character [optional]
#' @field retailerLocationId  integer [optional]
#' @field amount  numeric [optional]
#' @field tax  numeric [optional]
#' @field comment  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PurchaseOrderItemResponse <- R6::R6Class(
  "PurchaseOrderItemResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `purchaseOrderItemId` = NULL,
    `created` = NULL,
    `updated` = NULL,
    `customer` = NULL,
    `orderItemType` = NULL,
    `orderItemId` = NULL,
    `orderCustomType` = NULL,
    `orderCustomId` = NULL,
    `retailerLocationId` = NULL,
    `amount` = NULL,
    `tax` = NULL,
    `comment` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new PurchaseOrderItemResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param purchaseOrderItemId purchaseOrderItemId
    #' @param created created
    #' @param updated updated
    #' @param customer customer
    #' @param orderItemType orderItemType
    #' @param orderItemId orderItemId
    #' @param orderCustomType orderCustomType
    #' @param orderCustomId orderCustomId
    #' @param retailerLocationId retailerLocationId
    #' @param amount amount
    #' @param tax tax
    #' @param comment comment
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `purchaseOrderItemId` = NULL, `created` = NULL, `updated` = NULL, `customer` = NULL, `orderItemType` = NULL, `orderItemId` = NULL, `orderCustomType` = NULL, `orderCustomId` = NULL, `retailerLocationId` = NULL, `amount` = NULL, `tax` = NULL, `comment` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`purchaseOrderItemId`)) {
        if (!(is.numeric(`purchaseOrderItemId`) && length(`purchaseOrderItemId`) == 1)) {
          stop(paste("Error! Invalid data for `purchaseOrderItemId`. Must be an integer:", `purchaseOrderItemId`))
        }
        self$`purchaseOrderItemId` <- `purchaseOrderItemId`
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
      if (!is.null(`customer`)) {
        stopifnot(R6::is.R6(`customer`))
        self$`customer` <- `customer`
      }
      if (!is.null(`orderItemType`)) {
        if (!(is.character(`orderItemType`) && length(`orderItemType`) == 1)) {
          stop(paste("Error! Invalid data for `orderItemType`. Must be a string:", `orderItemType`))
        }
        self$`orderItemType` <- `orderItemType`
      }
      if (!is.null(`orderItemId`)) {
        if (!(is.numeric(`orderItemId`) && length(`orderItemId`) == 1)) {
          stop(paste("Error! Invalid data for `orderItemId`. Must be an integer:", `orderItemId`))
        }
        self$`orderItemId` <- `orderItemId`
      }
      if (!is.null(`orderCustomType`)) {
        if (!(is.character(`orderCustomType`) && length(`orderCustomType`) == 1)) {
          stop(paste("Error! Invalid data for `orderCustomType`. Must be a string:", `orderCustomType`))
        }
        self$`orderCustomType` <- `orderCustomType`
      }
      if (!is.null(`orderCustomId`)) {
        if (!(is.character(`orderCustomId`) && length(`orderCustomId`) == 1)) {
          stop(paste("Error! Invalid data for `orderCustomId`. Must be a string:", `orderCustomId`))
        }
        self$`orderCustomId` <- `orderCustomId`
      }
      if (!is.null(`retailerLocationId`)) {
        if (!(is.numeric(`retailerLocationId`) && length(`retailerLocationId`) == 1)) {
          stop(paste("Error! Invalid data for `retailerLocationId`. Must be an integer:", `retailerLocationId`))
        }
        self$`retailerLocationId` <- `retailerLocationId`
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
      if (!is.null(`comment`)) {
        if (!(is.character(`comment`) && length(`comment`) == 1)) {
          stop(paste("Error! Invalid data for `comment`. Must be a string:", `comment`))
        }
        self$`comment` <- `comment`
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
    #' @return PurchaseOrderItemResponse as a base R list.
    #' @examples
    #' # convert array of PurchaseOrderItemResponse (x) to a data frame
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
    #' Convert PurchaseOrderItemResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PurchaseOrderItemResponseObject <- list()
      if (!is.null(self$`valid`)) {
        PurchaseOrderItemResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        PurchaseOrderItemResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        PurchaseOrderItemResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        PurchaseOrderItemResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        PurchaseOrderItemResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        PurchaseOrderItemResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        PurchaseOrderItemResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`purchaseOrderItemId`)) {
        PurchaseOrderItemResponseObject[["purchaseOrderItemId"]] <-
          self$`purchaseOrderItemId`
      }
      if (!is.null(self$`created`)) {
        PurchaseOrderItemResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`updated`)) {
        PurchaseOrderItemResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`customer`)) {
        PurchaseOrderItemResponseObject[["customer"]] <-
          self$extractSimpleType(self$`customer`)
      }
      if (!is.null(self$`orderItemType`)) {
        PurchaseOrderItemResponseObject[["orderItemType"]] <-
          self$`orderItemType`
      }
      if (!is.null(self$`orderItemId`)) {
        PurchaseOrderItemResponseObject[["orderItemId"]] <-
          self$`orderItemId`
      }
      if (!is.null(self$`orderCustomType`)) {
        PurchaseOrderItemResponseObject[["orderCustomType"]] <-
          self$`orderCustomType`
      }
      if (!is.null(self$`orderCustomId`)) {
        PurchaseOrderItemResponseObject[["orderCustomId"]] <-
          self$`orderCustomId`
      }
      if (!is.null(self$`retailerLocationId`)) {
        PurchaseOrderItemResponseObject[["retailerLocationId"]] <-
          self$`retailerLocationId`
      }
      if (!is.null(self$`amount`)) {
        PurchaseOrderItemResponseObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`tax`)) {
        PurchaseOrderItemResponseObject[["tax"]] <-
          self$`tax`
      }
      if (!is.null(self$`comment`)) {
        PurchaseOrderItemResponseObject[["comment"]] <-
          self$`comment`
      }
      if (!is.null(self$`returning`)) {
        PurchaseOrderItemResponseObject[["returning"]] <-
          self$`returning`
      }
      return(PurchaseOrderItemResponseObject)
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
    #' Deserialize JSON string into an instance of PurchaseOrderItemResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PurchaseOrderItemResponse
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
      if (!is.null(this_object$`purchaseOrderItemId`)) {
        self$`purchaseOrderItemId` <- this_object$`purchaseOrderItemId`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`customer`)) {
        `customer_object` <- AccountShortResponse$new()
        `customer_object`$fromJSON(jsonlite::toJSON(this_object$`customer`, auto_unbox = TRUE, digits = NA))
        self$`customer` <- `customer_object`
      }
      if (!is.null(this_object$`orderItemType`)) {
        self$`orderItemType` <- this_object$`orderItemType`
      }
      if (!is.null(this_object$`orderItemId`)) {
        self$`orderItemId` <- this_object$`orderItemId`
      }
      if (!is.null(this_object$`orderCustomType`)) {
        self$`orderCustomType` <- this_object$`orderCustomType`
      }
      if (!is.null(this_object$`orderCustomId`)) {
        self$`orderCustomId` <- this_object$`orderCustomId`
      }
      if (!is.null(this_object$`retailerLocationId`)) {
        self$`retailerLocationId` <- this_object$`retailerLocationId`
      }
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`tax`)) {
        self$`tax` <- this_object$`tax`
      }
      if (!is.null(this_object$`comment`)) {
        self$`comment` <- this_object$`comment`
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
    #' @return PurchaseOrderItemResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PurchaseOrderItemResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PurchaseOrderItemResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`purchaseOrderItemId` <- this_object$`purchaseOrderItemId`
      self$`created` <- this_object$`created`
      self$`updated` <- this_object$`updated`
      self$`customer` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`customer`, auto_unbox = TRUE, digits = NA))
      self$`orderItemType` <- this_object$`orderItemType`
      self$`orderItemId` <- this_object$`orderItemId`
      self$`orderCustomType` <- this_object$`orderCustomType`
      self$`orderCustomId` <- this_object$`orderCustomId`
      self$`retailerLocationId` <- this_object$`retailerLocationId`
      self$`amount` <- this_object$`amount`
      self$`tax` <- this_object$`tax`
      self$`comment` <- this_object$`comment`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to PurchaseOrderItemResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PurchaseOrderItemResponse
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
# PurchaseOrderItemResponse$unlock()
#
## Below is an example to define the print function
# PurchaseOrderItemResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PurchaseOrderItemResponse$lock()

