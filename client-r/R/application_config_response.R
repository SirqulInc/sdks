#' Create a new ApplicationConfigResponse
#'
#' @description
#' ApplicationConfigResponse Class
#'
#' @docType class
#' @title ApplicationConfigResponse
#' @description ApplicationConfigResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field configId  integer [optional]
#' @field created  integer [optional]
#' @field updated  integer [optional]
#' @field configVersion  character [optional]
#' @field configJson  character [optional]
#' @field configJsonURL  character [optional]
#' @field assetId  integer [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApplicationConfigResponse <- R6::R6Class(
  "ApplicationConfigResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `configId` = NULL,
    `created` = NULL,
    `updated` = NULL,
    `configVersion` = NULL,
    `configJson` = NULL,
    `configJsonURL` = NULL,
    `assetId` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new ApplicationConfigResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param configId configId
    #' @param created created
    #' @param updated updated
    #' @param configVersion configVersion
    #' @param configJson configJson
    #' @param configJsonURL configJsonURL
    #' @param assetId assetId
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `configId` = NULL, `created` = NULL, `updated` = NULL, `configVersion` = NULL, `configJson` = NULL, `configJsonURL` = NULL, `assetId` = NULL, `returning` = NULL, ...) {
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`version`)) {
        if (!(is.numeric(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a number:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`serializeNulls`)) {
        if (!(is.logical(`serializeNulls`) && length(`serializeNulls`) == 1)) {
          stop(paste("Error! Invalid data for `serializeNulls`. Must be a boolean:", `serializeNulls`))
        }
        self$`serializeNulls` <- `serializeNulls`
      }
      if (!is.null(`startTimeLog`)) {
        if (!(is.numeric(`startTimeLog`) && length(`startTimeLog`) == 1)) {
          stop(paste("Error! Invalid data for `startTimeLog`. Must be an integer:", `startTimeLog`))
        }
        self$`startTimeLog` <- `startTimeLog`
      }
      if (!is.null(`errorCode`)) {
        if (!(is.character(`errorCode`) && length(`errorCode`) == 1)) {
          stop(paste("Error! Invalid data for `errorCode`. Must be a string:", `errorCode`))
        }
        self$`errorCode` <- `errorCode`
      }
      if (!is.null(`request`)) {
        stopifnot(is.vector(`request`), length(`request`) != 0)
        sapply(`request`, function(x) stopifnot(R6::is.R6(x)))
        self$`request` <- `request`
      }
      if (!is.null(`configId`)) {
        if (!(is.numeric(`configId`) && length(`configId`) == 1)) {
          stop(paste("Error! Invalid data for `configId`. Must be an integer:", `configId`))
        }
        self$`configId` <- `configId`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`configVersion`)) {
        if (!(is.character(`configVersion`) && length(`configVersion`) == 1)) {
          stop(paste("Error! Invalid data for `configVersion`. Must be a string:", `configVersion`))
        }
        self$`configVersion` <- `configVersion`
      }
      if (!is.null(`configJson`)) {
        if (!(is.character(`configJson`) && length(`configJson`) == 1)) {
          stop(paste("Error! Invalid data for `configJson`. Must be a string:", `configJson`))
        }
        self$`configJson` <- `configJson`
      }
      if (!is.null(`configJsonURL`)) {
        if (!(is.character(`configJsonURL`) && length(`configJsonURL`) == 1)) {
          stop(paste("Error! Invalid data for `configJsonURL`. Must be a string:", `configJsonURL`))
        }
        self$`configJsonURL` <- `configJsonURL`
      }
      if (!is.null(`assetId`)) {
        if (!(is.numeric(`assetId`) && length(`assetId`) == 1)) {
          stop(paste("Error! Invalid data for `assetId`. Must be an integer:", `assetId`))
        }
        self$`assetId` <- `assetId`
      }
      if (!is.null(`returning`)) {
        if (!(is.character(`returning`) && length(`returning`) == 1)) {
          stop(paste("Error! Invalid data for `returning`. Must be a string:", `returning`))
        }
        self$`returning` <- `returning`
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
    #' @return ApplicationConfigResponse as a base R list.
    #' @examples
    #' # convert array of ApplicationConfigResponse (x) to a data frame
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
    #' Convert ApplicationConfigResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApplicationConfigResponseObject <- list()
      if (!is.null(self$`valid`)) {
        ApplicationConfigResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        ApplicationConfigResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        ApplicationConfigResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        ApplicationConfigResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        ApplicationConfigResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        ApplicationConfigResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        ApplicationConfigResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`configId`)) {
        ApplicationConfigResponseObject[["configId"]] <-
          self$`configId`
      }
      if (!is.null(self$`created`)) {
        ApplicationConfigResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`updated`)) {
        ApplicationConfigResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`configVersion`)) {
        ApplicationConfigResponseObject[["configVersion"]] <-
          self$`configVersion`
      }
      if (!is.null(self$`configJson`)) {
        ApplicationConfigResponseObject[["configJson"]] <-
          self$`configJson`
      }
      if (!is.null(self$`configJsonURL`)) {
        ApplicationConfigResponseObject[["configJsonURL"]] <-
          self$`configJsonURL`
      }
      if (!is.null(self$`assetId`)) {
        ApplicationConfigResponseObject[["assetId"]] <-
          self$`assetId`
      }
      if (!is.null(self$`returning`)) {
        ApplicationConfigResponseObject[["returning"]] <-
          self$`returning`
      }
      return(ApplicationConfigResponseObject)
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
    #' Deserialize JSON string into an instance of ApplicationConfigResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationConfigResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`serializeNulls`)) {
        self$`serializeNulls` <- this_object$`serializeNulls`
      }
      if (!is.null(this_object$`startTimeLog`)) {
        self$`startTimeLog` <- this_object$`startTimeLog`
      }
      if (!is.null(this_object$`errorCode`)) {
        self$`errorCode` <- this_object$`errorCode`
      }
      if (!is.null(this_object$`request`)) {
        self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`configId`)) {
        self$`configId` <- this_object$`configId`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`configVersion`)) {
        self$`configVersion` <- this_object$`configVersion`
      }
      if (!is.null(this_object$`configJson`)) {
        self$`configJson` <- this_object$`configJson`
      }
      if (!is.null(this_object$`configJsonURL`)) {
        self$`configJsonURL` <- this_object$`configJsonURL`
      }
      if (!is.null(this_object$`assetId`)) {
        self$`assetId` <- this_object$`assetId`
      }
      if (!is.null(this_object$`returning`)) {
        self$`returning` <- this_object$`returning`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ApplicationConfigResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApplicationConfigResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationConfigResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`configId` <- this_object$`configId`
      self$`created` <- this_object$`created`
      self$`updated` <- this_object$`updated`
      self$`configVersion` <- this_object$`configVersion`
      self$`configJson` <- this_object$`configJson`
      self$`configJsonURL` <- this_object$`configJsonURL`
      self$`assetId` <- this_object$`assetId`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApplicationConfigResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApplicationConfigResponse
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
# ApplicationConfigResponse$unlock()
#
## Below is an example to define the print function
# ApplicationConfigResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApplicationConfigResponse$lock()

