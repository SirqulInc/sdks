#' Create a new StepResponse
#'
#' @description
#' StepResponse Class
#'
#' @docType class
#' @title StepResponse
#' @description StepResponse Class
#' @format An \code{R6Class} generator object
#' @field leg  \link{LegResponse} [optional]
#' @field distance  numeric [optional]
#' @field duration  integer [optional]
#' @field startLat  numeric [optional]
#' @field startLng  numeric [optional]
#' @field startAlt  numeric [optional]
#' @field startDate  integer [optional]
#' @field endLat  numeric [optional]
#' @field endLng  numeric [optional]
#' @field endAlt  numeric [optional]
#' @field endDate  integer [optional]
#' @field accuracy  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StepResponse <- R6::R6Class(
  "StepResponse",
  public = list(
    `leg` = NULL,
    `distance` = NULL,
    `duration` = NULL,
    `startLat` = NULL,
    `startLng` = NULL,
    `startAlt` = NULL,
    `startDate` = NULL,
    `endLat` = NULL,
    `endLng` = NULL,
    `endAlt` = NULL,
    `endDate` = NULL,
    `accuracy` = NULL,

    #' @description
    #' Initialize a new StepResponse class.
    #'
    #' @param leg leg
    #' @param distance distance
    #' @param duration duration
    #' @param startLat startLat
    #' @param startLng startLng
    #' @param startAlt startAlt
    #' @param startDate startDate
    #' @param endLat endLat
    #' @param endLng endLng
    #' @param endAlt endAlt
    #' @param endDate endDate
    #' @param accuracy accuracy
    #' @param ... Other optional arguments.
    initialize = function(`leg` = NULL, `distance` = NULL, `duration` = NULL, `startLat` = NULL, `startLng` = NULL, `startAlt` = NULL, `startDate` = NULL, `endLat` = NULL, `endLng` = NULL, `endAlt` = NULL, `endDate` = NULL, `accuracy` = NULL, ...) {
      if (!is.null(`leg`)) {
        stopifnot(R6::is.R6(`leg`))
        self$`leg` <- `leg`
      }
      if (!is.null(`distance`)) {
        if (!(is.numeric(`distance`) && length(`distance`) == 1)) {
          stop(paste("Error! Invalid data for `distance`. Must be a number:", `distance`))
        }
        self$`distance` <- `distance`
      }
      if (!is.null(`duration`)) {
        if (!(is.numeric(`duration`) && length(`duration`) == 1)) {
          stop(paste("Error! Invalid data for `duration`. Must be an integer:", `duration`))
        }
        self$`duration` <- `duration`
      }
      if (!is.null(`startLat`)) {
        if (!(is.numeric(`startLat`) && length(`startLat`) == 1)) {
          stop(paste("Error! Invalid data for `startLat`. Must be a number:", `startLat`))
        }
        self$`startLat` <- `startLat`
      }
      if (!is.null(`startLng`)) {
        if (!(is.numeric(`startLng`) && length(`startLng`) == 1)) {
          stop(paste("Error! Invalid data for `startLng`. Must be a number:", `startLng`))
        }
        self$`startLng` <- `startLng`
      }
      if (!is.null(`startAlt`)) {
        if (!(is.numeric(`startAlt`) && length(`startAlt`) == 1)) {
          stop(paste("Error! Invalid data for `startAlt`. Must be a number:", `startAlt`))
        }
        self$`startAlt` <- `startAlt`
      }
      if (!is.null(`startDate`)) {
        if (!(is.numeric(`startDate`) && length(`startDate`) == 1)) {
          stop(paste("Error! Invalid data for `startDate`. Must be an integer:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`endLat`)) {
        if (!(is.numeric(`endLat`) && length(`endLat`) == 1)) {
          stop(paste("Error! Invalid data for `endLat`. Must be a number:", `endLat`))
        }
        self$`endLat` <- `endLat`
      }
      if (!is.null(`endLng`)) {
        if (!(is.numeric(`endLng`) && length(`endLng`) == 1)) {
          stop(paste("Error! Invalid data for `endLng`. Must be a number:", `endLng`))
        }
        self$`endLng` <- `endLng`
      }
      if (!is.null(`endAlt`)) {
        if (!(is.numeric(`endAlt`) && length(`endAlt`) == 1)) {
          stop(paste("Error! Invalid data for `endAlt`. Must be a number:", `endAlt`))
        }
        self$`endAlt` <- `endAlt`
      }
      if (!is.null(`endDate`)) {
        if (!(is.numeric(`endDate`) && length(`endDate`) == 1)) {
          stop(paste("Error! Invalid data for `endDate`. Must be an integer:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`accuracy`)) {
        if (!(is.numeric(`accuracy`) && length(`accuracy`) == 1)) {
          stop(paste("Error! Invalid data for `accuracy`. Must be an integer:", `accuracy`))
        }
        self$`accuracy` <- `accuracy`
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
    #' @return StepResponse as a base R list.
    #' @examples
    #' # convert array of StepResponse (x) to a data frame
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
    #' Convert StepResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StepResponseObject <- list()
      if (!is.null(self$`leg`)) {
        StepResponseObject[["leg"]] <-
          self$extractSimpleType(self$`leg`)
      }
      if (!is.null(self$`distance`)) {
        StepResponseObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`duration`)) {
        StepResponseObject[["duration"]] <-
          self$`duration`
      }
      if (!is.null(self$`startLat`)) {
        StepResponseObject[["startLat"]] <-
          self$`startLat`
      }
      if (!is.null(self$`startLng`)) {
        StepResponseObject[["startLng"]] <-
          self$`startLng`
      }
      if (!is.null(self$`startAlt`)) {
        StepResponseObject[["startAlt"]] <-
          self$`startAlt`
      }
      if (!is.null(self$`startDate`)) {
        StepResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endLat`)) {
        StepResponseObject[["endLat"]] <-
          self$`endLat`
      }
      if (!is.null(self$`endLng`)) {
        StepResponseObject[["endLng"]] <-
          self$`endLng`
      }
      if (!is.null(self$`endAlt`)) {
        StepResponseObject[["endAlt"]] <-
          self$`endAlt`
      }
      if (!is.null(self$`endDate`)) {
        StepResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`accuracy`)) {
        StepResponseObject[["accuracy"]] <-
          self$`accuracy`
      }
      return(StepResponseObject)
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
    #' Deserialize JSON string into an instance of StepResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of StepResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`leg`)) {
        `leg_object` <- LegResponse$new()
        `leg_object`$fromJSON(jsonlite::toJSON(this_object$`leg`, auto_unbox = TRUE, digits = NA))
        self$`leg` <- `leg_object`
      }
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      if (!is.null(this_object$`duration`)) {
        self$`duration` <- this_object$`duration`
      }
      if (!is.null(this_object$`startLat`)) {
        self$`startLat` <- this_object$`startLat`
      }
      if (!is.null(this_object$`startLng`)) {
        self$`startLng` <- this_object$`startLng`
      }
      if (!is.null(this_object$`startAlt`)) {
        self$`startAlt` <- this_object$`startAlt`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endLat`)) {
        self$`endLat` <- this_object$`endLat`
      }
      if (!is.null(this_object$`endLng`)) {
        self$`endLng` <- this_object$`endLng`
      }
      if (!is.null(this_object$`endAlt`)) {
        self$`endAlt` <- this_object$`endAlt`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`accuracy`)) {
        self$`accuracy` <- this_object$`accuracy`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StepResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StepResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of StepResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`leg` <- LegResponse$new()$fromJSON(jsonlite::toJSON(this_object$`leg`, auto_unbox = TRUE, digits = NA))
      self$`distance` <- this_object$`distance`
      self$`duration` <- this_object$`duration`
      self$`startLat` <- this_object$`startLat`
      self$`startLng` <- this_object$`startLng`
      self$`startAlt` <- this_object$`startAlt`
      self$`startDate` <- this_object$`startDate`
      self$`endLat` <- this_object$`endLat`
      self$`endLng` <- this_object$`endLng`
      self$`endAlt` <- this_object$`endAlt`
      self$`endDate` <- this_object$`endDate`
      self$`accuracy` <- this_object$`accuracy`
      self
    },

    #' @description
    #' Validate JSON input with respect to StepResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StepResponse
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
# StepResponse$unlock()
#
## Below is an example to define the print function
# StepResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StepResponse$lock()

