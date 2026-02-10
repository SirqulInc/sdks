#' Create a new Trip
#'
#' @description
#' Trip Class
#'
#' @docType class
#' @title Trip
#' @description Trip Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field owner  \link{Account} [optional]
#' @field pickupLocation  \link{Location} [optional]
#' @field pickupTime  character [optional]
#' @field dropOffLocation  \link{Location} [optional]
#' @field dropOffTime  character [optional]
#' @field shipments  list(\link{Shipment}) [optional]
#' @field recurrence  \link{Recurrence} [optional]
#' @field timeZone  character [optional]
#' @field route  \link{Route} [optional]
#' @field preference  character [optional]
#' @field notifications  character [optional]
#' @field matches  list(\link{Trip}) [optional]
#' @field ownerConnection  \link{Connection} [optional]
#' @field originalId  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Trip <- R6::R6Class(
  "Trip",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `owner` = NULL,
    `pickupLocation` = NULL,
    `pickupTime` = NULL,
    `dropOffLocation` = NULL,
    `dropOffTime` = NULL,
    `shipments` = NULL,
    `recurrence` = NULL,
    `timeZone` = NULL,
    `route` = NULL,
    `preference` = NULL,
    `notifications` = NULL,
    `matches` = NULL,
    `ownerConnection` = NULL,
    `originalId` = NULL,

    #' @description
    #' Initialize a new Trip class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param owner owner
    #' @param pickupLocation pickupLocation
    #' @param pickupTime pickupTime
    #' @param dropOffLocation dropOffLocation
    #' @param dropOffTime dropOffTime
    #' @param shipments shipments
    #' @param recurrence recurrence
    #' @param timeZone timeZone
    #' @param route route
    #' @param preference preference
    #' @param notifications notifications
    #' @param matches matches
    #' @param ownerConnection ownerConnection
    #' @param originalId originalId
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `owner` = NULL, `pickupLocation` = NULL, `pickupTime` = NULL, `dropOffLocation` = NULL, `dropOffTime` = NULL, `shipments` = NULL, `recurrence` = NULL, `timeZone` = NULL, `route` = NULL, `preference` = NULL, `notifications` = NULL, `matches` = NULL, `ownerConnection` = NULL, `originalId` = NULL, ...) {
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
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`pickupLocation`)) {
        stopifnot(R6::is.R6(`pickupLocation`))
        self$`pickupLocation` <- `pickupLocation`
      }
      if (!is.null(`pickupTime`)) {
        if (!is.character(`pickupTime`)) {
          stop(paste("Error! Invalid data for `pickupTime`. Must be a string:", `pickupTime`))
        }
        self$`pickupTime` <- `pickupTime`
      }
      if (!is.null(`dropOffLocation`)) {
        stopifnot(R6::is.R6(`dropOffLocation`))
        self$`dropOffLocation` <- `dropOffLocation`
      }
      if (!is.null(`dropOffTime`)) {
        if (!is.character(`dropOffTime`)) {
          stop(paste("Error! Invalid data for `dropOffTime`. Must be a string:", `dropOffTime`))
        }
        self$`dropOffTime` <- `dropOffTime`
      }
      if (!is.null(`shipments`)) {
        stopifnot(is.vector(`shipments`), length(`shipments`) != 0)
        sapply(`shipments`, function(x) stopifnot(R6::is.R6(x)))
        self$`shipments` <- `shipments`
      }
      if (!is.null(`recurrence`)) {
        stopifnot(R6::is.R6(`recurrence`))
        self$`recurrence` <- `recurrence`
      }
      if (!is.null(`timeZone`)) {
        if (!(is.character(`timeZone`) && length(`timeZone`) == 1)) {
          stop(paste("Error! Invalid data for `timeZone`. Must be a string:", `timeZone`))
        }
        self$`timeZone` <- `timeZone`
      }
      if (!is.null(`route`)) {
        stopifnot(R6::is.R6(`route`))
        self$`route` <- `route`
      }
      if (!is.null(`preference`)) {
        if (!(`preference` %in% c("DRIVE", "FLEXIBLE", "RIDE"))) {
          stop(paste("Error! \"", `preference`, "\" cannot be assigned to `preference`. Must be \"DRIVE\", \"FLEXIBLE\", \"RIDE\".", sep = ""))
        }
        if (!(is.character(`preference`) && length(`preference`) == 1)) {
          stop(paste("Error! Invalid data for `preference`. Must be a string:", `preference`))
        }
        self$`preference` <- `preference`
      }
      if (!is.null(`notifications`)) {
        if (!(is.character(`notifications`) && length(`notifications`) == 1)) {
          stop(paste("Error! Invalid data for `notifications`. Must be a string:", `notifications`))
        }
        self$`notifications` <- `notifications`
      }
      if (!is.null(`matches`)) {
        stopifnot(is.vector(`matches`), length(`matches`) != 0)
        sapply(`matches`, function(x) stopifnot(R6::is.R6(x)))
        self$`matches` <- `matches`
      }
      if (!is.null(`ownerConnection`)) {
        stopifnot(R6::is.R6(`ownerConnection`))
        self$`ownerConnection` <- `ownerConnection`
      }
      if (!is.null(`originalId`)) {
        if (!(is.numeric(`originalId`) && length(`originalId`) == 1)) {
          stop(paste("Error! Invalid data for `originalId`. Must be an integer:", `originalId`))
        }
        self$`originalId` <- `originalId`
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
    #' @return Trip as a base R list.
    #' @examples
    #' # convert array of Trip (x) to a data frame
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
    #' Convert Trip to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TripObject <- list()
      if (!is.null(self$`id`)) {
        TripObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        TripObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        TripObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`owner`)) {
        TripObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`pickupLocation`)) {
        TripObject[["pickupLocation"]] <-
          self$extractSimpleType(self$`pickupLocation`)
      }
      if (!is.null(self$`pickupTime`)) {
        TripObject[["pickupTime"]] <-
          self$`pickupTime`
      }
      if (!is.null(self$`dropOffLocation`)) {
        TripObject[["dropOffLocation"]] <-
          self$extractSimpleType(self$`dropOffLocation`)
      }
      if (!is.null(self$`dropOffTime`)) {
        TripObject[["dropOffTime"]] <-
          self$`dropOffTime`
      }
      if (!is.null(self$`shipments`)) {
        TripObject[["shipments"]] <-
          self$extractSimpleType(self$`shipments`)
      }
      if (!is.null(self$`recurrence`)) {
        TripObject[["recurrence"]] <-
          self$extractSimpleType(self$`recurrence`)
      }
      if (!is.null(self$`timeZone`)) {
        TripObject[["timeZone"]] <-
          self$`timeZone`
      }
      if (!is.null(self$`route`)) {
        TripObject[["route"]] <-
          self$extractSimpleType(self$`route`)
      }
      if (!is.null(self$`preference`)) {
        TripObject[["preference"]] <-
          self$`preference`
      }
      if (!is.null(self$`notifications`)) {
        TripObject[["notifications"]] <-
          self$`notifications`
      }
      if (!is.null(self$`matches`)) {
        TripObject[["matches"]] <-
          self$extractSimpleType(self$`matches`)
      }
      if (!is.null(self$`ownerConnection`)) {
        TripObject[["ownerConnection"]] <-
          self$extractSimpleType(self$`ownerConnection`)
      }
      if (!is.null(self$`originalId`)) {
        TripObject[["originalId"]] <-
          self$`originalId`
      }
      return(TripObject)
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
    #' Deserialize JSON string into an instance of Trip
    #'
    #' @param input_json the JSON input
    #' @return the instance of Trip
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
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`pickupLocation`)) {
        `pickuplocation_object` <- Location$new()
        `pickuplocation_object`$fromJSON(jsonlite::toJSON(this_object$`pickupLocation`, auto_unbox = TRUE, digits = NA))
        self$`pickupLocation` <- `pickuplocation_object`
      }
      if (!is.null(this_object$`pickupTime`)) {
        self$`pickupTime` <- this_object$`pickupTime`
      }
      if (!is.null(this_object$`dropOffLocation`)) {
        `dropofflocation_object` <- Location$new()
        `dropofflocation_object`$fromJSON(jsonlite::toJSON(this_object$`dropOffLocation`, auto_unbox = TRUE, digits = NA))
        self$`dropOffLocation` <- `dropofflocation_object`
      }
      if (!is.null(this_object$`dropOffTime`)) {
        self$`dropOffTime` <- this_object$`dropOffTime`
      }
      if (!is.null(this_object$`shipments`)) {
        self$`shipments` <- ApiClient$new()$deserializeObj(this_object$`shipments`, "array[Shipment]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`recurrence`)) {
        `recurrence_object` <- Recurrence$new()
        `recurrence_object`$fromJSON(jsonlite::toJSON(this_object$`recurrence`, auto_unbox = TRUE, digits = NA))
        self$`recurrence` <- `recurrence_object`
      }
      if (!is.null(this_object$`timeZone`)) {
        self$`timeZone` <- this_object$`timeZone`
      }
      if (!is.null(this_object$`route`)) {
        `route_object` <- Route$new()
        `route_object`$fromJSON(jsonlite::toJSON(this_object$`route`, auto_unbox = TRUE, digits = NA))
        self$`route` <- `route_object`
      }
      if (!is.null(this_object$`preference`)) {
        if (!is.null(this_object$`preference`) && !(this_object$`preference` %in% c("DRIVE", "FLEXIBLE", "RIDE"))) {
          stop(paste("Error! \"", this_object$`preference`, "\" cannot be assigned to `preference`. Must be \"DRIVE\", \"FLEXIBLE\", \"RIDE\".", sep = ""))
        }
        self$`preference` <- this_object$`preference`
      }
      if (!is.null(this_object$`notifications`)) {
        self$`notifications` <- this_object$`notifications`
      }
      if (!is.null(this_object$`matches`)) {
        self$`matches` <- ApiClient$new()$deserializeObj(this_object$`matches`, "array[Trip]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`ownerConnection`)) {
        `ownerconnection_object` <- Connection$new()
        `ownerconnection_object`$fromJSON(jsonlite::toJSON(this_object$`ownerConnection`, auto_unbox = TRUE, digits = NA))
        self$`ownerConnection` <- `ownerconnection_object`
      }
      if (!is.null(this_object$`originalId`)) {
        self$`originalId` <- this_object$`originalId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Trip in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Trip
    #'
    #' @param input_json the JSON input
    #' @return the instance of Trip
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`pickupLocation` <- Location$new()$fromJSON(jsonlite::toJSON(this_object$`pickupLocation`, auto_unbox = TRUE, digits = NA))
      self$`pickupTime` <- this_object$`pickupTime`
      self$`dropOffLocation` <- Location$new()$fromJSON(jsonlite::toJSON(this_object$`dropOffLocation`, auto_unbox = TRUE, digits = NA))
      self$`dropOffTime` <- this_object$`dropOffTime`
      self$`shipments` <- ApiClient$new()$deserializeObj(this_object$`shipments`, "array[Shipment]", loadNamespace("openapi"))
      self$`recurrence` <- Recurrence$new()$fromJSON(jsonlite::toJSON(this_object$`recurrence`, auto_unbox = TRUE, digits = NA))
      self$`timeZone` <- this_object$`timeZone`
      self$`route` <- Route$new()$fromJSON(jsonlite::toJSON(this_object$`route`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`preference`) && !(this_object$`preference` %in% c("DRIVE", "FLEXIBLE", "RIDE"))) {
        stop(paste("Error! \"", this_object$`preference`, "\" cannot be assigned to `preference`. Must be \"DRIVE\", \"FLEXIBLE\", \"RIDE\".", sep = ""))
      }
      self$`preference` <- this_object$`preference`
      self$`notifications` <- this_object$`notifications`
      self$`matches` <- ApiClient$new()$deserializeObj(this_object$`matches`, "array[Trip]", loadNamespace("openapi"))
      self$`ownerConnection` <- Connection$new()$fromJSON(jsonlite::toJSON(this_object$`ownerConnection`, auto_unbox = TRUE, digits = NA))
      self$`originalId` <- this_object$`originalId`
      self
    },

    #' @description
    #' Validate JSON input with respect to Trip and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Trip
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
# Trip$unlock()
#
## Below is an example to define the print function
# Trip$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Trip$lock()

