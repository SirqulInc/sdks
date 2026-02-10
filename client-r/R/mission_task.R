#' Create a new MissionTask
#'
#' @description
#' MissionTask Class
#'
#' @docType class
#' @title MissionTask
#' @description MissionTask Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field format  character [optional]
#' @field suffix  character [optional]
#' @field taskType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MissionTask <- R6::R6Class(
  "MissionTask",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `name` = NULL,
    `description` = NULL,
    `format` = NULL,
    `suffix` = NULL,
    `taskType` = NULL,

    #' @description
    #' Initialize a new MissionTask class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param name name
    #' @param description description
    #' @param format format
    #' @param suffix suffix
    #' @param taskType taskType
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `name` = NULL, `description` = NULL, `format` = NULL, `suffix` = NULL, `taskType` = NULL, ...) {
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
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`format`)) {
        if (!(is.character(`format`) && length(`format`) == 1)) {
          stop(paste("Error! Invalid data for `format`. Must be a string:", `format`))
        }
        self$`format` <- `format`
      }
      if (!is.null(`suffix`)) {
        if (!(is.character(`suffix`) && length(`suffix`) == 1)) {
          stop(paste("Error! Invalid data for `suffix`. Must be a string:", `suffix`))
        }
        self$`suffix` <- `suffix`
      }
      if (!is.null(`taskType`)) {
        if (!(`taskType` %in% c("PHOTO", "VOTE", "ASK", "ANSWER", "GROUP", "INVITE", "OFFER", "AD", "CUSTOM", "GAME"))) {
          stop(paste("Error! \"", `taskType`, "\" cannot be assigned to `taskType`. Must be \"PHOTO\", \"VOTE\", \"ASK\", \"ANSWER\", \"GROUP\", \"INVITE\", \"OFFER\", \"AD\", \"CUSTOM\", \"GAME\".", sep = ""))
        }
        if (!(is.character(`taskType`) && length(`taskType`) == 1)) {
          stop(paste("Error! Invalid data for `taskType`. Must be a string:", `taskType`))
        }
        self$`taskType` <- `taskType`
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
    #' @return MissionTask as a base R list.
    #' @examples
    #' # convert array of MissionTask (x) to a data frame
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
    #' Convert MissionTask to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MissionTaskObject <- list()
      if (!is.null(self$`id`)) {
        MissionTaskObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        MissionTaskObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        MissionTaskObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`name`)) {
        MissionTaskObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        MissionTaskObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`format`)) {
        MissionTaskObject[["format"]] <-
          self$`format`
      }
      if (!is.null(self$`suffix`)) {
        MissionTaskObject[["suffix"]] <-
          self$`suffix`
      }
      if (!is.null(self$`taskType`)) {
        MissionTaskObject[["taskType"]] <-
          self$`taskType`
      }
      return(MissionTaskObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MissionTask
    #'
    #' @param input_json the JSON input
    #' @return the instance of MissionTask
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`format`)) {
        self$`format` <- this_object$`format`
      }
      if (!is.null(this_object$`suffix`)) {
        self$`suffix` <- this_object$`suffix`
      }
      if (!is.null(this_object$`taskType`)) {
        if (!is.null(this_object$`taskType`) && !(this_object$`taskType` %in% c("PHOTO", "VOTE", "ASK", "ANSWER", "GROUP", "INVITE", "OFFER", "AD", "CUSTOM", "GAME"))) {
          stop(paste("Error! \"", this_object$`taskType`, "\" cannot be assigned to `taskType`. Must be \"PHOTO\", \"VOTE\", \"ASK\", \"ANSWER\", \"GROUP\", \"INVITE\", \"OFFER\", \"AD\", \"CUSTOM\", \"GAME\".", sep = ""))
        }
        self$`taskType` <- this_object$`taskType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MissionTask in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MissionTask
    #'
    #' @param input_json the JSON input
    #' @return the instance of MissionTask
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`format` <- this_object$`format`
      self$`suffix` <- this_object$`suffix`
      if (!is.null(this_object$`taskType`) && !(this_object$`taskType` %in% c("PHOTO", "VOTE", "ASK", "ANSWER", "GROUP", "INVITE", "OFFER", "AD", "CUSTOM", "GAME"))) {
        stop(paste("Error! \"", this_object$`taskType`, "\" cannot be assigned to `taskType`. Must be \"PHOTO\", \"VOTE\", \"ASK\", \"ANSWER\", \"GROUP\", \"INVITE\", \"OFFER\", \"AD\", \"CUSTOM\", \"GAME\".", sep = ""))
      }
      self$`taskType` <- this_object$`taskType`
      self
    },

    #' @description
    #' Validate JSON input with respect to MissionTask and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MissionTask
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
# MissionTask$unlock()
#
## Below is an example to define the print function
# MissionTask$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MissionTask$lock()

