#' Create a new OrsonAiTopicResponse
#'
#' @description
#' OrsonAiTopicResponse Class
#'
#' @docType class
#' @title OrsonAiTopicResponse
#' @description OrsonAiTopicResponse Class
#' @format An \code{R6Class} generator object
#' @field word  character [optional]
#' @field score  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrsonAiTopicResponse <- R6::R6Class(
  "OrsonAiTopicResponse",
  public = list(
    `word` = NULL,
    `score` = NULL,

    #' @description
    #' Initialize a new OrsonAiTopicResponse class.
    #'
    #' @param word word
    #' @param score score
    #' @param ... Other optional arguments.
    initialize = function(`word` = NULL, `score` = NULL, ...) {
      if (!is.null(`word`)) {
        if (!(is.character(`word`) && length(`word`) == 1)) {
          stop(paste("Error! Invalid data for `word`. Must be a string:", `word`))
        }
        self$`word` <- `word`
      }
      if (!is.null(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be a number:", `score`))
        }
        self$`score` <- `score`
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
    #' @return OrsonAiTopicResponse as a base R list.
    #' @examples
    #' # convert array of OrsonAiTopicResponse (x) to a data frame
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
    #' Convert OrsonAiTopicResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrsonAiTopicResponseObject <- list()
      if (!is.null(self$`word`)) {
        OrsonAiTopicResponseObject[["word"]] <-
          self$`word`
      }
      if (!is.null(self$`score`)) {
        OrsonAiTopicResponseObject[["score"]] <-
          self$`score`
      }
      return(OrsonAiTopicResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonAiTopicResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiTopicResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`word`)) {
        self$`word` <- this_object$`word`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrsonAiTopicResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonAiTopicResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiTopicResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`word` <- this_object$`word`
      self$`score` <- this_object$`score`
      self
    },

    #' @description
    #' Validate JSON input with respect to OrsonAiTopicResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrsonAiTopicResponse
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
# OrsonAiTopicResponse$unlock()
#
## Below is an example to define the print function
# OrsonAiTopicResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrsonAiTopicResponse$lock()

