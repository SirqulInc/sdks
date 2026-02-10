#' Create a new RegionResponse
#'
#' @description
#' RegionResponse Class
#'
#' @docType class
#' @title RegionResponse
#' @description RegionResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field shortName  character [optional]
#' @field fullName  character [optional]
#' @field parent  \link{RegionResponse} [optional]
#' @field children  list(\link{RegionResponse}) [optional]
#' @field postalCodes  list(\link{PostalCodeResponse}) [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field active  character [optional]
#' @field root  character [optional]
#' @field regionClass  character [optional]
#' @field start  integer [optional]
#' @field end  integer [optional]
#' @field polygon  character [optional]
#' @field metaData  character [optional]
#' @field distance  numeric [optional]
#' @field versionCode  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RegionResponse <- R6::R6Class(
  "RegionResponse",
  public = list(
    `id` = NULL,
    `shortName` = NULL,
    `fullName` = NULL,
    `parent` = NULL,
    `children` = NULL,
    `postalCodes` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `active` = NULL,
    `root` = NULL,
    `regionClass` = NULL,
    `start` = NULL,
    `end` = NULL,
    `polygon` = NULL,
    `metaData` = NULL,
    `distance` = NULL,
    `versionCode` = NULL,

    #' @description
    #' Initialize a new RegionResponse class.
    #'
    #' @param id id
    #' @param shortName shortName
    #' @param fullName fullName
    #' @param parent parent
    #' @param children children
    #' @param postalCodes postalCodes
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param active active
    #' @param root root
    #' @param regionClass regionClass
    #' @param start start
    #' @param end end
    #' @param polygon polygon
    #' @param metaData metaData
    #' @param distance distance
    #' @param versionCode versionCode
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `shortName` = NULL, `fullName` = NULL, `parent` = NULL, `children` = NULL, `postalCodes` = NULL, `latitude` = NULL, `longitude` = NULL, `active` = NULL, `root` = NULL, `regionClass` = NULL, `start` = NULL, `end` = NULL, `polygon` = NULL, `metaData` = NULL, `distance` = NULL, `versionCode` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`shortName`)) {
        if (!(is.character(`shortName`) && length(`shortName`) == 1)) {
          stop(paste("Error! Invalid data for `shortName`. Must be a string:", `shortName`))
        }
        self$`shortName` <- `shortName`
      }
      if (!is.null(`fullName`)) {
        if (!(is.character(`fullName`) && length(`fullName`) == 1)) {
          stop(paste("Error! Invalid data for `fullName`. Must be a string:", `fullName`))
        }
        self$`fullName` <- `fullName`
      }
      if (!is.null(`parent`)) {
        stopifnot(R6::is.R6(`parent`))
        self$`parent` <- `parent`
      }
      if (!is.null(`children`)) {
        stopifnot(is.vector(`children`), length(`children`) != 0)
        sapply(`children`, function(x) stopifnot(R6::is.R6(x)))
        self$`children` <- `children`
      }
      if (!is.null(`postalCodes`)) {
        stopifnot(is.vector(`postalCodes`), length(`postalCodes`) != 0)
        sapply(`postalCodes`, function(x) stopifnot(R6::is.R6(x)))
        self$`postalCodes` <- `postalCodes`
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
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`root`)) {
        if (!(is.logical(`root`) && length(`root`) == 1)) {
          stop(paste("Error! Invalid data for `root`. Must be a boolean:", `root`))
        }
        self$`root` <- `root`
      }
      if (!is.null(`regionClass`)) {
        if (!(is.character(`regionClass`) && length(`regionClass`) == 1)) {
          stop(paste("Error! Invalid data for `regionClass`. Must be a string:", `regionClass`))
        }
        self$`regionClass` <- `regionClass`
      }
      if (!is.null(`start`)) {
        if (!(is.numeric(`start`) && length(`start`) == 1)) {
          stop(paste("Error! Invalid data for `start`. Must be an integer:", `start`))
        }
        self$`start` <- `start`
      }
      if (!is.null(`end`)) {
        if (!(is.numeric(`end`) && length(`end`) == 1)) {
          stop(paste("Error! Invalid data for `end`. Must be an integer:", `end`))
        }
        self$`end` <- `end`
      }
      if (!is.null(`polygon`)) {
        if (!(is.character(`polygon`) && length(`polygon`) == 1)) {
          stop(paste("Error! Invalid data for `polygon`. Must be a string:", `polygon`))
        }
        self$`polygon` <- `polygon`
      }
      if (!is.null(`metaData`)) {
        if (!(is.character(`metaData`) && length(`metaData`) == 1)) {
          stop(paste("Error! Invalid data for `metaData`. Must be a string:", `metaData`))
        }
        self$`metaData` <- `metaData`
      }
      if (!is.null(`distance`)) {
        if (!(is.numeric(`distance`) && length(`distance`) == 1)) {
          stop(paste("Error! Invalid data for `distance`. Must be a number:", `distance`))
        }
        self$`distance` <- `distance`
      }
      if (!is.null(`versionCode`)) {
        if (!(is.numeric(`versionCode`) && length(`versionCode`) == 1)) {
          stop(paste("Error! Invalid data for `versionCode`. Must be an integer:", `versionCode`))
        }
        self$`versionCode` <- `versionCode`
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
    #' @return RegionResponse as a base R list.
    #' @examples
    #' # convert array of RegionResponse (x) to a data frame
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
    #' Convert RegionResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RegionResponseObject <- list()
      if (!is.null(self$`id`)) {
        RegionResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`shortName`)) {
        RegionResponseObject[["shortName"]] <-
          self$`shortName`
      }
      if (!is.null(self$`fullName`)) {
        RegionResponseObject[["fullName"]] <-
          self$`fullName`
      }
      if (!is.null(self$`parent`)) {
        RegionResponseObject[["parent"]] <-
          self$extractSimpleType(self$`parent`)
      }
      if (!is.null(self$`children`)) {
        RegionResponseObject[["children"]] <-
          self$extractSimpleType(self$`children`)
      }
      if (!is.null(self$`postalCodes`)) {
        RegionResponseObject[["postalCodes"]] <-
          self$extractSimpleType(self$`postalCodes`)
      }
      if (!is.null(self$`latitude`)) {
        RegionResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        RegionResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`active`)) {
        RegionResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`root`)) {
        RegionResponseObject[["root"]] <-
          self$`root`
      }
      if (!is.null(self$`regionClass`)) {
        RegionResponseObject[["regionClass"]] <-
          self$`regionClass`
      }
      if (!is.null(self$`start`)) {
        RegionResponseObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        RegionResponseObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`polygon`)) {
        RegionResponseObject[["polygon"]] <-
          self$`polygon`
      }
      if (!is.null(self$`metaData`)) {
        RegionResponseObject[["metaData"]] <-
          self$`metaData`
      }
      if (!is.null(self$`distance`)) {
        RegionResponseObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`versionCode`)) {
        RegionResponseObject[["versionCode"]] <-
          self$`versionCode`
      }
      return(RegionResponseObject)
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
    #' Deserialize JSON string into an instance of RegionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RegionResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`shortName`)) {
        self$`shortName` <- this_object$`shortName`
      }
      if (!is.null(this_object$`fullName`)) {
        self$`fullName` <- this_object$`fullName`
      }
      if (!is.null(this_object$`parent`)) {
        `parent_object` <- RegionResponse$new()
        `parent_object`$fromJSON(jsonlite::toJSON(this_object$`parent`, auto_unbox = TRUE, digits = NA))
        self$`parent` <- `parent_object`
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[RegionResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`postalCodes`)) {
        self$`postalCodes` <- ApiClient$new()$deserializeObj(this_object$`postalCodes`, "array[PostalCodeResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`root`)) {
        self$`root` <- this_object$`root`
      }
      if (!is.null(this_object$`regionClass`)) {
        self$`regionClass` <- this_object$`regionClass`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`polygon`)) {
        self$`polygon` <- this_object$`polygon`
      }
      if (!is.null(this_object$`metaData`)) {
        self$`metaData` <- this_object$`metaData`
      }
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      if (!is.null(this_object$`versionCode`)) {
        self$`versionCode` <- this_object$`versionCode`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RegionResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RegionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RegionResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`shortName` <- this_object$`shortName`
      self$`fullName` <- this_object$`fullName`
      self$`parent` <- RegionResponse$new()$fromJSON(jsonlite::toJSON(this_object$`parent`, auto_unbox = TRUE, digits = NA))
      self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[RegionResponse]", loadNamespace("openapi"))
      self$`postalCodes` <- ApiClient$new()$deserializeObj(this_object$`postalCodes`, "array[PostalCodeResponse]", loadNamespace("openapi"))
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`active` <- this_object$`active`
      self$`root` <- this_object$`root`
      self$`regionClass` <- this_object$`regionClass`
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`polygon` <- this_object$`polygon`
      self$`metaData` <- this_object$`metaData`
      self$`distance` <- this_object$`distance`
      self$`versionCode` <- this_object$`versionCode`
      self
    },

    #' @description
    #' Validate JSON input with respect to RegionResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RegionResponse
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
# RegionResponse$unlock()
#
## Below is an example to define the print function
# RegionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RegionResponse$lock()

