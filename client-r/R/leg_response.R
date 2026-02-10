#' Create a new LegResponse
#'
#' @description
#' LegResponse Class
#'
#' @docType class
#' @title LegResponse
#' @description LegResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field appKey  character [optional]
#' @field distance  numeric [optional]
#' @field duration  integer [optional]
#' @field startLatitude  numeric [optional]
#' @field startLongitude  numeric [optional]
#' @field startAltitude  numeric [optional]
#' @field startDate  integer [optional]
#' @field endLatitude  numeric [optional]
#' @field endLongitude  numeric [optional]
#' @field endAltitude  numeric [optional]
#' @field endDate  integer [optional]
#' @field created  integer [optional]
#' @field tags  character [optional]
#' @field deviceId  character [optional]
#' @field accountId  integer [optional]
#' @field deviceSignature  character [optional]
#' @field parentAccountId  integer [optional]
#' @field steps  list(\link{StepResponse}) [optional]
#' @field type  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LegResponse <- R6::R6Class(
  "LegResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `appKey` = NULL,
    `distance` = NULL,
    `duration` = NULL,
    `startLatitude` = NULL,
    `startLongitude` = NULL,
    `startAltitude` = NULL,
    `startDate` = NULL,
    `endLatitude` = NULL,
    `endLongitude` = NULL,
    `endAltitude` = NULL,
    `endDate` = NULL,
    `created` = NULL,
    `tags` = NULL,
    `deviceId` = NULL,
    `accountId` = NULL,
    `deviceSignature` = NULL,
    `parentAccountId` = NULL,
    `steps` = NULL,
    `type` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new LegResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param appKey appKey
    #' @param distance distance
    #' @param duration duration
    #' @param startLatitude startLatitude
    #' @param startLongitude startLongitude
    #' @param startAltitude startAltitude
    #' @param startDate startDate
    #' @param endLatitude endLatitude
    #' @param endLongitude endLongitude
    #' @param endAltitude endAltitude
    #' @param endDate endDate
    #' @param created created
    #' @param tags tags
    #' @param deviceId deviceId
    #' @param accountId accountId
    #' @param deviceSignature deviceSignature
    #' @param parentAccountId parentAccountId
    #' @param steps steps
    #' @param type type
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `appKey` = NULL, `distance` = NULL, `duration` = NULL, `startLatitude` = NULL, `startLongitude` = NULL, `startAltitude` = NULL, `startDate` = NULL, `endLatitude` = NULL, `endLongitude` = NULL, `endAltitude` = NULL, `endDate` = NULL, `created` = NULL, `tags` = NULL, `deviceId` = NULL, `accountId` = NULL, `deviceSignature` = NULL, `parentAccountId` = NULL, `steps` = NULL, `type` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`appKey`)) {
        if (!(is.character(`appKey`) && length(`appKey`) == 1)) {
          stop(paste("Error! Invalid data for `appKey`. Must be a string:", `appKey`))
        }
        self$`appKey` <- `appKey`
      }
      if (!is.null(`distance`)) {
        if (!(is.numeric(`distance`) && length(`distance`) == 1)) {
          stop(paste("Error! Invalid data for `distance`. Must be a number:", `distance`))
        }
        self$`distance` <- `distance`
      }
      if (!is.null(`duration`)) {
        if (!(is.numeric(`duration`) && length(`duration`) == 1)) {
          stop(paste("Error! Invalid data for `duration`. Must be an integer:", `duration`))
        }
        self$`duration` <- `duration`
      }
      if (!is.null(`startLatitude`)) {
        if (!(is.numeric(`startLatitude`) && length(`startLatitude`) == 1)) {
          stop(paste("Error! Invalid data for `startLatitude`. Must be a number:", `startLatitude`))
        }
        self$`startLatitude` <- `startLatitude`
      }
      if (!is.null(`startLongitude`)) {
        if (!(is.numeric(`startLongitude`) && length(`startLongitude`) == 1)) {
          stop(paste("Error! Invalid data for `startLongitude`. Must be a number:", `startLongitude`))
        }
        self$`startLongitude` <- `startLongitude`
      }
      if (!is.null(`startAltitude`)) {
        if (!(is.numeric(`startAltitude`) && length(`startAltitude`) == 1)) {
          stop(paste("Error! Invalid data for `startAltitude`. Must be a number:", `startAltitude`))
        }
        self$`startAltitude` <- `startAltitude`
      }
      if (!is.null(`startDate`)) {
        if (!(is.numeric(`startDate`) && length(`startDate`) == 1)) {
          stop(paste("Error! Invalid data for `startDate`. Must be an integer:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`endLatitude`)) {
        if (!(is.numeric(`endLatitude`) && length(`endLatitude`) == 1)) {
          stop(paste("Error! Invalid data for `endLatitude`. Must be a number:", `endLatitude`))
        }
        self$`endLatitude` <- `endLatitude`
      }
      if (!is.null(`endLongitude`)) {
        if (!(is.numeric(`endLongitude`) && length(`endLongitude`) == 1)) {
          stop(paste("Error! Invalid data for `endLongitude`. Must be a number:", `endLongitude`))
        }
        self$`endLongitude` <- `endLongitude`
      }
      if (!is.null(`endAltitude`)) {
        if (!(is.numeric(`endAltitude`) && length(`endAltitude`) == 1)) {
          stop(paste("Error! Invalid data for `endAltitude`. Must be a number:", `endAltitude`))
        }
        self$`endAltitude` <- `endAltitude`
      }
      if (!is.null(`endDate`)) {
        if (!(is.numeric(`endDate`) && length(`endDate`) == 1)) {
          stop(paste("Error! Invalid data for `endDate`. Must be an integer:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`tags`)) {
        if (!(is.character(`tags`) && length(`tags`) == 1)) {
          stop(paste("Error! Invalid data for `tags`. Must be a string:", `tags`))
        }
        self$`tags` <- `tags`
      }
      if (!is.null(`deviceId`)) {
        if (!(is.character(`deviceId`) && length(`deviceId`) == 1)) {
          stop(paste("Error! Invalid data for `deviceId`. Must be a string:", `deviceId`))
        }
        self$`deviceId` <- `deviceId`
      }
      if (!is.null(`accountId`)) {
        if (!(is.numeric(`accountId`) && length(`accountId`) == 1)) {
          stop(paste("Error! Invalid data for `accountId`. Must be an integer:", `accountId`))
        }
        self$`accountId` <- `accountId`
      }
      if (!is.null(`deviceSignature`)) {
        if (!(is.character(`deviceSignature`) && length(`deviceSignature`) == 1)) {
          stop(paste("Error! Invalid data for `deviceSignature`. Must be a string:", `deviceSignature`))
        }
        self$`deviceSignature` <- `deviceSignature`
      }
      if (!is.null(`parentAccountId`)) {
        if (!(is.numeric(`parentAccountId`) && length(`parentAccountId`) == 1)) {
          stop(paste("Error! Invalid data for `parentAccountId`. Must be an integer:", `parentAccountId`))
        }
        self$`parentAccountId` <- `parentAccountId`
      }
      if (!is.null(`steps`)) {
        stopifnot(is.vector(`steps`), length(`steps`) != 0)
        sapply(`steps`, function(x) stopifnot(R6::is.R6(x)))
        self$`steps` <- `steps`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return LegResponse as a base R list.
    #' @examples
    #' # convert array of LegResponse (x) to a data frame
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
    #' Convert LegResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LegResponseObject <- list()
      if (!is.null(self$`valid`)) {
        LegResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        LegResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        LegResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        LegResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        LegResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        LegResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        LegResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`appKey`)) {
        LegResponseObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`distance`)) {
        LegResponseObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`duration`)) {
        LegResponseObject[["duration"]] <-
          self$`duration`
      }
      if (!is.null(self$`startLatitude`)) {
        LegResponseObject[["startLatitude"]] <-
          self$`startLatitude`
      }
      if (!is.null(self$`startLongitude`)) {
        LegResponseObject[["startLongitude"]] <-
          self$`startLongitude`
      }
      if (!is.null(self$`startAltitude`)) {
        LegResponseObject[["startAltitude"]] <-
          self$`startAltitude`
      }
      if (!is.null(self$`startDate`)) {
        LegResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endLatitude`)) {
        LegResponseObject[["endLatitude"]] <-
          self$`endLatitude`
      }
      if (!is.null(self$`endLongitude`)) {
        LegResponseObject[["endLongitude"]] <-
          self$`endLongitude`
      }
      if (!is.null(self$`endAltitude`)) {
        LegResponseObject[["endAltitude"]] <-
          self$`endAltitude`
      }
      if (!is.null(self$`endDate`)) {
        LegResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`created`)) {
        LegResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`tags`)) {
        LegResponseObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`deviceId`)) {
        LegResponseObject[["deviceId"]] <-
          self$`deviceId`
      }
      if (!is.null(self$`accountId`)) {
        LegResponseObject[["accountId"]] <-
          self$`accountId`
      }
      if (!is.null(self$`deviceSignature`)) {
        LegResponseObject[["deviceSignature"]] <-
          self$`deviceSignature`
      }
      if (!is.null(self$`parentAccountId`)) {
        LegResponseObject[["parentAccountId"]] <-
          self$`parentAccountId`
      }
      if (!is.null(self$`steps`)) {
        LegResponseObject[["steps"]] <-
          self$extractSimpleType(self$`steps`)
      }
      if (!is.null(self$`type`)) {
        LegResponseObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`returning`)) {
        LegResponseObject[["returning"]] <-
          self$`returning`
      }
      return(LegResponseObject)
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
    #' Deserialize JSON string into an instance of LegResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of LegResponse
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
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      if (!is.null(this_object$`duration`)) {
        self$`duration` <- this_object$`duration`
      }
      if (!is.null(this_object$`startLatitude`)) {
        self$`startLatitude` <- this_object$`startLatitude`
      }
      if (!is.null(this_object$`startLongitude`)) {
        self$`startLongitude` <- this_object$`startLongitude`
      }
      if (!is.null(this_object$`startAltitude`)) {
        self$`startAltitude` <- this_object$`startAltitude`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endLatitude`)) {
        self$`endLatitude` <- this_object$`endLatitude`
      }
      if (!is.null(this_object$`endLongitude`)) {
        self$`endLongitude` <- this_object$`endLongitude`
      }
      if (!is.null(this_object$`endAltitude`)) {
        self$`endAltitude` <- this_object$`endAltitude`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- this_object$`tags`
      }
      if (!is.null(this_object$`deviceId`)) {
        self$`deviceId` <- this_object$`deviceId`
      }
      if (!is.null(this_object$`accountId`)) {
        self$`accountId` <- this_object$`accountId`
      }
      if (!is.null(this_object$`deviceSignature`)) {
        self$`deviceSignature` <- this_object$`deviceSignature`
      }
      if (!is.null(this_object$`parentAccountId`)) {
        self$`parentAccountId` <- this_object$`parentAccountId`
      }
      if (!is.null(this_object$`steps`)) {
        self$`steps` <- ApiClient$new()$deserializeObj(this_object$`steps`, "array[StepResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
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
    #' @return LegResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LegResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of LegResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`appKey` <- this_object$`appKey`
      self$`distance` <- this_object$`distance`
      self$`duration` <- this_object$`duration`
      self$`startLatitude` <- this_object$`startLatitude`
      self$`startLongitude` <- this_object$`startLongitude`
      self$`startAltitude` <- this_object$`startAltitude`
      self$`startDate` <- this_object$`startDate`
      self$`endLatitude` <- this_object$`endLatitude`
      self$`endLongitude` <- this_object$`endLongitude`
      self$`endAltitude` <- this_object$`endAltitude`
      self$`endDate` <- this_object$`endDate`
      self$`created` <- this_object$`created`
      self$`tags` <- this_object$`tags`
      self$`deviceId` <- this_object$`deviceId`
      self$`accountId` <- this_object$`accountId`
      self$`deviceSignature` <- this_object$`deviceSignature`
      self$`parentAccountId` <- this_object$`parentAccountId`
      self$`steps` <- ApiClient$new()$deserializeObj(this_object$`steps`, "array[StepResponse]", loadNamespace("openapi"))
      self$`type` <- this_object$`type`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to LegResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LegResponse
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
# LegResponse$unlock()
#
## Below is an example to define the print function
# LegResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LegResponse$lock()

