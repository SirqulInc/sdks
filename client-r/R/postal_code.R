#' Create a new PostalCode
#'
#' @description
#' PostalCode Class
#'
#' @docType class
#' @title PostalCode
#' @description PostalCode Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field code  character [optional]
#' @field plus4  character [optional]
#' @field stateCode  character [optional]
#' @field city  character [optional]
#' @field timeZone  character [optional]
#' @field utcOffset  integer [optional]
#' @field regions  list(\link{Region}) [optional]
#' @field eliminated  character [optional]
#' @field searchPoint  character [optional]
#' @field lastOfferImport  character [optional]
#' @field truncatedLatitude  numeric [optional]
#' @field truncatedLongitude  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostalCode <- R6::R6Class(
  "PostalCode",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `code` = NULL,
    `plus4` = NULL,
    `stateCode` = NULL,
    `city` = NULL,
    `timeZone` = NULL,
    `utcOffset` = NULL,
    `regions` = NULL,
    `eliminated` = NULL,
    `searchPoint` = NULL,
    `lastOfferImport` = NULL,
    `truncatedLatitude` = NULL,
    `truncatedLongitude` = NULL,

    #' @description
    #' Initialize a new PostalCode class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param code code
    #' @param plus4 plus4
    #' @param stateCode stateCode
    #' @param city city
    #' @param timeZone timeZone
    #' @param utcOffset utcOffset
    #' @param regions regions
    #' @param eliminated eliminated
    #' @param searchPoint searchPoint
    #' @param lastOfferImport lastOfferImport
    #' @param truncatedLatitude truncatedLatitude
    #' @param truncatedLongitude truncatedLongitude
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `code` = NULL, `plus4` = NULL, `stateCode` = NULL, `city` = NULL, `timeZone` = NULL, `utcOffset` = NULL, `regions` = NULL, `eliminated` = NULL, `searchPoint` = NULL, `lastOfferImport` = NULL, `truncatedLatitude` = NULL, `truncatedLongitude` = NULL, ...) {
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
      if (!is.null(`latitude`)) {
        if (!(is.numeric(`latitude`) && length(`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", `latitude`))
        }
        self$`latitude` <- `latitude`
      }
      if (!is.null(`longitude`)) {
        if (!(is.numeric(`longitude`) && length(`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", `longitude`))
        }
        self$`longitude` <- `longitude`
      }
      if (!is.null(`locationDescription`)) {
        if (!(is.character(`locationDescription`) && length(`locationDescription`) == 1)) {
          stop(paste("Error! Invalid data for `locationDescription`. Must be a string:", `locationDescription`))
        }
        self$`locationDescription` <- `locationDescription`
      }
      if (!is.null(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`plus4`)) {
        if (!(is.character(`plus4`) && length(`plus4`) == 1)) {
          stop(paste("Error! Invalid data for `plus4`. Must be a string:", `plus4`))
        }
        self$`plus4` <- `plus4`
      }
      if (!is.null(`stateCode`)) {
        if (!(is.character(`stateCode`) && length(`stateCode`) == 1)) {
          stop(paste("Error! Invalid data for `stateCode`. Must be a string:", `stateCode`))
        }
        self$`stateCode` <- `stateCode`
      }
      if (!is.null(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!is.null(`timeZone`)) {
        if (!(is.character(`timeZone`) && length(`timeZone`) == 1)) {
          stop(paste("Error! Invalid data for `timeZone`. Must be a string:", `timeZone`))
        }
        self$`timeZone` <- `timeZone`
      }
      if (!is.null(`utcOffset`)) {
        if (!(is.numeric(`utcOffset`) && length(`utcOffset`) == 1)) {
          stop(paste("Error! Invalid data for `utcOffset`. Must be an integer:", `utcOffset`))
        }
        self$`utcOffset` <- `utcOffset`
      }
      if (!is.null(`regions`)) {
        stopifnot(is.vector(`regions`), length(`regions`) != 0)
        sapply(`regions`, function(x) stopifnot(R6::is.R6(x)))
        if (!identical(`regions`, unique(`regions`))) {
          stop("Error! Items in `regions` are not unique.")
        }
        self$`regions` <- `regions`
      }
      if (!is.null(`eliminated`)) {
        if (!(is.logical(`eliminated`) && length(`eliminated`) == 1)) {
          stop(paste("Error! Invalid data for `eliminated`. Must be a boolean:", `eliminated`))
        }
        self$`eliminated` <- `eliminated`
      }
      if (!is.null(`searchPoint`)) {
        if (!(is.logical(`searchPoint`) && length(`searchPoint`) == 1)) {
          stop(paste("Error! Invalid data for `searchPoint`. Must be a boolean:", `searchPoint`))
        }
        self$`searchPoint` <- `searchPoint`
      }
      if (!is.null(`lastOfferImport`)) {
        if (!is.character(`lastOfferImport`)) {
          stop(paste("Error! Invalid data for `lastOfferImport`. Must be a string:", `lastOfferImport`))
        }
        self$`lastOfferImport` <- `lastOfferImport`
      }
      if (!is.null(`truncatedLatitude`)) {
        if (!(is.numeric(`truncatedLatitude`) && length(`truncatedLatitude`) == 1)) {
          stop(paste("Error! Invalid data for `truncatedLatitude`. Must be a number:", `truncatedLatitude`))
        }
        self$`truncatedLatitude` <- `truncatedLatitude`
      }
      if (!is.null(`truncatedLongitude`)) {
        if (!(is.numeric(`truncatedLongitude`) && length(`truncatedLongitude`) == 1)) {
          stop(paste("Error! Invalid data for `truncatedLongitude`. Must be a number:", `truncatedLongitude`))
        }
        self$`truncatedLongitude` <- `truncatedLongitude`
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
    #' @return PostalCode as a base R list.
    #' @examples
    #' # convert array of PostalCode (x) to a data frame
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
    #' Convert PostalCode to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostalCodeObject <- list()
      if (!is.null(self$`id`)) {
        PostalCodeObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        PostalCodeObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        PostalCodeObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        PostalCodeObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        PostalCodeObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        PostalCodeObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`code`)) {
        PostalCodeObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`plus4`)) {
        PostalCodeObject[["plus4"]] <-
          self$`plus4`
      }
      if (!is.null(self$`stateCode`)) {
        PostalCodeObject[["stateCode"]] <-
          self$`stateCode`
      }
      if (!is.null(self$`city`)) {
        PostalCodeObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`timeZone`)) {
        PostalCodeObject[["timeZone"]] <-
          self$`timeZone`
      }
      if (!is.null(self$`utcOffset`)) {
        PostalCodeObject[["utcOffset"]] <-
          self$`utcOffset`
      }
      if (!is.null(self$`regions`)) {
        PostalCodeObject[["regions"]] <-
          self$extractSimpleType(self$`regions`)
      }
      if (!is.null(self$`eliminated`)) {
        PostalCodeObject[["eliminated"]] <-
          self$`eliminated`
      }
      if (!is.null(self$`searchPoint`)) {
        PostalCodeObject[["searchPoint"]] <-
          self$`searchPoint`
      }
      if (!is.null(self$`lastOfferImport`)) {
        PostalCodeObject[["lastOfferImport"]] <-
          self$`lastOfferImport`
      }
      if (!is.null(self$`truncatedLatitude`)) {
        PostalCodeObject[["truncatedLatitude"]] <-
          self$`truncatedLatitude`
      }
      if (!is.null(self$`truncatedLongitude`)) {
        PostalCodeObject[["truncatedLongitude"]] <-
          self$`truncatedLongitude`
      }
      return(PostalCodeObject)
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
    #' Deserialize JSON string into an instance of PostalCode
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostalCode
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
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`locationDescription`)) {
        self$`locationDescription` <- this_object$`locationDescription`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`plus4`)) {
        self$`plus4` <- this_object$`plus4`
      }
      if (!is.null(this_object$`stateCode`)) {
        self$`stateCode` <- this_object$`stateCode`
      }
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`timeZone`)) {
        self$`timeZone` <- this_object$`timeZone`
      }
      if (!is.null(this_object$`utcOffset`)) {
        self$`utcOffset` <- this_object$`utcOffset`
      }
      if (!is.null(this_object$`regions`)) {
        self$`regions` <- ApiClient$new()$deserializeObj(this_object$`regions`, "set[Region]", loadNamespace("openapi"))
        if (!identical(self$`regions`, unique(self$`regions`))) {
          stop("Error! Items in `regions` are not unique.")
        }
      }
      if (!is.null(this_object$`eliminated`)) {
        self$`eliminated` <- this_object$`eliminated`
      }
      if (!is.null(this_object$`searchPoint`)) {
        self$`searchPoint` <- this_object$`searchPoint`
      }
      if (!is.null(this_object$`lastOfferImport`)) {
        self$`lastOfferImport` <- this_object$`lastOfferImport`
      }
      if (!is.null(this_object$`truncatedLatitude`)) {
        self$`truncatedLatitude` <- this_object$`truncatedLatitude`
      }
      if (!is.null(this_object$`truncatedLongitude`)) {
        self$`truncatedLongitude` <- this_object$`truncatedLongitude`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostalCode in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostalCode
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostalCode
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`code` <- this_object$`code`
      self$`plus4` <- this_object$`plus4`
      self$`stateCode` <- this_object$`stateCode`
      self$`city` <- this_object$`city`
      self$`timeZone` <- this_object$`timeZone`
      self$`utcOffset` <- this_object$`utcOffset`
      self$`regions` <- ApiClient$new()$deserializeObj(this_object$`regions`, "set[Region]", loadNamespace("openapi"))
      if (!identical(self$`regions`, unique(self$`regions`))) {
        stop("Error! Items in `regions` are not unique.")
      }
      self$`eliminated` <- this_object$`eliminated`
      self$`searchPoint` <- this_object$`searchPoint`
      self$`lastOfferImport` <- this_object$`lastOfferImport`
      self$`truncatedLatitude` <- this_object$`truncatedLatitude`
      self$`truncatedLongitude` <- this_object$`truncatedLongitude`
      self
    },

    #' @description
    #' Validate JSON input with respect to PostalCode and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostalCode
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
# PostalCode$unlock()
#
## Below is an example to define the print function
# PostalCode$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostalCode$lock()

