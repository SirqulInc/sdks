#' Create a new ApplicationUsageResponse
#'
#' @description
#' ApplicationUsageResponse Class
#'
#' @docType class
#' @title ApplicationUsageResponse
#' @description ApplicationUsageResponse Class
#' @format An \code{R6Class} generator object
#' @field billableEntity  \link{BillableEntityResponse} [optional]
#' @field applicationId  integer [optional]
#' @field invoiceDate  character [optional]
#' @field balance  numeric [optional]
#' @field totalRequests  integer [optional]
#' @field totalDataStorage  integer [optional]
#' @field totalMediaStorage  integer [optional]
#' @field totalNotifications  integer [optional]
#' @field maxMissions  integer [optional]
#' @field maxVouchers  integer [optional]
#' @field maxCoupons  integer [optional]
#' @field maxProducts  integer [optional]
#' @field maxEvents  integer [optional]
#' @field maxMedia  integer [optional]
#' @field maxLocations  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApplicationUsageResponse <- R6::R6Class(
  "ApplicationUsageResponse",
  public = list(
    `billableEntity` = NULL,
    `applicationId` = NULL,
    `invoiceDate` = NULL,
    `balance` = NULL,
    `totalRequests` = NULL,
    `totalDataStorage` = NULL,
    `totalMediaStorage` = NULL,
    `totalNotifications` = NULL,
    `maxMissions` = NULL,
    `maxVouchers` = NULL,
    `maxCoupons` = NULL,
    `maxProducts` = NULL,
    `maxEvents` = NULL,
    `maxMedia` = NULL,
    `maxLocations` = NULL,

    #' @description
    #' Initialize a new ApplicationUsageResponse class.
    #'
    #' @param billableEntity billableEntity
    #' @param applicationId applicationId
    #' @param invoiceDate invoiceDate
    #' @param balance balance
    #' @param totalRequests totalRequests
    #' @param totalDataStorage totalDataStorage
    #' @param totalMediaStorage totalMediaStorage
    #' @param totalNotifications totalNotifications
    #' @param maxMissions maxMissions
    #' @param maxVouchers maxVouchers
    #' @param maxCoupons maxCoupons
    #' @param maxProducts maxProducts
    #' @param maxEvents maxEvents
    #' @param maxMedia maxMedia
    #' @param maxLocations maxLocations
    #' @param ... Other optional arguments.
    initialize = function(`billableEntity` = NULL, `applicationId` = NULL, `invoiceDate` = NULL, `balance` = NULL, `totalRequests` = NULL, `totalDataStorage` = NULL, `totalMediaStorage` = NULL, `totalNotifications` = NULL, `maxMissions` = NULL, `maxVouchers` = NULL, `maxCoupons` = NULL, `maxProducts` = NULL, `maxEvents` = NULL, `maxMedia` = NULL, `maxLocations` = NULL, ...) {
      if (!is.null(`billableEntity`)) {
        stopifnot(R6::is.R6(`billableEntity`))
        self$`billableEntity` <- `billableEntity`
      }
      if (!is.null(`applicationId`)) {
        if (!(is.numeric(`applicationId`) && length(`applicationId`) == 1)) {
          stop(paste("Error! Invalid data for `applicationId`. Must be an integer:", `applicationId`))
        }
        self$`applicationId` <- `applicationId`
      }
      if (!is.null(`invoiceDate`)) {
        if (!is.character(`invoiceDate`)) {
          stop(paste("Error! Invalid data for `invoiceDate`. Must be a string:", `invoiceDate`))
        }
        self$`invoiceDate` <- `invoiceDate`
      }
      if (!is.null(`balance`)) {
        if (!(is.numeric(`balance`) && length(`balance`) == 1)) {
          stop(paste("Error! Invalid data for `balance`. Must be a number:", `balance`))
        }
        self$`balance` <- `balance`
      }
      if (!is.null(`totalRequests`)) {
        if (!(is.numeric(`totalRequests`) && length(`totalRequests`) == 1)) {
          stop(paste("Error! Invalid data for `totalRequests`. Must be an integer:", `totalRequests`))
        }
        self$`totalRequests` <- `totalRequests`
      }
      if (!is.null(`totalDataStorage`)) {
        if (!(is.numeric(`totalDataStorage`) && length(`totalDataStorage`) == 1)) {
          stop(paste("Error! Invalid data for `totalDataStorage`. Must be an integer:", `totalDataStorage`))
        }
        self$`totalDataStorage` <- `totalDataStorage`
      }
      if (!is.null(`totalMediaStorage`)) {
        if (!(is.numeric(`totalMediaStorage`) && length(`totalMediaStorage`) == 1)) {
          stop(paste("Error! Invalid data for `totalMediaStorage`. Must be an integer:", `totalMediaStorage`))
        }
        self$`totalMediaStorage` <- `totalMediaStorage`
      }
      if (!is.null(`totalNotifications`)) {
        if (!(is.numeric(`totalNotifications`) && length(`totalNotifications`) == 1)) {
          stop(paste("Error! Invalid data for `totalNotifications`. Must be an integer:", `totalNotifications`))
        }
        self$`totalNotifications` <- `totalNotifications`
      }
      if (!is.null(`maxMissions`)) {
        if (!(is.numeric(`maxMissions`) && length(`maxMissions`) == 1)) {
          stop(paste("Error! Invalid data for `maxMissions`. Must be an integer:", `maxMissions`))
        }
        self$`maxMissions` <- `maxMissions`
      }
      if (!is.null(`maxVouchers`)) {
        if (!(is.numeric(`maxVouchers`) && length(`maxVouchers`) == 1)) {
          stop(paste("Error! Invalid data for `maxVouchers`. Must be an integer:", `maxVouchers`))
        }
        self$`maxVouchers` <- `maxVouchers`
      }
      if (!is.null(`maxCoupons`)) {
        if (!(is.numeric(`maxCoupons`) && length(`maxCoupons`) == 1)) {
          stop(paste("Error! Invalid data for `maxCoupons`. Must be an integer:", `maxCoupons`))
        }
        self$`maxCoupons` <- `maxCoupons`
      }
      if (!is.null(`maxProducts`)) {
        if (!(is.numeric(`maxProducts`) && length(`maxProducts`) == 1)) {
          stop(paste("Error! Invalid data for `maxProducts`. Must be an integer:", `maxProducts`))
        }
        self$`maxProducts` <- `maxProducts`
      }
      if (!is.null(`maxEvents`)) {
        if (!(is.numeric(`maxEvents`) && length(`maxEvents`) == 1)) {
          stop(paste("Error! Invalid data for `maxEvents`. Must be an integer:", `maxEvents`))
        }
        self$`maxEvents` <- `maxEvents`
      }
      if (!is.null(`maxMedia`)) {
        if (!(is.numeric(`maxMedia`) && length(`maxMedia`) == 1)) {
          stop(paste("Error! Invalid data for `maxMedia`. Must be an integer:", `maxMedia`))
        }
        self$`maxMedia` <- `maxMedia`
      }
      if (!is.null(`maxLocations`)) {
        if (!(is.numeric(`maxLocations`) && length(`maxLocations`) == 1)) {
          stop(paste("Error! Invalid data for `maxLocations`. Must be an integer:", `maxLocations`))
        }
        self$`maxLocations` <- `maxLocations`
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
    #' @return ApplicationUsageResponse as a base R list.
    #' @examples
    #' # convert array of ApplicationUsageResponse (x) to a data frame
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
    #' Convert ApplicationUsageResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApplicationUsageResponseObject <- list()
      if (!is.null(self$`billableEntity`)) {
        ApplicationUsageResponseObject[["billableEntity"]] <-
          self$extractSimpleType(self$`billableEntity`)
      }
      if (!is.null(self$`applicationId`)) {
        ApplicationUsageResponseObject[["applicationId"]] <-
          self$`applicationId`
      }
      if (!is.null(self$`invoiceDate`)) {
        ApplicationUsageResponseObject[["invoiceDate"]] <-
          self$`invoiceDate`
      }
      if (!is.null(self$`balance`)) {
        ApplicationUsageResponseObject[["balance"]] <-
          self$`balance`
      }
      if (!is.null(self$`totalRequests`)) {
        ApplicationUsageResponseObject[["totalRequests"]] <-
          self$`totalRequests`
      }
      if (!is.null(self$`totalDataStorage`)) {
        ApplicationUsageResponseObject[["totalDataStorage"]] <-
          self$`totalDataStorage`
      }
      if (!is.null(self$`totalMediaStorage`)) {
        ApplicationUsageResponseObject[["totalMediaStorage"]] <-
          self$`totalMediaStorage`
      }
      if (!is.null(self$`totalNotifications`)) {
        ApplicationUsageResponseObject[["totalNotifications"]] <-
          self$`totalNotifications`
      }
      if (!is.null(self$`maxMissions`)) {
        ApplicationUsageResponseObject[["maxMissions"]] <-
          self$`maxMissions`
      }
      if (!is.null(self$`maxVouchers`)) {
        ApplicationUsageResponseObject[["maxVouchers"]] <-
          self$`maxVouchers`
      }
      if (!is.null(self$`maxCoupons`)) {
        ApplicationUsageResponseObject[["maxCoupons"]] <-
          self$`maxCoupons`
      }
      if (!is.null(self$`maxProducts`)) {
        ApplicationUsageResponseObject[["maxProducts"]] <-
          self$`maxProducts`
      }
      if (!is.null(self$`maxEvents`)) {
        ApplicationUsageResponseObject[["maxEvents"]] <-
          self$`maxEvents`
      }
      if (!is.null(self$`maxMedia`)) {
        ApplicationUsageResponseObject[["maxMedia"]] <-
          self$`maxMedia`
      }
      if (!is.null(self$`maxLocations`)) {
        ApplicationUsageResponseObject[["maxLocations"]] <-
          self$`maxLocations`
      }
      return(ApplicationUsageResponseObject)
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
    #' Deserialize JSON string into an instance of ApplicationUsageResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationUsageResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`billableEntity`)) {
        `billableentity_object` <- BillableEntityResponse$new()
        `billableentity_object`$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
        self$`billableEntity` <- `billableentity_object`
      }
      if (!is.null(this_object$`applicationId`)) {
        self$`applicationId` <- this_object$`applicationId`
      }
      if (!is.null(this_object$`invoiceDate`)) {
        self$`invoiceDate` <- this_object$`invoiceDate`
      }
      if (!is.null(this_object$`balance`)) {
        self$`balance` <- this_object$`balance`
      }
      if (!is.null(this_object$`totalRequests`)) {
        self$`totalRequests` <- this_object$`totalRequests`
      }
      if (!is.null(this_object$`totalDataStorage`)) {
        self$`totalDataStorage` <- this_object$`totalDataStorage`
      }
      if (!is.null(this_object$`totalMediaStorage`)) {
        self$`totalMediaStorage` <- this_object$`totalMediaStorage`
      }
      if (!is.null(this_object$`totalNotifications`)) {
        self$`totalNotifications` <- this_object$`totalNotifications`
      }
      if (!is.null(this_object$`maxMissions`)) {
        self$`maxMissions` <- this_object$`maxMissions`
      }
      if (!is.null(this_object$`maxVouchers`)) {
        self$`maxVouchers` <- this_object$`maxVouchers`
      }
      if (!is.null(this_object$`maxCoupons`)) {
        self$`maxCoupons` <- this_object$`maxCoupons`
      }
      if (!is.null(this_object$`maxProducts`)) {
        self$`maxProducts` <- this_object$`maxProducts`
      }
      if (!is.null(this_object$`maxEvents`)) {
        self$`maxEvents` <- this_object$`maxEvents`
      }
      if (!is.null(this_object$`maxMedia`)) {
        self$`maxMedia` <- this_object$`maxMedia`
      }
      if (!is.null(this_object$`maxLocations`)) {
        self$`maxLocations` <- this_object$`maxLocations`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ApplicationUsageResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApplicationUsageResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationUsageResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`billableEntity` <- BillableEntityResponse$new()$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
      self$`applicationId` <- this_object$`applicationId`
      self$`invoiceDate` <- this_object$`invoiceDate`
      self$`balance` <- this_object$`balance`
      self$`totalRequests` <- this_object$`totalRequests`
      self$`totalDataStorage` <- this_object$`totalDataStorage`
      self$`totalMediaStorage` <- this_object$`totalMediaStorage`
      self$`totalNotifications` <- this_object$`totalNotifications`
      self$`maxMissions` <- this_object$`maxMissions`
      self$`maxVouchers` <- this_object$`maxVouchers`
      self$`maxCoupons` <- this_object$`maxCoupons`
      self$`maxProducts` <- this_object$`maxProducts`
      self$`maxEvents` <- this_object$`maxEvents`
      self$`maxMedia` <- this_object$`maxMedia`
      self$`maxLocations` <- this_object$`maxLocations`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApplicationUsageResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApplicationUsageResponse
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
# ApplicationUsageResponse$unlock()
#
## Below is an example to define the print function
# ApplicationUsageResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApplicationUsageResponse$lock()

