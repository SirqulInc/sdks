#' Create a new OrderItemRequest
#'
#' @description
#' OrderItemRequest Class
#'
#' @docType class
#' @title OrderItemRequest
#' @description OrderItemRequest Class
#' @format An \code{R6Class} generator object
#' @field orderItemType  character [optional]
#' @field orderItemId  integer [optional]
#' @field offerName  character [optional]
#' @field orderCustomType  character [optional]
#' @field orderCustomId  character [optional]
#' @field retailerLocationId  integer [optional]
#' @field quantity  integer [optional]
#' @field amount  numeric [optional]
#' @field tax  numeric [optional]
#' @field reserveStartDate  integer [optional]
#' @field reserveEndDate  integer [optional]
#' @field message  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderItemRequest <- R6::R6Class(
  "OrderItemRequest",
  public = list(
    `orderItemType` = NULL,
    `orderItemId` = NULL,
    `offerName` = NULL,
    `orderCustomType` = NULL,
    `orderCustomId` = NULL,
    `retailerLocationId` = NULL,
    `quantity` = NULL,
    `amount` = NULL,
    `tax` = NULL,
    `reserveStartDate` = NULL,
    `reserveEndDate` = NULL,
    `message` = NULL,

    #' @description
    #' Initialize a new OrderItemRequest class.
    #'
    #' @param orderItemType orderItemType
    #' @param orderItemId orderItemId
    #' @param offerName offerName
    #' @param orderCustomType orderCustomType
    #' @param orderCustomId orderCustomId
    #' @param retailerLocationId retailerLocationId
    #' @param quantity quantity
    #' @param amount amount
    #' @param tax tax
    #' @param reserveStartDate reserveStartDate
    #' @param reserveEndDate reserveEndDate
    #' @param message message
    #' @param ... Other optional arguments.
    initialize = function(`orderItemType` = NULL, `orderItemId` = NULL, `offerName` = NULL, `orderCustomType` = NULL, `orderCustomId` = NULL, `retailerLocationId` = NULL, `quantity` = NULL, `amount` = NULL, `tax` = NULL, `reserveStartDate` = NULL, `reserveEndDate` = NULL, `message` = NULL, ...) {
      if (!is.null(`orderItemType`)) {
        if (!(`orderItemType` %in% c("OFFER", "CUSTOM"))) {
          stop(paste("Error! \"", `orderItemType`, "\" cannot be assigned to `orderItemType`. Must be \"OFFER\", \"CUSTOM\".", sep = ""))
        }
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
      if (!is.null(`offerName`)) {
        if (!(is.character(`offerName`) && length(`offerName`) == 1)) {
          stop(paste("Error! Invalid data for `offerName`. Must be a string:", `offerName`))
        }
        self$`offerName` <- `offerName`
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
      if (!is.null(`quantity`)) {
        if (!(is.numeric(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", `quantity`))
        }
        self$`quantity` <- `quantity`
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
      if (!is.null(`reserveStartDate`)) {
        if (!(is.numeric(`reserveStartDate`) && length(`reserveStartDate`) == 1)) {
          stop(paste("Error! Invalid data for `reserveStartDate`. Must be an integer:", `reserveStartDate`))
        }
        self$`reserveStartDate` <- `reserveStartDate`
      }
      if (!is.null(`reserveEndDate`)) {
        if (!(is.numeric(`reserveEndDate`) && length(`reserveEndDate`) == 1)) {
          stop(paste("Error! Invalid data for `reserveEndDate`. Must be an integer:", `reserveEndDate`))
        }
        self$`reserveEndDate` <- `reserveEndDate`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
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
    #' @return OrderItemRequest as a base R list.
    #' @examples
    #' # convert array of OrderItemRequest (x) to a data frame
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
    #' Convert OrderItemRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrderItemRequestObject <- list()
      if (!is.null(self$`orderItemType`)) {
        OrderItemRequestObject[["orderItemType"]] <-
          self$`orderItemType`
      }
      if (!is.null(self$`orderItemId`)) {
        OrderItemRequestObject[["orderItemId"]] <-
          self$`orderItemId`
      }
      if (!is.null(self$`offerName`)) {
        OrderItemRequestObject[["offerName"]] <-
          self$`offerName`
      }
      if (!is.null(self$`orderCustomType`)) {
        OrderItemRequestObject[["orderCustomType"]] <-
          self$`orderCustomType`
      }
      if (!is.null(self$`orderCustomId`)) {
        OrderItemRequestObject[["orderCustomId"]] <-
          self$`orderCustomId`
      }
      if (!is.null(self$`retailerLocationId`)) {
        OrderItemRequestObject[["retailerLocationId"]] <-
          self$`retailerLocationId`
      }
      if (!is.null(self$`quantity`)) {
        OrderItemRequestObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`amount`)) {
        OrderItemRequestObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`tax`)) {
        OrderItemRequestObject[["tax"]] <-
          self$`tax`
      }
      if (!is.null(self$`reserveStartDate`)) {
        OrderItemRequestObject[["reserveStartDate"]] <-
          self$`reserveStartDate`
      }
      if (!is.null(self$`reserveEndDate`)) {
        OrderItemRequestObject[["reserveEndDate"]] <-
          self$`reserveEndDate`
      }
      if (!is.null(self$`message`)) {
        OrderItemRequestObject[["message"]] <-
          self$`message`
      }
      return(OrderItemRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OrderItemRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderItemRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`orderItemType`)) {
        if (!is.null(this_object$`orderItemType`) && !(this_object$`orderItemType` %in% c("OFFER", "CUSTOM"))) {
          stop(paste("Error! \"", this_object$`orderItemType`, "\" cannot be assigned to `orderItemType`. Must be \"OFFER\", \"CUSTOM\".", sep = ""))
        }
        self$`orderItemType` <- this_object$`orderItemType`
      }
      if (!is.null(this_object$`orderItemId`)) {
        self$`orderItemId` <- this_object$`orderItemId`
      }
      if (!is.null(this_object$`offerName`)) {
        self$`offerName` <- this_object$`offerName`
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
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`tax`)) {
        self$`tax` <- this_object$`tax`
      }
      if (!is.null(this_object$`reserveStartDate`)) {
        self$`reserveStartDate` <- this_object$`reserveStartDate`
      }
      if (!is.null(this_object$`reserveEndDate`)) {
        self$`reserveEndDate` <- this_object$`reserveEndDate`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrderItemRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrderItemRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderItemRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`orderItemType`) && !(this_object$`orderItemType` %in% c("OFFER", "CUSTOM"))) {
        stop(paste("Error! \"", this_object$`orderItemType`, "\" cannot be assigned to `orderItemType`. Must be \"OFFER\", \"CUSTOM\".", sep = ""))
      }
      self$`orderItemType` <- this_object$`orderItemType`
      self$`orderItemId` <- this_object$`orderItemId`
      self$`offerName` <- this_object$`offerName`
      self$`orderCustomType` <- this_object$`orderCustomType`
      self$`orderCustomId` <- this_object$`orderCustomId`
      self$`retailerLocationId` <- this_object$`retailerLocationId`
      self$`quantity` <- this_object$`quantity`
      self$`amount` <- this_object$`amount`
      self$`tax` <- this_object$`tax`
      self$`reserveStartDate` <- this_object$`reserveStartDate`
      self$`reserveEndDate` <- this_object$`reserveEndDate`
      self$`message` <- this_object$`message`
      self
    },

    #' @description
    #' Validate JSON input with respect to OrderItemRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrderItemRequest
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
# OrderItemRequest$unlock()
#
## Below is an example to define the print function
# OrderItemRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderItemRequest$lock()

