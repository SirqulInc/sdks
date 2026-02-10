#' Create a new MissionListResponse
#'
#' @description
#' MissionListResponse Class
#'
#' @docType class
#' @title MissionListResponse
#' @description MissionListResponse Class
#' @format An \code{R6Class} generator object
#' @field start  integer [optional]
#' @field limit  integer [optional]
#' @field countTotal  integer [optional]
#' @field items  list(\link{MissionResponse}) [optional]
#' @field hasMoreResults  character [optional]
#' @field count  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MissionListResponse <- R6::R6Class(
  "MissionListResponse",
  public = list(
    `start` = NULL,
    `limit` = NULL,
    `countTotal` = NULL,
    `items` = NULL,
    `hasMoreResults` = NULL,
    `count` = NULL,

    #' @description
    #' Initialize a new MissionListResponse class.
    #'
    #' @param start start
    #' @param limit limit
    #' @param countTotal countTotal
    #' @param items items
    #' @param hasMoreResults hasMoreResults
    #' @param count count
    #' @param ... Other optional arguments.
    initialize = function(`start` = NULL, `limit` = NULL, `countTotal` = NULL, `items` = NULL, `hasMoreResults` = NULL, `count` = NULL, ...) {
      if (!is.null(`start`)) {
        if (!(is.numeric(`start`) && length(`start`) == 1)) {
          stop(paste("Error! Invalid data for `start`. Must be an integer:", `start`))
        }
        self$`start` <- `start`
      }
      if (!is.null(`limit`)) {
        if (!(is.numeric(`limit`) && length(`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", `limit`))
        }
        self$`limit` <- `limit`
      }
      if (!is.null(`countTotal`)) {
        if (!(is.numeric(`countTotal`) && length(`countTotal`) == 1)) {
          stop(paste("Error! Invalid data for `countTotal`. Must be an integer:", `countTotal`))
        }
        self$`countTotal` <- `countTotal`
      }
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!is.null(`hasMoreResults`)) {
        if (!(is.logical(`hasMoreResults`) && length(`hasMoreResults`) == 1)) {
          stop(paste("Error! Invalid data for `hasMoreResults`. Must be a boolean:", `hasMoreResults`))
        }
        self$`hasMoreResults` <- `hasMoreResults`
      }
      if (!is.null(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
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
    #' @return MissionListResponse as a base R list.
    #' @examples
    #' # convert array of MissionListResponse (x) to a data frame
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
    #' Convert MissionListResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MissionListResponseObject <- list()
      if (!is.null(self$`start`)) {
        MissionListResponseObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`limit`)) {
        MissionListResponseObject[["limit"]] <-
          self$`limit`
      }
      if (!is.null(self$`countTotal`)) {
        MissionListResponseObject[["countTotal"]] <-
          self$`countTotal`
      }
      if (!is.null(self$`items`)) {
        MissionListResponseObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`hasMoreResults`)) {
        MissionListResponseObject[["hasMoreResults"]] <-
          self$`hasMoreResults`
      }
      if (!is.null(self$`count`)) {
        MissionListResponseObject[["count"]] <-
          self$`count`
      }
      return(MissionListResponseObject)
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
    #' Deserialize JSON string into an instance of MissionListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MissionListResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`limit`)) {
        self$`limit` <- this_object$`limit`
      }
      if (!is.null(this_object$`countTotal`)) {
        self$`countTotal` <- this_object$`countTotal`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[MissionResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`hasMoreResults`)) {
        self$`hasMoreResults` <- this_object$`hasMoreResults`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MissionListResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MissionListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MissionListResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`start` <- this_object$`start`
      self$`limit` <- this_object$`limit`
      self$`countTotal` <- this_object$`countTotal`
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[MissionResponse]", loadNamespace("openapi"))
      self$`hasMoreResults` <- this_object$`hasMoreResults`
      self$`count` <- this_object$`count`
      self
    },

    #' @description
    #' Validate JSON input with respect to MissionListResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MissionListResponse
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
# MissionListResponse$unlock()
#
## Below is an example to define the print function
# MissionListResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MissionListResponse$lock()

