#' Create a new VehicleType
#'
#' @description
#' VehicleType Class
#'
#' @docType class
#' @title VehicleType
#' @description VehicleType Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field business  \link{Retailer} [optional]
#' @field hub  \link{ServiceHub} [optional]
#' @field name  character [optional]
#' @field width  numeric [optional]
#' @field height  numeric [optional]
#' @field depth  numeric [optional]
#' @field volume  numeric [optional]
#' @field maxWeight  numeric [optional]
#' @field vehicleCargoSettings  list(\link{VehicleCargoSetting}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VehicleType <- R6::R6Class(
  "VehicleType",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `business` = NULL,
    `hub` = NULL,
    `name` = NULL,
    `width` = NULL,
    `height` = NULL,
    `depth` = NULL,
    `volume` = NULL,
    `maxWeight` = NULL,
    `vehicleCargoSettings` = NULL,

    #' @description
    #' Initialize a new VehicleType class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param business business
    #' @param hub hub
    #' @param name name
    #' @param width width
    #' @param height height
    #' @param depth depth
    #' @param volume volume
    #' @param maxWeight maxWeight
    #' @param vehicleCargoSettings vehicleCargoSettings
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `business` = NULL, `hub` = NULL, `name` = NULL, `width` = NULL, `height` = NULL, `depth` = NULL, `volume` = NULL, `maxWeight` = NULL, `vehicleCargoSettings` = NULL, ...) {
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
      if (!is.null(`business`)) {
        stopifnot(R6::is.R6(`business`))
        self$`business` <- `business`
      }
      if (!is.null(`hub`)) {
        stopifnot(R6::is.R6(`hub`))
        self$`hub` <- `hub`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`width`)) {
        if (!(is.numeric(`width`) && length(`width`) == 1)) {
          stop(paste("Error! Invalid data for `width`. Must be a number:", `width`))
        }
        self$`width` <- `width`
      }
      if (!is.null(`height`)) {
        if (!(is.numeric(`height`) && length(`height`) == 1)) {
          stop(paste("Error! Invalid data for `height`. Must be a number:", `height`))
        }
        self$`height` <- `height`
      }
      if (!is.null(`depth`)) {
        if (!(is.numeric(`depth`) && length(`depth`) == 1)) {
          stop(paste("Error! Invalid data for `depth`. Must be a number:", `depth`))
        }
        self$`depth` <- `depth`
      }
      if (!is.null(`volume`)) {
        if (!(is.numeric(`volume`) && length(`volume`) == 1)) {
          stop(paste("Error! Invalid data for `volume`. Must be a number:", `volume`))
        }
        self$`volume` <- `volume`
      }
      if (!is.null(`maxWeight`)) {
        if (!(is.numeric(`maxWeight`) && length(`maxWeight`) == 1)) {
          stop(paste("Error! Invalid data for `maxWeight`. Must be a number:", `maxWeight`))
        }
        self$`maxWeight` <- `maxWeight`
      }
      if (!is.null(`vehicleCargoSettings`)) {
        stopifnot(is.vector(`vehicleCargoSettings`), length(`vehicleCargoSettings`) != 0)
        sapply(`vehicleCargoSettings`, function(x) stopifnot(R6::is.R6(x)))
        self$`vehicleCargoSettings` <- `vehicleCargoSettings`
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
    #' @return VehicleType as a base R list.
    #' @examples
    #' # convert array of VehicleType (x) to a data frame
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
    #' Convert VehicleType to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VehicleTypeObject <- list()
      if (!is.null(self$`id`)) {
        VehicleTypeObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        VehicleTypeObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        VehicleTypeObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`business`)) {
        VehicleTypeObject[["business"]] <-
          self$extractSimpleType(self$`business`)
      }
      if (!is.null(self$`hub`)) {
        VehicleTypeObject[["hub"]] <-
          self$extractSimpleType(self$`hub`)
      }
      if (!is.null(self$`name`)) {
        VehicleTypeObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`width`)) {
        VehicleTypeObject[["width"]] <-
          self$`width`
      }
      if (!is.null(self$`height`)) {
        VehicleTypeObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`depth`)) {
        VehicleTypeObject[["depth"]] <-
          self$`depth`
      }
      if (!is.null(self$`volume`)) {
        VehicleTypeObject[["volume"]] <-
          self$`volume`
      }
      if (!is.null(self$`maxWeight`)) {
        VehicleTypeObject[["maxWeight"]] <-
          self$`maxWeight`
      }
      if (!is.null(self$`vehicleCargoSettings`)) {
        VehicleTypeObject[["vehicleCargoSettings"]] <-
          self$extractSimpleType(self$`vehicleCargoSettings`)
      }
      return(VehicleTypeObject)
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
    #' Deserialize JSON string into an instance of VehicleType
    #'
    #' @param input_json the JSON input
    #' @return the instance of VehicleType
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
      if (!is.null(this_object$`business`)) {
        `business_object` <- Retailer$new()
        `business_object`$fromJSON(jsonlite::toJSON(this_object$`business`, auto_unbox = TRUE, digits = NA))
        self$`business` <- `business_object`
      }
      if (!is.null(this_object$`hub`)) {
        `hub_object` <- ServiceHub$new()
        `hub_object`$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
        self$`hub` <- `hub_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`width`)) {
        self$`width` <- this_object$`width`
      }
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`depth`)) {
        self$`depth` <- this_object$`depth`
      }
      if (!is.null(this_object$`volume`)) {
        self$`volume` <- this_object$`volume`
      }
      if (!is.null(this_object$`maxWeight`)) {
        self$`maxWeight` <- this_object$`maxWeight`
      }
      if (!is.null(this_object$`vehicleCargoSettings`)) {
        self$`vehicleCargoSettings` <- ApiClient$new()$deserializeObj(this_object$`vehicleCargoSettings`, "array[VehicleCargoSetting]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VehicleType in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VehicleType
    #'
    #' @param input_json the JSON input
    #' @return the instance of VehicleType
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`business` <- Retailer$new()$fromJSON(jsonlite::toJSON(this_object$`business`, auto_unbox = TRUE, digits = NA))
      self$`hub` <- ServiceHub$new()$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`width` <- this_object$`width`
      self$`height` <- this_object$`height`
      self$`depth` <- this_object$`depth`
      self$`volume` <- this_object$`volume`
      self$`maxWeight` <- this_object$`maxWeight`
      self$`vehicleCargoSettings` <- ApiClient$new()$deserializeObj(this_object$`vehicleCargoSettings`, "array[VehicleCargoSetting]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to VehicleType and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VehicleType
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
# VehicleType$unlock()
#
## Below is an example to define the print function
# VehicleType$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VehicleType$lock()

