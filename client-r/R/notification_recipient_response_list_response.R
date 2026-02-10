#' Create a new NotificationRecipientResponseListResponse
#'
#' @description
#' NotificationRecipientResponseListResponse Class
#'
#' @docType class
#' @title NotificationRecipientResponseListResponse
#' @description NotificationRecipientResponseListResponse Class
#' @format An \code{R6Class} generator object
#' @field items  list(object) [optional]
#' @field count  integer [optional]
#' @field startIndexAudiences  integer [optional]
#' @field startIndexGroups  integer [optional]
#' @field total  integer [optional]
#' @field countAudiences  integer [optional]
#' @field countGroups  integer [optional]
#' @field hasMoreResults  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationRecipientResponseListResponse <- R6::R6Class(
  "NotificationRecipientResponseListResponse",
  public = list(
    `items` = NULL,
    `count` = NULL,
    `startIndexAudiences` = NULL,
    `startIndexGroups` = NULL,
    `total` = NULL,
    `countAudiences` = NULL,
    `countGroups` = NULL,
    `hasMoreResults` = NULL,

    #' @description
    #' Initialize a new NotificationRecipientResponseListResponse class.
    #'
    #' @param items items
    #' @param count count
    #' @param startIndexAudiences startIndexAudiences
    #' @param startIndexGroups startIndexGroups
    #' @param total total
    #' @param countAudiences countAudiences
    #' @param countGroups countGroups
    #' @param hasMoreResults hasMoreResults
    #' @param ... Other optional arguments.
    initialize = function(`items` = NULL, `count` = NULL, `startIndexAudiences` = NULL, `startIndexGroups` = NULL, `total` = NULL, `countAudiences` = NULL, `countGroups` = NULL, `hasMoreResults` = NULL, ...) {
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(is.character(x)))
        self$`items` <- `items`
      }
      if (!is.null(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
      }
      if (!is.null(`startIndexAudiences`)) {
        if (!(is.numeric(`startIndexAudiences`) && length(`startIndexAudiences`) == 1)) {
          stop(paste("Error! Invalid data for `startIndexAudiences`. Must be an integer:", `startIndexAudiences`))
        }
        self$`startIndexAudiences` <- `startIndexAudiences`
      }
      if (!is.null(`startIndexGroups`)) {
        if (!(is.numeric(`startIndexGroups`) && length(`startIndexGroups`) == 1)) {
          stop(paste("Error! Invalid data for `startIndexGroups`. Must be an integer:", `startIndexGroups`))
        }
        self$`startIndexGroups` <- `startIndexGroups`
      }
      if (!is.null(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`countAudiences`)) {
        if (!(is.numeric(`countAudiences`) && length(`countAudiences`) == 1)) {
          stop(paste("Error! Invalid data for `countAudiences`. Must be an integer:", `countAudiences`))
        }
        self$`countAudiences` <- `countAudiences`
      }
      if (!is.null(`countGroups`)) {
        if (!(is.numeric(`countGroups`) && length(`countGroups`) == 1)) {
          stop(paste("Error! Invalid data for `countGroups`. Must be an integer:", `countGroups`))
        }
        self$`countGroups` <- `countGroups`
      }
      if (!is.null(`hasMoreResults`)) {
        if (!(is.logical(`hasMoreResults`) && length(`hasMoreResults`) == 1)) {
          stop(paste("Error! Invalid data for `hasMoreResults`. Must be a boolean:", `hasMoreResults`))
        }
        self$`hasMoreResults` <- `hasMoreResults`
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
    #' @return NotificationRecipientResponseListResponse as a base R list.
    #' @examples
    #' # convert array of NotificationRecipientResponseListResponse (x) to a data frame
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
    #' Convert NotificationRecipientResponseListResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NotificationRecipientResponseListResponseObject <- list()
      if (!is.null(self$`items`)) {
        NotificationRecipientResponseListResponseObject[["items"]] <-
          self$`items`
      }
      if (!is.null(self$`count`)) {
        NotificationRecipientResponseListResponseObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`startIndexAudiences`)) {
        NotificationRecipientResponseListResponseObject[["startIndexAudiences"]] <-
          self$`startIndexAudiences`
      }
      if (!is.null(self$`startIndexGroups`)) {
        NotificationRecipientResponseListResponseObject[["startIndexGroups"]] <-
          self$`startIndexGroups`
      }
      if (!is.null(self$`total`)) {
        NotificationRecipientResponseListResponseObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`countAudiences`)) {
        NotificationRecipientResponseListResponseObject[["countAudiences"]] <-
          self$`countAudiences`
      }
      if (!is.null(self$`countGroups`)) {
        NotificationRecipientResponseListResponseObject[["countGroups"]] <-
          self$`countGroups`
      }
      if (!is.null(self$`hasMoreResults`)) {
        NotificationRecipientResponseListResponseObject[["hasMoreResults"]] <-
          self$`hasMoreResults`
      }
      return(NotificationRecipientResponseListResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationRecipientResponseListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationRecipientResponseListResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[object]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`startIndexAudiences`)) {
        self$`startIndexAudiences` <- this_object$`startIndexAudiences`
      }
      if (!is.null(this_object$`startIndexGroups`)) {
        self$`startIndexGroups` <- this_object$`startIndexGroups`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`countAudiences`)) {
        self$`countAudiences` <- this_object$`countAudiences`
      }
      if (!is.null(this_object$`countGroups`)) {
        self$`countGroups` <- this_object$`countGroups`
      }
      if (!is.null(this_object$`hasMoreResults`)) {
        self$`hasMoreResults` <- this_object$`hasMoreResults`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return NotificationRecipientResponseListResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationRecipientResponseListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationRecipientResponseListResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[object]", loadNamespace("openapi"))
      self$`count` <- this_object$`count`
      self$`startIndexAudiences` <- this_object$`startIndexAudiences`
      self$`startIndexGroups` <- this_object$`startIndexGroups`
      self$`total` <- this_object$`total`
      self$`countAudiences` <- this_object$`countAudiences`
      self$`countGroups` <- this_object$`countGroups`
      self$`hasMoreResults` <- this_object$`hasMoreResults`
      self
    },

    #' @description
    #' Validate JSON input with respect to NotificationRecipientResponseListResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NotificationRecipientResponseListResponse
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
# NotificationRecipientResponseListResponse$unlock()
#
## Below is an example to define the print function
# NotificationRecipientResponseListResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NotificationRecipientResponseListResponse$lock()

