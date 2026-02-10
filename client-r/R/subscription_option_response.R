#' Create a new SubscriptionOptionResponse
#'
#' @description
#' SubscriptionOptionResponse Class
#'
#' @docType class
#' @title SubscriptionOptionResponse
#' @description SubscriptionOptionResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field name  character [optional]
#' @field price  numeric [optional]
#' @field quantity  integer [optional]
#' @field threshold  integer [optional]
#' @field visible  character [optional]
#' @field optionType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SubscriptionOptionResponse <- R6::R6Class(
  "SubscriptionOptionResponse",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `price` = NULL,
    `quantity` = NULL,
    `threshold` = NULL,
    `visible` = NULL,
    `optionType` = NULL,

    #' @description
    #' Initialize a new SubscriptionOptionResponse class.
    #'
    #' @param id id
    #' @param name name
    #' @param price price
    #' @param quantity quantity
    #' @param threshold threshold
    #' @param visible visible
    #' @param optionType optionType
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `price` = NULL, `quantity` = NULL, `threshold` = NULL, `visible` = NULL, `optionType` = NULL, ...) {
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
      if (!is.null(`price`)) {
        if (!(is.numeric(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be a number:", `price`))
        }
        self$`price` <- `price`
      }
      if (!is.null(`quantity`)) {
        if (!(is.numeric(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", `quantity`))
        }
        self$`quantity` <- `quantity`
      }
      if (!is.null(`threshold`)) {
        if (!(is.numeric(`threshold`) && length(`threshold`) == 1)) {
          stop(paste("Error! Invalid data for `threshold`. Must be an integer:", `threshold`))
        }
        self$`threshold` <- `threshold`
      }
      if (!is.null(`visible`)) {
        if (!(is.logical(`visible`) && length(`visible`) == 1)) {
          stop(paste("Error! Invalid data for `visible`. Must be a boolean:", `visible`))
        }
        self$`visible` <- `visible`
      }
      if (!is.null(`optionType`)) {
        if (!(is.character(`optionType`) && length(`optionType`) == 1)) {
          stop(paste("Error! Invalid data for `optionType`. Must be a string:", `optionType`))
        }
        self$`optionType` <- `optionType`
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
    #' @return SubscriptionOptionResponse as a base R list.
    #' @examples
    #' # convert array of SubscriptionOptionResponse (x) to a data frame
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
    #' Convert SubscriptionOptionResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SubscriptionOptionResponseObject <- list()
      if (!is.null(self$`id`)) {
        SubscriptionOptionResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        SubscriptionOptionResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`price`)) {
        SubscriptionOptionResponseObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`quantity`)) {
        SubscriptionOptionResponseObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`threshold`)) {
        SubscriptionOptionResponseObject[["threshold"]] <-
          self$`threshold`
      }
      if (!is.null(self$`visible`)) {
        SubscriptionOptionResponseObject[["visible"]] <-
          self$`visible`
      }
      if (!is.null(self$`optionType`)) {
        SubscriptionOptionResponseObject[["optionType"]] <-
          self$`optionType`
      }
      return(SubscriptionOptionResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SubscriptionOptionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionOptionResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      if (!is.null(this_object$`threshold`)) {
        self$`threshold` <- this_object$`threshold`
      }
      if (!is.null(this_object$`visible`)) {
        self$`visible` <- this_object$`visible`
      }
      if (!is.null(this_object$`optionType`)) {
        self$`optionType` <- this_object$`optionType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SubscriptionOptionResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SubscriptionOptionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionOptionResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`price` <- this_object$`price`
      self$`quantity` <- this_object$`quantity`
      self$`threshold` <- this_object$`threshold`
      self$`visible` <- this_object$`visible`
      self$`optionType` <- this_object$`optionType`
      self
    },

    #' @description
    #' Validate JSON input with respect to SubscriptionOptionResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SubscriptionOptionResponse
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
# SubscriptionOptionResponse$unlock()
#
## Below is an example to define the print function
# SubscriptionOptionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SubscriptionOptionResponse$lock()

