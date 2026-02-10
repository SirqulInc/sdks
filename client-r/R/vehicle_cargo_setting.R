#' Create a new VehicleCargoSetting
#'
#' @description
#' VehicleCargoSetting Class
#'
#' @docType class
#' @title VehicleCargoSetting
#' @description VehicleCargoSetting Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field cargoType  \link{CargoType} [optional]
#' @field maxUnit  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VehicleCargoSetting <- R6::R6Class(
  "VehicleCargoSetting",
  public = list(
    `valid` = NULL,
    `cargoType` = NULL,
    `maxUnit` = NULL,

    #' @description
    #' Initialize a new VehicleCargoSetting class.
    #'
    #' @param valid valid
    #' @param cargoType cargoType
    #' @param maxUnit maxUnit
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `cargoType` = NULL, `maxUnit` = NULL, ...) {
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`cargoType`)) {
        stopifnot(R6::is.R6(`cargoType`))
        self$`cargoType` <- `cargoType`
      }
      if (!is.null(`maxUnit`)) {
        if (!(is.numeric(`maxUnit`) && length(`maxUnit`) == 1)) {
          stop(paste("Error! Invalid data for `maxUnit`. Must be an integer:", `maxUnit`))
        }
        self$`maxUnit` <- `maxUnit`
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
    #' @return VehicleCargoSetting as a base R list.
    #' @examples
    #' # convert array of VehicleCargoSetting (x) to a data frame
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
    #' Convert VehicleCargoSetting to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VehicleCargoSettingObject <- list()
      if (!is.null(self$`valid`)) {
        VehicleCargoSettingObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`cargoType`)) {
        VehicleCargoSettingObject[["cargoType"]] <-
          self$extractSimpleType(self$`cargoType`)
      }
      if (!is.null(self$`maxUnit`)) {
        VehicleCargoSettingObject[["maxUnit"]] <-
          self$`maxUnit`
      }
      return(VehicleCargoSettingObject)
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
    #' Deserialize JSON string into an instance of VehicleCargoSetting
    #'
    #' @param input_json the JSON input
    #' @return the instance of VehicleCargoSetting
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`cargoType`)) {
        `cargotype_object` <- CargoType$new()
        `cargotype_object`$fromJSON(jsonlite::toJSON(this_object$`cargoType`, auto_unbox = TRUE, digits = NA))
        self$`cargoType` <- `cargotype_object`
      }
      if (!is.null(this_object$`maxUnit`)) {
        self$`maxUnit` <- this_object$`maxUnit`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VehicleCargoSetting in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VehicleCargoSetting
    #'
    #' @param input_json the JSON input
    #' @return the instance of VehicleCargoSetting
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`cargoType` <- CargoType$new()$fromJSON(jsonlite::toJSON(this_object$`cargoType`, auto_unbox = TRUE, digits = NA))
      self$`maxUnit` <- this_object$`maxUnit`
      self
    },

    #' @description
    #' Validate JSON input with respect to VehicleCargoSetting and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VehicleCargoSetting
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
# VehicleCargoSetting$unlock()
#
## Below is an example to define the print function
# VehicleCargoSetting$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VehicleCargoSetting$lock()

