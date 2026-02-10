#' Create a new ParticipantResponse
#'
#' @description
#' ParticipantResponse Class
#'
#' @docType class
#' @title ParticipantResponse
#' @description ParticipantResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field account  \link{AccountMiniResponse} [optional]
#' @field availableStart  integer [optional]
#' @field availableEnd  integer [optional]
#' @field color1  character [optional]
#' @field color2  character [optional]
#' @field type  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ParticipantResponse <- R6::R6Class(
  "ParticipantResponse",
  public = list(
    `id` = NULL,
    `account` = NULL,
    `availableStart` = NULL,
    `availableEnd` = NULL,
    `color1` = NULL,
    `color2` = NULL,
    `type` = NULL,

    #' @description
    #' Initialize a new ParticipantResponse class.
    #'
    #' @param id id
    #' @param account account
    #' @param availableStart availableStart
    #' @param availableEnd availableEnd
    #' @param color1 color1
    #' @param color2 color2
    #' @param type type
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `account` = NULL, `availableStart` = NULL, `availableEnd` = NULL, `color1` = NULL, `color2` = NULL, `type` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`account`)) {
        stopifnot(R6::is.R6(`account`))
        self$`account` <- `account`
      }
      if (!is.null(`availableStart`)) {
        if (!(is.numeric(`availableStart`) && length(`availableStart`) == 1)) {
          stop(paste("Error! Invalid data for `availableStart`. Must be an integer:", `availableStart`))
        }
        self$`availableStart` <- `availableStart`
      }
      if (!is.null(`availableEnd`)) {
        if (!(is.numeric(`availableEnd`) && length(`availableEnd`) == 1)) {
          stop(paste("Error! Invalid data for `availableEnd`. Must be an integer:", `availableEnd`))
        }
        self$`availableEnd` <- `availableEnd`
      }
      if (!is.null(`color1`)) {
        if (!(is.character(`color1`) && length(`color1`) == 1)) {
          stop(paste("Error! Invalid data for `color1`. Must be a string:", `color1`))
        }
        self$`color1` <- `color1`
      }
      if (!is.null(`color2`)) {
        if (!(is.character(`color2`) && length(`color2`) == 1)) {
          stop(paste("Error! Invalid data for `color2`. Must be a string:", `color2`))
        }
        self$`color2` <- `color2`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return ParticipantResponse as a base R list.
    #' @examples
    #' # convert array of ParticipantResponse (x) to a data frame
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
    #' Convert ParticipantResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ParticipantResponseObject <- list()
      if (!is.null(self$`id`)) {
        ParticipantResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`account`)) {
        ParticipantResponseObject[["account"]] <-
          self$extractSimpleType(self$`account`)
      }
      if (!is.null(self$`availableStart`)) {
        ParticipantResponseObject[["availableStart"]] <-
          self$`availableStart`
      }
      if (!is.null(self$`availableEnd`)) {
        ParticipantResponseObject[["availableEnd"]] <-
          self$`availableEnd`
      }
      if (!is.null(self$`color1`)) {
        ParticipantResponseObject[["color1"]] <-
          self$`color1`
      }
      if (!is.null(self$`color2`)) {
        ParticipantResponseObject[["color2"]] <-
          self$`color2`
      }
      if (!is.null(self$`type`)) {
        ParticipantResponseObject[["type"]] <-
          self$`type`
      }
      return(ParticipantResponseObject)
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
    #' Deserialize JSON string into an instance of ParticipantResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ParticipantResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`account`)) {
        `account_object` <- AccountMiniResponse$new()
        `account_object`$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
        self$`account` <- `account_object`
      }
      if (!is.null(this_object$`availableStart`)) {
        self$`availableStart` <- this_object$`availableStart`
      }
      if (!is.null(this_object$`availableEnd`)) {
        self$`availableEnd` <- this_object$`availableEnd`
      }
      if (!is.null(this_object$`color1`)) {
        self$`color1` <- this_object$`color1`
      }
      if (!is.null(this_object$`color2`)) {
        self$`color2` <- this_object$`color2`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ParticipantResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ParticipantResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ParticipantResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`account` <- AccountMiniResponse$new()$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
      self$`availableStart` <- this_object$`availableStart`
      self$`availableEnd` <- this_object$`availableEnd`
      self$`color1` <- this_object$`color1`
      self$`color2` <- this_object$`color2`
      self$`type` <- this_object$`type`
      self
    },

    #' @description
    #' Validate JSON input with respect to ParticipantResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ParticipantResponse
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
# ParticipantResponse$unlock()
#
## Below is an example to define the print function
# ParticipantResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ParticipantResponse$lock()

