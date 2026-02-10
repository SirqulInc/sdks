#' Create a new ReportTypeResponse
#'
#' @description
#' ReportTypeResponse Class
#'
#' @docType class
#' @title ReportTypeResponse
#' @description ReportTypeResponse Class
#' @format An \code{R6Class} generator object
#' @field type  character [optional]
#' @field javaType  character [optional]
#' @field label  character [optional]
#' @field number  character [optional]
#' @field majorAxis  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReportTypeResponse <- R6::R6Class(
  "ReportTypeResponse",
  public = list(
    `type` = NULL,
    `javaType` = NULL,
    `label` = NULL,
    `number` = NULL,
    `majorAxis` = NULL,

    #' @description
    #' Initialize a new ReportTypeResponse class.
    #'
    #' @param type type
    #' @param javaType javaType
    #' @param label label
    #' @param number number
    #' @param majorAxis majorAxis
    #' @param ... Other optional arguments.
    initialize = function(`type` = NULL, `javaType` = NULL, `label` = NULL, `number` = NULL, `majorAxis` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`javaType`)) {
        if (!(is.character(`javaType`) && length(`javaType`) == 1)) {
          stop(paste("Error! Invalid data for `javaType`. Must be a string:", `javaType`))
        }
        self$`javaType` <- `javaType`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`number`)) {
        if (!(is.logical(`number`) && length(`number`) == 1)) {
          stop(paste("Error! Invalid data for `number`. Must be a boolean:", `number`))
        }
        self$`number` <- `number`
      }
      if (!is.null(`majorAxis`)) {
        if (!(is.logical(`majorAxis`) && length(`majorAxis`) == 1)) {
          stop(paste("Error! Invalid data for `majorAxis`. Must be a boolean:", `majorAxis`))
        }
        self$`majorAxis` <- `majorAxis`
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
    #' @return ReportTypeResponse as a base R list.
    #' @examples
    #' # convert array of ReportTypeResponse (x) to a data frame
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
    #' Convert ReportTypeResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReportTypeResponseObject <- list()
      if (!is.null(self$`type`)) {
        ReportTypeResponseObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`javaType`)) {
        ReportTypeResponseObject[["javaType"]] <-
          self$`javaType`
      }
      if (!is.null(self$`label`)) {
        ReportTypeResponseObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`number`)) {
        ReportTypeResponseObject[["number"]] <-
          self$`number`
      }
      if (!is.null(self$`majorAxis`)) {
        ReportTypeResponseObject[["majorAxis"]] <-
          self$`majorAxis`
      }
      return(ReportTypeResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ReportTypeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportTypeResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`javaType`)) {
        self$`javaType` <- this_object$`javaType`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`number`)) {
        self$`number` <- this_object$`number`
      }
      if (!is.null(this_object$`majorAxis`)) {
        self$`majorAxis` <- this_object$`majorAxis`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReportTypeResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReportTypeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportTypeResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type` <- this_object$`type`
      self$`javaType` <- this_object$`javaType`
      self$`label` <- this_object$`label`
      self$`number` <- this_object$`number`
      self$`majorAxis` <- this_object$`majorAxis`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReportTypeResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReportTypeResponse
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
# ReportTypeResponse$unlock()
#
## Below is an example to define the print function
# ReportTypeResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReportTypeResponse$lock()

