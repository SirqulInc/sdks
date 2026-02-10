#' Create a new AnswerResponse
#'
#' @description
#' AnswerResponse Class
#'
#' @docType class
#' @title AnswerResponse
#' @description AnswerResponse Class
#' @format An \code{R6Class} generator object
#' @field answerId  integer [optional]
#' @field answer  character [optional]
#' @field correct  character [optional]
#' @field image  \link{AssetShortResponse} [optional]
#' @field videoURL  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnswerResponse <- R6::R6Class(
  "AnswerResponse",
  public = list(
    `answerId` = NULL,
    `answer` = NULL,
    `correct` = NULL,
    `image` = NULL,
    `videoURL` = NULL,

    #' @description
    #' Initialize a new AnswerResponse class.
    #'
    #' @param answerId answerId
    #' @param answer answer
    #' @param correct correct
    #' @param image image
    #' @param videoURL videoURL
    #' @param ... Other optional arguments.
    initialize = function(`answerId` = NULL, `answer` = NULL, `correct` = NULL, `image` = NULL, `videoURL` = NULL, ...) {
      if (!is.null(`answerId`)) {
        if (!(is.numeric(`answerId`) && length(`answerId`) == 1)) {
          stop(paste("Error! Invalid data for `answerId`. Must be an integer:", `answerId`))
        }
        self$`answerId` <- `answerId`
      }
      if (!is.null(`answer`)) {
        if (!(is.character(`answer`) && length(`answer`) == 1)) {
          stop(paste("Error! Invalid data for `answer`. Must be a string:", `answer`))
        }
        self$`answer` <- `answer`
      }
      if (!is.null(`correct`)) {
        if (!(is.logical(`correct`) && length(`correct`) == 1)) {
          stop(paste("Error! Invalid data for `correct`. Must be a boolean:", `correct`))
        }
        self$`correct` <- `correct`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`videoURL`)) {
        if (!(is.character(`videoURL`) && length(`videoURL`) == 1)) {
          stop(paste("Error! Invalid data for `videoURL`. Must be a string:", `videoURL`))
        }
        self$`videoURL` <- `videoURL`
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
    #' @return AnswerResponse as a base R list.
    #' @examples
    #' # convert array of AnswerResponse (x) to a data frame
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
    #' Convert AnswerResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnswerResponseObject <- list()
      if (!is.null(self$`answerId`)) {
        AnswerResponseObject[["answerId"]] <-
          self$`answerId`
      }
      if (!is.null(self$`answer`)) {
        AnswerResponseObject[["answer"]] <-
          self$`answer`
      }
      if (!is.null(self$`correct`)) {
        AnswerResponseObject[["correct"]] <-
          self$`correct`
      }
      if (!is.null(self$`image`)) {
        AnswerResponseObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`videoURL`)) {
        AnswerResponseObject[["videoURL"]] <-
          self$`videoURL`
      }
      return(AnswerResponseObject)
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
    #' Deserialize JSON string into an instance of AnswerResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnswerResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`answerId`)) {
        self$`answerId` <- this_object$`answerId`
      }
      if (!is.null(this_object$`answer`)) {
        self$`answer` <- this_object$`answer`
      }
      if (!is.null(this_object$`correct`)) {
        self$`correct` <- this_object$`correct`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- AssetShortResponse$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`videoURL`)) {
        self$`videoURL` <- this_object$`videoURL`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnswerResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnswerResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnswerResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`answerId` <- this_object$`answerId`
      self$`answer` <- this_object$`answer`
      self$`correct` <- this_object$`correct`
      self$`image` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`videoURL` <- this_object$`videoURL`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnswerResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnswerResponse
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
# AnswerResponse$unlock()
#
## Below is an example to define the print function
# AnswerResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnswerResponse$lock()

