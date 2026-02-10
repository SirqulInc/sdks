#' Create a new PathingResponse
#'
#' @description
#' PathingResponse Class
#'
#' @docType class
#' @title PathingResponse
#' @description PathingResponse Class
#' @format An \code{R6Class} generator object
#' @field start  \link{NodeRequest} [optional]
#' @field end  \link{NodeRequest} [optional]
#' @field waypoints  list(\link{NodeRequest}) [optional]
#' @field exclusions  list(\link{NodeRequest}) [optional]
#' @field width  integer [optional]
#' @field height  integer [optional]
#' @field southwest  \link{NodeRequest} [optional]
#' @field northeast  \link{NodeRequest} [optional]
#' @field metersPerX  numeric [optional]
#' @field metersPerY  numeric [optional]
#' @field path  list(\link{NodeRequest}) [optional]
#' @field pathCount  integer [optional]
#' @field directions  list(\link{DirectionResponse}) [optional]
#' @field directionCount  integer [optional]
#' @field swcalibration  \link{NodeRequest} [optional]
#' @field calibrationBearings  numeric [optional]
#' @field necalibration  \link{NodeRequest} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PathingResponse <- R6::R6Class(
  "PathingResponse",
  public = list(
    `start` = NULL,
    `end` = NULL,
    `waypoints` = NULL,
    `exclusions` = NULL,
    `width` = NULL,
    `height` = NULL,
    `southwest` = NULL,
    `northeast` = NULL,
    `metersPerX` = NULL,
    `metersPerY` = NULL,
    `path` = NULL,
    `pathCount` = NULL,
    `directions` = NULL,
    `directionCount` = NULL,
    `swcalibration` = NULL,
    `calibrationBearings` = NULL,
    `necalibration` = NULL,

    #' @description
    #' Initialize a new PathingResponse class.
    #'
    #' @param start start
    #' @param end end
    #' @param waypoints waypoints
    #' @param exclusions exclusions
    #' @param width width
    #' @param height height
    #' @param southwest southwest
    #' @param northeast northeast
    #' @param metersPerX metersPerX
    #' @param metersPerY metersPerY
    #' @param path path
    #' @param pathCount pathCount
    #' @param directions directions
    #' @param directionCount directionCount
    #' @param swcalibration swcalibration
    #' @param calibrationBearings calibrationBearings
    #' @param necalibration necalibration
    #' @param ... Other optional arguments.
    initialize = function(`start` = NULL, `end` = NULL, `waypoints` = NULL, `exclusions` = NULL, `width` = NULL, `height` = NULL, `southwest` = NULL, `northeast` = NULL, `metersPerX` = NULL, `metersPerY` = NULL, `path` = NULL, `pathCount` = NULL, `directions` = NULL, `directionCount` = NULL, `swcalibration` = NULL, `calibrationBearings` = NULL, `necalibration` = NULL, ...) {
      if (!is.null(`start`)) {
        stopifnot(R6::is.R6(`start`))
        self$`start` <- `start`
      }
      if (!is.null(`end`)) {
        stopifnot(R6::is.R6(`end`))
        self$`end` <- `end`
      }
      if (!is.null(`waypoints`)) {
        stopifnot(is.vector(`waypoints`), length(`waypoints`) != 0)
        sapply(`waypoints`, function(x) stopifnot(R6::is.R6(x)))
        self$`waypoints` <- `waypoints`
      }
      if (!is.null(`exclusions`)) {
        stopifnot(is.vector(`exclusions`), length(`exclusions`) != 0)
        sapply(`exclusions`, function(x) stopifnot(R6::is.R6(x)))
        self$`exclusions` <- `exclusions`
      }
      if (!is.null(`width`)) {
        if (!(is.numeric(`width`) && length(`width`) == 1)) {
          stop(paste("Error! Invalid data for `width`. Must be an integer:", `width`))
        }
        self$`width` <- `width`
      }
      if (!is.null(`height`)) {
        if (!(is.numeric(`height`) && length(`height`) == 1)) {
          stop(paste("Error! Invalid data for `height`. Must be an integer:", `height`))
        }
        self$`height` <- `height`
      }
      if (!is.null(`southwest`)) {
        stopifnot(R6::is.R6(`southwest`))
        self$`southwest` <- `southwest`
      }
      if (!is.null(`northeast`)) {
        stopifnot(R6::is.R6(`northeast`))
        self$`northeast` <- `northeast`
      }
      if (!is.null(`metersPerX`)) {
        if (!(is.numeric(`metersPerX`) && length(`metersPerX`) == 1)) {
          stop(paste("Error! Invalid data for `metersPerX`. Must be a number:", `metersPerX`))
        }
        self$`metersPerX` <- `metersPerX`
      }
      if (!is.null(`metersPerY`)) {
        if (!(is.numeric(`metersPerY`) && length(`metersPerY`) == 1)) {
          stop(paste("Error! Invalid data for `metersPerY`. Must be a number:", `metersPerY`))
        }
        self$`metersPerY` <- `metersPerY`
      }
      if (!is.null(`path`)) {
        stopifnot(is.vector(`path`), length(`path`) != 0)
        sapply(`path`, function(x) stopifnot(R6::is.R6(x)))
        self$`path` <- `path`
      }
      if (!is.null(`pathCount`)) {
        if (!(is.numeric(`pathCount`) && length(`pathCount`) == 1)) {
          stop(paste("Error! Invalid data for `pathCount`. Must be an integer:", `pathCount`))
        }
        self$`pathCount` <- `pathCount`
      }
      if (!is.null(`directions`)) {
        stopifnot(is.vector(`directions`), length(`directions`) != 0)
        sapply(`directions`, function(x) stopifnot(R6::is.R6(x)))
        self$`directions` <- `directions`
      }
      if (!is.null(`directionCount`)) {
        if (!(is.numeric(`directionCount`) && length(`directionCount`) == 1)) {
          stop(paste("Error! Invalid data for `directionCount`. Must be an integer:", `directionCount`))
        }
        self$`directionCount` <- `directionCount`
      }
      if (!is.null(`swcalibration`)) {
        stopifnot(R6::is.R6(`swcalibration`))
        self$`swcalibration` <- `swcalibration`
      }
      if (!is.null(`calibrationBearings`)) {
        if (!(is.numeric(`calibrationBearings`) && length(`calibrationBearings`) == 1)) {
          stop(paste("Error! Invalid data for `calibrationBearings`. Must be a number:", `calibrationBearings`))
        }
        self$`calibrationBearings` <- `calibrationBearings`
      }
      if (!is.null(`necalibration`)) {
        stopifnot(R6::is.R6(`necalibration`))
        self$`necalibration` <- `necalibration`
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
    #' @return PathingResponse as a base R list.
    #' @examples
    #' # convert array of PathingResponse (x) to a data frame
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
    #' Convert PathingResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PathingResponseObject <- list()
      if (!is.null(self$`start`)) {
        PathingResponseObject[["start"]] <-
          self$extractSimpleType(self$`start`)
      }
      if (!is.null(self$`end`)) {
        PathingResponseObject[["end"]] <-
          self$extractSimpleType(self$`end`)
      }
      if (!is.null(self$`waypoints`)) {
        PathingResponseObject[["waypoints"]] <-
          self$extractSimpleType(self$`waypoints`)
      }
      if (!is.null(self$`exclusions`)) {
        PathingResponseObject[["exclusions"]] <-
          self$extractSimpleType(self$`exclusions`)
      }
      if (!is.null(self$`width`)) {
        PathingResponseObject[["width"]] <-
          self$`width`
      }
      if (!is.null(self$`height`)) {
        PathingResponseObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`southwest`)) {
        PathingResponseObject[["southwest"]] <-
          self$extractSimpleType(self$`southwest`)
      }
      if (!is.null(self$`northeast`)) {
        PathingResponseObject[["northeast"]] <-
          self$extractSimpleType(self$`northeast`)
      }
      if (!is.null(self$`metersPerX`)) {
        PathingResponseObject[["metersPerX"]] <-
          self$`metersPerX`
      }
      if (!is.null(self$`metersPerY`)) {
        PathingResponseObject[["metersPerY"]] <-
          self$`metersPerY`
      }
      if (!is.null(self$`path`)) {
        PathingResponseObject[["path"]] <-
          self$extractSimpleType(self$`path`)
      }
      if (!is.null(self$`pathCount`)) {
        PathingResponseObject[["pathCount"]] <-
          self$`pathCount`
      }
      if (!is.null(self$`directions`)) {
        PathingResponseObject[["directions"]] <-
          self$extractSimpleType(self$`directions`)
      }
      if (!is.null(self$`directionCount`)) {
        PathingResponseObject[["directionCount"]] <-
          self$`directionCount`
      }
      if (!is.null(self$`swcalibration`)) {
        PathingResponseObject[["swcalibration"]] <-
          self$extractSimpleType(self$`swcalibration`)
      }
      if (!is.null(self$`calibrationBearings`)) {
        PathingResponseObject[["calibrationBearings"]] <-
          self$`calibrationBearings`
      }
      if (!is.null(self$`necalibration`)) {
        PathingResponseObject[["necalibration"]] <-
          self$extractSimpleType(self$`necalibration`)
      }
      return(PathingResponseObject)
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
    #' Deserialize JSON string into an instance of PathingResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PathingResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`start`)) {
        `start_object` <- NodeRequest$new()
        `start_object`$fromJSON(jsonlite::toJSON(this_object$`start`, auto_unbox = TRUE, digits = NA))
        self$`start` <- `start_object`
      }
      if (!is.null(this_object$`end`)) {
        `end_object` <- NodeRequest$new()
        `end_object`$fromJSON(jsonlite::toJSON(this_object$`end`, auto_unbox = TRUE, digits = NA))
        self$`end` <- `end_object`
      }
      if (!is.null(this_object$`waypoints`)) {
        self$`waypoints` <- ApiClient$new()$deserializeObj(this_object$`waypoints`, "array[NodeRequest]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`exclusions`)) {
        self$`exclusions` <- ApiClient$new()$deserializeObj(this_object$`exclusions`, "array[NodeRequest]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`width`)) {
        self$`width` <- this_object$`width`
      }
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`southwest`)) {
        `southwest_object` <- NodeRequest$new()
        `southwest_object`$fromJSON(jsonlite::toJSON(this_object$`southwest`, auto_unbox = TRUE, digits = NA))
        self$`southwest` <- `southwest_object`
      }
      if (!is.null(this_object$`northeast`)) {
        `northeast_object` <- NodeRequest$new()
        `northeast_object`$fromJSON(jsonlite::toJSON(this_object$`northeast`, auto_unbox = TRUE, digits = NA))
        self$`northeast` <- `northeast_object`
      }
      if (!is.null(this_object$`metersPerX`)) {
        self$`metersPerX` <- this_object$`metersPerX`
      }
      if (!is.null(this_object$`metersPerY`)) {
        self$`metersPerY` <- this_object$`metersPerY`
      }
      if (!is.null(this_object$`path`)) {
        self$`path` <- ApiClient$new()$deserializeObj(this_object$`path`, "array[NodeRequest]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`pathCount`)) {
        self$`pathCount` <- this_object$`pathCount`
      }
      if (!is.null(this_object$`directions`)) {
        self$`directions` <- ApiClient$new()$deserializeObj(this_object$`directions`, "array[DirectionResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`directionCount`)) {
        self$`directionCount` <- this_object$`directionCount`
      }
      if (!is.null(this_object$`swcalibration`)) {
        `swcalibration_object` <- NodeRequest$new()
        `swcalibration_object`$fromJSON(jsonlite::toJSON(this_object$`swcalibration`, auto_unbox = TRUE, digits = NA))
        self$`swcalibration` <- `swcalibration_object`
      }
      if (!is.null(this_object$`calibrationBearings`)) {
        self$`calibrationBearings` <- this_object$`calibrationBearings`
      }
      if (!is.null(this_object$`necalibration`)) {
        `necalibration_object` <- NodeRequest$new()
        `necalibration_object`$fromJSON(jsonlite::toJSON(this_object$`necalibration`, auto_unbox = TRUE, digits = NA))
        self$`necalibration` <- `necalibration_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PathingResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PathingResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PathingResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`start` <- NodeRequest$new()$fromJSON(jsonlite::toJSON(this_object$`start`, auto_unbox = TRUE, digits = NA))
      self$`end` <- NodeRequest$new()$fromJSON(jsonlite::toJSON(this_object$`end`, auto_unbox = TRUE, digits = NA))
      self$`waypoints` <- ApiClient$new()$deserializeObj(this_object$`waypoints`, "array[NodeRequest]", loadNamespace("openapi"))
      self$`exclusions` <- ApiClient$new()$deserializeObj(this_object$`exclusions`, "array[NodeRequest]", loadNamespace("openapi"))
      self$`width` <- this_object$`width`
      self$`height` <- this_object$`height`
      self$`southwest` <- NodeRequest$new()$fromJSON(jsonlite::toJSON(this_object$`southwest`, auto_unbox = TRUE, digits = NA))
      self$`northeast` <- NodeRequest$new()$fromJSON(jsonlite::toJSON(this_object$`northeast`, auto_unbox = TRUE, digits = NA))
      self$`metersPerX` <- this_object$`metersPerX`
      self$`metersPerY` <- this_object$`metersPerY`
      self$`path` <- ApiClient$new()$deserializeObj(this_object$`path`, "array[NodeRequest]", loadNamespace("openapi"))
      self$`pathCount` <- this_object$`pathCount`
      self$`directions` <- ApiClient$new()$deserializeObj(this_object$`directions`, "array[DirectionResponse]", loadNamespace("openapi"))
      self$`directionCount` <- this_object$`directionCount`
      self$`swcalibration` <- NodeRequest$new()$fromJSON(jsonlite::toJSON(this_object$`swcalibration`, auto_unbox = TRUE, digits = NA))
      self$`calibrationBearings` <- this_object$`calibrationBearings`
      self$`necalibration` <- NodeRequest$new()$fromJSON(jsonlite::toJSON(this_object$`necalibration`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to PathingResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PathingResponse
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
# PathingResponse$unlock()
#
## Below is an example to define the print function
# PathingResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PathingResponse$lock()

