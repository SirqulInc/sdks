#' Create a new Invoice
#'
#' @description
#' Invoice Class
#'
#' @docType class
#' @title Invoice
#' @description Invoice Class
#' @format An \code{R6Class} generator object
#' @field location  character [optional]
#' @field tax  integer [optional]
#' @field total  integer [optional]
#' @field lineItems  list(\link{LineItem}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Invoice <- R6::R6Class(
  "Invoice",
  public = list(
    `location` = NULL,
    `tax` = NULL,
    `total` = NULL,
    `lineItems` = NULL,

    #' @description
    #' Initialize a new Invoice class.
    #'
    #' @param location location
    #' @param tax tax
    #' @param total total
    #' @param lineItems lineItems
    #' @param ... Other optional arguments.
    initialize = function(`location` = NULL, `tax` = NULL, `total` = NULL, `lineItems` = NULL, ...) {
      if (!is.null(`location`)) {
        if (!(is.character(`location`) && length(`location`) == 1)) {
          stop(paste("Error! Invalid data for `location`. Must be a string:", `location`))
        }
        self$`location` <- `location`
      }
      if (!is.null(`tax`)) {
        if (!(is.numeric(`tax`) && length(`tax`) == 1)) {
          stop(paste("Error! Invalid data for `tax`. Must be an integer:", `tax`))
        }
        self$`tax` <- `tax`
      }
      if (!is.null(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`lineItems`)) {
        stopifnot(is.vector(`lineItems`), length(`lineItems`) != 0)
        sapply(`lineItems`, function(x) stopifnot(R6::is.R6(x)))
        self$`lineItems` <- `lineItems`
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
    #' @return Invoice as a base R list.
    #' @examples
    #' # convert array of Invoice (x) to a data frame
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
    #' Convert Invoice to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      InvoiceObject <- list()
      if (!is.null(self$`location`)) {
        InvoiceObject[["location"]] <-
          self$`location`
      }
      if (!is.null(self$`tax`)) {
        InvoiceObject[["tax"]] <-
          self$`tax`
      }
      if (!is.null(self$`total`)) {
        InvoiceObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`lineItems`)) {
        InvoiceObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      return(InvoiceObject)
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
    #' Deserialize JSON string into an instance of Invoice
    #'
    #' @param input_json the JSON input
    #' @return the instance of Invoice
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`location`)) {
        self$`location` <- this_object$`location`
      }
      if (!is.null(this_object$`tax`)) {
        self$`tax` <- this_object$`tax`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`lineItems`)) {
        self$`lineItems` <- ApiClient$new()$deserializeObj(this_object$`lineItems`, "array[LineItem]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Invoice in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Invoice
    #'
    #' @param input_json the JSON input
    #' @return the instance of Invoice
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`location` <- this_object$`location`
      self$`tax` <- this_object$`tax`
      self$`total` <- this_object$`total`
      self$`lineItems` <- ApiClient$new()$deserializeObj(this_object$`lineItems`, "array[LineItem]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Invoice and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Invoice
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
# Invoice$unlock()
#
## Below is an example to define the print function
# Invoice$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Invoice$lock()

