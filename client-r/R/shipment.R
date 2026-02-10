#' Create a new Shipment
#'
#' @description
#' Shipment Class
#'
#' @docType class
#' @title Shipment
#' @description Shipment Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field name  character [optional]
#' @field owner  \link{Account} [optional]
#' @field rider  \link{Account} [optional]
#' @field pickupStop  \link{Stop} [optional]
#' @field dropOffStop  \link{Stop} [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field noteCount  integer [optional]
#' @field batchId  character [optional]
#' @field reserved  character [optional]
#' @field canceled  character [optional]
#' @field confirmed  character [optional]
#' @field route  \link{Route} [optional]
#' @field polyline  character [optional]
#' @field replacePassenger  \link{Shipment} [optional]
#' @field refunded  character [optional]
#' @field promoCode  \link{PromoCode} [optional]
#' @field quantity  integer [optional]
#' @field pickupTimeWindow  \link{DateTimeRange} [optional]
#' @field dropOffTimeWindow  \link{DateTimeRange} [optional]
#' @field cargoType  \link{CargoType} [optional]
#' @field serviceType  \link{ServiceType} [optional]
#' @field routeId  integer [optional]
#' @field totalVolume  numeric [optional]
#' @field complete  character [optional]
#' @field contentName  character [optional]
#' @field riderName  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Shipment <- R6::R6Class(
  "Shipment",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `name` = NULL,
    `owner` = NULL,
    `rider` = NULL,
    `pickupStop` = NULL,
    `dropOffStop` = NULL,
    `notes` = NULL,
    `noteCount` = NULL,
    `batchId` = NULL,
    `reserved` = NULL,
    `canceled` = NULL,
    `confirmed` = NULL,
    `route` = NULL,
    `polyline` = NULL,
    `replacePassenger` = NULL,
    `refunded` = NULL,
    `promoCode` = NULL,
    `quantity` = NULL,
    `pickupTimeWindow` = NULL,
    `dropOffTimeWindow` = NULL,
    `cargoType` = NULL,
    `serviceType` = NULL,
    `routeId` = NULL,
    `totalVolume` = NULL,
    `complete` = NULL,
    `contentName` = NULL,
    `riderName` = NULL,

    #' @description
    #' Initialize a new Shipment class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param name name
    #' @param owner owner
    #' @param rider rider
    #' @param pickupStop pickupStop
    #' @param dropOffStop dropOffStop
    #' @param notes notes
    #' @param noteCount noteCount
    #' @param batchId batchId
    #' @param reserved reserved
    #' @param canceled canceled
    #' @param confirmed confirmed
    #' @param route route
    #' @param polyline polyline
    #' @param replacePassenger replacePassenger
    #' @param refunded refunded
    #' @param promoCode promoCode
    #' @param quantity quantity
    #' @param pickupTimeWindow pickupTimeWindow
    #' @param dropOffTimeWindow dropOffTimeWindow
    #' @param cargoType cargoType
    #' @param serviceType serviceType
    #' @param routeId routeId
    #' @param totalVolume totalVolume
    #' @param complete complete
    #' @param contentName contentName
    #' @param riderName riderName
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `name` = NULL, `owner` = NULL, `rider` = NULL, `pickupStop` = NULL, `dropOffStop` = NULL, `notes` = NULL, `noteCount` = NULL, `batchId` = NULL, `reserved` = NULL, `canceled` = NULL, `confirmed` = NULL, `route` = NULL, `polyline` = NULL, `replacePassenger` = NULL, `refunded` = NULL, `promoCode` = NULL, `quantity` = NULL, `pickupTimeWindow` = NULL, `dropOffTimeWindow` = NULL, `cargoType` = NULL, `serviceType` = NULL, `routeId` = NULL, `totalVolume` = NULL, `complete` = NULL, `contentName` = NULL, `riderName` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`rider`)) {
        stopifnot(R6::is.R6(`rider`))
        self$`rider` <- `rider`
      }
      if (!is.null(`pickupStop`)) {
        stopifnot(R6::is.R6(`pickupStop`))
        self$`pickupStop` <- `pickupStop`
      }
      if (!is.null(`dropOffStop`)) {
        stopifnot(R6::is.R6(`dropOffStop`))
        self$`dropOffStop` <- `dropOffStop`
      }
      if (!is.null(`notes`)) {
        stopifnot(is.vector(`notes`), length(`notes`) != 0)
        sapply(`notes`, function(x) stopifnot(R6::is.R6(x)))
        self$`notes` <- `notes`
      }
      if (!is.null(`noteCount`)) {
        if (!(is.numeric(`noteCount`) && length(`noteCount`) == 1)) {
          stop(paste("Error! Invalid data for `noteCount`. Must be an integer:", `noteCount`))
        }
        self$`noteCount` <- `noteCount`
      }
      if (!is.null(`batchId`)) {
        if (!(is.character(`batchId`) && length(`batchId`) == 1)) {
          stop(paste("Error! Invalid data for `batchId`. Must be a string:", `batchId`))
        }
        self$`batchId` <- `batchId`
      }
      if (!is.null(`reserved`)) {
        if (!is.character(`reserved`)) {
          stop(paste("Error! Invalid data for `reserved`. Must be a string:", `reserved`))
        }
        self$`reserved` <- `reserved`
      }
      if (!is.null(`canceled`)) {
        if (!is.character(`canceled`)) {
          stop(paste("Error! Invalid data for `canceled`. Must be a string:", `canceled`))
        }
        self$`canceled` <- `canceled`
      }
      if (!is.null(`confirmed`)) {
        if (!is.character(`confirmed`)) {
          stop(paste("Error! Invalid data for `confirmed`. Must be a string:", `confirmed`))
        }
        self$`confirmed` <- `confirmed`
      }
      if (!is.null(`route`)) {
        stopifnot(R6::is.R6(`route`))
        self$`route` <- `route`
      }
      if (!is.null(`polyline`)) {
        if (!(is.character(`polyline`) && length(`polyline`) == 1)) {
          stop(paste("Error! Invalid data for `polyline`. Must be a string:", `polyline`))
        }
        self$`polyline` <- `polyline`
      }
      if (!is.null(`replacePassenger`)) {
        stopifnot(R6::is.R6(`replacePassenger`))
        self$`replacePassenger` <- `replacePassenger`
      }
      if (!is.null(`refunded`)) {
        if (!(is.logical(`refunded`) && length(`refunded`) == 1)) {
          stop(paste("Error! Invalid data for `refunded`. Must be a boolean:", `refunded`))
        }
        self$`refunded` <- `refunded`
      }
      if (!is.null(`promoCode`)) {
        stopifnot(R6::is.R6(`promoCode`))
        self$`promoCode` <- `promoCode`
      }
      if (!is.null(`quantity`)) {
        if (!(is.numeric(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", `quantity`))
        }
        self$`quantity` <- `quantity`
      }
      if (!is.null(`pickupTimeWindow`)) {
        stopifnot(R6::is.R6(`pickupTimeWindow`))
        self$`pickupTimeWindow` <- `pickupTimeWindow`
      }
      if (!is.null(`dropOffTimeWindow`)) {
        stopifnot(R6::is.R6(`dropOffTimeWindow`))
        self$`dropOffTimeWindow` <- `dropOffTimeWindow`
      }
      if (!is.null(`cargoType`)) {
        stopifnot(R6::is.R6(`cargoType`))
        self$`cargoType` <- `cargoType`
      }
      if (!is.null(`serviceType`)) {
        stopifnot(R6::is.R6(`serviceType`))
        self$`serviceType` <- `serviceType`
      }
      if (!is.null(`routeId`)) {
        if (!(is.numeric(`routeId`) && length(`routeId`) == 1)) {
          stop(paste("Error! Invalid data for `routeId`. Must be an integer:", `routeId`))
        }
        self$`routeId` <- `routeId`
      }
      if (!is.null(`totalVolume`)) {
        if (!(is.numeric(`totalVolume`) && length(`totalVolume`) == 1)) {
          stop(paste("Error! Invalid data for `totalVolume`. Must be a number:", `totalVolume`))
        }
        self$`totalVolume` <- `totalVolume`
      }
      if (!is.null(`complete`)) {
        if (!(is.logical(`complete`) && length(`complete`) == 1)) {
          stop(paste("Error! Invalid data for `complete`. Must be a boolean:", `complete`))
        }
        self$`complete` <- `complete`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
      }
      if (!is.null(`riderName`)) {
        if (!(is.character(`riderName`) && length(`riderName`) == 1)) {
          stop(paste("Error! Invalid data for `riderName`. Must be a string:", `riderName`))
        }
        self$`riderName` <- `riderName`
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
    #' @return Shipment as a base R list.
    #' @examples
    #' # convert array of Shipment (x) to a data frame
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
    #' Convert Shipment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShipmentObject <- list()
      if (!is.null(self$`id`)) {
        ShipmentObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ShipmentObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ShipmentObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`name`)) {
        ShipmentObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`owner`)) {
        ShipmentObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`rider`)) {
        ShipmentObject[["rider"]] <-
          self$extractSimpleType(self$`rider`)
      }
      if (!is.null(self$`pickupStop`)) {
        ShipmentObject[["pickupStop"]] <-
          self$extractSimpleType(self$`pickupStop`)
      }
      if (!is.null(self$`dropOffStop`)) {
        ShipmentObject[["dropOffStop"]] <-
          self$extractSimpleType(self$`dropOffStop`)
      }
      if (!is.null(self$`notes`)) {
        ShipmentObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`noteCount`)) {
        ShipmentObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`batchId`)) {
        ShipmentObject[["batchId"]] <-
          self$`batchId`
      }
      if (!is.null(self$`reserved`)) {
        ShipmentObject[["reserved"]] <-
          self$`reserved`
      }
      if (!is.null(self$`canceled`)) {
        ShipmentObject[["canceled"]] <-
          self$`canceled`
      }
      if (!is.null(self$`confirmed`)) {
        ShipmentObject[["confirmed"]] <-
          self$`confirmed`
      }
      if (!is.null(self$`route`)) {
        ShipmentObject[["route"]] <-
          self$extractSimpleType(self$`route`)
      }
      if (!is.null(self$`polyline`)) {
        ShipmentObject[["polyline"]] <-
          self$`polyline`
      }
      if (!is.null(self$`replacePassenger`)) {
        ShipmentObject[["replacePassenger"]] <-
          self$extractSimpleType(self$`replacePassenger`)
      }
      if (!is.null(self$`refunded`)) {
        ShipmentObject[["refunded"]] <-
          self$`refunded`
      }
      if (!is.null(self$`promoCode`)) {
        ShipmentObject[["promoCode"]] <-
          self$extractSimpleType(self$`promoCode`)
      }
      if (!is.null(self$`quantity`)) {
        ShipmentObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`pickupTimeWindow`)) {
        ShipmentObject[["pickupTimeWindow"]] <-
          self$extractSimpleType(self$`pickupTimeWindow`)
      }
      if (!is.null(self$`dropOffTimeWindow`)) {
        ShipmentObject[["dropOffTimeWindow"]] <-
          self$extractSimpleType(self$`dropOffTimeWindow`)
      }
      if (!is.null(self$`cargoType`)) {
        ShipmentObject[["cargoType"]] <-
          self$extractSimpleType(self$`cargoType`)
      }
      if (!is.null(self$`serviceType`)) {
        ShipmentObject[["serviceType"]] <-
          self$extractSimpleType(self$`serviceType`)
      }
      if (!is.null(self$`routeId`)) {
        ShipmentObject[["routeId"]] <-
          self$`routeId`
      }
      if (!is.null(self$`totalVolume`)) {
        ShipmentObject[["totalVolume"]] <-
          self$`totalVolume`
      }
      if (!is.null(self$`complete`)) {
        ShipmentObject[["complete"]] <-
          self$`complete`
      }
      if (!is.null(self$`contentName`)) {
        ShipmentObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`riderName`)) {
        ShipmentObject[["riderName"]] <-
          self$`riderName`
      }
      return(ShipmentObject)
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
    #' Deserialize JSON string into an instance of Shipment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Shipment
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`rider`)) {
        `rider_object` <- Account$new()
        `rider_object`$fromJSON(jsonlite::toJSON(this_object$`rider`, auto_unbox = TRUE, digits = NA))
        self$`rider` <- `rider_object`
      }
      if (!is.null(this_object$`pickupStop`)) {
        `pickupstop_object` <- Stop$new()
        `pickupstop_object`$fromJSON(jsonlite::toJSON(this_object$`pickupStop`, auto_unbox = TRUE, digits = NA))
        self$`pickupStop` <- `pickupstop_object`
      }
      if (!is.null(this_object$`dropOffStop`)) {
        `dropoffstop_object` <- Stop$new()
        `dropoffstop_object`$fromJSON(jsonlite::toJSON(this_object$`dropOffStop`, auto_unbox = TRUE, digits = NA))
        self$`dropOffStop` <- `dropoffstop_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
      }
      if (!is.null(this_object$`batchId`)) {
        self$`batchId` <- this_object$`batchId`
      }
      if (!is.null(this_object$`reserved`)) {
        self$`reserved` <- this_object$`reserved`
      }
      if (!is.null(this_object$`canceled`)) {
        self$`canceled` <- this_object$`canceled`
      }
      if (!is.null(this_object$`confirmed`)) {
        self$`confirmed` <- this_object$`confirmed`
      }
      if (!is.null(this_object$`route`)) {
        `route_object` <- Route$new()
        `route_object`$fromJSON(jsonlite::toJSON(this_object$`route`, auto_unbox = TRUE, digits = NA))
        self$`route` <- `route_object`
      }
      if (!is.null(this_object$`polyline`)) {
        self$`polyline` <- this_object$`polyline`
      }
      if (!is.null(this_object$`replacePassenger`)) {
        `replacepassenger_object` <- Shipment$new()
        `replacepassenger_object`$fromJSON(jsonlite::toJSON(this_object$`replacePassenger`, auto_unbox = TRUE, digits = NA))
        self$`replacePassenger` <- `replacepassenger_object`
      }
      if (!is.null(this_object$`refunded`)) {
        self$`refunded` <- this_object$`refunded`
      }
      if (!is.null(this_object$`promoCode`)) {
        `promocode_object` <- PromoCode$new()
        `promocode_object`$fromJSON(jsonlite::toJSON(this_object$`promoCode`, auto_unbox = TRUE, digits = NA))
        self$`promoCode` <- `promocode_object`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      if (!is.null(this_object$`pickupTimeWindow`)) {
        `pickuptimewindow_object` <- DateTimeRange$new()
        `pickuptimewindow_object`$fromJSON(jsonlite::toJSON(this_object$`pickupTimeWindow`, auto_unbox = TRUE, digits = NA))
        self$`pickupTimeWindow` <- `pickuptimewindow_object`
      }
      if (!is.null(this_object$`dropOffTimeWindow`)) {
        `dropofftimewindow_object` <- DateTimeRange$new()
        `dropofftimewindow_object`$fromJSON(jsonlite::toJSON(this_object$`dropOffTimeWindow`, auto_unbox = TRUE, digits = NA))
        self$`dropOffTimeWindow` <- `dropofftimewindow_object`
      }
      if (!is.null(this_object$`cargoType`)) {
        `cargotype_object` <- CargoType$new()
        `cargotype_object`$fromJSON(jsonlite::toJSON(this_object$`cargoType`, auto_unbox = TRUE, digits = NA))
        self$`cargoType` <- `cargotype_object`
      }
      if (!is.null(this_object$`serviceType`)) {
        `servicetype_object` <- ServiceType$new()
        `servicetype_object`$fromJSON(jsonlite::toJSON(this_object$`serviceType`, auto_unbox = TRUE, digits = NA))
        self$`serviceType` <- `servicetype_object`
      }
      if (!is.null(this_object$`routeId`)) {
        self$`routeId` <- this_object$`routeId`
      }
      if (!is.null(this_object$`totalVolume`)) {
        self$`totalVolume` <- this_object$`totalVolume`
      }
      if (!is.null(this_object$`complete`)) {
        self$`complete` <- this_object$`complete`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      if (!is.null(this_object$`riderName`)) {
        self$`riderName` <- this_object$`riderName`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Shipment in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Shipment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Shipment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`name` <- this_object$`name`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`rider` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`rider`, auto_unbox = TRUE, digits = NA))
      self$`pickupStop` <- Stop$new()$fromJSON(jsonlite::toJSON(this_object$`pickupStop`, auto_unbox = TRUE, digits = NA))
      self$`dropOffStop` <- Stop$new()$fromJSON(jsonlite::toJSON(this_object$`dropOffStop`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`noteCount` <- this_object$`noteCount`
      self$`batchId` <- this_object$`batchId`
      self$`reserved` <- this_object$`reserved`
      self$`canceled` <- this_object$`canceled`
      self$`confirmed` <- this_object$`confirmed`
      self$`route` <- Route$new()$fromJSON(jsonlite::toJSON(this_object$`route`, auto_unbox = TRUE, digits = NA))
      self$`polyline` <- this_object$`polyline`
      self$`replacePassenger` <- Shipment$new()$fromJSON(jsonlite::toJSON(this_object$`replacePassenger`, auto_unbox = TRUE, digits = NA))
      self$`refunded` <- this_object$`refunded`
      self$`promoCode` <- PromoCode$new()$fromJSON(jsonlite::toJSON(this_object$`promoCode`, auto_unbox = TRUE, digits = NA))
      self$`quantity` <- this_object$`quantity`
      self$`pickupTimeWindow` <- DateTimeRange$new()$fromJSON(jsonlite::toJSON(this_object$`pickupTimeWindow`, auto_unbox = TRUE, digits = NA))
      self$`dropOffTimeWindow` <- DateTimeRange$new()$fromJSON(jsonlite::toJSON(this_object$`dropOffTimeWindow`, auto_unbox = TRUE, digits = NA))
      self$`cargoType` <- CargoType$new()$fromJSON(jsonlite::toJSON(this_object$`cargoType`, auto_unbox = TRUE, digits = NA))
      self$`serviceType` <- ServiceType$new()$fromJSON(jsonlite::toJSON(this_object$`serviceType`, auto_unbox = TRUE, digits = NA))
      self$`routeId` <- this_object$`routeId`
      self$`totalVolume` <- this_object$`totalVolume`
      self$`complete` <- this_object$`complete`
      self$`contentName` <- this_object$`contentName`
      self$`riderName` <- this_object$`riderName`
      self
    },

    #' @description
    #' Validate JSON input with respect to Shipment and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Shipment
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
# Shipment$unlock()
#
## Below is an example to define the print function
# Shipment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Shipment$lock()

