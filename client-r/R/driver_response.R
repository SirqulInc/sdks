#' Create a new DriverResponse
#'
#' @description
#' DriverResponse Class
#'
#' @docType class
#' @title DriverResponse
#' @description DriverResponse Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field name  character [optional]
#' @field depot  \link{LocationResponse} [optional]
#' @field availability  list(\link{AvailabilityResponse}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DriverResponse <- R6::R6Class(
  "DriverResponse",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `depot` = NULL,
    `availability` = NULL,

    #' @description
    #' Initialize a new DriverResponse class.
    #'
    #' @param id id
    #' @param name name
    #' @param depot depot
    #' @param availability availability
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `depot` = NULL, `availability` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`depot`)) {
        stopifnot(R6::is.R6(`depot`))
        self$`depot` <- `depot`
      }
      if (!is.null(`availability`)) {
        stopifnot(is.vector(`availability`), length(`availability`) != 0)
        sapply(`availability`, function(x) stopifnot(R6::is.R6(x)))
        self$`availability` <- `availability`
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
    #' @return DriverResponse as a base R list.
    #' @examples
    #' # convert array of DriverResponse (x) to a data frame
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
    #' Convert DriverResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DriverResponseObject <- list()
      if (!is.null(self$`id`)) {
        DriverResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        DriverResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`depot`)) {
        DriverResponseObject[["depot"]] <-
          self$extractSimpleType(self$`depot`)
      }
      if (!is.null(self$`availability`)) {
        DriverResponseObject[["availability"]] <-
          self$extractSimpleType(self$`availability`)
      }
      return(DriverResponseObject)
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
    #' Deserialize JSON string into an instance of DriverResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DriverResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`depot`)) {
        `depot_object` <- LocationResponse$new()
        `depot_object`$fromJSON(jsonlite::toJSON(this_object$`depot`, auto_unbox = TRUE, digits = NA))
        self$`depot` <- `depot_object`
      }
      if (!is.null(this_object$`availability`)) {
        self$`availability` <- ApiClient$new()$deserializeObj(this_object$`availability`, "array[AvailabilityResponse]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DriverResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DriverResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DriverResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`depot` <- LocationResponse$new()$fromJSON(jsonlite::toJSON(this_object$`depot`, auto_unbox = TRUE, digits = NA))
      self$`availability` <- ApiClient$new()$deserializeObj(this_object$`availability`, "array[AvailabilityResponse]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to DriverResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DriverResponse
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
# DriverResponse$unlock()
#
## Below is an example to define the print function
# DriverResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DriverResponse$lock()

