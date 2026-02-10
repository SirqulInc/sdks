#' Create a new Node
#'
#' @description
#' Node Class
#'
#' @docType class
#' @title Node
#' @description Node Class
#' @format An \code{R6Class} generator object
#' @field x  integer [optional]
#' @field y  integer [optional]
#' @field z  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Node <- R6::R6Class(
  "Node",
  public = list(
    `x` = NULL,
    `y` = NULL,
    `z` = NULL,

    #' @description
    #' Initialize a new Node class.
    #'
    #' @param x x
    #' @param y y
    #' @param z z
    #' @param ... Other optional arguments.
    initialize = function(`x` = NULL, `y` = NULL, `z` = NULL, ...) {
      if (!is.null(`x`)) {
        if (!(is.numeric(`x`) && length(`x`) == 1)) {
          stop(paste("Error! Invalid data for `x`. Must be an integer:", `x`))
        }
        self$`x` <- `x`
      }
      if (!is.null(`y`)) {
        if (!(is.numeric(`y`) && length(`y`) == 1)) {
          stop(paste("Error! Invalid data for `y`. Must be an integer:", `y`))
        }
        self$`y` <- `y`
      }
      if (!is.null(`z`)) {
        if (!(is.numeric(`z`) && length(`z`) == 1)) {
          stop(paste("Error! Invalid data for `z`. Must be an integer:", `z`))
        }
        self$`z` <- `z`
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
    #' @return Node as a base R list.
    #' @examples
    #' # convert array of Node (x) to a data frame
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
    #' Convert Node to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NodeObject <- list()
      if (!is.null(self$`x`)) {
        NodeObject[["x"]] <-
          self$`x`
      }
      if (!is.null(self$`y`)) {
        NodeObject[["y"]] <-
          self$`y`
      }
      if (!is.null(self$`z`)) {
        NodeObject[["z"]] <-
          self$`z`
      }
      return(NodeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Node
    #'
    #' @param input_json the JSON input
    #' @return the instance of Node
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`x`)) {
        self$`x` <- this_object$`x`
      }
      if (!is.null(this_object$`y`)) {
        self$`y` <- this_object$`y`
      }
      if (!is.null(this_object$`z`)) {
        self$`z` <- this_object$`z`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Node in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Node
    #'
    #' @param input_json the JSON input
    #' @return the instance of Node
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`x` <- this_object$`x`
      self$`y` <- this_object$`y`
      self$`z` <- this_object$`z`
      self
    },

    #' @description
    #' Validate JSON input with respect to Node and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Node
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
# Node$unlock()
#
## Below is an example to define the print function
# Node$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Node$lock()

