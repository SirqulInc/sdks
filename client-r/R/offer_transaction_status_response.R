#' Create a new OfferTransactionStatusResponse
#'
#' @description
#' OfferTransactionStatusResponse Class
#'
#' @docType class
#' @title OfferTransactionStatusResponse
#' @description OfferTransactionStatusResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field code  integer [optional]
#' @field role  character [optional]
#' @field applications  list(\link{ApplicationShortResponse}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OfferTransactionStatusResponse <- R6::R6Class(
  "OfferTransactionStatusResponse",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `name` = NULL,
    `description` = NULL,
    `code` = NULL,
    `role` = NULL,
    `applications` = NULL,

    #' @description
    #' Initialize a new OfferTransactionStatusResponse class.
    #'
    #' @param id id
    #' @param active active
    #' @param name name
    #' @param description description
    #' @param code code
    #' @param role role
    #' @param applications applications
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `name` = NULL, `description` = NULL, `code` = NULL, `role` = NULL, `applications` = NULL, ...) {
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
      if (!is.null(`code`)) {
        if (!(is.numeric(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be an integer:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`role`)) {
        if (!(is.character(`role`) && length(`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", `role`))
        }
        self$`role` <- `role`
      }
      if (!is.null(`applications`)) {
        stopifnot(is.vector(`applications`), length(`applications`) != 0)
        sapply(`applications`, function(x) stopifnot(R6::is.R6(x)))
        self$`applications` <- `applications`
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
    #' @return OfferTransactionStatusResponse as a base R list.
    #' @examples
    #' # convert array of OfferTransactionStatusResponse (x) to a data frame
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
    #' Convert OfferTransactionStatusResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OfferTransactionStatusResponseObject <- list()
      if (!is.null(self$`id`)) {
        OfferTransactionStatusResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        OfferTransactionStatusResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`name`)) {
        OfferTransactionStatusResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        OfferTransactionStatusResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`code`)) {
        OfferTransactionStatusResponseObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`role`)) {
        OfferTransactionStatusResponseObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`applications`)) {
        OfferTransactionStatusResponseObject[["applications"]] <-
          self$extractSimpleType(self$`applications`)
      }
      return(OfferTransactionStatusResponseObject)
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
    #' Deserialize JSON string into an instance of OfferTransactionStatusResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OfferTransactionStatusResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`role`)) {
        self$`role` <- this_object$`role`
      }
      if (!is.null(this_object$`applications`)) {
        self$`applications` <- ApiClient$new()$deserializeObj(this_object$`applications`, "array[ApplicationShortResponse]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OfferTransactionStatusResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OfferTransactionStatusResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OfferTransactionStatusResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`code` <- this_object$`code`
      self$`role` <- this_object$`role`
      self$`applications` <- ApiClient$new()$deserializeObj(this_object$`applications`, "array[ApplicationShortResponse]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to OfferTransactionStatusResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OfferTransactionStatusResponse
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
# OfferTransactionStatusResponse$unlock()
#
## Below is an example to define the print function
# OfferTransactionStatusResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OfferTransactionStatusResponse$lock()

