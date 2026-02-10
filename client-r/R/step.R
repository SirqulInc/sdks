#' Create a new Step
#'
#' @description
#' Step Class
#'
#' @docType class
#' @title Step
#' @description Step Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field owner  \link{Account} [optional]
#' @field deviceId  character [optional]
#' @field leg  \link{Leg} [optional]
#' @field distance  numeric [optional]
#' @field duration  integer [optional]
#' @field startLatitude  numeric [optional]
#' @field startLongitude  numeric [optional]
#' @field startAltitude  numeric [optional]
#' @field startDate  character [optional]
#' @field endLatitude  numeric [optional]
#' @field endLongitude  numeric [optional]
#' @field endAltitude  numeric [optional]
#' @field endDate  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Step <- R6::R6Class(
  "Step",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `owner` = NULL,
    `deviceId` = NULL,
    `leg` = NULL,
    `distance` = NULL,
    `duration` = NULL,
    `startLatitude` = NULL,
    `startLongitude` = NULL,
    `startAltitude` = NULL,
    `startDate` = NULL,
    `endLatitude` = NULL,
    `endLongitude` = NULL,
    `endAltitude` = NULL,
    `endDate` = NULL,

    #' @description
    #' Initialize a new Step class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param owner owner
    #' @param deviceId deviceId
    #' @param leg leg
    #' @param distance distance
    #' @param duration duration
    #' @param startLatitude startLatitude
    #' @param startLongitude startLongitude
    #' @param startAltitude startAltitude
    #' @param startDate startDate
    #' @param endLatitude endLatitude
    #' @param endLongitude endLongitude
    #' @param endAltitude endAltitude
    #' @param endDate endDate
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `owner` = NULL, `deviceId` = NULL, `leg` = NULL, `distance` = NULL, `duration` = NULL, `startLatitude` = NULL, `startLongitude` = NULL, `startAltitude` = NULL, `startDate` = NULL, `endLatitude` = NULL, `endLongitude` = NULL, `endAltitude` = NULL, `endDate` = NULL, ...) {
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
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`deviceId`)) {
        if (!(is.character(`deviceId`) && length(`deviceId`) == 1)) {
          stop(paste("Error! Invalid data for `deviceId`. Must be a string:", `deviceId`))
        }
        self$`deviceId` <- `deviceId`
      }
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
      if (!is.null(`startAltitude`)) {
        if (!(is.numeric(`startAltitude`) && length(`startAltitude`) == 1)) {
          stop(paste("Error! Invalid data for `startAltitude`. Must be a number:", `startAltitude`))
        }
        self$`startAltitude` <- `startAltitude`
      }
      if (!is.null(`startDate`)) {
        if (!is.character(`startDate`)) {
          stop(paste("Error! Invalid data for `startDate`. Must be a string:", `startDate`))
        }
        self$`startDate` <- `startDate`
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
      if (!is.null(`endAltitude`)) {
        if (!(is.numeric(`endAltitude`) && length(`endAltitude`) == 1)) {
          stop(paste("Error! Invalid data for `endAltitude`. Must be a number:", `endAltitude`))
        }
        self$`endAltitude` <- `endAltitude`
      }
      if (!is.null(`endDate`)) {
        if (!is.character(`endDate`)) {
          stop(paste("Error! Invalid data for `endDate`. Must be a string:", `endDate`))
        }
        self$`endDate` <- `endDate`
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
    #' @return Step as a base R list.
    #' @examples
    #' # convert array of Step (x) to a data frame
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
    #' Convert Step to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StepObject <- list()
      if (!is.null(self$`id`)) {
        StepObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        StepObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        StepObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`owner`)) {
        StepObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`deviceId`)) {
        StepObject[["deviceId"]] <-
          self$`deviceId`
      }
      if (!is.null(self$`leg`)) {
        StepObject[["leg"]] <-
          self$extractSimpleType(self$`leg`)
      }
      if (!is.null(self$`distance`)) {
        StepObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`duration`)) {
        StepObject[["duration"]] <-
          self$`duration`
      }
      if (!is.null(self$`startLatitude`)) {
        StepObject[["startLatitude"]] <-
          self$`startLatitude`
      }
      if (!is.null(self$`startLongitude`)) {
        StepObject[["startLongitude"]] <-
          self$`startLongitude`
      }
      if (!is.null(self$`startAltitude`)) {
        StepObject[["startAltitude"]] <-
          self$`startAltitude`
      }
      if (!is.null(self$`startDate`)) {
        StepObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endLatitude`)) {
        StepObject[["endLatitude"]] <-
          self$`endLatitude`
      }
      if (!is.null(self$`endLongitude`)) {
        StepObject[["endLongitude"]] <-
          self$`endLongitude`
      }
      if (!is.null(self$`endAltitude`)) {
        StepObject[["endAltitude"]] <-
          self$`endAltitude`
      }
      if (!is.null(self$`endDate`)) {
        StepObject[["endDate"]] <-
          self$`endDate`
      }
      return(StepObject)
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
    #' Deserialize JSON string into an instance of Step
    #'
    #' @param input_json the JSON input
    #' @return the instance of Step
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
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`deviceId`)) {
        self$`deviceId` <- this_object$`deviceId`
      }
      if (!is.null(this_object$`leg`)) {
        `leg_object` <- Leg$new()
        `leg_object`$fromJSON(jsonlite::toJSON(this_object$`leg`, auto_unbox = TRUE, digits = NA))
        self$`leg` <- `leg_object`
      }
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      if (!is.null(this_object$`duration`)) {
        self$`duration` <- this_object$`duration`
      }
      if (!is.null(this_object$`startLatitude`)) {
        self$`startLatitude` <- this_object$`startLatitude`
      }
      if (!is.null(this_object$`startLongitude`)) {
        self$`startLongitude` <- this_object$`startLongitude`
      }
      if (!is.null(this_object$`startAltitude`)) {
        self$`startAltitude` <- this_object$`startAltitude`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endLatitude`)) {
        self$`endLatitude` <- this_object$`endLatitude`
      }
      if (!is.null(this_object$`endLongitude`)) {
        self$`endLongitude` <- this_object$`endLongitude`
      }
      if (!is.null(this_object$`endAltitude`)) {
        self$`endAltitude` <- this_object$`endAltitude`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Step in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Step
    #'
    #' @param input_json the JSON input
    #' @return the instance of Step
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`deviceId` <- this_object$`deviceId`
      self$`leg` <- Leg$new()$fromJSON(jsonlite::toJSON(this_object$`leg`, auto_unbox = TRUE, digits = NA))
      self$`distance` <- this_object$`distance`
      self$`duration` <- this_object$`duration`
      self$`startLatitude` <- this_object$`startLatitude`
      self$`startLongitude` <- this_object$`startLongitude`
      self$`startAltitude` <- this_object$`startAltitude`
      self$`startDate` <- this_object$`startDate`
      self$`endLatitude` <- this_object$`endLatitude`
      self$`endLongitude` <- this_object$`endLongitude`
      self$`endAltitude` <- this_object$`endAltitude`
      self$`endDate` <- this_object$`endDate`
      self
    },

    #' @description
    #' Validate JSON input with respect to Step and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Step
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
# Step$unlock()
#
## Below is an example to define the print function
# Step$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Step$lock()

