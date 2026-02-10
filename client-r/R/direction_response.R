#' Create a new DirectionResponse
#'
#' @description
#' DirectionResponse Class
#'
#' @docType class
#' @title DirectionResponse
#' @description DirectionResponse Class
#' @format An \code{R6Class} generator object
#' @field action  character [optional]
#' @field bearing  numeric [optional]
#' @field bearingDifference  numeric [optional]
#' @field heading  character [optional]
#' @field distance  numeric [optional]
#' @field distanceUnits  character [optional]
#' @field distanceString  character [optional]
#' @field startLatitude  numeric [optional]
#' @field startLongitude  numeric [optional]
#' @field endLatitude  numeric [optional]
#' @field endLongitude  numeric [optional]
#' @field instruction  character [optional]
#' @field progressStatus  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DirectionResponse <- R6::R6Class(
  "DirectionResponse",
  public = list(
    `action` = NULL,
    `bearing` = NULL,
    `bearingDifference` = NULL,
    `heading` = NULL,
    `distance` = NULL,
    `distanceUnits` = NULL,
    `distanceString` = NULL,
    `startLatitude` = NULL,
    `startLongitude` = NULL,
    `endLatitude` = NULL,
    `endLongitude` = NULL,
    `instruction` = NULL,
    `progressStatus` = NULL,

    #' @description
    #' Initialize a new DirectionResponse class.
    #'
    #' @param action action
    #' @param bearing bearing
    #' @param bearingDifference bearingDifference
    #' @param heading heading
    #' @param distance distance
    #' @param distanceUnits distanceUnits
    #' @param distanceString distanceString
    #' @param startLatitude startLatitude
    #' @param startLongitude startLongitude
    #' @param endLatitude endLatitude
    #' @param endLongitude endLongitude
    #' @param instruction instruction
    #' @param progressStatus progressStatus
    #' @param ... Other optional arguments.
    initialize = function(`action` = NULL, `bearing` = NULL, `bearingDifference` = NULL, `heading` = NULL, `distance` = NULL, `distanceUnits` = NULL, `distanceString` = NULL, `startLatitude` = NULL, `startLongitude` = NULL, `endLatitude` = NULL, `endLongitude` = NULL, `instruction` = NULL, `progressStatus` = NULL, ...) {
      if (!is.null(`action`)) {
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
      if (!is.null(`bearing`)) {
        if (!(is.numeric(`bearing`) && length(`bearing`) == 1)) {
          stop(paste("Error! Invalid data for `bearing`. Must be a number:", `bearing`))
        }
        self$`bearing` <- `bearing`
      }
      if (!is.null(`bearingDifference`)) {
        if (!(is.numeric(`bearingDifference`) && length(`bearingDifference`) == 1)) {
          stop(paste("Error! Invalid data for `bearingDifference`. Must be a number:", `bearingDifference`))
        }
        self$`bearingDifference` <- `bearingDifference`
      }
      if (!is.null(`heading`)) {
        if (!(is.character(`heading`) && length(`heading`) == 1)) {
          stop(paste("Error! Invalid data for `heading`. Must be a string:", `heading`))
        }
        self$`heading` <- `heading`
      }
      if (!is.null(`distance`)) {
        if (!(is.numeric(`distance`) && length(`distance`) == 1)) {
          stop(paste("Error! Invalid data for `distance`. Must be a number:", `distance`))
        }
        self$`distance` <- `distance`
      }
      if (!is.null(`distanceUnits`)) {
        if (!(is.character(`distanceUnits`) && length(`distanceUnits`) == 1)) {
          stop(paste("Error! Invalid data for `distanceUnits`. Must be a string:", `distanceUnits`))
        }
        self$`distanceUnits` <- `distanceUnits`
      }
      if (!is.null(`distanceString`)) {
        if (!(is.character(`distanceString`) && length(`distanceString`) == 1)) {
          stop(paste("Error! Invalid data for `distanceString`. Must be a string:", `distanceString`))
        }
        self$`distanceString` <- `distanceString`
      }
      if (!is.null(`startLatitude`)) {
        if (!(is.numeric(`startLatitude`) && length(`startLatitude`) == 1)) {
          stop(paste("Error! Invalid data for `startLatitude`. Must be a number:", `startLatitude`))
        }
        self$`startLatitude` <- `startLatitude`
      }
      if (!is.null(`startLongitude`)) {
        if (!(is.numeric(`startLongitude`) && length(`startLongitude`) == 1)) {
          stop(paste("Error! Invalid data for `startLongitude`. Must be a number:", `startLongitude`))
        }
        self$`startLongitude` <- `startLongitude`
      }
      if (!is.null(`endLatitude`)) {
        if (!(is.numeric(`endLatitude`) && length(`endLatitude`) == 1)) {
          stop(paste("Error! Invalid data for `endLatitude`. Must be a number:", `endLatitude`))
        }
        self$`endLatitude` <- `endLatitude`
      }
      if (!is.null(`endLongitude`)) {
        if (!(is.numeric(`endLongitude`) && length(`endLongitude`) == 1)) {
          stop(paste("Error! Invalid data for `endLongitude`. Must be a number:", `endLongitude`))
        }
        self$`endLongitude` <- `endLongitude`
      }
      if (!is.null(`instruction`)) {
        if (!(is.character(`instruction`) && length(`instruction`) == 1)) {
          stop(paste("Error! Invalid data for `instruction`. Must be a string:", `instruction`))
        }
        self$`instruction` <- `instruction`
      }
      if (!is.null(`progressStatus`)) {
        if (!(is.character(`progressStatus`) && length(`progressStatus`) == 1)) {
          stop(paste("Error! Invalid data for `progressStatus`. Must be a string:", `progressStatus`))
        }
        self$`progressStatus` <- `progressStatus`
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
    #' @return DirectionResponse as a base R list.
    #' @examples
    #' # convert array of DirectionResponse (x) to a data frame
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
    #' Convert DirectionResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DirectionResponseObject <- list()
      if (!is.null(self$`action`)) {
        DirectionResponseObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`bearing`)) {
        DirectionResponseObject[["bearing"]] <-
          self$`bearing`
      }
      if (!is.null(self$`bearingDifference`)) {
        DirectionResponseObject[["bearingDifference"]] <-
          self$`bearingDifference`
      }
      if (!is.null(self$`heading`)) {
        DirectionResponseObject[["heading"]] <-
          self$`heading`
      }
      if (!is.null(self$`distance`)) {
        DirectionResponseObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`distanceUnits`)) {
        DirectionResponseObject[["distanceUnits"]] <-
          self$`distanceUnits`
      }
      if (!is.null(self$`distanceString`)) {
        DirectionResponseObject[["distanceString"]] <-
          self$`distanceString`
      }
      if (!is.null(self$`startLatitude`)) {
        DirectionResponseObject[["startLatitude"]] <-
          self$`startLatitude`
      }
      if (!is.null(self$`startLongitude`)) {
        DirectionResponseObject[["startLongitude"]] <-
          self$`startLongitude`
      }
      if (!is.null(self$`endLatitude`)) {
        DirectionResponseObject[["endLatitude"]] <-
          self$`endLatitude`
      }
      if (!is.null(self$`endLongitude`)) {
        DirectionResponseObject[["endLongitude"]] <-
          self$`endLongitude`
      }
      if (!is.null(self$`instruction`)) {
        DirectionResponseObject[["instruction"]] <-
          self$`instruction`
      }
      if (!is.null(self$`progressStatus`)) {
        DirectionResponseObject[["progressStatus"]] <-
          self$`progressStatus`
      }
      return(DirectionResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DirectionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DirectionResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`bearing`)) {
        self$`bearing` <- this_object$`bearing`
      }
      if (!is.null(this_object$`bearingDifference`)) {
        self$`bearingDifference` <- this_object$`bearingDifference`
      }
      if (!is.null(this_object$`heading`)) {
        self$`heading` <- this_object$`heading`
      }
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      if (!is.null(this_object$`distanceUnits`)) {
        self$`distanceUnits` <- this_object$`distanceUnits`
      }
      if (!is.null(this_object$`distanceString`)) {
        self$`distanceString` <- this_object$`distanceString`
      }
      if (!is.null(this_object$`startLatitude`)) {
        self$`startLatitude` <- this_object$`startLatitude`
      }
      if (!is.null(this_object$`startLongitude`)) {
        self$`startLongitude` <- this_object$`startLongitude`
      }
      if (!is.null(this_object$`endLatitude`)) {
        self$`endLatitude` <- this_object$`endLatitude`
      }
      if (!is.null(this_object$`endLongitude`)) {
        self$`endLongitude` <- this_object$`endLongitude`
      }
      if (!is.null(this_object$`instruction`)) {
        self$`instruction` <- this_object$`instruction`
      }
      if (!is.null(this_object$`progressStatus`)) {
        self$`progressStatus` <- this_object$`progressStatus`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DirectionResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DirectionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DirectionResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`action` <- this_object$`action`
      self$`bearing` <- this_object$`bearing`
      self$`bearingDifference` <- this_object$`bearingDifference`
      self$`heading` <- this_object$`heading`
      self$`distance` <- this_object$`distance`
      self$`distanceUnits` <- this_object$`distanceUnits`
      self$`distanceString` <- this_object$`distanceString`
      self$`startLatitude` <- this_object$`startLatitude`
      self$`startLongitude` <- this_object$`startLongitude`
      self$`endLatitude` <- this_object$`endLatitude`
      self$`endLongitude` <- this_object$`endLongitude`
      self$`instruction` <- this_object$`instruction`
      self$`progressStatus` <- this_object$`progressStatus`
      self
    },

    #' @description
    #' Validate JSON input with respect to DirectionResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DirectionResponse
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
# DirectionResponse$unlock()
#
## Below is an example to define the print function
# DirectionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DirectionResponse$lock()

