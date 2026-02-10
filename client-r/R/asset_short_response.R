#' Create a new AssetShortResponse
#'
#' @description
#' AssetShortResponse Class
#'
#' @docType class
#' @title AssetShortResponse
#' @description AssetShortResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field assetId  integer [optional]
#' @field fileName  character [optional]
#' @field caption  character [optional]
#' @field mediaType  character [optional]
#' @field thumbnailURL  character [optional]
#' @field coverURL  character [optional]
#' @field fullURL  character [optional]
#' @field assetVersion  character [optional]
#' @field versionName  character [optional]
#' @field versionCode  integer [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AssetShortResponse <- R6::R6Class(
  "AssetShortResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `assetId` = NULL,
    `fileName` = NULL,
    `caption` = NULL,
    `mediaType` = NULL,
    `thumbnailURL` = NULL,
    `coverURL` = NULL,
    `fullURL` = NULL,
    `assetVersion` = NULL,
    `versionName` = NULL,
    `versionCode` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new AssetShortResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param assetId assetId
    #' @param fileName fileName
    #' @param caption caption
    #' @param mediaType mediaType
    #' @param thumbnailURL thumbnailURL
    #' @param coverURL coverURL
    #' @param fullURL fullURL
    #' @param assetVersion assetVersion
    #' @param versionName versionName
    #' @param versionCode versionCode
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `assetId` = NULL, `fileName` = NULL, `caption` = NULL, `mediaType` = NULL, `thumbnailURL` = NULL, `coverURL` = NULL, `fullURL` = NULL, `assetVersion` = NULL, `versionName` = NULL, `versionCode` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`assetId`)) {
        if (!(is.numeric(`assetId`) && length(`assetId`) == 1)) {
          stop(paste("Error! Invalid data for `assetId`. Must be an integer:", `assetId`))
        }
        self$`assetId` <- `assetId`
      }
      if (!is.null(`fileName`)) {
        if (!(is.character(`fileName`) && length(`fileName`) == 1)) {
          stop(paste("Error! Invalid data for `fileName`. Must be a string:", `fileName`))
        }
        self$`fileName` <- `fileName`
      }
      if (!is.null(`caption`)) {
        if (!(is.character(`caption`) && length(`caption`) == 1)) {
          stop(paste("Error! Invalid data for `caption`. Must be a string:", `caption`))
        }
        self$`caption` <- `caption`
      }
      if (!is.null(`mediaType`)) {
        if (!(is.character(`mediaType`) && length(`mediaType`) == 1)) {
          stop(paste("Error! Invalid data for `mediaType`. Must be a string:", `mediaType`))
        }
        self$`mediaType` <- `mediaType`
      }
      if (!is.null(`thumbnailURL`)) {
        if (!(is.character(`thumbnailURL`) && length(`thumbnailURL`) == 1)) {
          stop(paste("Error! Invalid data for `thumbnailURL`. Must be a string:", `thumbnailURL`))
        }
        self$`thumbnailURL` <- `thumbnailURL`
      }
      if (!is.null(`coverURL`)) {
        if (!(is.character(`coverURL`) && length(`coverURL`) == 1)) {
          stop(paste("Error! Invalid data for `coverURL`. Must be a string:", `coverURL`))
        }
        self$`coverURL` <- `coverURL`
      }
      if (!is.null(`fullURL`)) {
        if (!(is.character(`fullURL`) && length(`fullURL`) == 1)) {
          stop(paste("Error! Invalid data for `fullURL`. Must be a string:", `fullURL`))
        }
        self$`fullURL` <- `fullURL`
      }
      if (!is.null(`assetVersion`)) {
        if (!(is.character(`assetVersion`) && length(`assetVersion`) == 1)) {
          stop(paste("Error! Invalid data for `assetVersion`. Must be a string:", `assetVersion`))
        }
        self$`assetVersion` <- `assetVersion`
      }
      if (!is.null(`versionName`)) {
        if (!(is.character(`versionName`) && length(`versionName`) == 1)) {
          stop(paste("Error! Invalid data for `versionName`. Must be a string:", `versionName`))
        }
        self$`versionName` <- `versionName`
      }
      if (!is.null(`versionCode`)) {
        if (!(is.numeric(`versionCode`) && length(`versionCode`) == 1)) {
          stop(paste("Error! Invalid data for `versionCode`. Must be an integer:", `versionCode`))
        }
        self$`versionCode` <- `versionCode`
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
    #' @return AssetShortResponse as a base R list.
    #' @examples
    #' # convert array of AssetShortResponse (x) to a data frame
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
    #' Convert AssetShortResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AssetShortResponseObject <- list()
      if (!is.null(self$`valid`)) {
        AssetShortResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        AssetShortResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        AssetShortResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        AssetShortResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        AssetShortResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        AssetShortResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        AssetShortResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`assetId`)) {
        AssetShortResponseObject[["assetId"]] <-
          self$`assetId`
      }
      if (!is.null(self$`fileName`)) {
        AssetShortResponseObject[["fileName"]] <-
          self$`fileName`
      }
      if (!is.null(self$`caption`)) {
        AssetShortResponseObject[["caption"]] <-
          self$`caption`
      }
      if (!is.null(self$`mediaType`)) {
        AssetShortResponseObject[["mediaType"]] <-
          self$`mediaType`
      }
      if (!is.null(self$`thumbnailURL`)) {
        AssetShortResponseObject[["thumbnailURL"]] <-
          self$`thumbnailURL`
      }
      if (!is.null(self$`coverURL`)) {
        AssetShortResponseObject[["coverURL"]] <-
          self$`coverURL`
      }
      if (!is.null(self$`fullURL`)) {
        AssetShortResponseObject[["fullURL"]] <-
          self$`fullURL`
      }
      if (!is.null(self$`assetVersion`)) {
        AssetShortResponseObject[["assetVersion"]] <-
          self$`assetVersion`
      }
      if (!is.null(self$`versionName`)) {
        AssetShortResponseObject[["versionName"]] <-
          self$`versionName`
      }
      if (!is.null(self$`versionCode`)) {
        AssetShortResponseObject[["versionCode"]] <-
          self$`versionCode`
      }
      if (!is.null(self$`returning`)) {
        AssetShortResponseObject[["returning"]] <-
          self$`returning`
      }
      return(AssetShortResponseObject)
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
    #' Deserialize JSON string into an instance of AssetShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AssetShortResponse
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
      if (!is.null(this_object$`assetId`)) {
        self$`assetId` <- this_object$`assetId`
      }
      if (!is.null(this_object$`fileName`)) {
        self$`fileName` <- this_object$`fileName`
      }
      if (!is.null(this_object$`caption`)) {
        self$`caption` <- this_object$`caption`
      }
      if (!is.null(this_object$`mediaType`)) {
        self$`mediaType` <- this_object$`mediaType`
      }
      if (!is.null(this_object$`thumbnailURL`)) {
        self$`thumbnailURL` <- this_object$`thumbnailURL`
      }
      if (!is.null(this_object$`coverURL`)) {
        self$`coverURL` <- this_object$`coverURL`
      }
      if (!is.null(this_object$`fullURL`)) {
        self$`fullURL` <- this_object$`fullURL`
      }
      if (!is.null(this_object$`assetVersion`)) {
        self$`assetVersion` <- this_object$`assetVersion`
      }
      if (!is.null(this_object$`versionName`)) {
        self$`versionName` <- this_object$`versionName`
      }
      if (!is.null(this_object$`versionCode`)) {
        self$`versionCode` <- this_object$`versionCode`
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
    #' @return AssetShortResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AssetShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AssetShortResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`assetId` <- this_object$`assetId`
      self$`fileName` <- this_object$`fileName`
      self$`caption` <- this_object$`caption`
      self$`mediaType` <- this_object$`mediaType`
      self$`thumbnailURL` <- this_object$`thumbnailURL`
      self$`coverURL` <- this_object$`coverURL`
      self$`fullURL` <- this_object$`fullURL`
      self$`assetVersion` <- this_object$`assetVersion`
      self$`versionName` <- this_object$`versionName`
      self$`versionCode` <- this_object$`versionCode`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to AssetShortResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AssetShortResponse
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
# AssetShortResponse$unlock()
#
## Below is an example to define the print function
# AssetShortResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AssetShortResponse$lock()

