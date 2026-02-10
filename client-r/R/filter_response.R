#' Create a new FilterResponse
#'
#' @description
#' FilterResponse Class
#'
#' @docType class
#' @title FilterResponse
#' @description FilterResponse Class
#' @format An \code{R6Class} generator object
#' @field filterId  integer [optional]
#' @field name  character [optional]
#' @field display  character [optional]
#' @field subFilterCount  integer [optional]
#' @field parentId  integer [optional]
#' @field description  character [optional]
#' @field active  character [optional]
#' @field externalId  character [optional]
#' @field externalType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FilterResponse <- R6::R6Class(
  "FilterResponse",
  public = list(
    `filterId` = NULL,
    `name` = NULL,
    `display` = NULL,
    `subFilterCount` = NULL,
    `parentId` = NULL,
    `description` = NULL,
    `active` = NULL,
    `externalId` = NULL,
    `externalType` = NULL,

    #' @description
    #' Initialize a new FilterResponse class.
    #'
    #' @param filterId filterId
    #' @param name name
    #' @param display display
    #' @param subFilterCount subFilterCount
    #' @param parentId parentId
    #' @param description description
    #' @param active active
    #' @param externalId externalId
    #' @param externalType externalType
    #' @param ... Other optional arguments.
    initialize = function(`filterId` = NULL, `name` = NULL, `display` = NULL, `subFilterCount` = NULL, `parentId` = NULL, `description` = NULL, `active` = NULL, `externalId` = NULL, `externalType` = NULL, ...) {
      if (!is.null(`filterId`)) {
        if (!(is.numeric(`filterId`) && length(`filterId`) == 1)) {
          stop(paste("Error! Invalid data for `filterId`. Must be an integer:", `filterId`))
        }
        self$`filterId` <- `filterId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`subFilterCount`)) {
        if (!(is.numeric(`subFilterCount`) && length(`subFilterCount`) == 1)) {
          stop(paste("Error! Invalid data for `subFilterCount`. Must be an integer:", `subFilterCount`))
        }
        self$`subFilterCount` <- `subFilterCount`
      }
      if (!is.null(`parentId`)) {
        if (!(is.numeric(`parentId`) && length(`parentId`) == 1)) {
          stop(paste("Error! Invalid data for `parentId`. Must be an integer:", `parentId`))
        }
        self$`parentId` <- `parentId`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`externalType`)) {
        if (!(is.character(`externalType`) && length(`externalType`) == 1)) {
          stop(paste("Error! Invalid data for `externalType`. Must be a string:", `externalType`))
        }
        self$`externalType` <- `externalType`
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
    #' @return FilterResponse as a base R list.
    #' @examples
    #' # convert array of FilterResponse (x) to a data frame
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
    #' Convert FilterResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FilterResponseObject <- list()
      if (!is.null(self$`filterId`)) {
        FilterResponseObject[["filterId"]] <-
          self$`filterId`
      }
      if (!is.null(self$`name`)) {
        FilterResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`display`)) {
        FilterResponseObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`subFilterCount`)) {
        FilterResponseObject[["subFilterCount"]] <-
          self$`subFilterCount`
      }
      if (!is.null(self$`parentId`)) {
        FilterResponseObject[["parentId"]] <-
          self$`parentId`
      }
      if (!is.null(self$`description`)) {
        FilterResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`active`)) {
        FilterResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`externalId`)) {
        FilterResponseObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`externalType`)) {
        FilterResponseObject[["externalType"]] <-
          self$`externalType`
      }
      return(FilterResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FilterResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FilterResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`filterId`)) {
        self$`filterId` <- this_object$`filterId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`subFilterCount`)) {
        self$`subFilterCount` <- this_object$`subFilterCount`
      }
      if (!is.null(this_object$`parentId`)) {
        self$`parentId` <- this_object$`parentId`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`externalType`)) {
        self$`externalType` <- this_object$`externalType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FilterResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FilterResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FilterResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`filterId` <- this_object$`filterId`
      self$`name` <- this_object$`name`
      self$`display` <- this_object$`display`
      self$`subFilterCount` <- this_object$`subFilterCount`
      self$`parentId` <- this_object$`parentId`
      self$`description` <- this_object$`description`
      self$`active` <- this_object$`active`
      self$`externalId` <- this_object$`externalId`
      self$`externalType` <- this_object$`externalType`
      self
    },

    #' @description
    #' Validate JSON input with respect to FilterResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FilterResponse
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
# FilterResponse$unlock()
#
## Below is an example to define the print function
# FilterResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FilterResponse$lock()

