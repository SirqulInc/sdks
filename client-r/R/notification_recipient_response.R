#' Create a new NotificationRecipientResponse
#'
#' @description
#' NotificationRecipientResponse Class
#'
#' @docType class
#' @title NotificationRecipientResponse
#' @description NotificationRecipientResponse Class
#' @format An \code{R6Class} generator object
#' @field accountId  integer [optional]
#' @field locationDisplay  character [optional]
#' @field display  character [optional]
#' @field username  character [optional]
#' @field accountType  character [optional]
#' @field profileImage  character [optional]
#' @field gender  character [optional]
#' @field contactEmail  character [optional]
#' @field applicationId  integer [optional]
#' @field appName  character [optional]
#' @field hasApns  character [optional]
#' @field hasGcm  character [optional]
#' @field hasEmail  character [optional]
#' @field hasSms  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationRecipientResponse <- R6::R6Class(
  "NotificationRecipientResponse",
  public = list(
    `accountId` = NULL,
    `locationDisplay` = NULL,
    `display` = NULL,
    `username` = NULL,
    `accountType` = NULL,
    `profileImage` = NULL,
    `gender` = NULL,
    `contactEmail` = NULL,
    `applicationId` = NULL,
    `appName` = NULL,
    `hasApns` = NULL,
    `hasGcm` = NULL,
    `hasEmail` = NULL,
    `hasSms` = NULL,

    #' @description
    #' Initialize a new NotificationRecipientResponse class.
    #'
    #' @param accountId accountId
    #' @param locationDisplay locationDisplay
    #' @param display display
    #' @param username username
    #' @param accountType accountType
    #' @param profileImage profileImage
    #' @param gender gender
    #' @param contactEmail contactEmail
    #' @param applicationId applicationId
    #' @param appName appName
    #' @param hasApns hasApns
    #' @param hasGcm hasGcm
    #' @param hasEmail hasEmail
    #' @param hasSms hasSms
    #' @param ... Other optional arguments.
    initialize = function(`accountId` = NULL, `locationDisplay` = NULL, `display` = NULL, `username` = NULL, `accountType` = NULL, `profileImage` = NULL, `gender` = NULL, `contactEmail` = NULL, `applicationId` = NULL, `appName` = NULL, `hasApns` = NULL, `hasGcm` = NULL, `hasEmail` = NULL, `hasSms` = NULL, ...) {
      if (!is.null(`accountId`)) {
        if (!(is.numeric(`accountId`) && length(`accountId`) == 1)) {
          stop(paste("Error! Invalid data for `accountId`. Must be an integer:", `accountId`))
        }
        self$`accountId` <- `accountId`
      }
      if (!is.null(`locationDisplay`)) {
        if (!(is.character(`locationDisplay`) && length(`locationDisplay`) == 1)) {
          stop(paste("Error! Invalid data for `locationDisplay`. Must be a string:", `locationDisplay`))
        }
        self$`locationDisplay` <- `locationDisplay`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!is.null(`accountType`)) {
        if (!(is.character(`accountType`) && length(`accountType`) == 1)) {
          stop(paste("Error! Invalid data for `accountType`. Must be a string:", `accountType`))
        }
        self$`accountType` <- `accountType`
      }
      if (!is.null(`profileImage`)) {
        if (!(is.character(`profileImage`) && length(`profileImage`) == 1)) {
          stop(paste("Error! Invalid data for `profileImage`. Must be a string:", `profileImage`))
        }
        self$`profileImage` <- `profileImage`
      }
      if (!is.null(`gender`)) {
        if (!(`gender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", `gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        if (!(is.character(`gender`) && length(`gender`) == 1)) {
          stop(paste("Error! Invalid data for `gender`. Must be a string:", `gender`))
        }
        self$`gender` <- `gender`
      }
      if (!is.null(`contactEmail`)) {
        if (!(is.character(`contactEmail`) && length(`contactEmail`) == 1)) {
          stop(paste("Error! Invalid data for `contactEmail`. Must be a string:", `contactEmail`))
        }
        self$`contactEmail` <- `contactEmail`
      }
      if (!is.null(`applicationId`)) {
        if (!(is.numeric(`applicationId`) && length(`applicationId`) == 1)) {
          stop(paste("Error! Invalid data for `applicationId`. Must be an integer:", `applicationId`))
        }
        self$`applicationId` <- `applicationId`
      }
      if (!is.null(`appName`)) {
        if (!(is.character(`appName`) && length(`appName`) == 1)) {
          stop(paste("Error! Invalid data for `appName`. Must be a string:", `appName`))
        }
        self$`appName` <- `appName`
      }
      if (!is.null(`hasApns`)) {
        if (!(is.logical(`hasApns`) && length(`hasApns`) == 1)) {
          stop(paste("Error! Invalid data for `hasApns`. Must be a boolean:", `hasApns`))
        }
        self$`hasApns` <- `hasApns`
      }
      if (!is.null(`hasGcm`)) {
        if (!(is.logical(`hasGcm`) && length(`hasGcm`) == 1)) {
          stop(paste("Error! Invalid data for `hasGcm`. Must be a boolean:", `hasGcm`))
        }
        self$`hasGcm` <- `hasGcm`
      }
      if (!is.null(`hasEmail`)) {
        if (!(is.logical(`hasEmail`) && length(`hasEmail`) == 1)) {
          stop(paste("Error! Invalid data for `hasEmail`. Must be a boolean:", `hasEmail`))
        }
        self$`hasEmail` <- `hasEmail`
      }
      if (!is.null(`hasSms`)) {
        if (!(is.logical(`hasSms`) && length(`hasSms`) == 1)) {
          stop(paste("Error! Invalid data for `hasSms`. Must be a boolean:", `hasSms`))
        }
        self$`hasSms` <- `hasSms`
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
    #' @return NotificationRecipientResponse as a base R list.
    #' @examples
    #' # convert array of NotificationRecipientResponse (x) to a data frame
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
    #' Convert NotificationRecipientResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NotificationRecipientResponseObject <- list()
      if (!is.null(self$`accountId`)) {
        NotificationRecipientResponseObject[["accountId"]] <-
          self$`accountId`
      }
      if (!is.null(self$`locationDisplay`)) {
        NotificationRecipientResponseObject[["locationDisplay"]] <-
          self$`locationDisplay`
      }
      if (!is.null(self$`display`)) {
        NotificationRecipientResponseObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`username`)) {
        NotificationRecipientResponseObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`accountType`)) {
        NotificationRecipientResponseObject[["accountType"]] <-
          self$`accountType`
      }
      if (!is.null(self$`profileImage`)) {
        NotificationRecipientResponseObject[["profileImage"]] <-
          self$`profileImage`
      }
      if (!is.null(self$`gender`)) {
        NotificationRecipientResponseObject[["gender"]] <-
          self$`gender`
      }
      if (!is.null(self$`contactEmail`)) {
        NotificationRecipientResponseObject[["contactEmail"]] <-
          self$`contactEmail`
      }
      if (!is.null(self$`applicationId`)) {
        NotificationRecipientResponseObject[["applicationId"]] <-
          self$`applicationId`
      }
      if (!is.null(self$`appName`)) {
        NotificationRecipientResponseObject[["appName"]] <-
          self$`appName`
      }
      if (!is.null(self$`hasApns`)) {
        NotificationRecipientResponseObject[["hasApns"]] <-
          self$`hasApns`
      }
      if (!is.null(self$`hasGcm`)) {
        NotificationRecipientResponseObject[["hasGcm"]] <-
          self$`hasGcm`
      }
      if (!is.null(self$`hasEmail`)) {
        NotificationRecipientResponseObject[["hasEmail"]] <-
          self$`hasEmail`
      }
      if (!is.null(self$`hasSms`)) {
        NotificationRecipientResponseObject[["hasSms"]] <-
          self$`hasSms`
      }
      return(NotificationRecipientResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationRecipientResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationRecipientResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accountId`)) {
        self$`accountId` <- this_object$`accountId`
      }
      if (!is.null(this_object$`locationDisplay`)) {
        self$`locationDisplay` <- this_object$`locationDisplay`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`accountType`)) {
        self$`accountType` <- this_object$`accountType`
      }
      if (!is.null(this_object$`profileImage`)) {
        self$`profileImage` <- this_object$`profileImage`
      }
      if (!is.null(this_object$`gender`)) {
        if (!is.null(this_object$`gender`) && !(this_object$`gender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", this_object$`gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        self$`gender` <- this_object$`gender`
      }
      if (!is.null(this_object$`contactEmail`)) {
        self$`contactEmail` <- this_object$`contactEmail`
      }
      if (!is.null(this_object$`applicationId`)) {
        self$`applicationId` <- this_object$`applicationId`
      }
      if (!is.null(this_object$`appName`)) {
        self$`appName` <- this_object$`appName`
      }
      if (!is.null(this_object$`hasApns`)) {
        self$`hasApns` <- this_object$`hasApns`
      }
      if (!is.null(this_object$`hasGcm`)) {
        self$`hasGcm` <- this_object$`hasGcm`
      }
      if (!is.null(this_object$`hasEmail`)) {
        self$`hasEmail` <- this_object$`hasEmail`
      }
      if (!is.null(this_object$`hasSms`)) {
        self$`hasSms` <- this_object$`hasSms`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return NotificationRecipientResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationRecipientResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationRecipientResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accountId` <- this_object$`accountId`
      self$`locationDisplay` <- this_object$`locationDisplay`
      self$`display` <- this_object$`display`
      self$`username` <- this_object$`username`
      self$`accountType` <- this_object$`accountType`
      self$`profileImage` <- this_object$`profileImage`
      if (!is.null(this_object$`gender`) && !(this_object$`gender` %in% c("MALE", "FEMALE", "ANY"))) {
        stop(paste("Error! \"", this_object$`gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
      }
      self$`gender` <- this_object$`gender`
      self$`contactEmail` <- this_object$`contactEmail`
      self$`applicationId` <- this_object$`applicationId`
      self$`appName` <- this_object$`appName`
      self$`hasApns` <- this_object$`hasApns`
      self$`hasGcm` <- this_object$`hasGcm`
      self$`hasEmail` <- this_object$`hasEmail`
      self$`hasSms` <- this_object$`hasSms`
      self
    },

    #' @description
    #' Validate JSON input with respect to NotificationRecipientResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NotificationRecipientResponse
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
# NotificationRecipientResponse$unlock()
#
## Below is an example to define the print function
# NotificationRecipientResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NotificationRecipientResponse$lock()

