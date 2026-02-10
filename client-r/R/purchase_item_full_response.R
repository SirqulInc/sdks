#' Create a new PurchaseItemFullResponse
#'
#' @description
#' PurchaseItemFullResponse Class
#'
#' @docType class
#' @title PurchaseItemFullResponse
#' @description PurchaseItemFullResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field tickets  integer [optional]
#' @field coverAsset  \link{AssetShortResponse} [optional]
#' @field promoAsset  \link{AssetShortResponse} [optional]
#' @field giftable  character [optional]
#' @field assetable  character [optional]
#' @field gameType  character [optional]
#' @field price  numeric [optional]
#' @field purchaseType  character [optional]
#' @field purchaseCode  character [optional]
#' @field purchaseLimit  integer [optional]
#' @field quantity  integer [optional]
#' @field serviceAction  character [optional]
#' @field appName  character [optional]
#' @field secretKey  character [optional]
#' @field appKey  character [optional]
#' @field allocateTickets  character [optional]
#' @field ticketType  character [optional]
#' @field ticketCount  integer [optional]
#' @field points  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PurchaseItemFullResponse <- R6::R6Class(
  "PurchaseItemFullResponse",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `tickets` = NULL,
    `coverAsset` = NULL,
    `promoAsset` = NULL,
    `giftable` = NULL,
    `assetable` = NULL,
    `gameType` = NULL,
    `price` = NULL,
    `purchaseType` = NULL,
    `purchaseCode` = NULL,
    `purchaseLimit` = NULL,
    `quantity` = NULL,
    `serviceAction` = NULL,
    `appName` = NULL,
    `secretKey` = NULL,
    `appKey` = NULL,
    `allocateTickets` = NULL,
    `ticketType` = NULL,
    `ticketCount` = NULL,
    `points` = NULL,

    #' @description
    #' Initialize a new PurchaseItemFullResponse class.
    #'
    #' @param id id
    #' @param name name
    #' @param description description
    #' @param tickets tickets
    #' @param coverAsset coverAsset
    #' @param promoAsset promoAsset
    #' @param giftable giftable
    #' @param assetable assetable
    #' @param gameType gameType
    #' @param price price
    #' @param purchaseType purchaseType
    #' @param purchaseCode purchaseCode
    #' @param purchaseLimit purchaseLimit
    #' @param quantity quantity
    #' @param serviceAction serviceAction
    #' @param appName appName
    #' @param secretKey secretKey
    #' @param appKey appKey
    #' @param allocateTickets allocateTickets
    #' @param ticketType ticketType
    #' @param ticketCount ticketCount
    #' @param points points
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `description` = NULL, `tickets` = NULL, `coverAsset` = NULL, `promoAsset` = NULL, `giftable` = NULL, `assetable` = NULL, `gameType` = NULL, `price` = NULL, `purchaseType` = NULL, `purchaseCode` = NULL, `purchaseLimit` = NULL, `quantity` = NULL, `serviceAction` = NULL, `appName` = NULL, `secretKey` = NULL, `appKey` = NULL, `allocateTickets` = NULL, `ticketType` = NULL, `ticketCount` = NULL, `points` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`tickets`)) {
        if (!(is.numeric(`tickets`) && length(`tickets`) == 1)) {
          stop(paste("Error! Invalid data for `tickets`. Must be an integer:", `tickets`))
        }
        self$`tickets` <- `tickets`
      }
      if (!is.null(`coverAsset`)) {
        stopifnot(R6::is.R6(`coverAsset`))
        self$`coverAsset` <- `coverAsset`
      }
      if (!is.null(`promoAsset`)) {
        stopifnot(R6::is.R6(`promoAsset`))
        self$`promoAsset` <- `promoAsset`
      }
      if (!is.null(`giftable`)) {
        if (!(is.logical(`giftable`) && length(`giftable`) == 1)) {
          stop(paste("Error! Invalid data for `giftable`. Must be a boolean:", `giftable`))
        }
        self$`giftable` <- `giftable`
      }
      if (!is.null(`assetable`)) {
        if (!(is.logical(`assetable`) && length(`assetable`) == 1)) {
          stop(paste("Error! Invalid data for `assetable`. Must be a boolean:", `assetable`))
        }
        self$`assetable` <- `assetable`
      }
      if (!is.null(`gameType`)) {
        if (!(is.character(`gameType`) && length(`gameType`) == 1)) {
          stop(paste("Error! Invalid data for `gameType`. Must be a string:", `gameType`))
        }
        self$`gameType` <- `gameType`
      }
      if (!is.null(`price`)) {
        if (!(is.numeric(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be a number:", `price`))
        }
        self$`price` <- `price`
      }
      if (!is.null(`purchaseType`)) {
        if (!(is.character(`purchaseType`) && length(`purchaseType`) == 1)) {
          stop(paste("Error! Invalid data for `purchaseType`. Must be a string:", `purchaseType`))
        }
        self$`purchaseType` <- `purchaseType`
      }
      if (!is.null(`purchaseCode`)) {
        if (!(is.character(`purchaseCode`) && length(`purchaseCode`) == 1)) {
          stop(paste("Error! Invalid data for `purchaseCode`. Must be a string:", `purchaseCode`))
        }
        self$`purchaseCode` <- `purchaseCode`
      }
      if (!is.null(`purchaseLimit`)) {
        if (!(is.numeric(`purchaseLimit`) && length(`purchaseLimit`) == 1)) {
          stop(paste("Error! Invalid data for `purchaseLimit`. Must be an integer:", `purchaseLimit`))
        }
        self$`purchaseLimit` <- `purchaseLimit`
      }
      if (!is.null(`quantity`)) {
        if (!(is.numeric(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", `quantity`))
        }
        self$`quantity` <- `quantity`
      }
      if (!is.null(`serviceAction`)) {
        if (!(`serviceAction` %in% c("DAY_PREMIUM", "WEEK_PREMIUM", "MONTH_PREMIUM", "YEAR_PREMIUM", "LIFETIME_PREMIUM", "ADD_TICKET", "ADD_GIFT", "ADD_POINTS"))) {
          stop(paste("Error! \"", `serviceAction`, "\" cannot be assigned to `serviceAction`. Must be \"DAY_PREMIUM\", \"WEEK_PREMIUM\", \"MONTH_PREMIUM\", \"YEAR_PREMIUM\", \"LIFETIME_PREMIUM\", \"ADD_TICKET\", \"ADD_GIFT\", \"ADD_POINTS\".", sep = ""))
        }
        if (!(is.character(`serviceAction`) && length(`serviceAction`) == 1)) {
          stop(paste("Error! Invalid data for `serviceAction`. Must be a string:", `serviceAction`))
        }
        self$`serviceAction` <- `serviceAction`
      }
      if (!is.null(`appName`)) {
        if (!(is.character(`appName`) && length(`appName`) == 1)) {
          stop(paste("Error! Invalid data for `appName`. Must be a string:", `appName`))
        }
        self$`appName` <- `appName`
      }
      if (!is.null(`secretKey`)) {
        if (!(is.character(`secretKey`) && length(`secretKey`) == 1)) {
          stop(paste("Error! Invalid data for `secretKey`. Must be a string:", `secretKey`))
        }
        self$`secretKey` <- `secretKey`
      }
      if (!is.null(`appKey`)) {
        if (!(is.character(`appKey`) && length(`appKey`) == 1)) {
          stop(paste("Error! Invalid data for `appKey`. Must be a string:", `appKey`))
        }
        self$`appKey` <- `appKey`
      }
      if (!is.null(`allocateTickets`)) {
        if (!(is.logical(`allocateTickets`) && length(`allocateTickets`) == 1)) {
          stop(paste("Error! Invalid data for `allocateTickets`. Must be a boolean:", `allocateTickets`))
        }
        self$`allocateTickets` <- `allocateTickets`
      }
      if (!is.null(`ticketType`)) {
        if (!(is.character(`ticketType`) && length(`ticketType`) == 1)) {
          stop(paste("Error! Invalid data for `ticketType`. Must be a string:", `ticketType`))
        }
        self$`ticketType` <- `ticketType`
      }
      if (!is.null(`ticketCount`)) {
        if (!(is.numeric(`ticketCount`) && length(`ticketCount`) == 1)) {
          stop(paste("Error! Invalid data for `ticketCount`. Must be an integer:", `ticketCount`))
        }
        self$`ticketCount` <- `ticketCount`
      }
      if (!is.null(`points`)) {
        if (!(is.numeric(`points`) && length(`points`) == 1)) {
          stop(paste("Error! Invalid data for `points`. Must be an integer:", `points`))
        }
        self$`points` <- `points`
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
    #' @return PurchaseItemFullResponse as a base R list.
    #' @examples
    #' # convert array of PurchaseItemFullResponse (x) to a data frame
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
    #' Convert PurchaseItemFullResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PurchaseItemFullResponseObject <- list()
      if (!is.null(self$`id`)) {
        PurchaseItemFullResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        PurchaseItemFullResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        PurchaseItemFullResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`tickets`)) {
        PurchaseItemFullResponseObject[["tickets"]] <-
          self$`tickets`
      }
      if (!is.null(self$`coverAsset`)) {
        PurchaseItemFullResponseObject[["coverAsset"]] <-
          self$extractSimpleType(self$`coverAsset`)
      }
      if (!is.null(self$`promoAsset`)) {
        PurchaseItemFullResponseObject[["promoAsset"]] <-
          self$extractSimpleType(self$`promoAsset`)
      }
      if (!is.null(self$`giftable`)) {
        PurchaseItemFullResponseObject[["giftable"]] <-
          self$`giftable`
      }
      if (!is.null(self$`assetable`)) {
        PurchaseItemFullResponseObject[["assetable"]] <-
          self$`assetable`
      }
      if (!is.null(self$`gameType`)) {
        PurchaseItemFullResponseObject[["gameType"]] <-
          self$`gameType`
      }
      if (!is.null(self$`price`)) {
        PurchaseItemFullResponseObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`purchaseType`)) {
        PurchaseItemFullResponseObject[["purchaseType"]] <-
          self$`purchaseType`
      }
      if (!is.null(self$`purchaseCode`)) {
        PurchaseItemFullResponseObject[["purchaseCode"]] <-
          self$`purchaseCode`
      }
      if (!is.null(self$`purchaseLimit`)) {
        PurchaseItemFullResponseObject[["purchaseLimit"]] <-
          self$`purchaseLimit`
      }
      if (!is.null(self$`quantity`)) {
        PurchaseItemFullResponseObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`serviceAction`)) {
        PurchaseItemFullResponseObject[["serviceAction"]] <-
          self$`serviceAction`
      }
      if (!is.null(self$`appName`)) {
        PurchaseItemFullResponseObject[["appName"]] <-
          self$`appName`
      }
      if (!is.null(self$`secretKey`)) {
        PurchaseItemFullResponseObject[["secretKey"]] <-
          self$`secretKey`
      }
      if (!is.null(self$`appKey`)) {
        PurchaseItemFullResponseObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`allocateTickets`)) {
        PurchaseItemFullResponseObject[["allocateTickets"]] <-
          self$`allocateTickets`
      }
      if (!is.null(self$`ticketType`)) {
        PurchaseItemFullResponseObject[["ticketType"]] <-
          self$`ticketType`
      }
      if (!is.null(self$`ticketCount`)) {
        PurchaseItemFullResponseObject[["ticketCount"]] <-
          self$`ticketCount`
      }
      if (!is.null(self$`points`)) {
        PurchaseItemFullResponseObject[["points"]] <-
          self$`points`
      }
      return(PurchaseItemFullResponseObject)
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
    #' Deserialize JSON string into an instance of PurchaseItemFullResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PurchaseItemFullResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`tickets`)) {
        self$`tickets` <- this_object$`tickets`
      }
      if (!is.null(this_object$`coverAsset`)) {
        `coverasset_object` <- AssetShortResponse$new()
        `coverasset_object`$fromJSON(jsonlite::toJSON(this_object$`coverAsset`, auto_unbox = TRUE, digits = NA))
        self$`coverAsset` <- `coverasset_object`
      }
      if (!is.null(this_object$`promoAsset`)) {
        `promoasset_object` <- AssetShortResponse$new()
        `promoasset_object`$fromJSON(jsonlite::toJSON(this_object$`promoAsset`, auto_unbox = TRUE, digits = NA))
        self$`promoAsset` <- `promoasset_object`
      }
      if (!is.null(this_object$`giftable`)) {
        self$`giftable` <- this_object$`giftable`
      }
      if (!is.null(this_object$`assetable`)) {
        self$`assetable` <- this_object$`assetable`
      }
      if (!is.null(this_object$`gameType`)) {
        self$`gameType` <- this_object$`gameType`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`purchaseType`)) {
        self$`purchaseType` <- this_object$`purchaseType`
      }
      if (!is.null(this_object$`purchaseCode`)) {
        self$`purchaseCode` <- this_object$`purchaseCode`
      }
      if (!is.null(this_object$`purchaseLimit`)) {
        self$`purchaseLimit` <- this_object$`purchaseLimit`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      if (!is.null(this_object$`serviceAction`)) {
        if (!is.null(this_object$`serviceAction`) && !(this_object$`serviceAction` %in% c("DAY_PREMIUM", "WEEK_PREMIUM", "MONTH_PREMIUM", "YEAR_PREMIUM", "LIFETIME_PREMIUM", "ADD_TICKET", "ADD_GIFT", "ADD_POINTS"))) {
          stop(paste("Error! \"", this_object$`serviceAction`, "\" cannot be assigned to `serviceAction`. Must be \"DAY_PREMIUM\", \"WEEK_PREMIUM\", \"MONTH_PREMIUM\", \"YEAR_PREMIUM\", \"LIFETIME_PREMIUM\", \"ADD_TICKET\", \"ADD_GIFT\", \"ADD_POINTS\".", sep = ""))
        }
        self$`serviceAction` <- this_object$`serviceAction`
      }
      if (!is.null(this_object$`appName`)) {
        self$`appName` <- this_object$`appName`
      }
      if (!is.null(this_object$`secretKey`)) {
        self$`secretKey` <- this_object$`secretKey`
      }
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`allocateTickets`)) {
        self$`allocateTickets` <- this_object$`allocateTickets`
      }
      if (!is.null(this_object$`ticketType`)) {
        self$`ticketType` <- this_object$`ticketType`
      }
      if (!is.null(this_object$`ticketCount`)) {
        self$`ticketCount` <- this_object$`ticketCount`
      }
      if (!is.null(this_object$`points`)) {
        self$`points` <- this_object$`points`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PurchaseItemFullResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PurchaseItemFullResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PurchaseItemFullResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`tickets` <- this_object$`tickets`
      self$`coverAsset` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`coverAsset`, auto_unbox = TRUE, digits = NA))
      self$`promoAsset` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`promoAsset`, auto_unbox = TRUE, digits = NA))
      self$`giftable` <- this_object$`giftable`
      self$`assetable` <- this_object$`assetable`
      self$`gameType` <- this_object$`gameType`
      self$`price` <- this_object$`price`
      self$`purchaseType` <- this_object$`purchaseType`
      self$`purchaseCode` <- this_object$`purchaseCode`
      self$`purchaseLimit` <- this_object$`purchaseLimit`
      self$`quantity` <- this_object$`quantity`
      if (!is.null(this_object$`serviceAction`) && !(this_object$`serviceAction` %in% c("DAY_PREMIUM", "WEEK_PREMIUM", "MONTH_PREMIUM", "YEAR_PREMIUM", "LIFETIME_PREMIUM", "ADD_TICKET", "ADD_GIFT", "ADD_POINTS"))) {
        stop(paste("Error! \"", this_object$`serviceAction`, "\" cannot be assigned to `serviceAction`. Must be \"DAY_PREMIUM\", \"WEEK_PREMIUM\", \"MONTH_PREMIUM\", \"YEAR_PREMIUM\", \"LIFETIME_PREMIUM\", \"ADD_TICKET\", \"ADD_GIFT\", \"ADD_POINTS\".", sep = ""))
      }
      self$`serviceAction` <- this_object$`serviceAction`
      self$`appName` <- this_object$`appName`
      self$`secretKey` <- this_object$`secretKey`
      self$`appKey` <- this_object$`appKey`
      self$`allocateTickets` <- this_object$`allocateTickets`
      self$`ticketType` <- this_object$`ticketType`
      self$`ticketCount` <- this_object$`ticketCount`
      self$`points` <- this_object$`points`
      self
    },

    #' @description
    #' Validate JSON input with respect to PurchaseItemFullResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PurchaseItemFullResponse
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
# PurchaseItemFullResponse$unlock()
#
## Below is an example to define the print function
# PurchaseItemFullResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PurchaseItemFullResponse$lock()

