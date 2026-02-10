#' Create a new DateTimeField
#'
#' @description
#' DateTimeField Class
#'
#' @docType class
#' @title DateTimeField
#' @description DateTimeField Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field type  \link{DateTimeFieldType} [optional]
#' @field supported  character [optional]
#' @field minimumValue  integer [optional]
#' @field maximumValue  integer [optional]
#' @field durationField  \link{DurationField} [optional]
#' @field leapDurationField  \link{DurationField} [optional]
#' @field rangeDurationField  \link{DurationField} [optional]
#' @field lenient  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DateTimeField <- R6::R6Class(
  "DateTimeField",
  public = list(
    `name` = NULL,
    `type` = NULL,
    `supported` = NULL,
    `minimumValue` = NULL,
    `maximumValue` = NULL,
    `durationField` = NULL,
    `leapDurationField` = NULL,
    `rangeDurationField` = NULL,
    `lenient` = NULL,

    #' @description
    #' Initialize a new DateTimeField class.
    #'
    #' @param name name
    #' @param type type
    #' @param supported supported
    #' @param minimumValue minimumValue
    #' @param maximumValue maximumValue
    #' @param durationField durationField
    #' @param leapDurationField leapDurationField
    #' @param rangeDurationField rangeDurationField
    #' @param lenient lenient
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `type` = NULL, `supported` = NULL, `minimumValue` = NULL, `maximumValue` = NULL, `durationField` = NULL, `leapDurationField` = NULL, `rangeDurationField` = NULL, `lenient` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`type`)) {
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
      }
      if (!is.null(`supported`)) {
        if (!(is.logical(`supported`) && length(`supported`) == 1)) {
          stop(paste("Error! Invalid data for `supported`. Must be a boolean:", `supported`))
        }
        self$`supported` <- `supported`
      }
      if (!is.null(`minimumValue`)) {
        if (!(is.numeric(`minimumValue`) && length(`minimumValue`) == 1)) {
          stop(paste("Error! Invalid data for `minimumValue`. Must be an integer:", `minimumValue`))
        }
        self$`minimumValue` <- `minimumValue`
      }
      if (!is.null(`maximumValue`)) {
        if (!(is.numeric(`maximumValue`) && length(`maximumValue`) == 1)) {
          stop(paste("Error! Invalid data for `maximumValue`. Must be an integer:", `maximumValue`))
        }
        self$`maximumValue` <- `maximumValue`
      }
      if (!is.null(`durationField`)) {
        stopifnot(R6::is.R6(`durationField`))
        self$`durationField` <- `durationField`
      }
      if (!is.null(`leapDurationField`)) {
        stopifnot(R6::is.R6(`leapDurationField`))
        self$`leapDurationField` <- `leapDurationField`
      }
      if (!is.null(`rangeDurationField`)) {
        stopifnot(R6::is.R6(`rangeDurationField`))
        self$`rangeDurationField` <- `rangeDurationField`
      }
      if (!is.null(`lenient`)) {
        if (!(is.logical(`lenient`) && length(`lenient`) == 1)) {
          stop(paste("Error! Invalid data for `lenient`. Must be a boolean:", `lenient`))
        }
        self$`lenient` <- `lenient`
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
    #' @return DateTimeField as a base R list.
    #' @examples
    #' # convert array of DateTimeField (x) to a data frame
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
    #' Convert DateTimeField to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DateTimeFieldObject <- list()
      if (!is.null(self$`name`)) {
        DateTimeFieldObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`type`)) {
        DateTimeFieldObject[["type"]] <-
          self$extractSimpleType(self$`type`)
      }
      if (!is.null(self$`supported`)) {
        DateTimeFieldObject[["supported"]] <-
          self$`supported`
      }
      if (!is.null(self$`minimumValue`)) {
        DateTimeFieldObject[["minimumValue"]] <-
          self$`minimumValue`
      }
      if (!is.null(self$`maximumValue`)) {
        DateTimeFieldObject[["maximumValue"]] <-
          self$`maximumValue`
      }
      if (!is.null(self$`durationField`)) {
        DateTimeFieldObject[["durationField"]] <-
          self$extractSimpleType(self$`durationField`)
      }
      if (!is.null(self$`leapDurationField`)) {
        DateTimeFieldObject[["leapDurationField"]] <-
          self$extractSimpleType(self$`leapDurationField`)
      }
      if (!is.null(self$`rangeDurationField`)) {
        DateTimeFieldObject[["rangeDurationField"]] <-
          self$extractSimpleType(self$`rangeDurationField`)
      }
      if (!is.null(self$`lenient`)) {
        DateTimeFieldObject[["lenient"]] <-
          self$`lenient`
      }
      return(DateTimeFieldObject)
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
    #' Deserialize JSON string into an instance of DateTimeField
    #'
    #' @param input_json the JSON input
    #' @return the instance of DateTimeField
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`type`)) {
        `type_object` <- DateTimeFieldType$new()
        `type_object`$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
        self$`type` <- `type_object`
      }
      if (!is.null(this_object$`supported`)) {
        self$`supported` <- this_object$`supported`
      }
      if (!is.null(this_object$`minimumValue`)) {
        self$`minimumValue` <- this_object$`minimumValue`
      }
      if (!is.null(this_object$`maximumValue`)) {
        self$`maximumValue` <- this_object$`maximumValue`
      }
      if (!is.null(this_object$`durationField`)) {
        `durationfield_object` <- DurationField$new()
        `durationfield_object`$fromJSON(jsonlite::toJSON(this_object$`durationField`, auto_unbox = TRUE, digits = NA))
        self$`durationField` <- `durationfield_object`
      }
      if (!is.null(this_object$`leapDurationField`)) {
        `leapdurationfield_object` <- DurationField$new()
        `leapdurationfield_object`$fromJSON(jsonlite::toJSON(this_object$`leapDurationField`, auto_unbox = TRUE, digits = NA))
        self$`leapDurationField` <- `leapdurationfield_object`
      }
      if (!is.null(this_object$`rangeDurationField`)) {
        `rangedurationfield_object` <- DurationField$new()
        `rangedurationfield_object`$fromJSON(jsonlite::toJSON(this_object$`rangeDurationField`, auto_unbox = TRUE, digits = NA))
        self$`rangeDurationField` <- `rangedurationfield_object`
      }
      if (!is.null(this_object$`lenient`)) {
        self$`lenient` <- this_object$`lenient`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DateTimeField in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DateTimeField
    #'
    #' @param input_json the JSON input
    #' @return the instance of DateTimeField
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`type` <- DateTimeFieldType$new()$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
      self$`supported` <- this_object$`supported`
      self$`minimumValue` <- this_object$`minimumValue`
      self$`maximumValue` <- this_object$`maximumValue`
      self$`durationField` <- DurationField$new()$fromJSON(jsonlite::toJSON(this_object$`durationField`, auto_unbox = TRUE, digits = NA))
      self$`leapDurationField` <- DurationField$new()$fromJSON(jsonlite::toJSON(this_object$`leapDurationField`, auto_unbox = TRUE, digits = NA))
      self$`rangeDurationField` <- DurationField$new()$fromJSON(jsonlite::toJSON(this_object$`rangeDurationField`, auto_unbox = TRUE, digits = NA))
      self$`lenient` <- this_object$`lenient`
      self
    },

    #' @description
    #' Validate JSON input with respect to DateTimeField and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DateTimeField
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
# DateTimeField$unlock()
#
## Below is an example to define the print function
# DateTimeField$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DateTimeField$lock()

