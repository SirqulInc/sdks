#' Create a new LoadShortResponse
#'
#' @description
#' LoadShortResponse Class
#'
#' @docType class
#' @title LoadShortResponse
#' @description LoadShortResponse Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field name  character [optional]
#' @field size  integer [optional]
#' @field loadingTime  integer [optional]
#' @field separatePayloads  character [optional]
#' @field pickup  \link{StopResponse} [optional]
#' @field dropoff  \link{StopResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LoadShortResponse <- R6::R6Class(
  "LoadShortResponse",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `size` = NULL,
    `loadingTime` = NULL,
    `separatePayloads` = NULL,
    `pickup` = NULL,
    `dropoff` = NULL,

    #' @description
    #' Initialize a new LoadShortResponse class.
    #'
    #' @param id id
    #' @param name name
    #' @param size size
    #' @param loadingTime loadingTime
    #' @param separatePayloads separatePayloads
    #' @param pickup pickup
    #' @param dropoff dropoff
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `size` = NULL, `loadingTime` = NULL, `separatePayloads` = NULL, `pickup` = NULL, `dropoff` = NULL, ...) {
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
      if (!is.null(`size`)) {
        if (!(is.numeric(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be an integer:", `size`))
        }
        self$`size` <- `size`
      }
      if (!is.null(`loadingTime`)) {
        if (!(is.numeric(`loadingTime`) && length(`loadingTime`) == 1)) {
          stop(paste("Error! Invalid data for `loadingTime`. Must be an integer:", `loadingTime`))
        }
        self$`loadingTime` <- `loadingTime`
      }
      if (!is.null(`separatePayloads`)) {
        if (!(is.logical(`separatePayloads`) && length(`separatePayloads`) == 1)) {
          stop(paste("Error! Invalid data for `separatePayloads`. Must be a boolean:", `separatePayloads`))
        }
        self$`separatePayloads` <- `separatePayloads`
      }
      if (!is.null(`pickup`)) {
        stopifnot(R6::is.R6(`pickup`))
        self$`pickup` <- `pickup`
      }
      if (!is.null(`dropoff`)) {
        stopifnot(R6::is.R6(`dropoff`))
        self$`dropoff` <- `dropoff`
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
    #' @return LoadShortResponse as a base R list.
    #' @examples
    #' # convert array of LoadShortResponse (x) to a data frame
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
    #' Convert LoadShortResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LoadShortResponseObject <- list()
      if (!is.null(self$`id`)) {
        LoadShortResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        LoadShortResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`size`)) {
        LoadShortResponseObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`loadingTime`)) {
        LoadShortResponseObject[["loadingTime"]] <-
          self$`loadingTime`
      }
      if (!is.null(self$`separatePayloads`)) {
        LoadShortResponseObject[["separatePayloads"]] <-
          self$`separatePayloads`
      }
      if (!is.null(self$`pickup`)) {
        LoadShortResponseObject[["pickup"]] <-
          self$extractSimpleType(self$`pickup`)
      }
      if (!is.null(self$`dropoff`)) {
        LoadShortResponseObject[["dropoff"]] <-
          self$extractSimpleType(self$`dropoff`)
      }
      return(LoadShortResponseObject)
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
    #' Deserialize JSON string into an instance of LoadShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of LoadShortResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
      }
      if (!is.null(this_object$`loadingTime`)) {
        self$`loadingTime` <- this_object$`loadingTime`
      }
      if (!is.null(this_object$`separatePayloads`)) {
        self$`separatePayloads` <- this_object$`separatePayloads`
      }
      if (!is.null(this_object$`pickup`)) {
        `pickup_object` <- StopResponse$new()
        `pickup_object`$fromJSON(jsonlite::toJSON(this_object$`pickup`, auto_unbox = TRUE, digits = NA))
        self$`pickup` <- `pickup_object`
      }
      if (!is.null(this_object$`dropoff`)) {
        `dropoff_object` <- StopResponse$new()
        `dropoff_object`$fromJSON(jsonlite::toJSON(this_object$`dropoff`, auto_unbox = TRUE, digits = NA))
        self$`dropoff` <- `dropoff_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LoadShortResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LoadShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of LoadShortResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`size` <- this_object$`size`
      self$`loadingTime` <- this_object$`loadingTime`
      self$`separatePayloads` <- this_object$`separatePayloads`
      self$`pickup` <- StopResponse$new()$fromJSON(jsonlite::toJSON(this_object$`pickup`, auto_unbox = TRUE, digits = NA))
      self$`dropoff` <- StopResponse$new()$fromJSON(jsonlite::toJSON(this_object$`dropoff`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to LoadShortResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LoadShortResponse
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
# LoadShortResponse$unlock()
#
## Below is an example to define the print function
# LoadShortResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LoadShortResponse$lock()

