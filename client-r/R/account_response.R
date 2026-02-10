#' Create a new AccountResponse
#'
#' @description
#' AccountResponse Class
#'
#' @docType class
#' @title AccountResponse
#' @description AccountResponse Class
#' @format An \code{R6Class} generator object
#' @field accountId  integer [optional]
#' @field locationDisplay  character [optional]
#' @field display  character [optional]
#' @field username  character [optional]
#' @field accountType  character [optional]
#' @field profileImage  character [optional]
#' @field gender  character [optional]
#' @field contactEmail  character [optional]
#' @field contact  \link{ContactResponse} [optional]
#' @field manager  \link{AccountMiniResponse} [optional]
#' @field active  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountResponse <- R6::R6Class(
  "AccountResponse",
  public = list(
    `accountId` = NULL,
    `locationDisplay` = NULL,
    `display` = NULL,
    `username` = NULL,
    `accountType` = NULL,
    `profileImage` = NULL,
    `gender` = NULL,
    `contactEmail` = NULL,
    `contact` = NULL,
    `manager` = NULL,
    `active` = NULL,

    #' @description
    #' Initialize a new AccountResponse class.
    #'
    #' @param accountId accountId
    #' @param locationDisplay locationDisplay
    #' @param display display
    #' @param username username
    #' @param accountType accountType
    #' @param profileImage profileImage
    #' @param gender gender
    #' @param contactEmail contactEmail
    #' @param contact contact
    #' @param manager manager
    #' @param active active
    #' @param ... Other optional arguments.
    initialize = function(`accountId` = NULL, `locationDisplay` = NULL, `display` = NULL, `username` = NULL, `accountType` = NULL, `profileImage` = NULL, `gender` = NULL, `contactEmail` = NULL, `contact` = NULL, `manager` = NULL, `active` = NULL, ...) {
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
      if (!is.null(`contact`)) {
        stopifnot(R6::is.R6(`contact`))
        self$`contact` <- `contact`
      }
      if (!is.null(`manager`)) {
        stopifnot(R6::is.R6(`manager`))
        self$`manager` <- `manager`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
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
    #' @return AccountResponse as a base R list.
    #' @examples
    #' # convert array of AccountResponse (x) to a data frame
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
    #' Convert AccountResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccountResponseObject <- list()
      if (!is.null(self$`accountId`)) {
        AccountResponseObject[["accountId"]] <-
          self$`accountId`
      }
      if (!is.null(self$`locationDisplay`)) {
        AccountResponseObject[["locationDisplay"]] <-
          self$`locationDisplay`
      }
      if (!is.null(self$`display`)) {
        AccountResponseObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`username`)) {
        AccountResponseObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`accountType`)) {
        AccountResponseObject[["accountType"]] <-
          self$`accountType`
      }
      if (!is.null(self$`profileImage`)) {
        AccountResponseObject[["profileImage"]] <-
          self$`profileImage`
      }
      if (!is.null(self$`gender`)) {
        AccountResponseObject[["gender"]] <-
          self$`gender`
      }
      if (!is.null(self$`contactEmail`)) {
        AccountResponseObject[["contactEmail"]] <-
          self$`contactEmail`
      }
      if (!is.null(self$`contact`)) {
        AccountResponseObject[["contact"]] <-
          self$extractSimpleType(self$`contact`)
      }
      if (!is.null(self$`manager`)) {
        AccountResponseObject[["manager"]] <-
          self$extractSimpleType(self$`manager`)
      }
      if (!is.null(self$`active`)) {
        AccountResponseObject[["active"]] <-
          self$`active`
      }
      return(AccountResponseObject)
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
    #' Deserialize JSON string into an instance of AccountResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountResponse
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
      if (!is.null(this_object$`contact`)) {
        `contact_object` <- ContactResponse$new()
        `contact_object`$fromJSON(jsonlite::toJSON(this_object$`contact`, auto_unbox = TRUE, digits = NA))
        self$`contact` <- `contact_object`
      }
      if (!is.null(this_object$`manager`)) {
        `manager_object` <- AccountMiniResponse$new()
        `manager_object`$fromJSON(jsonlite::toJSON(this_object$`manager`, auto_unbox = TRUE, digits = NA))
        self$`manager` <- `manager_object`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccountResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountResponse
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
      self$`contact` <- ContactResponse$new()$fromJSON(jsonlite::toJSON(this_object$`contact`, auto_unbox = TRUE, digits = NA))
      self$`manager` <- AccountMiniResponse$new()$fromJSON(jsonlite::toJSON(this_object$`manager`, auto_unbox = TRUE, digits = NA))
      self$`active` <- this_object$`active`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccountResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccountResponse
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
# AccountResponse$unlock()
#
## Below is an example to define the print function
# AccountResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountResponse$lock()

