#' Create a new RatingResponse
#'
#' @description
#' RatingResponse Class
#'
#' @docType class
#' @title RatingResponse
#' @description RatingResponse Class
#' @format An \code{R6Class} generator object
#' @field ratingId  integer [optional]
#' @field ratingValue  integer [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field category  \link{CategoryResponse} [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RatingResponse <- R6::R6Class(
  "RatingResponse",
  public = list(
    `ratingId` = NULL,
    `ratingValue` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `category` = NULL,
    `owner` = NULL,

    #' @description
    #' Initialize a new RatingResponse class.
    #'
    #' @param ratingId ratingId
    #' @param ratingValue ratingValue
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param category category
    #' @param owner owner
    #' @param ... Other optional arguments.
    initialize = function(`ratingId` = NULL, `ratingValue` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `category` = NULL, `owner` = NULL, ...) {
      if (!is.null(`ratingId`)) {
        if (!(is.numeric(`ratingId`) && length(`ratingId`) == 1)) {
          stop(paste("Error! Invalid data for `ratingId`. Must be an integer:", `ratingId`))
        }
        self$`ratingId` <- `ratingId`
      }
      if (!is.null(`ratingValue`)) {
        if (!(is.numeric(`ratingValue`) && length(`ratingValue`) == 1)) {
          stop(paste("Error! Invalid data for `ratingValue`. Must be an integer:", `ratingValue`))
        }
        self$`ratingValue` <- `ratingValue`
      }
      if (!is.null(`latitude`)) {
        if (!(is.numeric(`latitude`) && length(`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", `latitude`))
        }
        self$`latitude` <- `latitude`
      }
      if (!is.null(`longitude`)) {
        if (!(is.numeric(`longitude`) && length(`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", `longitude`))
        }
        self$`longitude` <- `longitude`
      }
      if (!is.null(`locationDescription`)) {
        if (!(is.character(`locationDescription`) && length(`locationDescription`) == 1)) {
          stop(paste("Error! Invalid data for `locationDescription`. Must be a string:", `locationDescription`))
        }
        self$`locationDescription` <- `locationDescription`
      }
      if (!is.null(`category`)) {
        stopifnot(R6::is.R6(`category`))
        self$`category` <- `category`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
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
    #' @return RatingResponse as a base R list.
    #' @examples
    #' # convert array of RatingResponse (x) to a data frame
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
    #' Convert RatingResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RatingResponseObject <- list()
      if (!is.null(self$`ratingId`)) {
        RatingResponseObject[["ratingId"]] <-
          self$`ratingId`
      }
      if (!is.null(self$`ratingValue`)) {
        RatingResponseObject[["ratingValue"]] <-
          self$`ratingValue`
      }
      if (!is.null(self$`latitude`)) {
        RatingResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        RatingResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        RatingResponseObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`category`)) {
        RatingResponseObject[["category"]] <-
          self$extractSimpleType(self$`category`)
      }
      if (!is.null(self$`owner`)) {
        RatingResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      return(RatingResponseObject)
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
    #' Deserialize JSON string into an instance of RatingResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RatingResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ratingId`)) {
        self$`ratingId` <- this_object$`ratingId`
      }
      if (!is.null(this_object$`ratingValue`)) {
        self$`ratingValue` <- this_object$`ratingValue`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`locationDescription`)) {
        self$`locationDescription` <- this_object$`locationDescription`
      }
      if (!is.null(this_object$`category`)) {
        `category_object` <- CategoryResponse$new()
        `category_object`$fromJSON(jsonlite::toJSON(this_object$`category`, auto_unbox = TRUE, digits = NA))
        self$`category` <- `category_object`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- AccountShortResponse$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RatingResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RatingResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RatingResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ratingId` <- this_object$`ratingId`
      self$`ratingValue` <- this_object$`ratingValue`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`category` <- CategoryResponse$new()$fromJSON(jsonlite::toJSON(this_object$`category`, auto_unbox = TRUE, digits = NA))
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to RatingResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RatingResponse
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
# RatingResponse$unlock()
#
## Below is an example to define the print function
# RatingResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RatingResponse$lock()

