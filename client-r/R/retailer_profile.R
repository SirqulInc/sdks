#' Create a new RetailerProfile
#'
#' @description
#' RetailerProfile Class
#'
#' @docType class
#' @title RetailerProfile
#' @description RetailerProfile Class
#' @format An \code{R6Class} generator object
#' @field detailsHeader  character [optional]
#' @field detailsBody  character [optional]
#' @field detailsLineLeft1  character [optional]
#' @field detailsLineLeft2  character [optional]
#' @field detailsLineRight1  character [optional]
#' @field metaDescription  character [optional]
#' @field directions  character [optional]
#' @field hours  character [optional]
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
#' @field featured  character [optional]
#' @field listed  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RetailerProfile <- R6::R6Class(
  "RetailerProfile",
  public = list(
    `detailsHeader` = NULL,
    `detailsBody` = NULL,
    `detailsLineLeft1` = NULL,
    `detailsLineLeft2` = NULL,
    `detailsLineRight1` = NULL,
    `metaDescription` = NULL,
    `directions` = NULL,
    `hours` = NULL,
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
    `featured` = NULL,
    `listed` = NULL,

    #' @description
    #' Initialize a new RetailerProfile class.
    #'
    #' @param detailsHeader detailsHeader
    #' @param detailsBody detailsBody
    #' @param detailsLineLeft1 detailsLineLeft1
    #' @param detailsLineLeft2 detailsLineLeft2
    #' @param detailsLineRight1 detailsLineRight1
    #' @param metaDescription metaDescription
    #' @param directions directions
    #' @param hours hours
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
    #' @param featured featured
    #' @param listed listed
    #' @param ... Other optional arguments.
    initialize = function(`detailsHeader` = NULL, `detailsBody` = NULL, `detailsLineLeft1` = NULL, `detailsLineLeft2` = NULL, `detailsLineRight1` = NULL, `metaDescription` = NULL, `directions` = NULL, `hours` = NULL, `homePhone` = NULL, `cellPhone` = NULL, `cellCarrier` = NULL, `businessPhone` = NULL, `businessPhoneExt` = NULL, `faxNumber` = NULL, `timeZone` = NULL, `utcOffset` = NULL, `code501c3` = NULL, `emailAddress` = NULL, `address` = NULL, `web` = NULL, `featured` = NULL, `listed` = NULL, ...) {
      if (!is.null(`detailsHeader`)) {
        if (!(is.character(`detailsHeader`) && length(`detailsHeader`) == 1)) {
          stop(paste("Error! Invalid data for `detailsHeader`. Must be a string:", `detailsHeader`))
        }
        self$`detailsHeader` <- `detailsHeader`
      }
      if (!is.null(`detailsBody`)) {
        if (!(is.character(`detailsBody`) && length(`detailsBody`) == 1)) {
          stop(paste("Error! Invalid data for `detailsBody`. Must be a string:", `detailsBody`))
        }
        self$`detailsBody` <- `detailsBody`
      }
      if (!is.null(`detailsLineLeft1`)) {
        if (!(is.character(`detailsLineLeft1`) && length(`detailsLineLeft1`) == 1)) {
          stop(paste("Error! Invalid data for `detailsLineLeft1`. Must be a string:", `detailsLineLeft1`))
        }
        self$`detailsLineLeft1` <- `detailsLineLeft1`
      }
      if (!is.null(`detailsLineLeft2`)) {
        if (!(is.character(`detailsLineLeft2`) && length(`detailsLineLeft2`) == 1)) {
          stop(paste("Error! Invalid data for `detailsLineLeft2`. Must be a string:", `detailsLineLeft2`))
        }
        self$`detailsLineLeft2` <- `detailsLineLeft2`
      }
      if (!is.null(`detailsLineRight1`)) {
        if (!(is.character(`detailsLineRight1`) && length(`detailsLineRight1`) == 1)) {
          stop(paste("Error! Invalid data for `detailsLineRight1`. Must be a string:", `detailsLineRight1`))
        }
        self$`detailsLineRight1` <- `detailsLineRight1`
      }
      if (!is.null(`metaDescription`)) {
        if (!(is.character(`metaDescription`) && length(`metaDescription`) == 1)) {
          stop(paste("Error! Invalid data for `metaDescription`. Must be a string:", `metaDescription`))
        }
        self$`metaDescription` <- `metaDescription`
      }
      if (!is.null(`directions`)) {
        if (!(is.character(`directions`) && length(`directions`) == 1)) {
          stop(paste("Error! Invalid data for `directions`. Must be a string:", `directions`))
        }
        self$`directions` <- `directions`
      }
      if (!is.null(`hours`)) {
        if (!(is.character(`hours`) && length(`hours`) == 1)) {
          stop(paste("Error! Invalid data for `hours`. Must be a string:", `hours`))
        }
        self$`hours` <- `hours`
      }
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
      if (!is.null(`featured`)) {
        if (!(is.logical(`featured`) && length(`featured`) == 1)) {
          stop(paste("Error! Invalid data for `featured`. Must be a boolean:", `featured`))
        }
        self$`featured` <- `featured`
      }
      if (!is.null(`listed`)) {
        if (!(is.logical(`listed`) && length(`listed`) == 1)) {
          stop(paste("Error! Invalid data for `listed`. Must be a boolean:", `listed`))
        }
        self$`listed` <- `listed`
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
    #' @return RetailerProfile as a base R list.
    #' @examples
    #' # convert array of RetailerProfile (x) to a data frame
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
    #' Convert RetailerProfile to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RetailerProfileObject <- list()
      if (!is.null(self$`detailsHeader`)) {
        RetailerProfileObject[["detailsHeader"]] <-
          self$`detailsHeader`
      }
      if (!is.null(self$`detailsBody`)) {
        RetailerProfileObject[["detailsBody"]] <-
          self$`detailsBody`
      }
      if (!is.null(self$`detailsLineLeft1`)) {
        RetailerProfileObject[["detailsLineLeft1"]] <-
          self$`detailsLineLeft1`
      }
      if (!is.null(self$`detailsLineLeft2`)) {
        RetailerProfileObject[["detailsLineLeft2"]] <-
          self$`detailsLineLeft2`
      }
      if (!is.null(self$`detailsLineRight1`)) {
        RetailerProfileObject[["detailsLineRight1"]] <-
          self$`detailsLineRight1`
      }
      if (!is.null(self$`metaDescription`)) {
        RetailerProfileObject[["metaDescription"]] <-
          self$`metaDescription`
      }
      if (!is.null(self$`directions`)) {
        RetailerProfileObject[["directions"]] <-
          self$`directions`
      }
      if (!is.null(self$`hours`)) {
        RetailerProfileObject[["hours"]] <-
          self$`hours`
      }
      if (!is.null(self$`homePhone`)) {
        RetailerProfileObject[["homePhone"]] <-
          self$`homePhone`
      }
      if (!is.null(self$`cellPhone`)) {
        RetailerProfileObject[["cellPhone"]] <-
          self$`cellPhone`
      }
      if (!is.null(self$`cellCarrier`)) {
        RetailerProfileObject[["cellCarrier"]] <-
          self$extractSimpleType(self$`cellCarrier`)
      }
      if (!is.null(self$`businessPhone`)) {
        RetailerProfileObject[["businessPhone"]] <-
          self$`businessPhone`
      }
      if (!is.null(self$`businessPhoneExt`)) {
        RetailerProfileObject[["businessPhoneExt"]] <-
          self$`businessPhoneExt`
      }
      if (!is.null(self$`faxNumber`)) {
        RetailerProfileObject[["faxNumber"]] <-
          self$`faxNumber`
      }
      if (!is.null(self$`timeZone`)) {
        RetailerProfileObject[["timeZone"]] <-
          self$`timeZone`
      }
      if (!is.null(self$`utcOffset`)) {
        RetailerProfileObject[["utcOffset"]] <-
          self$`utcOffset`
      }
      if (!is.null(self$`code501c3`)) {
        RetailerProfileObject[["code501c3"]] <-
          self$`code501c3`
      }
      if (!is.null(self$`emailAddress`)) {
        RetailerProfileObject[["emailAddress"]] <-
          self$`emailAddress`
      }
      if (!is.null(self$`address`)) {
        RetailerProfileObject[["address"]] <-
          self$extractSimpleType(self$`address`)
      }
      if (!is.null(self$`web`)) {
        RetailerProfileObject[["web"]] <-
          self$`web`
      }
      if (!is.null(self$`featured`)) {
        RetailerProfileObject[["featured"]] <-
          self$`featured`
      }
      if (!is.null(self$`listed`)) {
        RetailerProfileObject[["listed"]] <-
          self$`listed`
      }
      return(RetailerProfileObject)
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
    #' Deserialize JSON string into an instance of RetailerProfile
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerProfile
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`detailsHeader`)) {
        self$`detailsHeader` <- this_object$`detailsHeader`
      }
      if (!is.null(this_object$`detailsBody`)) {
        self$`detailsBody` <- this_object$`detailsBody`
      }
      if (!is.null(this_object$`detailsLineLeft1`)) {
        self$`detailsLineLeft1` <- this_object$`detailsLineLeft1`
      }
      if (!is.null(this_object$`detailsLineLeft2`)) {
        self$`detailsLineLeft2` <- this_object$`detailsLineLeft2`
      }
      if (!is.null(this_object$`detailsLineRight1`)) {
        self$`detailsLineRight1` <- this_object$`detailsLineRight1`
      }
      if (!is.null(this_object$`metaDescription`)) {
        self$`metaDescription` <- this_object$`metaDescription`
      }
      if (!is.null(this_object$`directions`)) {
        self$`directions` <- this_object$`directions`
      }
      if (!is.null(this_object$`hours`)) {
        self$`hours` <- this_object$`hours`
      }
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
      if (!is.null(this_object$`featured`)) {
        self$`featured` <- this_object$`featured`
      }
      if (!is.null(this_object$`listed`)) {
        self$`listed` <- this_object$`listed`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RetailerProfile in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RetailerProfile
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerProfile
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`detailsHeader` <- this_object$`detailsHeader`
      self$`detailsBody` <- this_object$`detailsBody`
      self$`detailsLineLeft1` <- this_object$`detailsLineLeft1`
      self$`detailsLineLeft2` <- this_object$`detailsLineLeft2`
      self$`detailsLineRight1` <- this_object$`detailsLineRight1`
      self$`metaDescription` <- this_object$`metaDescription`
      self$`directions` <- this_object$`directions`
      self$`hours` <- this_object$`hours`
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
      self$`featured` <- this_object$`featured`
      self$`listed` <- this_object$`listed`
      self
    },

    #' @description
    #' Validate JSON input with respect to RetailerProfile and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RetailerProfile
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
# RetailerProfile$unlock()
#
## Below is an example to define the print function
# RetailerProfile$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RetailerProfile$lock()

