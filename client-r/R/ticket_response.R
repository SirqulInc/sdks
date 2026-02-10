#' Create a new TicketResponse
#'
#' @description
#' TicketResponse Class
#'
#' @docType class
#' @title TicketResponse
#' @description TicketResponse Class
#' @format An \code{R6Class} generator object
#' @field action  character [optional]
#' @field id  integer [optional]
#' @field accountId  integer [optional]
#' @field objectId  integer [optional]
#' @field type  character [optional]
#' @field actionType  character [optional]
#' @field used  integer [optional]
#' @field count  integer [optional]
#' @field purchaseItem  \link{PurchaseItemShortResponse} [optional]
#' @field customMessage  character [optional]
#' @field sender  \link{AccountShortResponse} [optional]
#' @field receiver  list(\link{AccountShortResponse}) [optional]
#' @field customAsset  \link{AssetShortResponse} [optional]
#' @field receiptToken  character [optional]
#' @field ticketType  character [optional]
#' @field application  \link{ApplicationShortResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TicketResponse <- R6::R6Class(
  "TicketResponse",
  public = list(
    `action` = NULL,
    `id` = NULL,
    `accountId` = NULL,
    `objectId` = NULL,
    `type` = NULL,
    `actionType` = NULL,
    `used` = NULL,
    `count` = NULL,
    `purchaseItem` = NULL,
    `customMessage` = NULL,
    `sender` = NULL,
    `receiver` = NULL,
    `customAsset` = NULL,
    `receiptToken` = NULL,
    `ticketType` = NULL,
    `application` = NULL,

    #' @description
    #' Initialize a new TicketResponse class.
    #'
    #' @param action action
    #' @param id id
    #' @param accountId accountId
    #' @param objectId objectId
    #' @param type type
    #' @param actionType actionType
    #' @param used used
    #' @param count count
    #' @param purchaseItem purchaseItem
    #' @param customMessage customMessage
    #' @param sender sender
    #' @param receiver receiver
    #' @param customAsset customAsset
    #' @param receiptToken receiptToken
    #' @param ticketType ticketType
    #' @param application application
    #' @param ... Other optional arguments.
    initialize = function(`action` = NULL, `id` = NULL, `accountId` = NULL, `objectId` = NULL, `type` = NULL, `actionType` = NULL, `used` = NULL, `count` = NULL, `purchaseItem` = NULL, `customMessage` = NULL, `sender` = NULL, `receiver` = NULL, `customAsset` = NULL, `receiptToken` = NULL, `ticketType` = NULL, `application` = NULL, ...) {
      if (!is.null(`action`)) {
        if (!(`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", `action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`accountId`)) {
        if (!(is.numeric(`accountId`) && length(`accountId`) == 1)) {
          stop(paste("Error! Invalid data for `accountId`. Must be an integer:", `accountId`))
        }
        self$`accountId` <- `accountId`
      }
      if (!is.null(`objectId`)) {
        if (!(is.numeric(`objectId`) && length(`objectId`) == 1)) {
          stop(paste("Error! Invalid data for `objectId`. Must be an integer:", `objectId`))
        }
        self$`objectId` <- `objectId`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("GAME_OBJECT", "GAME_LEVEL", "PACK", "GAME", "MISSION", "PROFILE", "APPLICATION", "TICKETS", "ASSET", "CUSTOM"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"GAME_OBJECT\", \"GAME_LEVEL\", \"PACK\", \"GAME\", \"MISSION\", \"PROFILE\", \"APPLICATION\", \"TICKETS\", \"ASSET\", \"CUSTOM\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`actionType`)) {
        if (!(`actionType` %in% c("COMPLETED", "REDEEMED", "USERS_PLAYED", "TOURNAMENT_OWNER", "PURCHASED", "SUMATION", "GIFTED", "REFUNDED"))) {
          stop(paste("Error! \"", `actionType`, "\" cannot be assigned to `actionType`. Must be \"COMPLETED\", \"REDEEMED\", \"USERS_PLAYED\", \"TOURNAMENT_OWNER\", \"PURCHASED\", \"SUMATION\", \"GIFTED\", \"REFUNDED\".", sep = ""))
        }
        if (!(is.character(`actionType`) && length(`actionType`) == 1)) {
          stop(paste("Error! Invalid data for `actionType`. Must be a string:", `actionType`))
        }
        self$`actionType` <- `actionType`
      }
      if (!is.null(`used`)) {
        if (!(is.numeric(`used`) && length(`used`) == 1)) {
          stop(paste("Error! Invalid data for `used`. Must be an integer:", `used`))
        }
        self$`used` <- `used`
      }
      if (!is.null(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
      }
      if (!is.null(`purchaseItem`)) {
        stopifnot(R6::is.R6(`purchaseItem`))
        self$`purchaseItem` <- `purchaseItem`
      }
      if (!is.null(`customMessage`)) {
        if (!(is.character(`customMessage`) && length(`customMessage`) == 1)) {
          stop(paste("Error! Invalid data for `customMessage`. Must be a string:", `customMessage`))
        }
        self$`customMessage` <- `customMessage`
      }
      if (!is.null(`sender`)) {
        stopifnot(R6::is.R6(`sender`))
        self$`sender` <- `sender`
      }
      if (!is.null(`receiver`)) {
        stopifnot(is.vector(`receiver`), length(`receiver`) != 0)
        sapply(`receiver`, function(x) stopifnot(R6::is.R6(x)))
        self$`receiver` <- `receiver`
      }
      if (!is.null(`customAsset`)) {
        stopifnot(R6::is.R6(`customAsset`))
        self$`customAsset` <- `customAsset`
      }
      if (!is.null(`receiptToken`)) {
        if (!(is.character(`receiptToken`) && length(`receiptToken`) == 1)) {
          stop(paste("Error! Invalid data for `receiptToken`. Must be a string:", `receiptToken`))
        }
        self$`receiptToken` <- `receiptToken`
      }
      if (!is.null(`ticketType`)) {
        if (!(is.character(`ticketType`) && length(`ticketType`) == 1)) {
          stop(paste("Error! Invalid data for `ticketType`. Must be a string:", `ticketType`))
        }
        self$`ticketType` <- `ticketType`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
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
    #' @return TicketResponse as a base R list.
    #' @examples
    #' # convert array of TicketResponse (x) to a data frame
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
    #' Convert TicketResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TicketResponseObject <- list()
      if (!is.null(self$`action`)) {
        TicketResponseObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`id`)) {
        TicketResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`accountId`)) {
        TicketResponseObject[["accountId"]] <-
          self$`accountId`
      }
      if (!is.null(self$`objectId`)) {
        TicketResponseObject[["objectId"]] <-
          self$`objectId`
      }
      if (!is.null(self$`type`)) {
        TicketResponseObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`actionType`)) {
        TicketResponseObject[["actionType"]] <-
          self$`actionType`
      }
      if (!is.null(self$`used`)) {
        TicketResponseObject[["used"]] <-
          self$`used`
      }
      if (!is.null(self$`count`)) {
        TicketResponseObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`purchaseItem`)) {
        TicketResponseObject[["purchaseItem"]] <-
          self$extractSimpleType(self$`purchaseItem`)
      }
      if (!is.null(self$`customMessage`)) {
        TicketResponseObject[["customMessage"]] <-
          self$`customMessage`
      }
      if (!is.null(self$`sender`)) {
        TicketResponseObject[["sender"]] <-
          self$extractSimpleType(self$`sender`)
      }
      if (!is.null(self$`receiver`)) {
        TicketResponseObject[["receiver"]] <-
          self$extractSimpleType(self$`receiver`)
      }
      if (!is.null(self$`customAsset`)) {
        TicketResponseObject[["customAsset"]] <-
          self$extractSimpleType(self$`customAsset`)
      }
      if (!is.null(self$`receiptToken`)) {
        TicketResponseObject[["receiptToken"]] <-
          self$`receiptToken`
      }
      if (!is.null(self$`ticketType`)) {
        TicketResponseObject[["ticketType"]] <-
          self$`ticketType`
      }
      if (!is.null(self$`application`)) {
        TicketResponseObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      return(TicketResponseObject)
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
    #' Deserialize JSON string into an instance of TicketResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TicketResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`accountId`)) {
        self$`accountId` <- this_object$`accountId`
      }
      if (!is.null(this_object$`objectId`)) {
        self$`objectId` <- this_object$`objectId`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("GAME_OBJECT", "GAME_LEVEL", "PACK", "GAME", "MISSION", "PROFILE", "APPLICATION", "TICKETS", "ASSET", "CUSTOM"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"GAME_OBJECT\", \"GAME_LEVEL\", \"PACK\", \"GAME\", \"MISSION\", \"PROFILE\", \"APPLICATION\", \"TICKETS\", \"ASSET\", \"CUSTOM\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`actionType`)) {
        if (!is.null(this_object$`actionType`) && !(this_object$`actionType` %in% c("COMPLETED", "REDEEMED", "USERS_PLAYED", "TOURNAMENT_OWNER", "PURCHASED", "SUMATION", "GIFTED", "REFUNDED"))) {
          stop(paste("Error! \"", this_object$`actionType`, "\" cannot be assigned to `actionType`. Must be \"COMPLETED\", \"REDEEMED\", \"USERS_PLAYED\", \"TOURNAMENT_OWNER\", \"PURCHASED\", \"SUMATION\", \"GIFTED\", \"REFUNDED\".", sep = ""))
        }
        self$`actionType` <- this_object$`actionType`
      }
      if (!is.null(this_object$`used`)) {
        self$`used` <- this_object$`used`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`purchaseItem`)) {
        `purchaseitem_object` <- PurchaseItemShortResponse$new()
        `purchaseitem_object`$fromJSON(jsonlite::toJSON(this_object$`purchaseItem`, auto_unbox = TRUE, digits = NA))
        self$`purchaseItem` <- `purchaseitem_object`
      }
      if (!is.null(this_object$`customMessage`)) {
        self$`customMessage` <- this_object$`customMessage`
      }
      if (!is.null(this_object$`sender`)) {
        `sender_object` <- AccountShortResponse$new()
        `sender_object`$fromJSON(jsonlite::toJSON(this_object$`sender`, auto_unbox = TRUE, digits = NA))
        self$`sender` <- `sender_object`
      }
      if (!is.null(this_object$`receiver`)) {
        self$`receiver` <- ApiClient$new()$deserializeObj(this_object$`receiver`, "array[AccountShortResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`customAsset`)) {
        `customasset_object` <- AssetShortResponse$new()
        `customasset_object`$fromJSON(jsonlite::toJSON(this_object$`customAsset`, auto_unbox = TRUE, digits = NA))
        self$`customAsset` <- `customasset_object`
      }
      if (!is.null(this_object$`receiptToken`)) {
        self$`receiptToken` <- this_object$`receiptToken`
      }
      if (!is.null(this_object$`ticketType`)) {
        self$`ticketType` <- this_object$`ticketType`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- ApplicationShortResponse$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TicketResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TicketResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TicketResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
        stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
      }
      self$`action` <- this_object$`action`
      self$`id` <- this_object$`id`
      self$`accountId` <- this_object$`accountId`
      self$`objectId` <- this_object$`objectId`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("GAME_OBJECT", "GAME_LEVEL", "PACK", "GAME", "MISSION", "PROFILE", "APPLICATION", "TICKETS", "ASSET", "CUSTOM"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"GAME_OBJECT\", \"GAME_LEVEL\", \"PACK\", \"GAME\", \"MISSION\", \"PROFILE\", \"APPLICATION\", \"TICKETS\", \"ASSET\", \"CUSTOM\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      if (!is.null(this_object$`actionType`) && !(this_object$`actionType` %in% c("COMPLETED", "REDEEMED", "USERS_PLAYED", "TOURNAMENT_OWNER", "PURCHASED", "SUMATION", "GIFTED", "REFUNDED"))) {
        stop(paste("Error! \"", this_object$`actionType`, "\" cannot be assigned to `actionType`. Must be \"COMPLETED\", \"REDEEMED\", \"USERS_PLAYED\", \"TOURNAMENT_OWNER\", \"PURCHASED\", \"SUMATION\", \"GIFTED\", \"REFUNDED\".", sep = ""))
      }
      self$`actionType` <- this_object$`actionType`
      self$`used` <- this_object$`used`
      self$`count` <- this_object$`count`
      self$`purchaseItem` <- PurchaseItemShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`purchaseItem`, auto_unbox = TRUE, digits = NA))
      self$`customMessage` <- this_object$`customMessage`
      self$`sender` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`sender`, auto_unbox = TRUE, digits = NA))
      self$`receiver` <- ApiClient$new()$deserializeObj(this_object$`receiver`, "array[AccountShortResponse]", loadNamespace("openapi"))
      self$`customAsset` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`customAsset`, auto_unbox = TRUE, digits = NA))
      self$`receiptToken` <- this_object$`receiptToken`
      self$`ticketType` <- this_object$`ticketType`
      self$`application` <- ApplicationShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to TicketResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TicketResponse
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
# TicketResponse$unlock()
#
## Below is an example to define the print function
# TicketResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TicketResponse$lock()

