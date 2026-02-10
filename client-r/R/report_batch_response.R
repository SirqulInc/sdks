#' Create a new ReportBatchResponse
#'
#' @description
#' ReportBatchResponse Class
#'
#' @docType class
#' @title ReportBatchResponse
#' @description ReportBatchResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field batchId  integer [optional]
#' @field reportBatchStatus  character [optional]
#' @field errorMessage  character [optional]
#' @field endpoint  character [optional]
#' @field pageUrl  character [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field created  integer [optional]
#' @field updated  integer [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReportBatchResponse <- R6::R6Class(
  "ReportBatchResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `batchId` = NULL,
    `reportBatchStatus` = NULL,
    `errorMessage` = NULL,
    `endpoint` = NULL,
    `pageUrl` = NULL,
    `name` = NULL,
    `description` = NULL,
    `created` = NULL,
    `updated` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new ReportBatchResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param batchId batchId
    #' @param reportBatchStatus reportBatchStatus
    #' @param errorMessage errorMessage
    #' @param endpoint endpoint
    #' @param pageUrl pageUrl
    #' @param name name
    #' @param description description
    #' @param created created
    #' @param updated updated
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `batchId` = NULL, `reportBatchStatus` = NULL, `errorMessage` = NULL, `endpoint` = NULL, `pageUrl` = NULL, `name` = NULL, `description` = NULL, `created` = NULL, `updated` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`batchId`)) {
        if (!(is.numeric(`batchId`) && length(`batchId`) == 1)) {
          stop(paste("Error! Invalid data for `batchId`. Must be an integer:", `batchId`))
        }
        self$`batchId` <- `batchId`
      }
      if (!is.null(`reportBatchStatus`)) {
        if (!(`reportBatchStatus` %in% c("NEW", "ERROR", "COMPLETE", "PARSE_ERROR", "PROCESSING", "DUPLICATE", "SAVEONLY"))) {
          stop(paste("Error! \"", `reportBatchStatus`, "\" cannot be assigned to `reportBatchStatus`. Must be \"NEW\", \"ERROR\", \"COMPLETE\", \"PARSE_ERROR\", \"PROCESSING\", \"DUPLICATE\", \"SAVEONLY\".", sep = ""))
        }
        if (!(is.character(`reportBatchStatus`) && length(`reportBatchStatus`) == 1)) {
          stop(paste("Error! Invalid data for `reportBatchStatus`. Must be a string:", `reportBatchStatus`))
        }
        self$`reportBatchStatus` <- `reportBatchStatus`
      }
      if (!is.null(`errorMessage`)) {
        if (!(is.character(`errorMessage`) && length(`errorMessage`) == 1)) {
          stop(paste("Error! Invalid data for `errorMessage`. Must be a string:", `errorMessage`))
        }
        self$`errorMessage` <- `errorMessage`
      }
      if (!is.null(`endpoint`)) {
        if (!(is.character(`endpoint`) && length(`endpoint`) == 1)) {
          stop(paste("Error! Invalid data for `endpoint`. Must be a string:", `endpoint`))
        }
        self$`endpoint` <- `endpoint`
      }
      if (!is.null(`pageUrl`)) {
        if (!(is.character(`pageUrl`) && length(`pageUrl`) == 1)) {
          stop(paste("Error! Invalid data for `pageUrl`. Must be a string:", `pageUrl`))
        }
        self$`pageUrl` <- `pageUrl`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
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
    #' @return ReportBatchResponse as a base R list.
    #' @examples
    #' # convert array of ReportBatchResponse (x) to a data frame
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
    #' Convert ReportBatchResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReportBatchResponseObject <- list()
      if (!is.null(self$`valid`)) {
        ReportBatchResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        ReportBatchResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        ReportBatchResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        ReportBatchResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        ReportBatchResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        ReportBatchResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        ReportBatchResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`batchId`)) {
        ReportBatchResponseObject[["batchId"]] <-
          self$`batchId`
      }
      if (!is.null(self$`reportBatchStatus`)) {
        ReportBatchResponseObject[["reportBatchStatus"]] <-
          self$`reportBatchStatus`
      }
      if (!is.null(self$`errorMessage`)) {
        ReportBatchResponseObject[["errorMessage"]] <-
          self$`errorMessage`
      }
      if (!is.null(self$`endpoint`)) {
        ReportBatchResponseObject[["endpoint"]] <-
          self$`endpoint`
      }
      if (!is.null(self$`pageUrl`)) {
        ReportBatchResponseObject[["pageUrl"]] <-
          self$`pageUrl`
      }
      if (!is.null(self$`name`)) {
        ReportBatchResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        ReportBatchResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`created`)) {
        ReportBatchResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`updated`)) {
        ReportBatchResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`returning`)) {
        ReportBatchResponseObject[["returning"]] <-
          self$`returning`
      }
      return(ReportBatchResponseObject)
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
    #' Deserialize JSON string into an instance of ReportBatchResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportBatchResponse
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
      if (!is.null(this_object$`batchId`)) {
        self$`batchId` <- this_object$`batchId`
      }
      if (!is.null(this_object$`reportBatchStatus`)) {
        if (!is.null(this_object$`reportBatchStatus`) && !(this_object$`reportBatchStatus` %in% c("NEW", "ERROR", "COMPLETE", "PARSE_ERROR", "PROCESSING", "DUPLICATE", "SAVEONLY"))) {
          stop(paste("Error! \"", this_object$`reportBatchStatus`, "\" cannot be assigned to `reportBatchStatus`. Must be \"NEW\", \"ERROR\", \"COMPLETE\", \"PARSE_ERROR\", \"PROCESSING\", \"DUPLICATE\", \"SAVEONLY\".", sep = ""))
        }
        self$`reportBatchStatus` <- this_object$`reportBatchStatus`
      }
      if (!is.null(this_object$`errorMessage`)) {
        self$`errorMessage` <- this_object$`errorMessage`
      }
      if (!is.null(this_object$`endpoint`)) {
        self$`endpoint` <- this_object$`endpoint`
      }
      if (!is.null(this_object$`pageUrl`)) {
        self$`pageUrl` <- this_object$`pageUrl`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
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
    #' @return ReportBatchResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReportBatchResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportBatchResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`batchId` <- this_object$`batchId`
      if (!is.null(this_object$`reportBatchStatus`) && !(this_object$`reportBatchStatus` %in% c("NEW", "ERROR", "COMPLETE", "PARSE_ERROR", "PROCESSING", "DUPLICATE", "SAVEONLY"))) {
        stop(paste("Error! \"", this_object$`reportBatchStatus`, "\" cannot be assigned to `reportBatchStatus`. Must be \"NEW\", \"ERROR\", \"COMPLETE\", \"PARSE_ERROR\", \"PROCESSING\", \"DUPLICATE\", \"SAVEONLY\".", sep = ""))
      }
      self$`reportBatchStatus` <- this_object$`reportBatchStatus`
      self$`errorMessage` <- this_object$`errorMessage`
      self$`endpoint` <- this_object$`endpoint`
      self$`pageUrl` <- this_object$`pageUrl`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`created` <- this_object$`created`
      self$`updated` <- this_object$`updated`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReportBatchResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReportBatchResponse
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
# ReportBatchResponse$unlock()
#
## Below is an example to define the print function
# ReportBatchResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReportBatchResponse$lock()

