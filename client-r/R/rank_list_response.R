#' Create a new RankListResponse
#'
#' @description
#' RankListResponse Class
#'
#' @docType class
#' @title RankListResponse
#' @description RankListResponse Class
#' @format An \code{R6Class} generator object
#' @field items  list(\link{RankResponse}) [optional]
#' @field userRank  \link{RankResponse} [optional]
#' @field hasMoreResults  character [optional]
#' @field count  integer [optional]
#' @field rankType  character [optional]
#' @field app  character [optional]
#' @field sortField  character [optional]
#' @field leaderboardMode  character [optional]
#' @field start  integer [optional]
#' @field limit  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RankListResponse <- R6::R6Class(
  "RankListResponse",
  public = list(
    `items` = NULL,
    `userRank` = NULL,
    `hasMoreResults` = NULL,
    `count` = NULL,
    `rankType` = NULL,
    `app` = NULL,
    `sortField` = NULL,
    `leaderboardMode` = NULL,
    `start` = NULL,
    `limit` = NULL,

    #' @description
    #' Initialize a new RankListResponse class.
    #'
    #' @param items items
    #' @param userRank userRank
    #' @param hasMoreResults hasMoreResults
    #' @param count count
    #' @param rankType rankType
    #' @param app app
    #' @param sortField sortField
    #' @param leaderboardMode leaderboardMode
    #' @param start start
    #' @param limit limit
    #' @param ... Other optional arguments.
    initialize = function(`items` = NULL, `userRank` = NULL, `hasMoreResults` = NULL, `count` = NULL, `rankType` = NULL, `app` = NULL, `sortField` = NULL, `leaderboardMode` = NULL, `start` = NULL, `limit` = NULL, ...) {
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!is.null(`userRank`)) {
        stopifnot(R6::is.R6(`userRank`))
        self$`userRank` <- `userRank`
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
      if (!is.null(`rankType`)) {
        if (!(is.character(`rankType`) && length(`rankType`) == 1)) {
          stop(paste("Error! Invalid data for `rankType`. Must be a string:", `rankType`))
        }
        self$`rankType` <- `rankType`
      }
      if (!is.null(`app`)) {
        if (!(is.character(`app`) && length(`app`) == 1)) {
          stop(paste("Error! Invalid data for `app`. Must be a string:", `app`))
        }
        self$`app` <- `app`
      }
      if (!is.null(`sortField`)) {
        if (!(is.character(`sortField`) && length(`sortField`) == 1)) {
          stop(paste("Error! Invalid data for `sortField`. Must be a string:", `sortField`))
        }
        self$`sortField` <- `sortField`
      }
      if (!is.null(`leaderboardMode`)) {
        if (!(`leaderboardMode` %in% c("GLOBAL", "FRIENDS", "LOCAL", "SEARCH", "CUSTOM"))) {
          stop(paste("Error! \"", `leaderboardMode`, "\" cannot be assigned to `leaderboardMode`. Must be \"GLOBAL\", \"FRIENDS\", \"LOCAL\", \"SEARCH\", \"CUSTOM\".", sep = ""))
        }
        if (!(is.character(`leaderboardMode`) && length(`leaderboardMode`) == 1)) {
          stop(paste("Error! Invalid data for `leaderboardMode`. Must be a string:", `leaderboardMode`))
        }
        self$`leaderboardMode` <- `leaderboardMode`
      }
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
    #' @return RankListResponse as a base R list.
    #' @examples
    #' # convert array of RankListResponse (x) to a data frame
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
    #' Convert RankListResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RankListResponseObject <- list()
      if (!is.null(self$`items`)) {
        RankListResponseObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`userRank`)) {
        RankListResponseObject[["userRank"]] <-
          self$extractSimpleType(self$`userRank`)
      }
      if (!is.null(self$`hasMoreResults`)) {
        RankListResponseObject[["hasMoreResults"]] <-
          self$`hasMoreResults`
      }
      if (!is.null(self$`count`)) {
        RankListResponseObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`rankType`)) {
        RankListResponseObject[["rankType"]] <-
          self$`rankType`
      }
      if (!is.null(self$`app`)) {
        RankListResponseObject[["app"]] <-
          self$`app`
      }
      if (!is.null(self$`sortField`)) {
        RankListResponseObject[["sortField"]] <-
          self$`sortField`
      }
      if (!is.null(self$`leaderboardMode`)) {
        RankListResponseObject[["leaderboardMode"]] <-
          self$`leaderboardMode`
      }
      if (!is.null(self$`start`)) {
        RankListResponseObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`limit`)) {
        RankListResponseObject[["limit"]] <-
          self$`limit`
      }
      return(RankListResponseObject)
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
    #' Deserialize JSON string into an instance of RankListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RankListResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[RankResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`userRank`)) {
        `userrank_object` <- RankResponse$new()
        `userrank_object`$fromJSON(jsonlite::toJSON(this_object$`userRank`, auto_unbox = TRUE, digits = NA))
        self$`userRank` <- `userrank_object`
      }
      if (!is.null(this_object$`hasMoreResults`)) {
        self$`hasMoreResults` <- this_object$`hasMoreResults`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`rankType`)) {
        self$`rankType` <- this_object$`rankType`
      }
      if (!is.null(this_object$`app`)) {
        self$`app` <- this_object$`app`
      }
      if (!is.null(this_object$`sortField`)) {
        self$`sortField` <- this_object$`sortField`
      }
      if (!is.null(this_object$`leaderboardMode`)) {
        if (!is.null(this_object$`leaderboardMode`) && !(this_object$`leaderboardMode` %in% c("GLOBAL", "FRIENDS", "LOCAL", "SEARCH", "CUSTOM"))) {
          stop(paste("Error! \"", this_object$`leaderboardMode`, "\" cannot be assigned to `leaderboardMode`. Must be \"GLOBAL\", \"FRIENDS\", \"LOCAL\", \"SEARCH\", \"CUSTOM\".", sep = ""))
        }
        self$`leaderboardMode` <- this_object$`leaderboardMode`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`limit`)) {
        self$`limit` <- this_object$`limit`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RankListResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RankListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RankListResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[RankResponse]", loadNamespace("openapi"))
      self$`userRank` <- RankResponse$new()$fromJSON(jsonlite::toJSON(this_object$`userRank`, auto_unbox = TRUE, digits = NA))
      self$`hasMoreResults` <- this_object$`hasMoreResults`
      self$`count` <- this_object$`count`
      self$`rankType` <- this_object$`rankType`
      self$`app` <- this_object$`app`
      self$`sortField` <- this_object$`sortField`
      if (!is.null(this_object$`leaderboardMode`) && !(this_object$`leaderboardMode` %in% c("GLOBAL", "FRIENDS", "LOCAL", "SEARCH", "CUSTOM"))) {
        stop(paste("Error! \"", this_object$`leaderboardMode`, "\" cannot be assigned to `leaderboardMode`. Must be \"GLOBAL\", \"FRIENDS\", \"LOCAL\", \"SEARCH\", \"CUSTOM\".", sep = ""))
      }
      self$`leaderboardMode` <- this_object$`leaderboardMode`
      self$`start` <- this_object$`start`
      self$`limit` <- this_object$`limit`
      self
    },

    #' @description
    #' Validate JSON input with respect to RankListResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RankListResponse
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
# RankListResponse$unlock()
#
## Below is an example to define the print function
# RankListResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RankListResponse$lock()

