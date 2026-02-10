#' Create a new ContactResponse
#'
#' @description
#' ContactResponse Class
#'
#' @docType class
#' @title ContactResponse
#' @description ContactResponse Class
#' @format An \code{R6Class} generator object
#' @field firstName  character [optional]
#' @field middleName  character [optional]
#' @field lastName  character [optional]
#' @field prefix  character [optional]
#' @field suffix  character [optional]
#' @field title  character [optional]
#' @field contactInfo  \link{ContactInfoResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContactResponse <- R6::R6Class(
  "ContactResponse",
  public = list(
    `firstName` = NULL,
    `middleName` = NULL,
    `lastName` = NULL,
    `prefix` = NULL,
    `suffix` = NULL,
    `title` = NULL,
    `contactInfo` = NULL,

    #' @description
    #' Initialize a new ContactResponse class.
    #'
    #' @param firstName firstName
    #' @param middleName middleName
    #' @param lastName lastName
    #' @param prefix prefix
    #' @param suffix suffix
    #' @param title title
    #' @param contactInfo contactInfo
    #' @param ... Other optional arguments.
    initialize = function(`firstName` = NULL, `middleName` = NULL, `lastName` = NULL, `prefix` = NULL, `suffix` = NULL, `title` = NULL, `contactInfo` = NULL, ...) {
      if (!is.null(`firstName`)) {
        if (!(is.character(`firstName`) && length(`firstName`) == 1)) {
          stop(paste("Error! Invalid data for `firstName`. Must be a string:", `firstName`))
        }
        self$`firstName` <- `firstName`
      }
      if (!is.null(`middleName`)) {
        if (!(is.character(`middleName`) && length(`middleName`) == 1)) {
          stop(paste("Error! Invalid data for `middleName`. Must be a string:", `middleName`))
        }
        self$`middleName` <- `middleName`
      }
      if (!is.null(`lastName`)) {
        if (!(is.character(`lastName`) && length(`lastName`) == 1)) {
          stop(paste("Error! Invalid data for `lastName`. Must be a string:", `lastName`))
        }
        self$`lastName` <- `lastName`
      }
      if (!is.null(`prefix`)) {
        if (!(is.character(`prefix`) && length(`prefix`) == 1)) {
          stop(paste("Error! Invalid data for `prefix`. Must be a string:", `prefix`))
        }
        self$`prefix` <- `prefix`
      }
      if (!is.null(`suffix`)) {
        if (!(is.character(`suffix`) && length(`suffix`) == 1)) {
          stop(paste("Error! Invalid data for `suffix`. Must be a string:", `suffix`))
        }
        self$`suffix` <- `suffix`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`contactInfo`)) {
        stopifnot(R6::is.R6(`contactInfo`))
        self$`contactInfo` <- `contactInfo`
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
    #' @return ContactResponse as a base R list.
    #' @examples
    #' # convert array of ContactResponse (x) to a data frame
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
    #' Convert ContactResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ContactResponseObject <- list()
      if (!is.null(self$`firstName`)) {
        ContactResponseObject[["firstName"]] <-
          self$`firstName`
      }
      if (!is.null(self$`middleName`)) {
        ContactResponseObject[["middleName"]] <-
          self$`middleName`
      }
      if (!is.null(self$`lastName`)) {
        ContactResponseObject[["lastName"]] <-
          self$`lastName`
      }
      if (!is.null(self$`prefix`)) {
        ContactResponseObject[["prefix"]] <-
          self$`prefix`
      }
      if (!is.null(self$`suffix`)) {
        ContactResponseObject[["suffix"]] <-
          self$`suffix`
      }
      if (!is.null(self$`title`)) {
        ContactResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`contactInfo`)) {
        ContactResponseObject[["contactInfo"]] <-
          self$extractSimpleType(self$`contactInfo`)
      }
      return(ContactResponseObject)
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
    #' Deserialize JSON string into an instance of ContactResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContactResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`firstName`)) {
        self$`firstName` <- this_object$`firstName`
      }
      if (!is.null(this_object$`middleName`)) {
        self$`middleName` <- this_object$`middleName`
      }
      if (!is.null(this_object$`lastName`)) {
        self$`lastName` <- this_object$`lastName`
      }
      if (!is.null(this_object$`prefix`)) {
        self$`prefix` <- this_object$`prefix`
      }
      if (!is.null(this_object$`suffix`)) {
        self$`suffix` <- this_object$`suffix`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`contactInfo`)) {
        `contactinfo_object` <- ContactInfoResponse$new()
        `contactinfo_object`$fromJSON(jsonlite::toJSON(this_object$`contactInfo`, auto_unbox = TRUE, digits = NA))
        self$`contactInfo` <- `contactinfo_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ContactResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ContactResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContactResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`firstName` <- this_object$`firstName`
      self$`middleName` <- this_object$`middleName`
      self$`lastName` <- this_object$`lastName`
      self$`prefix` <- this_object$`prefix`
      self$`suffix` <- this_object$`suffix`
      self$`title` <- this_object$`title`
      self$`contactInfo` <- ContactInfoResponse$new()$fromJSON(jsonlite::toJSON(this_object$`contactInfo`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ContactResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ContactResponse
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
# ContactResponse$unlock()
#
## Below is an example to define the print function
# ContactResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ContactResponse$lock()

