#' Create a new Direction
#'
#' @description
#' Direction Class
#'
#' @docType class
#' @title Direction
#' @description Direction Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field distance  character [optional]
#' @field duration  character [optional]
#' @field endLatitude  numeric [optional]
#' @field endLongitude  numeric [optional]
#' @field startLatitude  numeric [optional]
#' @field startLongitude  numeric [optional]
#' @field instruction  character [optional]
#' @field polyline  character [optional]
#' @field progressStatus  character [optional]
#' @field highlight  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Direction <- R6::R6Class(
  "Direction",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `distance` = NULL,
    `duration` = NULL,
    `endLatitude` = NULL,
    `endLongitude` = NULL,
    `startLatitude` = NULL,
    `startLongitude` = NULL,
    `instruction` = NULL,
    `polyline` = NULL,
    `progressStatus` = NULL,
    `highlight` = NULL,

    #' @description
    #' Initialize a new Direction class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param distance distance
    #' @param duration duration
    #' @param endLatitude endLatitude
    #' @param endLongitude endLongitude
    #' @param startLatitude startLatitude
    #' @param startLongitude startLongitude
    #' @param instruction instruction
    #' @param polyline polyline
    #' @param progressStatus progressStatus
    #' @param highlight highlight
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `distance` = NULL, `duration` = NULL, `endLatitude` = NULL, `endLongitude` = NULL, `startLatitude` = NULL, `startLongitude` = NULL, `instruction` = NULL, `polyline` = NULL, `progressStatus` = NULL, `highlight` = NULL, ...) {
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
      if (!is.null(`distance`)) {
        if (!(is.character(`distance`) && length(`distance`) == 1)) {
          stop(paste("Error! Invalid data for `distance`. Must be a string:", `distance`))
        }
        self$`distance` <- `distance`
      }
      if (!is.null(`duration`)) {
        if (!(is.character(`duration`) && length(`duration`) == 1)) {
          stop(paste("Error! Invalid data for `duration`. Must be a string:", `duration`))
        }
        self$`duration` <- `duration`
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
      if (!is.null(`instruction`)) {
        if (!(is.character(`instruction`) && length(`instruction`) == 1)) {
          stop(paste("Error! Invalid data for `instruction`. Must be a string:", `instruction`))
        }
        self$`instruction` <- `instruction`
      }
      if (!is.null(`polyline`)) {
        if (!(is.character(`polyline`) && length(`polyline`) == 1)) {
          stop(paste("Error! Invalid data for `polyline`. Must be a string:", `polyline`))
        }
        self$`polyline` <- `polyline`
      }
      if (!is.null(`progressStatus`)) {
        if (!(`progressStatus` %in% c("PENDING", "COMPLETE", "INVALID"))) {
          stop(paste("Error! \"", `progressStatus`, "\" cannot be assigned to `progressStatus`. Must be \"PENDING\", \"COMPLETE\", \"INVALID\".", sep = ""))
        }
        if (!(is.character(`progressStatus`) && length(`progressStatus`) == 1)) {
          stop(paste("Error! Invalid data for `progressStatus`. Must be a string:", `progressStatus`))
        }
        self$`progressStatus` <- `progressStatus`
      }
      if (!is.null(`highlight`)) {
        if (!(is.logical(`highlight`) && length(`highlight`) == 1)) {
          stop(paste("Error! Invalid data for `highlight`. Must be a boolean:", `highlight`))
        }
        self$`highlight` <- `highlight`
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
    #' @return Direction as a base R list.
    #' @examples
    #' # convert array of Direction (x) to a data frame
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
    #' Convert Direction to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DirectionObject <- list()
      if (!is.null(self$`id`)) {
        DirectionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        DirectionObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        DirectionObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`distance`)) {
        DirectionObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`duration`)) {
        DirectionObject[["duration"]] <-
          self$`duration`
      }
      if (!is.null(self$`endLatitude`)) {
        DirectionObject[["endLatitude"]] <-
          self$`endLatitude`
      }
      if (!is.null(self$`endLongitude`)) {
        DirectionObject[["endLongitude"]] <-
          self$`endLongitude`
      }
      if (!is.null(self$`startLatitude`)) {
        DirectionObject[["startLatitude"]] <-
          self$`startLatitude`
      }
      if (!is.null(self$`startLongitude`)) {
        DirectionObject[["startLongitude"]] <-
          self$`startLongitude`
      }
      if (!is.null(self$`instruction`)) {
        DirectionObject[["instruction"]] <-
          self$`instruction`
      }
      if (!is.null(self$`polyline`)) {
        DirectionObject[["polyline"]] <-
          self$`polyline`
      }
      if (!is.null(self$`progressStatus`)) {
        DirectionObject[["progressStatus"]] <-
          self$`progressStatus`
      }
      if (!is.null(self$`highlight`)) {
        DirectionObject[["highlight"]] <-
          self$`highlight`
      }
      return(DirectionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Direction
    #'
    #' @param input_json the JSON input
    #' @return the instance of Direction
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
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      if (!is.null(this_object$`duration`)) {
        self$`duration` <- this_object$`duration`
      }
      if (!is.null(this_object$`endLatitude`)) {
        self$`endLatitude` <- this_object$`endLatitude`
      }
      if (!is.null(this_object$`endLongitude`)) {
        self$`endLongitude` <- this_object$`endLongitude`
      }
      if (!is.null(this_object$`startLatitude`)) {
        self$`startLatitude` <- this_object$`startLatitude`
      }
      if (!is.null(this_object$`startLongitude`)) {
        self$`startLongitude` <- this_object$`startLongitude`
      }
      if (!is.null(this_object$`instruction`)) {
        self$`instruction` <- this_object$`instruction`
      }
      if (!is.null(this_object$`polyline`)) {
        self$`polyline` <- this_object$`polyline`
      }
      if (!is.null(this_object$`progressStatus`)) {
        if (!is.null(this_object$`progressStatus`) && !(this_object$`progressStatus` %in% c("PENDING", "COMPLETE", "INVALID"))) {
          stop(paste("Error! \"", this_object$`progressStatus`, "\" cannot be assigned to `progressStatus`. Must be \"PENDING\", \"COMPLETE\", \"INVALID\".", sep = ""))
        }
        self$`progressStatus` <- this_object$`progressStatus`
      }
      if (!is.null(this_object$`highlight`)) {
        self$`highlight` <- this_object$`highlight`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Direction in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Direction
    #'
    #' @param input_json the JSON input
    #' @return the instance of Direction
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`distance` <- this_object$`distance`
      self$`duration` <- this_object$`duration`
      self$`endLatitude` <- this_object$`endLatitude`
      self$`endLongitude` <- this_object$`endLongitude`
      self$`startLatitude` <- this_object$`startLatitude`
      self$`startLongitude` <- this_object$`startLongitude`
      self$`instruction` <- this_object$`instruction`
      self$`polyline` <- this_object$`polyline`
      if (!is.null(this_object$`progressStatus`) && !(this_object$`progressStatus` %in% c("PENDING", "COMPLETE", "INVALID"))) {
        stop(paste("Error! \"", this_object$`progressStatus`, "\" cannot be assigned to `progressStatus`. Must be \"PENDING\", \"COMPLETE\", \"INVALID\".", sep = ""))
      }
      self$`progressStatus` <- this_object$`progressStatus`
      self$`highlight` <- this_object$`highlight`
      self
    },

    #' @description
    #' Validate JSON input with respect to Direction and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Direction
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
# Direction$unlock()
#
## Below is an example to define the print function
# Direction$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Direction$lock()

