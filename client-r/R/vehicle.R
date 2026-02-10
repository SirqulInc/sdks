#' Create a new Vehicle
#'
#' @description
#' Vehicle Class
#'
#' @docType class
#' @title Vehicle
#' @description Vehicle Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field vehicleType  \link{VehicleType} [optional]
#' @field vin  character [optional]
#' @field licensePlateNumber  character [optional]
#' @field externalId  character [optional]
#' @field hub  \link{ServiceHub} [optional]
#' @field programs  list(\link{Program}) [optional]
#' @field seatQuantity  integer [optional]
#' @field picture  \link{Asset} [optional]
#' @field markerIcon  \link{Asset} [optional]
#' @field trackingColor  character [optional]
#' @field belongsTo  \link{Account} [optional]
#' @field zone  \link{Region} [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field noteCount  integer [optional]
#' @field inUse  character [optional]
#' @field contentName  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Vehicle <- R6::R6Class(
  "Vehicle",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `name` = NULL,
    `description` = NULL,
    `vehicleType` = NULL,
    `vin` = NULL,
    `licensePlateNumber` = NULL,
    `externalId` = NULL,
    `hub` = NULL,
    `programs` = NULL,
    `seatQuantity` = NULL,
    `picture` = NULL,
    `markerIcon` = NULL,
    `trackingColor` = NULL,
    `belongsTo` = NULL,
    `zone` = NULL,
    `notes` = NULL,
    `noteCount` = NULL,
    `inUse` = NULL,
    `contentName` = NULL,

    #' @description
    #' Initialize a new Vehicle class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param name name
    #' @param description description
    #' @param vehicleType vehicleType
    #' @param vin vin
    #' @param licensePlateNumber licensePlateNumber
    #' @param externalId externalId
    #' @param hub hub
    #' @param programs programs
    #' @param seatQuantity seatQuantity
    #' @param picture picture
    #' @param markerIcon markerIcon
    #' @param trackingColor trackingColor
    #' @param belongsTo belongsTo
    #' @param zone zone
    #' @param notes notes
    #' @param noteCount noteCount
    #' @param inUse inUse
    #' @param contentName contentName
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `name` = NULL, `description` = NULL, `vehicleType` = NULL, `vin` = NULL, `licensePlateNumber` = NULL, `externalId` = NULL, `hub` = NULL, `programs` = NULL, `seatQuantity` = NULL, `picture` = NULL, `markerIcon` = NULL, `trackingColor` = NULL, `belongsTo` = NULL, `zone` = NULL, `notes` = NULL, `noteCount` = NULL, `inUse` = NULL, `contentName` = NULL, ...) {
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
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`vehicleType`)) {
        stopifnot(R6::is.R6(`vehicleType`))
        self$`vehicleType` <- `vehicleType`
      }
      if (!is.null(`vin`)) {
        if (!(is.character(`vin`) && length(`vin`) == 1)) {
          stop(paste("Error! Invalid data for `vin`. Must be a string:", `vin`))
        }
        self$`vin` <- `vin`
      }
      if (!is.null(`licensePlateNumber`)) {
        if (!(is.character(`licensePlateNumber`) && length(`licensePlateNumber`) == 1)) {
          stop(paste("Error! Invalid data for `licensePlateNumber`. Must be a string:", `licensePlateNumber`))
        }
        self$`licensePlateNumber` <- `licensePlateNumber`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`hub`)) {
        stopifnot(R6::is.R6(`hub`))
        self$`hub` <- `hub`
      }
      if (!is.null(`programs`)) {
        stopifnot(is.vector(`programs`), length(`programs`) != 0)
        sapply(`programs`, function(x) stopifnot(R6::is.R6(x)))
        self$`programs` <- `programs`
      }
      if (!is.null(`seatQuantity`)) {
        if (!(is.numeric(`seatQuantity`) && length(`seatQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `seatQuantity`. Must be an integer:", `seatQuantity`))
        }
        self$`seatQuantity` <- `seatQuantity`
      }
      if (!is.null(`picture`)) {
        stopifnot(R6::is.R6(`picture`))
        self$`picture` <- `picture`
      }
      if (!is.null(`markerIcon`)) {
        stopifnot(R6::is.R6(`markerIcon`))
        self$`markerIcon` <- `markerIcon`
      }
      if (!is.null(`trackingColor`)) {
        if (!(is.character(`trackingColor`) && length(`trackingColor`) == 1)) {
          stop(paste("Error! Invalid data for `trackingColor`. Must be a string:", `trackingColor`))
        }
        self$`trackingColor` <- `trackingColor`
      }
      if (!is.null(`belongsTo`)) {
        stopifnot(R6::is.R6(`belongsTo`))
        self$`belongsTo` <- `belongsTo`
      }
      if (!is.null(`zone`)) {
        stopifnot(R6::is.R6(`zone`))
        self$`zone` <- `zone`
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
      if (!is.null(`inUse`)) {
        if (!(is.logical(`inUse`) && length(`inUse`) == 1)) {
          stop(paste("Error! Invalid data for `inUse`. Must be a boolean:", `inUse`))
        }
        self$`inUse` <- `inUse`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
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
    #' @return Vehicle as a base R list.
    #' @examples
    #' # convert array of Vehicle (x) to a data frame
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
    #' Convert Vehicle to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VehicleObject <- list()
      if (!is.null(self$`id`)) {
        VehicleObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        VehicleObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        VehicleObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`name`)) {
        VehicleObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        VehicleObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`vehicleType`)) {
        VehicleObject[["vehicleType"]] <-
          self$extractSimpleType(self$`vehicleType`)
      }
      if (!is.null(self$`vin`)) {
        VehicleObject[["vin"]] <-
          self$`vin`
      }
      if (!is.null(self$`licensePlateNumber`)) {
        VehicleObject[["licensePlateNumber"]] <-
          self$`licensePlateNumber`
      }
      if (!is.null(self$`externalId`)) {
        VehicleObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`hub`)) {
        VehicleObject[["hub"]] <-
          self$extractSimpleType(self$`hub`)
      }
      if (!is.null(self$`programs`)) {
        VehicleObject[["programs"]] <-
          self$extractSimpleType(self$`programs`)
      }
      if (!is.null(self$`seatQuantity`)) {
        VehicleObject[["seatQuantity"]] <-
          self$`seatQuantity`
      }
      if (!is.null(self$`picture`)) {
        VehicleObject[["picture"]] <-
          self$extractSimpleType(self$`picture`)
      }
      if (!is.null(self$`markerIcon`)) {
        VehicleObject[["markerIcon"]] <-
          self$extractSimpleType(self$`markerIcon`)
      }
      if (!is.null(self$`trackingColor`)) {
        VehicleObject[["trackingColor"]] <-
          self$`trackingColor`
      }
      if (!is.null(self$`belongsTo`)) {
        VehicleObject[["belongsTo"]] <-
          self$extractSimpleType(self$`belongsTo`)
      }
      if (!is.null(self$`zone`)) {
        VehicleObject[["zone"]] <-
          self$extractSimpleType(self$`zone`)
      }
      if (!is.null(self$`notes`)) {
        VehicleObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`noteCount`)) {
        VehicleObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`inUse`)) {
        VehicleObject[["inUse"]] <-
          self$`inUse`
      }
      if (!is.null(self$`contentName`)) {
        VehicleObject[["contentName"]] <-
          self$`contentName`
      }
      return(VehicleObject)
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
    #' Deserialize JSON string into an instance of Vehicle
    #'
    #' @param input_json the JSON input
    #' @return the instance of Vehicle
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
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`vehicleType`)) {
        `vehicletype_object` <- VehicleType$new()
        `vehicletype_object`$fromJSON(jsonlite::toJSON(this_object$`vehicleType`, auto_unbox = TRUE, digits = NA))
        self$`vehicleType` <- `vehicletype_object`
      }
      if (!is.null(this_object$`vin`)) {
        self$`vin` <- this_object$`vin`
      }
      if (!is.null(this_object$`licensePlateNumber`)) {
        self$`licensePlateNumber` <- this_object$`licensePlateNumber`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`hub`)) {
        `hub_object` <- ServiceHub$new()
        `hub_object`$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
        self$`hub` <- `hub_object`
      }
      if (!is.null(this_object$`programs`)) {
        self$`programs` <- ApiClient$new()$deserializeObj(this_object$`programs`, "array[Program]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`seatQuantity`)) {
        self$`seatQuantity` <- this_object$`seatQuantity`
      }
      if (!is.null(this_object$`picture`)) {
        `picture_object` <- Asset$new()
        `picture_object`$fromJSON(jsonlite::toJSON(this_object$`picture`, auto_unbox = TRUE, digits = NA))
        self$`picture` <- `picture_object`
      }
      if (!is.null(this_object$`markerIcon`)) {
        `markericon_object` <- Asset$new()
        `markericon_object`$fromJSON(jsonlite::toJSON(this_object$`markerIcon`, auto_unbox = TRUE, digits = NA))
        self$`markerIcon` <- `markericon_object`
      }
      if (!is.null(this_object$`trackingColor`)) {
        self$`trackingColor` <- this_object$`trackingColor`
      }
      if (!is.null(this_object$`belongsTo`)) {
        `belongsto_object` <- Account$new()
        `belongsto_object`$fromJSON(jsonlite::toJSON(this_object$`belongsTo`, auto_unbox = TRUE, digits = NA))
        self$`belongsTo` <- `belongsto_object`
      }
      if (!is.null(this_object$`zone`)) {
        `zone_object` <- Region$new()
        `zone_object`$fromJSON(jsonlite::toJSON(this_object$`zone`, auto_unbox = TRUE, digits = NA))
        self$`zone` <- `zone_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
      }
      if (!is.null(this_object$`inUse`)) {
        self$`inUse` <- this_object$`inUse`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Vehicle in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Vehicle
    #'
    #' @param input_json the JSON input
    #' @return the instance of Vehicle
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`vehicleType` <- VehicleType$new()$fromJSON(jsonlite::toJSON(this_object$`vehicleType`, auto_unbox = TRUE, digits = NA))
      self$`vin` <- this_object$`vin`
      self$`licensePlateNumber` <- this_object$`licensePlateNumber`
      self$`externalId` <- this_object$`externalId`
      self$`hub` <- ServiceHub$new()$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
      self$`programs` <- ApiClient$new()$deserializeObj(this_object$`programs`, "array[Program]", loadNamespace("openapi"))
      self$`seatQuantity` <- this_object$`seatQuantity`
      self$`picture` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`picture`, auto_unbox = TRUE, digits = NA))
      self$`markerIcon` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`markerIcon`, auto_unbox = TRUE, digits = NA))
      self$`trackingColor` <- this_object$`trackingColor`
      self$`belongsTo` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`belongsTo`, auto_unbox = TRUE, digits = NA))
      self$`zone` <- Region$new()$fromJSON(jsonlite::toJSON(this_object$`zone`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`noteCount` <- this_object$`noteCount`
      self$`inUse` <- this_object$`inUse`
      self$`contentName` <- this_object$`contentName`
      self
    },

    #' @description
    #' Validate JSON input with respect to Vehicle and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Vehicle
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
# Vehicle$unlock()
#
## Below is an example to define the print function
# Vehicle$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Vehicle$lock()

