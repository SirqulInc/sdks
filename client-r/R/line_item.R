#' Create a new LineItem
#'
#' @description
#' LineItem Class
#'
#' @docType class
#' @title LineItem
#' @description LineItem Class
#' @format An \code{R6Class} generator object
#' @field description  character [optional]
#' @field item  character [optional]
#' @field pricePerItem  integer [optional]
#' @field total  integer [optional]
#' @field tax  integer [optional]
#' @field quantity  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LineItem <- R6::R6Class(
  "LineItem",
  public = list(
    `description` = NULL,
    `item` = NULL,
    `pricePerItem` = NULL,
    `total` = NULL,
    `tax` = NULL,
    `quantity` = NULL,

    #' @description
    #' Initialize a new LineItem class.
    #'
    #' @param description description
    #' @param item item
    #' @param pricePerItem pricePerItem
    #' @param total total
    #' @param tax tax
    #' @param quantity quantity
    #' @param ... Other optional arguments.
    initialize = function(`description` = NULL, `item` = NULL, `pricePerItem` = NULL, `total` = NULL, `tax` = NULL, `quantity` = NULL, ...) {
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`item`)) {
        if (!(is.character(`item`) && length(`item`) == 1)) {
          stop(paste("Error! Invalid data for `item`. Must be a string:", `item`))
        }
        self$`item` <- `item`
      }
      if (!is.null(`pricePerItem`)) {
        if (!(is.numeric(`pricePerItem`) && length(`pricePerItem`) == 1)) {
          stop(paste("Error! Invalid data for `pricePerItem`. Must be an integer:", `pricePerItem`))
        }
        self$`pricePerItem` <- `pricePerItem`
      }
      if (!is.null(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`tax`)) {
        if (!(is.numeric(`tax`) && length(`tax`) == 1)) {
          stop(paste("Error! Invalid data for `tax`. Must be an integer:", `tax`))
        }
        self$`tax` <- `tax`
      }
      if (!is.null(`quantity`)) {
        if (!(is.numeric(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", `quantity`))
        }
        self$`quantity` <- `quantity`
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
    #' @return LineItem as a base R list.
    #' @examples
    #' # convert array of LineItem (x) to a data frame
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
    #' Convert LineItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LineItemObject <- list()
      if (!is.null(self$`description`)) {
        LineItemObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`item`)) {
        LineItemObject[["item"]] <-
          self$`item`
      }
      if (!is.null(self$`pricePerItem`)) {
        LineItemObject[["pricePerItem"]] <-
          self$`pricePerItem`
      }
      if (!is.null(self$`total`)) {
        LineItemObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`tax`)) {
        LineItemObject[["tax"]] <-
          self$`tax`
      }
      if (!is.null(self$`quantity`)) {
        LineItemObject[["quantity"]] <-
          self$`quantity`
      }
      return(LineItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LineItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of LineItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`item`)) {
        self$`item` <- this_object$`item`
      }
      if (!is.null(this_object$`pricePerItem`)) {
        self$`pricePerItem` <- this_object$`pricePerItem`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`tax`)) {
        self$`tax` <- this_object$`tax`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LineItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LineItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of LineItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`item` <- this_object$`item`
      self$`pricePerItem` <- this_object$`pricePerItem`
      self$`total` <- this_object$`total`
      self$`tax` <- this_object$`tax`
      self$`quantity` <- this_object$`quantity`
      self
    },

    #' @description
    #' Validate JSON input with respect to LineItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LineItem
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
# LineItem$unlock()
#
## Below is an example to define the print function
# LineItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LineItem$lock()

