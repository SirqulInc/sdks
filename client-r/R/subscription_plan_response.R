#' Create a new SubscriptionPlanResponse
#'
#' @description
#' SubscriptionPlanResponse Class
#'
#' @docType class
#' @title SubscriptionPlanResponse
#' @description SubscriptionPlanResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field options  list(\link{SubscriptionOptionResponse}) [optional]
#' @field price  numeric [optional]
#' @field promo  numeric [optional]
#' @field transactionFee  numeric [optional]
#' @field role  character [optional]
#' @field defaultPlan  character [optional]
#' @field visible  character [optional]
#' @field image  \link{AssetShortResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SubscriptionPlanResponse <- R6::R6Class(
  "SubscriptionPlanResponse",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `options` = NULL,
    `price` = NULL,
    `promo` = NULL,
    `transactionFee` = NULL,
    `role` = NULL,
    `defaultPlan` = NULL,
    `visible` = NULL,
    `image` = NULL,

    #' @description
    #' Initialize a new SubscriptionPlanResponse class.
    #'
    #' @param id id
    #' @param name name
    #' @param description description
    #' @param options options
    #' @param price price
    #' @param promo promo
    #' @param transactionFee transactionFee
    #' @param role role
    #' @param defaultPlan defaultPlan
    #' @param visible visible
    #' @param image image
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `description` = NULL, `options` = NULL, `price` = NULL, `promo` = NULL, `transactionFee` = NULL, `role` = NULL, `defaultPlan` = NULL, `visible` = NULL, `image` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
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
      if (!is.null(`options`)) {
        stopifnot(is.vector(`options`), length(`options`) != 0)
        sapply(`options`, function(x) stopifnot(R6::is.R6(x)))
        self$`options` <- `options`
      }
      if (!is.null(`price`)) {
        if (!(is.numeric(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be a number:", `price`))
        }
        self$`price` <- `price`
      }
      if (!is.null(`promo`)) {
        if (!(is.numeric(`promo`) && length(`promo`) == 1)) {
          stop(paste("Error! Invalid data for `promo`. Must be a number:", `promo`))
        }
        self$`promo` <- `promo`
      }
      if (!is.null(`transactionFee`)) {
        if (!(is.numeric(`transactionFee`) && length(`transactionFee`) == 1)) {
          stop(paste("Error! Invalid data for `transactionFee`. Must be a number:", `transactionFee`))
        }
        self$`transactionFee` <- `transactionFee`
      }
      if (!is.null(`role`)) {
        if (!(is.character(`role`) && length(`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", `role`))
        }
        self$`role` <- `role`
      }
      if (!is.null(`defaultPlan`)) {
        if (!(is.logical(`defaultPlan`) && length(`defaultPlan`) == 1)) {
          stop(paste("Error! Invalid data for `defaultPlan`. Must be a boolean:", `defaultPlan`))
        }
        self$`defaultPlan` <- `defaultPlan`
      }
      if (!is.null(`visible`)) {
        if (!(is.logical(`visible`) && length(`visible`) == 1)) {
          stop(paste("Error! Invalid data for `visible`. Must be a boolean:", `visible`))
        }
        self$`visible` <- `visible`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
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
    #' @return SubscriptionPlanResponse as a base R list.
    #' @examples
    #' # convert array of SubscriptionPlanResponse (x) to a data frame
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
    #' Convert SubscriptionPlanResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SubscriptionPlanResponseObject <- list()
      if (!is.null(self$`id`)) {
        SubscriptionPlanResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        SubscriptionPlanResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        SubscriptionPlanResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`options`)) {
        SubscriptionPlanResponseObject[["options"]] <-
          self$extractSimpleType(self$`options`)
      }
      if (!is.null(self$`price`)) {
        SubscriptionPlanResponseObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`promo`)) {
        SubscriptionPlanResponseObject[["promo"]] <-
          self$`promo`
      }
      if (!is.null(self$`transactionFee`)) {
        SubscriptionPlanResponseObject[["transactionFee"]] <-
          self$`transactionFee`
      }
      if (!is.null(self$`role`)) {
        SubscriptionPlanResponseObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`defaultPlan`)) {
        SubscriptionPlanResponseObject[["defaultPlan"]] <-
          self$`defaultPlan`
      }
      if (!is.null(self$`visible`)) {
        SubscriptionPlanResponseObject[["visible"]] <-
          self$`visible`
      }
      if (!is.null(self$`image`)) {
        SubscriptionPlanResponseObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      return(SubscriptionPlanResponseObject)
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
    #' Deserialize JSON string into an instance of SubscriptionPlanResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionPlanResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`options`)) {
        self$`options` <- ApiClient$new()$deserializeObj(this_object$`options`, "array[SubscriptionOptionResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`promo`)) {
        self$`promo` <- this_object$`promo`
      }
      if (!is.null(this_object$`transactionFee`)) {
        self$`transactionFee` <- this_object$`transactionFee`
      }
      if (!is.null(this_object$`role`)) {
        self$`role` <- this_object$`role`
      }
      if (!is.null(this_object$`defaultPlan`)) {
        self$`defaultPlan` <- this_object$`defaultPlan`
      }
      if (!is.null(this_object$`visible`)) {
        self$`visible` <- this_object$`visible`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- AssetShortResponse$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SubscriptionPlanResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SubscriptionPlanResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionPlanResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`options` <- ApiClient$new()$deserializeObj(this_object$`options`, "array[SubscriptionOptionResponse]", loadNamespace("openapi"))
      self$`price` <- this_object$`price`
      self$`promo` <- this_object$`promo`
      self$`transactionFee` <- this_object$`transactionFee`
      self$`role` <- this_object$`role`
      self$`defaultPlan` <- this_object$`defaultPlan`
      self$`visible` <- this_object$`visible`
      self$`image` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to SubscriptionPlanResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SubscriptionPlanResponse
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
# SubscriptionPlanResponse$unlock()
#
## Below is an example to define the print function
# SubscriptionPlanResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SubscriptionPlanResponse$lock()

