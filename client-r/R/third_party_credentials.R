#' Create a new ThirdPartyCredentials
#'
#' @description
#' ThirdPartyCredentials Class
#'
#' @docType class
#' @title ThirdPartyCredentials
#' @description ThirdPartyCredentials Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field account  \link{Account} [optional]
#' @field thirdPartyNetwork  \link{ThirdPartyNetwork} [optional]
#' @field thirdPartyUID  integer [optional]
#' @field thirdPartyId  character [optional]
#' @field thirdPartyToken  character [optional]
#' @field thirdPartySecret  character [optional]
#' @field thirdPartyName  character [optional]
#' @field thirdPartyUnencryptedToken  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ThirdPartyCredentials <- R6::R6Class(
  "ThirdPartyCredentials",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `account` = NULL,
    `thirdPartyNetwork` = NULL,
    `thirdPartyUID` = NULL,
    `thirdPartyId` = NULL,
    `thirdPartyToken` = NULL,
    `thirdPartySecret` = NULL,
    `thirdPartyName` = NULL,
    `thirdPartyUnencryptedToken` = NULL,

    #' @description
    #' Initialize a new ThirdPartyCredentials class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param account account
    #' @param thirdPartyNetwork thirdPartyNetwork
    #' @param thirdPartyUID thirdPartyUID
    #' @param thirdPartyId thirdPartyId
    #' @param thirdPartyToken thirdPartyToken
    #' @param thirdPartySecret thirdPartySecret
    #' @param thirdPartyName thirdPartyName
    #' @param thirdPartyUnencryptedToken thirdPartyUnencryptedToken
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `account` = NULL, `thirdPartyNetwork` = NULL, `thirdPartyUID` = NULL, `thirdPartyId` = NULL, `thirdPartyToken` = NULL, `thirdPartySecret` = NULL, `thirdPartyName` = NULL, `thirdPartyUnencryptedToken` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`account`)) {
        stopifnot(R6::is.R6(`account`))
        self$`account` <- `account`
      }
      if (!is.null(`thirdPartyNetwork`)) {
        stopifnot(R6::is.R6(`thirdPartyNetwork`))
        self$`thirdPartyNetwork` <- `thirdPartyNetwork`
      }
      if (!is.null(`thirdPartyUID`)) {
        if (!(is.numeric(`thirdPartyUID`) && length(`thirdPartyUID`) == 1)) {
          stop(paste("Error! Invalid data for `thirdPartyUID`. Must be an integer:", `thirdPartyUID`))
        }
        self$`thirdPartyUID` <- `thirdPartyUID`
      }
      if (!is.null(`thirdPartyId`)) {
        if (!(is.character(`thirdPartyId`) && length(`thirdPartyId`) == 1)) {
          stop(paste("Error! Invalid data for `thirdPartyId`. Must be a string:", `thirdPartyId`))
        }
        self$`thirdPartyId` <- `thirdPartyId`
      }
      if (!is.null(`thirdPartyToken`)) {
        if (!(is.character(`thirdPartyToken`) && length(`thirdPartyToken`) == 1)) {
          stop(paste("Error! Invalid data for `thirdPartyToken`. Must be a string:", `thirdPartyToken`))
        }
        self$`thirdPartyToken` <- `thirdPartyToken`
      }
      if (!is.null(`thirdPartySecret`)) {
        if (!(is.character(`thirdPartySecret`) && length(`thirdPartySecret`) == 1)) {
          stop(paste("Error! Invalid data for `thirdPartySecret`. Must be a string:", `thirdPartySecret`))
        }
        self$`thirdPartySecret` <- `thirdPartySecret`
      }
      if (!is.null(`thirdPartyName`)) {
        if (!(is.character(`thirdPartyName`) && length(`thirdPartyName`) == 1)) {
          stop(paste("Error! Invalid data for `thirdPartyName`. Must be a string:", `thirdPartyName`))
        }
        self$`thirdPartyName` <- `thirdPartyName`
      }
      if (!is.null(`thirdPartyUnencryptedToken`)) {
        if (!(is.character(`thirdPartyUnencryptedToken`) && length(`thirdPartyUnencryptedToken`) == 1)) {
          stop(paste("Error! Invalid data for `thirdPartyUnencryptedToken`. Must be a string:", `thirdPartyUnencryptedToken`))
        }
        self$`thirdPartyUnencryptedToken` <- `thirdPartyUnencryptedToken`
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
    #' @return ThirdPartyCredentials as a base R list.
    #' @examples
    #' # convert array of ThirdPartyCredentials (x) to a data frame
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
    #' Convert ThirdPartyCredentials to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ThirdPartyCredentialsObject <- list()
      if (!is.null(self$`id`)) {
        ThirdPartyCredentialsObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ThirdPartyCredentialsObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ThirdPartyCredentialsObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`account`)) {
        ThirdPartyCredentialsObject[["account"]] <-
          self$extractSimpleType(self$`account`)
      }
      if (!is.null(self$`thirdPartyNetwork`)) {
        ThirdPartyCredentialsObject[["thirdPartyNetwork"]] <-
          self$extractSimpleType(self$`thirdPartyNetwork`)
      }
      if (!is.null(self$`thirdPartyUID`)) {
        ThirdPartyCredentialsObject[["thirdPartyUID"]] <-
          self$`thirdPartyUID`
      }
      if (!is.null(self$`thirdPartyId`)) {
        ThirdPartyCredentialsObject[["thirdPartyId"]] <-
          self$`thirdPartyId`
      }
      if (!is.null(self$`thirdPartyToken`)) {
        ThirdPartyCredentialsObject[["thirdPartyToken"]] <-
          self$`thirdPartyToken`
      }
      if (!is.null(self$`thirdPartySecret`)) {
        ThirdPartyCredentialsObject[["thirdPartySecret"]] <-
          self$`thirdPartySecret`
      }
      if (!is.null(self$`thirdPartyName`)) {
        ThirdPartyCredentialsObject[["thirdPartyName"]] <-
          self$`thirdPartyName`
      }
      if (!is.null(self$`thirdPartyUnencryptedToken`)) {
        ThirdPartyCredentialsObject[["thirdPartyUnencryptedToken"]] <-
          self$`thirdPartyUnencryptedToken`
      }
      return(ThirdPartyCredentialsObject)
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
    #' Deserialize JSON string into an instance of ThirdPartyCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of ThirdPartyCredentials
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`account`)) {
        `account_object` <- Account$new()
        `account_object`$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
        self$`account` <- `account_object`
      }
      if (!is.null(this_object$`thirdPartyNetwork`)) {
        `thirdpartynetwork_object` <- ThirdPartyNetwork$new()
        `thirdpartynetwork_object`$fromJSON(jsonlite::toJSON(this_object$`thirdPartyNetwork`, auto_unbox = TRUE, digits = NA))
        self$`thirdPartyNetwork` <- `thirdpartynetwork_object`
      }
      if (!is.null(this_object$`thirdPartyUID`)) {
        self$`thirdPartyUID` <- this_object$`thirdPartyUID`
      }
      if (!is.null(this_object$`thirdPartyId`)) {
        self$`thirdPartyId` <- this_object$`thirdPartyId`
      }
      if (!is.null(this_object$`thirdPartyToken`)) {
        self$`thirdPartyToken` <- this_object$`thirdPartyToken`
      }
      if (!is.null(this_object$`thirdPartySecret`)) {
        self$`thirdPartySecret` <- this_object$`thirdPartySecret`
      }
      if (!is.null(this_object$`thirdPartyName`)) {
        self$`thirdPartyName` <- this_object$`thirdPartyName`
      }
      if (!is.null(this_object$`thirdPartyUnencryptedToken`)) {
        self$`thirdPartyUnencryptedToken` <- this_object$`thirdPartyUnencryptedToken`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ThirdPartyCredentials in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ThirdPartyCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of ThirdPartyCredentials
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`account` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
      self$`thirdPartyNetwork` <- ThirdPartyNetwork$new()$fromJSON(jsonlite::toJSON(this_object$`thirdPartyNetwork`, auto_unbox = TRUE, digits = NA))
      self$`thirdPartyUID` <- this_object$`thirdPartyUID`
      self$`thirdPartyId` <- this_object$`thirdPartyId`
      self$`thirdPartyToken` <- this_object$`thirdPartyToken`
      self$`thirdPartySecret` <- this_object$`thirdPartySecret`
      self$`thirdPartyName` <- this_object$`thirdPartyName`
      self$`thirdPartyUnencryptedToken` <- this_object$`thirdPartyUnencryptedToken`
      self
    },

    #' @description
    #' Validate JSON input with respect to ThirdPartyCredentials and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ThirdPartyCredentials
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
# ThirdPartyCredentials$unlock()
#
## Below is an example to define the print function
# ThirdPartyCredentials$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ThirdPartyCredentials$lock()

