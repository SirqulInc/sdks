#' Create a new Participant
#'
#' @description
#' Participant Class
#'
#' @docType class
#' @title Participant
#' @description Participant Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field account  \link{Account} [optional]
#' @field availableStart  character [optional]
#' @field availableEnd  character [optional]
#' @field color1  character [optional]
#' @field color2  character [optional]
#' @field type  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Participant <- R6::R6Class(
  "Participant",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `account` = NULL,
    `availableStart` = NULL,
    `availableEnd` = NULL,
    `color1` = NULL,
    `color2` = NULL,
    `type` = NULL,

    #' @description
    #' Initialize a new Participant class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param account account
    #' @param availableStart availableStart
    #' @param availableEnd availableEnd
    #' @param color1 color1
    #' @param color2 color2
    #' @param type type
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `account` = NULL, `availableStart` = NULL, `availableEnd` = NULL, `color1` = NULL, `color2` = NULL, `type` = NULL, ...) {
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
      if (!is.null(`account`)) {
        stopifnot(R6::is.R6(`account`))
        self$`account` <- `account`
      }
      if (!is.null(`availableStart`)) {
        if (!is.character(`availableStart`)) {
          stop(paste("Error! Invalid data for `availableStart`. Must be a string:", `availableStart`))
        }
        self$`availableStart` <- `availableStart`
      }
      if (!is.null(`availableEnd`)) {
        if (!is.character(`availableEnd`)) {
          stop(paste("Error! Invalid data for `availableEnd`. Must be a string:", `availableEnd`))
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
        if (!(`type` %in% c("TEAM", "LEAGUE", "SPORT"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"TEAM\", \"LEAGUE\", \"SPORT\".", sep = ""))
        }
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
    #' @return Participant as a base R list.
    #' @examples
    #' # convert array of Participant (x) to a data frame
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
    #' Convert Participant to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ParticipantObject <- list()
      if (!is.null(self$`id`)) {
        ParticipantObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ParticipantObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ParticipantObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`account`)) {
        ParticipantObject[["account"]] <-
          self$extractSimpleType(self$`account`)
      }
      if (!is.null(self$`availableStart`)) {
        ParticipantObject[["availableStart"]] <-
          self$`availableStart`
      }
      if (!is.null(self$`availableEnd`)) {
        ParticipantObject[["availableEnd"]] <-
          self$`availableEnd`
      }
      if (!is.null(self$`color1`)) {
        ParticipantObject[["color1"]] <-
          self$`color1`
      }
      if (!is.null(self$`color2`)) {
        ParticipantObject[["color2"]] <-
          self$`color2`
      }
      if (!is.null(self$`type`)) {
        ParticipantObject[["type"]] <-
          self$`type`
      }
      return(ParticipantObject)
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
    #' Deserialize JSON string into an instance of Participant
    #'
    #' @param input_json the JSON input
    #' @return the instance of Participant
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
      if (!is.null(this_object$`account`)) {
        `account_object` <- Account$new()
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
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("TEAM", "LEAGUE", "SPORT"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"TEAM\", \"LEAGUE\", \"SPORT\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Participant in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Participant
    #'
    #' @param input_json the JSON input
    #' @return the instance of Participant
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`account` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
      self$`availableStart` <- this_object$`availableStart`
      self$`availableEnd` <- this_object$`availableEnd`
      self$`color1` <- this_object$`color1`
      self$`color2` <- this_object$`color2`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("TEAM", "LEAGUE", "SPORT"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"TEAM\", \"LEAGUE\", \"SPORT\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self
    },

    #' @description
    #' Validate JSON input with respect to Participant and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Participant
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
# Participant$unlock()
#
## Below is an example to define the print function
# Participant$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Participant$lock()

