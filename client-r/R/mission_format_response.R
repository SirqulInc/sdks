#' Create a new MissionFormatResponse
#'
#' @description
#' MissionFormatResponse Class
#'
#' @docType class
#' @title MissionFormatResponse
#' @description MissionFormatResponse Class
#' @format An \code{R6Class} generator object
#' @field missionFormatId  integer [optional]
#' @field formatType  character [optional]
#' @field active  character [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field format  character [optional]
#' @field suffix  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MissionFormatResponse <- R6::R6Class(
  "MissionFormatResponse",
  public = list(
    `missionFormatId` = NULL,
    `formatType` = NULL,
    `active` = NULL,
    `name` = NULL,
    `description` = NULL,
    `format` = NULL,
    `suffix` = NULL,

    #' @description
    #' Initialize a new MissionFormatResponse class.
    #'
    #' @param missionFormatId missionFormatId
    #' @param formatType formatType
    #' @param active active
    #' @param name name
    #' @param description description
    #' @param format format
    #' @param suffix suffix
    #' @param ... Other optional arguments.
    initialize = function(`missionFormatId` = NULL, `formatType` = NULL, `active` = NULL, `name` = NULL, `description` = NULL, `format` = NULL, `suffix` = NULL, ...) {
      if (!is.null(`missionFormatId`)) {
        if (!(is.numeric(`missionFormatId`) && length(`missionFormatId`) == 1)) {
          stop(paste("Error! Invalid data for `missionFormatId`. Must be an integer:", `missionFormatId`))
        }
        self$`missionFormatId` <- `missionFormatId`
      }
      if (!is.null(`formatType`)) {
        if (!(is.character(`formatType`) && length(`formatType`) == 1)) {
          stop(paste("Error! Invalid data for `formatType`. Must be a string:", `formatType`))
        }
        self$`formatType` <- `formatType`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
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
    #' @return MissionFormatResponse as a base R list.
    #' @examples
    #' # convert array of MissionFormatResponse (x) to a data frame
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
    #' Convert MissionFormatResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MissionFormatResponseObject <- list()
      if (!is.null(self$`missionFormatId`)) {
        MissionFormatResponseObject[["missionFormatId"]] <-
          self$`missionFormatId`
      }
      if (!is.null(self$`formatType`)) {
        MissionFormatResponseObject[["formatType"]] <-
          self$`formatType`
      }
      if (!is.null(self$`active`)) {
        MissionFormatResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`name`)) {
        MissionFormatResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        MissionFormatResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`format`)) {
        MissionFormatResponseObject[["format"]] <-
          self$`format`
      }
      if (!is.null(self$`suffix`)) {
        MissionFormatResponseObject[["suffix"]] <-
          self$`suffix`
      }
      return(MissionFormatResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MissionFormatResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MissionFormatResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`missionFormatId`)) {
        self$`missionFormatId` <- this_object$`missionFormatId`
      }
      if (!is.null(this_object$`formatType`)) {
        self$`formatType` <- this_object$`formatType`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MissionFormatResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MissionFormatResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MissionFormatResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`missionFormatId` <- this_object$`missionFormatId`
      self$`formatType` <- this_object$`formatType`
      self$`active` <- this_object$`active`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`format` <- this_object$`format`
      self$`suffix` <- this_object$`suffix`
      self
    },

    #' @description
    #' Validate JSON input with respect to MissionFormatResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MissionFormatResponse
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
# MissionFormatResponse$unlock()
#
## Below is an example to define the print function
# MissionFormatResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MissionFormatResponse$lock()

