#' Create a new VehicleResponse
#'
#' @description
#' VehicleResponse Class
#'
#' @docType class
#' @title VehicleResponse
#' @description VehicleResponse Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field name  character [optional]
#' @field capacity  integer [optional]
#' @field depot  \link{GeoResponse} [optional]
#' @field startWindow  integer [optional]
#' @field endWindow  integer [optional]
#' @field current  \link{GeoResponse} [optional]
#' @field depotAsStop  \link{StopResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VehicleResponse <- R6::R6Class(
  "VehicleResponse",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `capacity` = NULL,
    `depot` = NULL,
    `startWindow` = NULL,
    `endWindow` = NULL,
    `current` = NULL,
    `depotAsStop` = NULL,

    #' @description
    #' Initialize a new VehicleResponse class.
    #'
    #' @param id id
    #' @param name name
    #' @param capacity capacity
    #' @param depot depot
    #' @param startWindow startWindow
    #' @param endWindow endWindow
    #' @param current current
    #' @param depotAsStop depotAsStop
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `capacity` = NULL, `depot` = NULL, `startWindow` = NULL, `endWindow` = NULL, `current` = NULL, `depotAsStop` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`capacity`)) {
        if (!(is.numeric(`capacity`) && length(`capacity`) == 1)) {
          stop(paste("Error! Invalid data for `capacity`. Must be an integer:", `capacity`))
        }
        self$`capacity` <- `capacity`
      }
      if (!is.null(`depot`)) {
        stopifnot(R6::is.R6(`depot`))
        self$`depot` <- `depot`
      }
      if (!is.null(`startWindow`)) {
        if (!(is.numeric(`startWindow`) && length(`startWindow`) == 1)) {
          stop(paste("Error! Invalid data for `startWindow`. Must be an integer:", `startWindow`))
        }
        self$`startWindow` <- `startWindow`
      }
      if (!is.null(`endWindow`)) {
        if (!(is.numeric(`endWindow`) && length(`endWindow`) == 1)) {
          stop(paste("Error! Invalid data for `endWindow`. Must be an integer:", `endWindow`))
        }
        self$`endWindow` <- `endWindow`
      }
      if (!is.null(`current`)) {
        stopifnot(R6::is.R6(`current`))
        self$`current` <- `current`
      }
      if (!is.null(`depotAsStop`)) {
        stopifnot(R6::is.R6(`depotAsStop`))
        self$`depotAsStop` <- `depotAsStop`
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
    #' @return VehicleResponse as a base R list.
    #' @examples
    #' # convert array of VehicleResponse (x) to a data frame
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
    #' Convert VehicleResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VehicleResponseObject <- list()
      if (!is.null(self$`id`)) {
        VehicleResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        VehicleResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`capacity`)) {
        VehicleResponseObject[["capacity"]] <-
          self$`capacity`
      }
      if (!is.null(self$`depot`)) {
        VehicleResponseObject[["depot"]] <-
          self$extractSimpleType(self$`depot`)
      }
      if (!is.null(self$`startWindow`)) {
        VehicleResponseObject[["startWindow"]] <-
          self$`startWindow`
      }
      if (!is.null(self$`endWindow`)) {
        VehicleResponseObject[["endWindow"]] <-
          self$`endWindow`
      }
      if (!is.null(self$`current`)) {
        VehicleResponseObject[["current"]] <-
          self$extractSimpleType(self$`current`)
      }
      if (!is.null(self$`depotAsStop`)) {
        VehicleResponseObject[["depotAsStop"]] <-
          self$extractSimpleType(self$`depotAsStop`)
      }
      return(VehicleResponseObject)
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
    #' Deserialize JSON string into an instance of VehicleResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of VehicleResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`capacity`)) {
        self$`capacity` <- this_object$`capacity`
      }
      if (!is.null(this_object$`depot`)) {
        `depot_object` <- GeoResponse$new()
        `depot_object`$fromJSON(jsonlite::toJSON(this_object$`depot`, auto_unbox = TRUE, digits = NA))
        self$`depot` <- `depot_object`
      }
      if (!is.null(this_object$`startWindow`)) {
        self$`startWindow` <- this_object$`startWindow`
      }
      if (!is.null(this_object$`endWindow`)) {
        self$`endWindow` <- this_object$`endWindow`
      }
      if (!is.null(this_object$`current`)) {
        `current_object` <- GeoResponse$new()
        `current_object`$fromJSON(jsonlite::toJSON(this_object$`current`, auto_unbox = TRUE, digits = NA))
        self$`current` <- `current_object`
      }
      if (!is.null(this_object$`depotAsStop`)) {
        `depotasstop_object` <- StopResponse$new()
        `depotasstop_object`$fromJSON(jsonlite::toJSON(this_object$`depotAsStop`, auto_unbox = TRUE, digits = NA))
        self$`depotAsStop` <- `depotasstop_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VehicleResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VehicleResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of VehicleResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`capacity` <- this_object$`capacity`
      self$`depot` <- GeoResponse$new()$fromJSON(jsonlite::toJSON(this_object$`depot`, auto_unbox = TRUE, digits = NA))
      self$`startWindow` <- this_object$`startWindow`
      self$`endWindow` <- this_object$`endWindow`
      self$`current` <- GeoResponse$new()$fromJSON(jsonlite::toJSON(this_object$`current`, auto_unbox = TRUE, digits = NA))
      self$`depotAsStop` <- StopResponse$new()$fromJSON(jsonlite::toJSON(this_object$`depotAsStop`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to VehicleResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VehicleResponse
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
# VehicleResponse$unlock()
#
## Below is an example to define the print function
# VehicleResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VehicleResponse$lock()

