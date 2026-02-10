#' Create a new ContactInfo
#'
#' @description
#' ContactInfo Class
#'
#' @docType class
#' @title ContactInfo
#' @description ContactInfo Class
#' @format An \code{R6Class} generator object
#' @field homePhone  character [optional]
#' @field cellPhone  character [optional]
#' @field cellCarrier  \link{CellCarrier} [optional]
#' @field businessPhone  character [optional]
#' @field businessPhoneExt  character [optional]
#' @field faxNumber  character [optional]
#' @field timeZone  character [optional]
#' @field utcOffset  character [optional]
#' @field code501c3  character [optional]
#' @field emailAddress  character [optional]
#' @field address  \link{Address} [optional]
#' @field web  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContactInfo <- R6::R6Class(
  "ContactInfo",
  public = list(
    `homePhone` = NULL,
    `cellPhone` = NULL,
    `cellCarrier` = NULL,
    `businessPhone` = NULL,
    `businessPhoneExt` = NULL,
    `faxNumber` = NULL,
    `timeZone` = NULL,
    `utcOffset` = NULL,
    `code501c3` = NULL,
    `emailAddress` = NULL,
    `address` = NULL,
    `web` = NULL,

    #' @description
    #' Initialize a new ContactInfo class.
    #'
    #' @param homePhone homePhone
    #' @param cellPhone cellPhone
    #' @param cellCarrier cellCarrier
    #' @param businessPhone businessPhone
    #' @param businessPhoneExt businessPhoneExt
    #' @param faxNumber faxNumber
    #' @param timeZone timeZone
    #' @param utcOffset utcOffset
    #' @param code501c3 code501c3
    #' @param emailAddress emailAddress
    #' @param address address
    #' @param web web
    #' @param ... Other optional arguments.
    initialize = function(`homePhone` = NULL, `cellPhone` = NULL, `cellCarrier` = NULL, `businessPhone` = NULL, `businessPhoneExt` = NULL, `faxNumber` = NULL, `timeZone` = NULL, `utcOffset` = NULL, `code501c3` = NULL, `emailAddress` = NULL, `address` = NULL, `web` = NULL, ...) {
      if (!is.null(`homePhone`)) {
        if (!(is.character(`homePhone`) && length(`homePhone`) == 1)) {
          stop(paste("Error! Invalid data for `homePhone`. Must be a string:", `homePhone`))
        }
        self$`homePhone` <- `homePhone`
      }
      if (!is.null(`cellPhone`)) {
        if (!(is.character(`cellPhone`) && length(`cellPhone`) == 1)) {
          stop(paste("Error! Invalid data for `cellPhone`. Must be a string:", `cellPhone`))
        }
        self$`cellPhone` <- `cellPhone`
      }
      if (!is.null(`cellCarrier`)) {
        stopifnot(R6::is.R6(`cellCarrier`))
        self$`cellCarrier` <- `cellCarrier`
      }
      if (!is.null(`businessPhone`)) {
        if (!(is.character(`businessPhone`) && length(`businessPhone`) == 1)) {
          stop(paste("Error! Invalid data for `businessPhone`. Must be a string:", `businessPhone`))
        }
        self$`businessPhone` <- `businessPhone`
      }
      if (!is.null(`businessPhoneExt`)) {
        if (!(is.character(`businessPhoneExt`) && length(`businessPhoneExt`) == 1)) {
          stop(paste("Error! Invalid data for `businessPhoneExt`. Must be a string:", `businessPhoneExt`))
        }
        self$`businessPhoneExt` <- `businessPhoneExt`
      }
      if (!is.null(`faxNumber`)) {
        if (!(is.character(`faxNumber`) && length(`faxNumber`) == 1)) {
          stop(paste("Error! Invalid data for `faxNumber`. Must be a string:", `faxNumber`))
        }
        self$`faxNumber` <- `faxNumber`
      }
      if (!is.null(`timeZone`)) {
        if (!(is.character(`timeZone`) && length(`timeZone`) == 1)) {
          stop(paste("Error! Invalid data for `timeZone`. Must be a string:", `timeZone`))
        }
        self$`timeZone` <- `timeZone`
      }
      if (!is.null(`utcOffset`)) {
        if (!(is.character(`utcOffset`) && length(`utcOffset`) == 1)) {
          stop(paste("Error! Invalid data for `utcOffset`. Must be a string:", `utcOffset`))
        }
        self$`utcOffset` <- `utcOffset`
      }
      if (!is.null(`code501c3`)) {
        if (!(is.character(`code501c3`) && length(`code501c3`) == 1)) {
          stop(paste("Error! Invalid data for `code501c3`. Must be a string:", `code501c3`))
        }
        self$`code501c3` <- `code501c3`
      }
      if (!is.null(`emailAddress`)) {
        if (!(is.character(`emailAddress`) && length(`emailAddress`) == 1)) {
          stop(paste("Error! Invalid data for `emailAddress`. Must be a string:", `emailAddress`))
        }
        self$`emailAddress` <- `emailAddress`
      }
      if (!is.null(`address`)) {
        stopifnot(R6::is.R6(`address`))
        self$`address` <- `address`
      }
      if (!is.null(`web`)) {
        if (!(is.character(`web`) && length(`web`) == 1)) {
          stop(paste("Error! Invalid data for `web`. Must be a string:", `web`))
        }
        self$`web` <- `web`
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
    #' @return ContactInfo as a base R list.
    #' @examples
    #' # convert array of ContactInfo (x) to a data frame
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
    #' Convert ContactInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ContactInfoObject <- list()
      if (!is.null(self$`homePhone`)) {
        ContactInfoObject[["homePhone"]] <-
          self$`homePhone`
      }
      if (!is.null(self$`cellPhone`)) {
        ContactInfoObject[["cellPhone"]] <-
          self$`cellPhone`
      }
      if (!is.null(self$`cellCarrier`)) {
        ContactInfoObject[["cellCarrier"]] <-
          self$extractSimpleType(self$`cellCarrier`)
      }
      if (!is.null(self$`businessPhone`)) {
        ContactInfoObject[["businessPhone"]] <-
          self$`businessPhone`
      }
      if (!is.null(self$`businessPhoneExt`)) {
        ContactInfoObject[["businessPhoneExt"]] <-
          self$`businessPhoneExt`
      }
      if (!is.null(self$`faxNumber`)) {
        ContactInfoObject[["faxNumber"]] <-
          self$`faxNumber`
      }
      if (!is.null(self$`timeZone`)) {
        ContactInfoObject[["timeZone"]] <-
          self$`timeZone`
      }
      if (!is.null(self$`utcOffset`)) {
        ContactInfoObject[["utcOffset"]] <-
          self$`utcOffset`
      }
      if (!is.null(self$`code501c3`)) {
        ContactInfoObject[["code501c3"]] <-
          self$`code501c3`
      }
      if (!is.null(self$`emailAddress`)) {
        ContactInfoObject[["emailAddress"]] <-
          self$`emailAddress`
      }
      if (!is.null(self$`address`)) {
        ContactInfoObject[["address"]] <-
          self$extractSimpleType(self$`address`)
      }
      if (!is.null(self$`web`)) {
        ContactInfoObject[["web"]] <-
          self$`web`
      }
      return(ContactInfoObject)
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
    #' Deserialize JSON string into an instance of ContactInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContactInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`homePhone`)) {
        self$`homePhone` <- this_object$`homePhone`
      }
      if (!is.null(this_object$`cellPhone`)) {
        self$`cellPhone` <- this_object$`cellPhone`
      }
      if (!is.null(this_object$`cellCarrier`)) {
        `cellcarrier_object` <- CellCarrier$new()
        `cellcarrier_object`$fromJSON(jsonlite::toJSON(this_object$`cellCarrier`, auto_unbox = TRUE, digits = NA))
        self$`cellCarrier` <- `cellcarrier_object`
      }
      if (!is.null(this_object$`businessPhone`)) {
        self$`businessPhone` <- this_object$`businessPhone`
      }
      if (!is.null(this_object$`businessPhoneExt`)) {
        self$`businessPhoneExt` <- this_object$`businessPhoneExt`
      }
      if (!is.null(this_object$`faxNumber`)) {
        self$`faxNumber` <- this_object$`faxNumber`
      }
      if (!is.null(this_object$`timeZone`)) {
        self$`timeZone` <- this_object$`timeZone`
      }
      if (!is.null(this_object$`utcOffset`)) {
        self$`utcOffset` <- this_object$`utcOffset`
      }
      if (!is.null(this_object$`code501c3`)) {
        self$`code501c3` <- this_object$`code501c3`
      }
      if (!is.null(this_object$`emailAddress`)) {
        self$`emailAddress` <- this_object$`emailAddress`
      }
      if (!is.null(this_object$`address`)) {
        `address_object` <- Address$new()
        `address_object`$fromJSON(jsonlite::toJSON(this_object$`address`, auto_unbox = TRUE, digits = NA))
        self$`address` <- `address_object`
      }
      if (!is.null(this_object$`web`)) {
        self$`web` <- this_object$`web`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ContactInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ContactInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContactInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`homePhone` <- this_object$`homePhone`
      self$`cellPhone` <- this_object$`cellPhone`
      self$`cellCarrier` <- CellCarrier$new()$fromJSON(jsonlite::toJSON(this_object$`cellCarrier`, auto_unbox = TRUE, digits = NA))
      self$`businessPhone` <- this_object$`businessPhone`
      self$`businessPhoneExt` <- this_object$`businessPhoneExt`
      self$`faxNumber` <- this_object$`faxNumber`
      self$`timeZone` <- this_object$`timeZone`
      self$`utcOffset` <- this_object$`utcOffset`
      self$`code501c3` <- this_object$`code501c3`
      self$`emailAddress` <- this_object$`emailAddress`
      self$`address` <- Address$new()$fromJSON(jsonlite::toJSON(this_object$`address`, auto_unbox = TRUE, digits = NA))
      self$`web` <- this_object$`web`
      self
    },

    #' @description
    #' Validate JSON input with respect to ContactInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ContactInfo
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
# ContactInfo$unlock()
#
## Below is an example to define the print function
# ContactInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ContactInfo$lock()

