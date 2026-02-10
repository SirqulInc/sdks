#' Create a new RewardResponse
#'
#' @description
#' RewardResponse Class
#'
#' @docType class
#' @title RewardResponse
#' @description RewardResponse Class
#' @format An \code{R6Class} generator object
#' @field offerId  integer [optional]
#' @field title  character [optional]
#' @field subTitle  character [optional]
#' @field details  character [optional]
#' @field artwork  \link{AssetShortResponse} [optional]
#' @field finePrint  character [optional]
#' @field redemptionCode  character [optional]
#' @field redemptionStatus  integer [optional]
#' @field transactionId  integer [optional]
#' @field estimatedValue  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RewardResponse <- R6::R6Class(
  "RewardResponse",
  public = list(
    `offerId` = NULL,
    `title` = NULL,
    `subTitle` = NULL,
    `details` = NULL,
    `artwork` = NULL,
    `finePrint` = NULL,
    `redemptionCode` = NULL,
    `redemptionStatus` = NULL,
    `transactionId` = NULL,
    `estimatedValue` = NULL,

    #' @description
    #' Initialize a new RewardResponse class.
    #'
    #' @param offerId offerId
    #' @param title title
    #' @param subTitle subTitle
    #' @param details details
    #' @param artwork artwork
    #' @param finePrint finePrint
    #' @param redemptionCode redemptionCode
    #' @param redemptionStatus redemptionStatus
    #' @param transactionId transactionId
    #' @param estimatedValue estimatedValue
    #' @param ... Other optional arguments.
    initialize = function(`offerId` = NULL, `title` = NULL, `subTitle` = NULL, `details` = NULL, `artwork` = NULL, `finePrint` = NULL, `redemptionCode` = NULL, `redemptionStatus` = NULL, `transactionId` = NULL, `estimatedValue` = NULL, ...) {
      if (!is.null(`offerId`)) {
        if (!(is.numeric(`offerId`) && length(`offerId`) == 1)) {
          stop(paste("Error! Invalid data for `offerId`. Must be an integer:", `offerId`))
        }
        self$`offerId` <- `offerId`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`subTitle`)) {
        if (!(is.character(`subTitle`) && length(`subTitle`) == 1)) {
          stop(paste("Error! Invalid data for `subTitle`. Must be a string:", `subTitle`))
        }
        self$`subTitle` <- `subTitle`
      }
      if (!is.null(`details`)) {
        if (!(is.character(`details`) && length(`details`) == 1)) {
          stop(paste("Error! Invalid data for `details`. Must be a string:", `details`))
        }
        self$`details` <- `details`
      }
      if (!is.null(`artwork`)) {
        stopifnot(R6::is.R6(`artwork`))
        self$`artwork` <- `artwork`
      }
      if (!is.null(`finePrint`)) {
        if (!(is.character(`finePrint`) && length(`finePrint`) == 1)) {
          stop(paste("Error! Invalid data for `finePrint`. Must be a string:", `finePrint`))
        }
        self$`finePrint` <- `finePrint`
      }
      if (!is.null(`redemptionCode`)) {
        if (!(is.character(`redemptionCode`) && length(`redemptionCode`) == 1)) {
          stop(paste("Error! Invalid data for `redemptionCode`. Must be a string:", `redemptionCode`))
        }
        self$`redemptionCode` <- `redemptionCode`
      }
      if (!is.null(`redemptionStatus`)) {
        if (!(is.numeric(`redemptionStatus`) && length(`redemptionStatus`) == 1)) {
          stop(paste("Error! Invalid data for `redemptionStatus`. Must be an integer:", `redemptionStatus`))
        }
        self$`redemptionStatus` <- `redemptionStatus`
      }
      if (!is.null(`transactionId`)) {
        if (!(is.numeric(`transactionId`) && length(`transactionId`) == 1)) {
          stop(paste("Error! Invalid data for `transactionId`. Must be an integer:", `transactionId`))
        }
        self$`transactionId` <- `transactionId`
      }
      if (!is.null(`estimatedValue`)) {
        if (!(is.numeric(`estimatedValue`) && length(`estimatedValue`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedValue`. Must be a number:", `estimatedValue`))
        }
        self$`estimatedValue` <- `estimatedValue`
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
    #' @return RewardResponse as a base R list.
    #' @examples
    #' # convert array of RewardResponse (x) to a data frame
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
    #' Convert RewardResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RewardResponseObject <- list()
      if (!is.null(self$`offerId`)) {
        RewardResponseObject[["offerId"]] <-
          self$`offerId`
      }
      if (!is.null(self$`title`)) {
        RewardResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`subTitle`)) {
        RewardResponseObject[["subTitle"]] <-
          self$`subTitle`
      }
      if (!is.null(self$`details`)) {
        RewardResponseObject[["details"]] <-
          self$`details`
      }
      if (!is.null(self$`artwork`)) {
        RewardResponseObject[["artwork"]] <-
          self$extractSimpleType(self$`artwork`)
      }
      if (!is.null(self$`finePrint`)) {
        RewardResponseObject[["finePrint"]] <-
          self$`finePrint`
      }
      if (!is.null(self$`redemptionCode`)) {
        RewardResponseObject[["redemptionCode"]] <-
          self$`redemptionCode`
      }
      if (!is.null(self$`redemptionStatus`)) {
        RewardResponseObject[["redemptionStatus"]] <-
          self$`redemptionStatus`
      }
      if (!is.null(self$`transactionId`)) {
        RewardResponseObject[["transactionId"]] <-
          self$`transactionId`
      }
      if (!is.null(self$`estimatedValue`)) {
        RewardResponseObject[["estimatedValue"]] <-
          self$`estimatedValue`
      }
      return(RewardResponseObject)
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
    #' Deserialize JSON string into an instance of RewardResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RewardResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`offerId`)) {
        self$`offerId` <- this_object$`offerId`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`subTitle`)) {
        self$`subTitle` <- this_object$`subTitle`
      }
      if (!is.null(this_object$`details`)) {
        self$`details` <- this_object$`details`
      }
      if (!is.null(this_object$`artwork`)) {
        `artwork_object` <- AssetShortResponse$new()
        `artwork_object`$fromJSON(jsonlite::toJSON(this_object$`artwork`, auto_unbox = TRUE, digits = NA))
        self$`artwork` <- `artwork_object`
      }
      if (!is.null(this_object$`finePrint`)) {
        self$`finePrint` <- this_object$`finePrint`
      }
      if (!is.null(this_object$`redemptionCode`)) {
        self$`redemptionCode` <- this_object$`redemptionCode`
      }
      if (!is.null(this_object$`redemptionStatus`)) {
        self$`redemptionStatus` <- this_object$`redemptionStatus`
      }
      if (!is.null(this_object$`transactionId`)) {
        self$`transactionId` <- this_object$`transactionId`
      }
      if (!is.null(this_object$`estimatedValue`)) {
        self$`estimatedValue` <- this_object$`estimatedValue`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RewardResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RewardResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RewardResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`offerId` <- this_object$`offerId`
      self$`title` <- this_object$`title`
      self$`subTitle` <- this_object$`subTitle`
      self$`details` <- this_object$`details`
      self$`artwork` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`artwork`, auto_unbox = TRUE, digits = NA))
      self$`finePrint` <- this_object$`finePrint`
      self$`redemptionCode` <- this_object$`redemptionCode`
      self$`redemptionStatus` <- this_object$`redemptionStatus`
      self$`transactionId` <- this_object$`transactionId`
      self$`estimatedValue` <- this_object$`estimatedValue`
      self
    },

    #' @description
    #' Validate JSON input with respect to RewardResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RewardResponse
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
# RewardResponse$unlock()
#
## Below is an example to define the print function
# RewardResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RewardResponse$lock()

