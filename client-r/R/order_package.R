#' Create a new OrderPackage
#'
#' @description
#' OrderPackage Class
#'
#' @docType class
#' @title OrderPackage
#' @description OrderPackage Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field PackageTypeName  character [optional]
#' @field PackageCount  integer [optional]
#' @field CubicFeet  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderPackage <- R6::R6Class(
  "OrderPackage",
  public = list(
    `valid` = NULL,
    `PackageTypeName` = NULL,
    `PackageCount` = NULL,
    `CubicFeet` = NULL,

    #' @description
    #' Initialize a new OrderPackage class.
    #'
    #' @param valid valid
    #' @param PackageTypeName PackageTypeName
    #' @param PackageCount PackageCount
    #' @param CubicFeet CubicFeet
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `PackageTypeName` = NULL, `PackageCount` = NULL, `CubicFeet` = NULL, ...) {
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`PackageTypeName`)) {
        if (!(is.character(`PackageTypeName`) && length(`PackageTypeName`) == 1)) {
          stop(paste("Error! Invalid data for `PackageTypeName`. Must be a string:", `PackageTypeName`))
        }
        self$`PackageTypeName` <- `PackageTypeName`
      }
      if (!is.null(`PackageCount`)) {
        if (!(is.numeric(`PackageCount`) && length(`PackageCount`) == 1)) {
          stop(paste("Error! Invalid data for `PackageCount`. Must be an integer:", `PackageCount`))
        }
        self$`PackageCount` <- `PackageCount`
      }
      if (!is.null(`CubicFeet`)) {
        if (!(is.numeric(`CubicFeet`) && length(`CubicFeet`) == 1)) {
          stop(paste("Error! Invalid data for `CubicFeet`. Must be a number:", `CubicFeet`))
        }
        self$`CubicFeet` <- `CubicFeet`
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
    #' @return OrderPackage as a base R list.
    #' @examples
    #' # convert array of OrderPackage (x) to a data frame
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
    #' Convert OrderPackage to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrderPackageObject <- list()
      if (!is.null(self$`valid`)) {
        OrderPackageObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`PackageTypeName`)) {
        OrderPackageObject[["PackageTypeName"]] <-
          self$`PackageTypeName`
      }
      if (!is.null(self$`PackageCount`)) {
        OrderPackageObject[["PackageCount"]] <-
          self$`PackageCount`
      }
      if (!is.null(self$`CubicFeet`)) {
        OrderPackageObject[["CubicFeet"]] <-
          self$`CubicFeet`
      }
      return(OrderPackageObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OrderPackage
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderPackage
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`PackageTypeName`)) {
        self$`PackageTypeName` <- this_object$`PackageTypeName`
      }
      if (!is.null(this_object$`PackageCount`)) {
        self$`PackageCount` <- this_object$`PackageCount`
      }
      if (!is.null(this_object$`CubicFeet`)) {
        self$`CubicFeet` <- this_object$`CubicFeet`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrderPackage in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrderPackage
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderPackage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`PackageTypeName` <- this_object$`PackageTypeName`
      self$`PackageCount` <- this_object$`PackageCount`
      self$`CubicFeet` <- this_object$`CubicFeet`
      self
    },

    #' @description
    #' Validate JSON input with respect to OrderPackage and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrderPackage
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
# OrderPackage$unlock()
#
## Below is an example to define the print function
# OrderPackage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderPackage$lock()

