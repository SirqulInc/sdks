#' Create a new ConnectionGroupShortResponse
#'
#' @description
#' ConnectionGroupShortResponse Class
#'
#' @docType class
#' @title ConnectionGroupShortResponse
#' @description ConnectionGroupShortResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field connectionGroupId  integer [optional]
#' @field name  character [optional]
#' @field groupType  character [optional]
#' @field thumbnailURL  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConnectionGroupShortResponse <- R6::R6Class(
  "ConnectionGroupShortResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `connectionGroupId` = NULL,
    `name` = NULL,
    `groupType` = NULL,
    `thumbnailURL` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new ConnectionGroupShortResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param connectionGroupId connectionGroupId
    #' @param name name
    #' @param groupType groupType
    #' @param thumbnailURL thumbnailURL
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `connectionGroupId` = NULL, `name` = NULL, `groupType` = NULL, `thumbnailURL` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`connectionGroupId`)) {
        if (!(is.numeric(`connectionGroupId`) && length(`connectionGroupId`) == 1)) {
          stop(paste("Error! Invalid data for `connectionGroupId`. Must be an integer:", `connectionGroupId`))
        }
        self$`connectionGroupId` <- `connectionGroupId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`groupType`)) {
        if (!(`groupType` %in% c("PRIVATE", "FRIENDS", "TRUSTED", "BLOCKED", "FOLLOWERS", "FOLLOWING", "PENDING", "REQUEST"))) {
          stop(paste("Error! \"", `groupType`, "\" cannot be assigned to `groupType`. Must be \"PRIVATE\", \"FRIENDS\", \"TRUSTED\", \"BLOCKED\", \"FOLLOWERS\", \"FOLLOWING\", \"PENDING\", \"REQUEST\".", sep = ""))
        }
        if (!(is.character(`groupType`) && length(`groupType`) == 1)) {
          stop(paste("Error! Invalid data for `groupType`. Must be a string:", `groupType`))
        }
        self$`groupType` <- `groupType`
      }
      if (!is.null(`thumbnailURL`)) {
        if (!(is.character(`thumbnailURL`) && length(`thumbnailURL`) == 1)) {
          stop(paste("Error! Invalid data for `thumbnailURL`. Must be a string:", `thumbnailURL`))
        }
        self$`thumbnailURL` <- `thumbnailURL`
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
    #' @return ConnectionGroupShortResponse as a base R list.
    #' @examples
    #' # convert array of ConnectionGroupShortResponse (x) to a data frame
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
    #' Convert ConnectionGroupShortResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConnectionGroupShortResponseObject <- list()
      if (!is.null(self$`valid`)) {
        ConnectionGroupShortResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        ConnectionGroupShortResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        ConnectionGroupShortResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        ConnectionGroupShortResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        ConnectionGroupShortResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        ConnectionGroupShortResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        ConnectionGroupShortResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`connectionGroupId`)) {
        ConnectionGroupShortResponseObject[["connectionGroupId"]] <-
          self$`connectionGroupId`
      }
      if (!is.null(self$`name`)) {
        ConnectionGroupShortResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`groupType`)) {
        ConnectionGroupShortResponseObject[["groupType"]] <-
          self$`groupType`
      }
      if (!is.null(self$`thumbnailURL`)) {
        ConnectionGroupShortResponseObject[["thumbnailURL"]] <-
          self$`thumbnailURL`
      }
      if (!is.null(self$`returning`)) {
        ConnectionGroupShortResponseObject[["returning"]] <-
          self$`returning`
      }
      return(ConnectionGroupShortResponseObject)
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
    #' Deserialize JSON string into an instance of ConnectionGroupShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionGroupShortResponse
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
      if (!is.null(this_object$`connectionGroupId`)) {
        self$`connectionGroupId` <- this_object$`connectionGroupId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`groupType`)) {
        if (!is.null(this_object$`groupType`) && !(this_object$`groupType` %in% c("PRIVATE", "FRIENDS", "TRUSTED", "BLOCKED", "FOLLOWERS", "FOLLOWING", "PENDING", "REQUEST"))) {
          stop(paste("Error! \"", this_object$`groupType`, "\" cannot be assigned to `groupType`. Must be \"PRIVATE\", \"FRIENDS\", \"TRUSTED\", \"BLOCKED\", \"FOLLOWERS\", \"FOLLOWING\", \"PENDING\", \"REQUEST\".", sep = ""))
        }
        self$`groupType` <- this_object$`groupType`
      }
      if (!is.null(this_object$`thumbnailURL`)) {
        self$`thumbnailURL` <- this_object$`thumbnailURL`
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
    #' @return ConnectionGroupShortResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConnectionGroupShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionGroupShortResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`connectionGroupId` <- this_object$`connectionGroupId`
      self$`name` <- this_object$`name`
      if (!is.null(this_object$`groupType`) && !(this_object$`groupType` %in% c("PRIVATE", "FRIENDS", "TRUSTED", "BLOCKED", "FOLLOWERS", "FOLLOWING", "PENDING", "REQUEST"))) {
        stop(paste("Error! \"", this_object$`groupType`, "\" cannot be assigned to `groupType`. Must be \"PRIVATE\", \"FRIENDS\", \"TRUSTED\", \"BLOCKED\", \"FOLLOWERS\", \"FOLLOWING\", \"PENDING\", \"REQUEST\".", sep = ""))
      }
      self$`groupType` <- this_object$`groupType`
      self$`thumbnailURL` <- this_object$`thumbnailURL`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to ConnectionGroupShortResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConnectionGroupShortResponse
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
# ConnectionGroupShortResponse$unlock()
#
## Below is an example to define the print function
# ConnectionGroupShortResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConnectionGroupShortResponse$lock()

