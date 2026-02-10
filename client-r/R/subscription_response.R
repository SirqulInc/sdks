#' Create a new SubscriptionResponse
#'
#' @description
#' SubscriptionResponse Class
#'
#' @docType class
#' @title SubscriptionResponse
#' @description SubscriptionResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field subscriptionPlan  \link{SubscriptionPlanResponse} [optional]
#' @field promoCode  character [optional]
#' @field active  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SubscriptionResponse <- R6::R6Class(
  "SubscriptionResponse",
  public = list(
    `id` = NULL,
    `subscriptionPlan` = NULL,
    `promoCode` = NULL,
    `active` = NULL,

    #' @description
    #' Initialize a new SubscriptionResponse class.
    #'
    #' @param id id
    #' @param subscriptionPlan subscriptionPlan
    #' @param promoCode promoCode
    #' @param active active
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `subscriptionPlan` = NULL, `promoCode` = NULL, `active` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`subscriptionPlan`)) {
        stopifnot(R6::is.R6(`subscriptionPlan`))
        self$`subscriptionPlan` <- `subscriptionPlan`
      }
      if (!is.null(`promoCode`)) {
        if (!(is.character(`promoCode`) && length(`promoCode`) == 1)) {
          stop(paste("Error! Invalid data for `promoCode`. Must be a string:", `promoCode`))
        }
        self$`promoCode` <- `promoCode`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
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
    #' @return SubscriptionResponse as a base R list.
    #' @examples
    #' # convert array of SubscriptionResponse (x) to a data frame
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
    #' Convert SubscriptionResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SubscriptionResponseObject <- list()
      if (!is.null(self$`id`)) {
        SubscriptionResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`subscriptionPlan`)) {
        SubscriptionResponseObject[["subscriptionPlan"]] <-
          self$extractSimpleType(self$`subscriptionPlan`)
      }
      if (!is.null(self$`promoCode`)) {
        SubscriptionResponseObject[["promoCode"]] <-
          self$`promoCode`
      }
      if (!is.null(self$`active`)) {
        SubscriptionResponseObject[["active"]] <-
          self$`active`
      }
      return(SubscriptionResponseObject)
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
    #' Deserialize JSON string into an instance of SubscriptionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`subscriptionPlan`)) {
        `subscriptionplan_object` <- SubscriptionPlanResponse$new()
        `subscriptionplan_object`$fromJSON(jsonlite::toJSON(this_object$`subscriptionPlan`, auto_unbox = TRUE, digits = NA))
        self$`subscriptionPlan` <- `subscriptionplan_object`
      }
      if (!is.null(this_object$`promoCode`)) {
        self$`promoCode` <- this_object$`promoCode`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SubscriptionResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SubscriptionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`subscriptionPlan` <- SubscriptionPlanResponse$new()$fromJSON(jsonlite::toJSON(this_object$`subscriptionPlan`, auto_unbox = TRUE, digits = NA))
      self$`promoCode` <- this_object$`promoCode`
      self$`active` <- this_object$`active`
      self
    },

    #' @description
    #' Validate JSON input with respect to SubscriptionResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SubscriptionResponse
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
# SubscriptionResponse$unlock()
#
## Below is an example to define the print function
# SubscriptionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SubscriptionResponse$lock()

