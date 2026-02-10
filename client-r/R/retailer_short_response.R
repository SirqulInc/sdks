#' Create a new RetailerShortResponse
#'
#' @description
#' RetailerShortResponse Class
#'
#' @docType class
#' @title RetailerShortResponse
#' @description RetailerShortResponse Class
#' @format An \code{R6Class} generator object
#' @field retailerId  integer [optional]
#' @field name  character [optional]
#' @field facebookUrl  character [optional]
#' @field twitterUrl  character [optional]
#' @field active  character [optional]
#' @field contact  \link{ContactInfoResponse} [optional]
#' @field logo  \link{AssetShortResponse} [optional]
#' @field picture1  \link{AssetShortResponse} [optional]
#' @field picture2  \link{AssetShortResponse} [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field visibility  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RetailerShortResponse <- R6::R6Class(
  "RetailerShortResponse",
  public = list(
    `retailerId` = NULL,
    `name` = NULL,
    `facebookUrl` = NULL,
    `twitterUrl` = NULL,
    `active` = NULL,
    `contact` = NULL,
    `logo` = NULL,
    `picture1` = NULL,
    `picture2` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `visibility` = NULL,

    #' @description
    #' Initialize a new RetailerShortResponse class.
    #'
    #' @param retailerId retailerId
    #' @param name name
    #' @param facebookUrl facebookUrl
    #' @param twitterUrl twitterUrl
    #' @param active active
    #' @param contact contact
    #' @param logo logo
    #' @param picture1 picture1
    #' @param picture2 picture2
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param visibility visibility
    #' @param ... Other optional arguments.
    initialize = function(`retailerId` = NULL, `name` = NULL, `facebookUrl` = NULL, `twitterUrl` = NULL, `active` = NULL, `contact` = NULL, `logo` = NULL, `picture1` = NULL, `picture2` = NULL, `latitude` = NULL, `longitude` = NULL, `visibility` = NULL, ...) {
      if (!is.null(`retailerId`)) {
        if (!(is.numeric(`retailerId`) && length(`retailerId`) == 1)) {
          stop(paste("Error! Invalid data for `retailerId`. Must be an integer:", `retailerId`))
        }
        self$`retailerId` <- `retailerId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`facebookUrl`)) {
        if (!(is.character(`facebookUrl`) && length(`facebookUrl`) == 1)) {
          stop(paste("Error! Invalid data for `facebookUrl`. Must be a string:", `facebookUrl`))
        }
        self$`facebookUrl` <- `facebookUrl`
      }
      if (!is.null(`twitterUrl`)) {
        if (!(is.character(`twitterUrl`) && length(`twitterUrl`) == 1)) {
          stop(paste("Error! Invalid data for `twitterUrl`. Must be a string:", `twitterUrl`))
        }
        self$`twitterUrl` <- `twitterUrl`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`contact`)) {
        stopifnot(R6::is.R6(`contact`))
        self$`contact` <- `contact`
      }
      if (!is.null(`logo`)) {
        stopifnot(R6::is.R6(`logo`))
        self$`logo` <- `logo`
      }
      if (!is.null(`picture1`)) {
        stopifnot(R6::is.R6(`picture1`))
        self$`picture1` <- `picture1`
      }
      if (!is.null(`picture2`)) {
        stopifnot(R6::is.R6(`picture2`))
        self$`picture2` <- `picture2`
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
      if (!is.null(`visibility`)) {
        if (!(is.character(`visibility`) && length(`visibility`) == 1)) {
          stop(paste("Error! Invalid data for `visibility`. Must be a string:", `visibility`))
        }
        self$`visibility` <- `visibility`
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
    #' @return RetailerShortResponse as a base R list.
    #' @examples
    #' # convert array of RetailerShortResponse (x) to a data frame
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
    #' Convert RetailerShortResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RetailerShortResponseObject <- list()
      if (!is.null(self$`retailerId`)) {
        RetailerShortResponseObject[["retailerId"]] <-
          self$`retailerId`
      }
      if (!is.null(self$`name`)) {
        RetailerShortResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`facebookUrl`)) {
        RetailerShortResponseObject[["facebookUrl"]] <-
          self$`facebookUrl`
      }
      if (!is.null(self$`twitterUrl`)) {
        RetailerShortResponseObject[["twitterUrl"]] <-
          self$`twitterUrl`
      }
      if (!is.null(self$`active`)) {
        RetailerShortResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`contact`)) {
        RetailerShortResponseObject[["contact"]] <-
          self$extractSimpleType(self$`contact`)
      }
      if (!is.null(self$`logo`)) {
        RetailerShortResponseObject[["logo"]] <-
          self$extractSimpleType(self$`logo`)
      }
      if (!is.null(self$`picture1`)) {
        RetailerShortResponseObject[["picture1"]] <-
          self$extractSimpleType(self$`picture1`)
      }
      if (!is.null(self$`picture2`)) {
        RetailerShortResponseObject[["picture2"]] <-
          self$extractSimpleType(self$`picture2`)
      }
      if (!is.null(self$`latitude`)) {
        RetailerShortResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        RetailerShortResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`visibility`)) {
        RetailerShortResponseObject[["visibility"]] <-
          self$`visibility`
      }
      return(RetailerShortResponseObject)
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
    #' Deserialize JSON string into an instance of RetailerShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerShortResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`retailerId`)) {
        self$`retailerId` <- this_object$`retailerId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`facebookUrl`)) {
        self$`facebookUrl` <- this_object$`facebookUrl`
      }
      if (!is.null(this_object$`twitterUrl`)) {
        self$`twitterUrl` <- this_object$`twitterUrl`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`contact`)) {
        `contact_object` <- ContactInfoResponse$new()
        `contact_object`$fromJSON(jsonlite::toJSON(this_object$`contact`, auto_unbox = TRUE, digits = NA))
        self$`contact` <- `contact_object`
      }
      if (!is.null(this_object$`logo`)) {
        `logo_object` <- AssetShortResponse$new()
        `logo_object`$fromJSON(jsonlite::toJSON(this_object$`logo`, auto_unbox = TRUE, digits = NA))
        self$`logo` <- `logo_object`
      }
      if (!is.null(this_object$`picture1`)) {
        `picture1_object` <- AssetShortResponse$new()
        `picture1_object`$fromJSON(jsonlite::toJSON(this_object$`picture1`, auto_unbox = TRUE, digits = NA))
        self$`picture1` <- `picture1_object`
      }
      if (!is.null(this_object$`picture2`)) {
        `picture2_object` <- AssetShortResponse$new()
        `picture2_object`$fromJSON(jsonlite::toJSON(this_object$`picture2`, auto_unbox = TRUE, digits = NA))
        self$`picture2` <- `picture2_object`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`visibility`)) {
        self$`visibility` <- this_object$`visibility`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RetailerShortResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RetailerShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerShortResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`retailerId` <- this_object$`retailerId`
      self$`name` <- this_object$`name`
      self$`facebookUrl` <- this_object$`facebookUrl`
      self$`twitterUrl` <- this_object$`twitterUrl`
      self$`active` <- this_object$`active`
      self$`contact` <- ContactInfoResponse$new()$fromJSON(jsonlite::toJSON(this_object$`contact`, auto_unbox = TRUE, digits = NA))
      self$`logo` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`logo`, auto_unbox = TRUE, digits = NA))
      self$`picture1` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`picture1`, auto_unbox = TRUE, digits = NA))
      self$`picture2` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`picture2`, auto_unbox = TRUE, digits = NA))
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`visibility` <- this_object$`visibility`
      self
    },

    #' @description
    #' Validate JSON input with respect to RetailerShortResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RetailerShortResponse
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
# RetailerShortResponse$unlock()
#
## Below is an example to define the print function
# RetailerShortResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RetailerShortResponse$lock()

