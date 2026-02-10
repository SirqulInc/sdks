#' Create a new ThirdPartyCredentialResponse
#'
#' @description
#' ThirdPartyCredentialResponse Class
#'
#' @docType class
#' @title ThirdPartyCredentialResponse
#' @description ThirdPartyCredentialResponse Class
#' @format An \code{R6Class} generator object
#' @field thirdPartyCredentialId  integer [optional]
#' @field thirdPartyId  character [optional]
#' @field thirdPartyName  character [optional]
#' @field network  \link{ThirdPartyNetworkShortResponse} [optional]
#' @field updated  integer [optional]
#' @field created  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ThirdPartyCredentialResponse <- R6::R6Class(
  "ThirdPartyCredentialResponse",
  public = list(
    `thirdPartyCredentialId` = NULL,
    `thirdPartyId` = NULL,
    `thirdPartyName` = NULL,
    `network` = NULL,
    `updated` = NULL,
    `created` = NULL,

    #' @description
    #' Initialize a new ThirdPartyCredentialResponse class.
    #'
    #' @param thirdPartyCredentialId thirdPartyCredentialId
    #' @param thirdPartyId thirdPartyId
    #' @param thirdPartyName thirdPartyName
    #' @param network network
    #' @param updated updated
    #' @param created created
    #' @param ... Other optional arguments.
    initialize = function(`thirdPartyCredentialId` = NULL, `thirdPartyId` = NULL, `thirdPartyName` = NULL, `network` = NULL, `updated` = NULL, `created` = NULL, ...) {
      if (!is.null(`thirdPartyCredentialId`)) {
        if (!(is.numeric(`thirdPartyCredentialId`) && length(`thirdPartyCredentialId`) == 1)) {
          stop(paste("Error! Invalid data for `thirdPartyCredentialId`. Must be an integer:", `thirdPartyCredentialId`))
        }
        self$`thirdPartyCredentialId` <- `thirdPartyCredentialId`
      }
      if (!is.null(`thirdPartyId`)) {
        if (!(is.character(`thirdPartyId`) && length(`thirdPartyId`) == 1)) {
          stop(paste("Error! Invalid data for `thirdPartyId`. Must be a string:", `thirdPartyId`))
        }
        self$`thirdPartyId` <- `thirdPartyId`
      }
      if (!is.null(`thirdPartyName`)) {
        if (!(is.character(`thirdPartyName`) && length(`thirdPartyName`) == 1)) {
          stop(paste("Error! Invalid data for `thirdPartyName`. Must be a string:", `thirdPartyName`))
        }
        self$`thirdPartyName` <- `thirdPartyName`
      }
      if (!is.null(`network`)) {
        stopifnot(R6::is.R6(`network`))
        self$`network` <- `network`
      }
      if (!is.null(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
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
    #' @return ThirdPartyCredentialResponse as a base R list.
    #' @examples
    #' # convert array of ThirdPartyCredentialResponse (x) to a data frame
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
    #' Convert ThirdPartyCredentialResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ThirdPartyCredentialResponseObject <- list()
      if (!is.null(self$`thirdPartyCredentialId`)) {
        ThirdPartyCredentialResponseObject[["thirdPartyCredentialId"]] <-
          self$`thirdPartyCredentialId`
      }
      if (!is.null(self$`thirdPartyId`)) {
        ThirdPartyCredentialResponseObject[["thirdPartyId"]] <-
          self$`thirdPartyId`
      }
      if (!is.null(self$`thirdPartyName`)) {
        ThirdPartyCredentialResponseObject[["thirdPartyName"]] <-
          self$`thirdPartyName`
      }
      if (!is.null(self$`network`)) {
        ThirdPartyCredentialResponseObject[["network"]] <-
          self$extractSimpleType(self$`network`)
      }
      if (!is.null(self$`updated`)) {
        ThirdPartyCredentialResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`created`)) {
        ThirdPartyCredentialResponseObject[["created"]] <-
          self$`created`
      }
      return(ThirdPartyCredentialResponseObject)
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
    #' Deserialize JSON string into an instance of ThirdPartyCredentialResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ThirdPartyCredentialResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`thirdPartyCredentialId`)) {
        self$`thirdPartyCredentialId` <- this_object$`thirdPartyCredentialId`
      }
      if (!is.null(this_object$`thirdPartyId`)) {
        self$`thirdPartyId` <- this_object$`thirdPartyId`
      }
      if (!is.null(this_object$`thirdPartyName`)) {
        self$`thirdPartyName` <- this_object$`thirdPartyName`
      }
      if (!is.null(this_object$`network`)) {
        `network_object` <- ThirdPartyNetworkShortResponse$new()
        `network_object`$fromJSON(jsonlite::toJSON(this_object$`network`, auto_unbox = TRUE, digits = NA))
        self$`network` <- `network_object`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ThirdPartyCredentialResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ThirdPartyCredentialResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ThirdPartyCredentialResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`thirdPartyCredentialId` <- this_object$`thirdPartyCredentialId`
      self$`thirdPartyId` <- this_object$`thirdPartyId`
      self$`thirdPartyName` <- this_object$`thirdPartyName`
      self$`network` <- ThirdPartyNetworkShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`network`, auto_unbox = TRUE, digits = NA))
      self$`updated` <- this_object$`updated`
      self$`created` <- this_object$`created`
      self
    },

    #' @description
    #' Validate JSON input with respect to ThirdPartyCredentialResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ThirdPartyCredentialResponse
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
# ThirdPartyCredentialResponse$unlock()
#
## Below is an example to define the print function
# ThirdPartyCredentialResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ThirdPartyCredentialResponse$lock()

