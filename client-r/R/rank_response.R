#' Create a new RankResponse
#'
#' @description
#' RankResponse Class
#'
#' @docType class
#' @title RankResponse
#' @description RankResponse Class
#' @format An \code{R6Class} generator object
#' @field owner  \link{AccountShortResponse} [optional]
#' @field rank  character [optional]
#' @field scoreValue  integer [optional]
#' @field timeValue  integer [optional]
#' @field countValue  integer [optional]
#' @field updated  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RankResponse <- R6::R6Class(
  "RankResponse",
  public = list(
    `owner` = NULL,
    `rank` = NULL,
    `scoreValue` = NULL,
    `timeValue` = NULL,
    `countValue` = NULL,
    `updated` = NULL,

    #' @description
    #' Initialize a new RankResponse class.
    #'
    #' @param owner owner
    #' @param rank rank
    #' @param scoreValue scoreValue
    #' @param timeValue timeValue
    #' @param countValue countValue
    #' @param updated updated
    #' @param ... Other optional arguments.
    initialize = function(`owner` = NULL, `rank` = NULL, `scoreValue` = NULL, `timeValue` = NULL, `countValue` = NULL, `updated` = NULL, ...) {
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`rank`)) {
        if (!(is.character(`rank`) && length(`rank`) == 1)) {
          stop(paste("Error! Invalid data for `rank`. Must be a string:", `rank`))
        }
        self$`rank` <- `rank`
      }
      if (!is.null(`scoreValue`)) {
        if (!(is.numeric(`scoreValue`) && length(`scoreValue`) == 1)) {
          stop(paste("Error! Invalid data for `scoreValue`. Must be an integer:", `scoreValue`))
        }
        self$`scoreValue` <- `scoreValue`
      }
      if (!is.null(`timeValue`)) {
        if (!(is.numeric(`timeValue`) && length(`timeValue`) == 1)) {
          stop(paste("Error! Invalid data for `timeValue`. Must be an integer:", `timeValue`))
        }
        self$`timeValue` <- `timeValue`
      }
      if (!is.null(`countValue`)) {
        if (!(is.numeric(`countValue`) && length(`countValue`) == 1)) {
          stop(paste("Error! Invalid data for `countValue`. Must be an integer:", `countValue`))
        }
        self$`countValue` <- `countValue`
      }
      if (!is.null(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
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
    #' @return RankResponse as a base R list.
    #' @examples
    #' # convert array of RankResponse (x) to a data frame
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
    #' Convert RankResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RankResponseObject <- list()
      if (!is.null(self$`owner`)) {
        RankResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`rank`)) {
        RankResponseObject[["rank"]] <-
          self$`rank`
      }
      if (!is.null(self$`scoreValue`)) {
        RankResponseObject[["scoreValue"]] <-
          self$`scoreValue`
      }
      if (!is.null(self$`timeValue`)) {
        RankResponseObject[["timeValue"]] <-
          self$`timeValue`
      }
      if (!is.null(self$`countValue`)) {
        RankResponseObject[["countValue"]] <-
          self$`countValue`
      }
      if (!is.null(self$`updated`)) {
        RankResponseObject[["updated"]] <-
          self$`updated`
      }
      return(RankResponseObject)
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
    #' Deserialize JSON string into an instance of RankResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RankResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- AccountShortResponse$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`rank`)) {
        self$`rank` <- this_object$`rank`
      }
      if (!is.null(this_object$`scoreValue`)) {
        self$`scoreValue` <- this_object$`scoreValue`
      }
      if (!is.null(this_object$`timeValue`)) {
        self$`timeValue` <- this_object$`timeValue`
      }
      if (!is.null(this_object$`countValue`)) {
        self$`countValue` <- this_object$`countValue`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RankResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RankResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RankResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`rank` <- this_object$`rank`
      self$`scoreValue` <- this_object$`scoreValue`
      self$`timeValue` <- this_object$`timeValue`
      self$`countValue` <- this_object$`countValue`
      self$`updated` <- this_object$`updated`
      self
    },

    #' @description
    #' Validate JSON input with respect to RankResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RankResponse
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
# RankResponse$unlock()
#
## Below is an example to define the print function
# RankResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RankResponse$lock()

