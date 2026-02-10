#' Create a new RoutingResponse
#'
#' @description
#' RoutingResponse Class
#'
#' @docType class
#' @title RoutingResponse
#' @description RoutingResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field items  list(\link{LoadResponse}) [optional]
#' @field vehicles  list(\link{VehicleResponse}) [optional]
#' @field drivers  list(\link{DriverResponse}) [optional]
#' @field config  \link{ConfigRoutingRequest} [optional]
#' @field error  character [optional]
#' @field debug  list(character) [optional]
#' @field startTime  character [optional]
#' @field endTime  character [optional]
#' @field responses  list(\link{RoutingResponse}) [optional]
#' @field orignalRequest  character [optional]
#' @field generated  character [optional]
#' @field itineraries  list(\link{ItineraryResponse}) [optional]
#' @field score  integer [optional]
#' @field loadSize  integer [optional]
#' @field runtime  integer [optional]
#' @field earliestPickupWindow  integer [optional]
#' @field latestPickupWindow  integer [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RoutingResponse <- R6::R6Class(
  "RoutingResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `items` = NULL,
    `vehicles` = NULL,
    `drivers` = NULL,
    `config` = NULL,
    `error` = NULL,
    `debug` = NULL,
    `startTime` = NULL,
    `endTime` = NULL,
    `responses` = NULL,
    `orignalRequest` = NULL,
    `generated` = NULL,
    `itineraries` = NULL,
    `score` = NULL,
    `loadSize` = NULL,
    `runtime` = NULL,
    `earliestPickupWindow` = NULL,
    `latestPickupWindow` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new RoutingResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param items items
    #' @param vehicles vehicles
    #' @param drivers drivers
    #' @param config config
    #' @param error error
    #' @param debug debug
    #' @param startTime startTime
    #' @param endTime endTime
    #' @param responses responses
    #' @param orignalRequest orignalRequest
    #' @param generated generated
    #' @param itineraries itineraries
    #' @param score score
    #' @param loadSize loadSize
    #' @param runtime runtime
    #' @param earliestPickupWindow earliestPickupWindow
    #' @param latestPickupWindow latestPickupWindow
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `items` = NULL, `vehicles` = NULL, `drivers` = NULL, `config` = NULL, `error` = NULL, `debug` = NULL, `startTime` = NULL, `endTime` = NULL, `responses` = NULL, `orignalRequest` = NULL, `generated` = NULL, `itineraries` = NULL, `score` = NULL, `loadSize` = NULL, `runtime` = NULL, `earliestPickupWindow` = NULL, `latestPickupWindow` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!is.null(`vehicles`)) {
        stopifnot(is.vector(`vehicles`), length(`vehicles`) != 0)
        sapply(`vehicles`, function(x) stopifnot(R6::is.R6(x)))
        self$`vehicles` <- `vehicles`
      }
      if (!is.null(`drivers`)) {
        stopifnot(is.vector(`drivers`), length(`drivers`) != 0)
        sapply(`drivers`, function(x) stopifnot(R6::is.R6(x)))
        self$`drivers` <- `drivers`
      }
      if (!is.null(`config`)) {
        stopifnot(R6::is.R6(`config`))
        self$`config` <- `config`
      }
      if (!is.null(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
      }
      if (!is.null(`debug`)) {
        stopifnot(is.vector(`debug`), length(`debug`) != 0)
        sapply(`debug`, function(x) stopifnot(is.character(x)))
        self$`debug` <- `debug`
      }
      if (!is.null(`startTime`)) {
        if (!is.character(`startTime`)) {
          stop(paste("Error! Invalid data for `startTime`. Must be a string:", `startTime`))
        }
        self$`startTime` <- `startTime`
      }
      if (!is.null(`endTime`)) {
        if (!is.character(`endTime`)) {
          stop(paste("Error! Invalid data for `endTime`. Must be a string:", `endTime`))
        }
        self$`endTime` <- `endTime`
      }
      if (!is.null(`responses`)) {
        stopifnot(is.vector(`responses`), length(`responses`) != 0)
        sapply(`responses`, function(x) stopifnot(R6::is.R6(x)))
        self$`responses` <- `responses`
      }
      if (!is.null(`orignalRequest`)) {
        if (!(is.character(`orignalRequest`) && length(`orignalRequest`) == 1)) {
          stop(paste("Error! Invalid data for `orignalRequest`. Must be a string:", `orignalRequest`))
        }
        self$`orignalRequest` <- `orignalRequest`
      }
      if (!is.null(`generated`)) {
        if (!(is.logical(`generated`) && length(`generated`) == 1)) {
          stop(paste("Error! Invalid data for `generated`. Must be a boolean:", `generated`))
        }
        self$`generated` <- `generated`
      }
      if (!is.null(`itineraries`)) {
        stopifnot(is.vector(`itineraries`), length(`itineraries`) != 0)
        sapply(`itineraries`, function(x) stopifnot(R6::is.R6(x)))
        self$`itineraries` <- `itineraries`
      }
      if (!is.null(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", `score`))
        }
        self$`score` <- `score`
      }
      if (!is.null(`loadSize`)) {
        if (!(is.numeric(`loadSize`) && length(`loadSize`) == 1)) {
          stop(paste("Error! Invalid data for `loadSize`. Must be an integer:", `loadSize`))
        }
        self$`loadSize` <- `loadSize`
      }
      if (!is.null(`runtime`)) {
        if (!(is.numeric(`runtime`) && length(`runtime`) == 1)) {
          stop(paste("Error! Invalid data for `runtime`. Must be an integer:", `runtime`))
        }
        self$`runtime` <- `runtime`
      }
      if (!is.null(`earliestPickupWindow`)) {
        if (!(is.numeric(`earliestPickupWindow`) && length(`earliestPickupWindow`) == 1)) {
          stop(paste("Error! Invalid data for `earliestPickupWindow`. Must be an integer:", `earliestPickupWindow`))
        }
        self$`earliestPickupWindow` <- `earliestPickupWindow`
      }
      if (!is.null(`latestPickupWindow`)) {
        if (!(is.numeric(`latestPickupWindow`) && length(`latestPickupWindow`) == 1)) {
          stop(paste("Error! Invalid data for `latestPickupWindow`. Must be an integer:", `latestPickupWindow`))
        }
        self$`latestPickupWindow` <- `latestPickupWindow`
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
    #' @return RoutingResponse as a base R list.
    #' @examples
    #' # convert array of RoutingResponse (x) to a data frame
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
    #' Convert RoutingResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RoutingResponseObject <- list()
      if (!is.null(self$`valid`)) {
        RoutingResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        RoutingResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        RoutingResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        RoutingResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        RoutingResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        RoutingResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        RoutingResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`items`)) {
        RoutingResponseObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`vehicles`)) {
        RoutingResponseObject[["vehicles"]] <-
          self$extractSimpleType(self$`vehicles`)
      }
      if (!is.null(self$`drivers`)) {
        RoutingResponseObject[["drivers"]] <-
          self$extractSimpleType(self$`drivers`)
      }
      if (!is.null(self$`config`)) {
        RoutingResponseObject[["config"]] <-
          self$extractSimpleType(self$`config`)
      }
      if (!is.null(self$`error`)) {
        RoutingResponseObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`debug`)) {
        RoutingResponseObject[["debug"]] <-
          self$`debug`
      }
      if (!is.null(self$`startTime`)) {
        RoutingResponseObject[["startTime"]] <-
          self$`startTime`
      }
      if (!is.null(self$`endTime`)) {
        RoutingResponseObject[["endTime"]] <-
          self$`endTime`
      }
      if (!is.null(self$`responses`)) {
        RoutingResponseObject[["responses"]] <-
          self$extractSimpleType(self$`responses`)
      }
      if (!is.null(self$`orignalRequest`)) {
        RoutingResponseObject[["orignalRequest"]] <-
          self$`orignalRequest`
      }
      if (!is.null(self$`generated`)) {
        RoutingResponseObject[["generated"]] <-
          self$`generated`
      }
      if (!is.null(self$`itineraries`)) {
        RoutingResponseObject[["itineraries"]] <-
          self$extractSimpleType(self$`itineraries`)
      }
      if (!is.null(self$`score`)) {
        RoutingResponseObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`loadSize`)) {
        RoutingResponseObject[["loadSize"]] <-
          self$`loadSize`
      }
      if (!is.null(self$`runtime`)) {
        RoutingResponseObject[["runtime"]] <-
          self$`runtime`
      }
      if (!is.null(self$`earliestPickupWindow`)) {
        RoutingResponseObject[["earliestPickupWindow"]] <-
          self$`earliestPickupWindow`
      }
      if (!is.null(self$`latestPickupWindow`)) {
        RoutingResponseObject[["latestPickupWindow"]] <-
          self$`latestPickupWindow`
      }
      if (!is.null(self$`returning`)) {
        RoutingResponseObject[["returning"]] <-
          self$`returning`
      }
      return(RoutingResponseObject)
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
    #' Deserialize JSON string into an instance of RoutingResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RoutingResponse
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
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[LoadResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`vehicles`)) {
        self$`vehicles` <- ApiClient$new()$deserializeObj(this_object$`vehicles`, "array[VehicleResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`drivers`)) {
        self$`drivers` <- ApiClient$new()$deserializeObj(this_object$`drivers`, "array[DriverResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`config`)) {
        `config_object` <- ConfigRoutingRequest$new()
        `config_object`$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
        self$`config` <- `config_object`
      }
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`debug`)) {
        self$`debug` <- ApiClient$new()$deserializeObj(this_object$`debug`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`startTime`)) {
        self$`startTime` <- this_object$`startTime`
      }
      if (!is.null(this_object$`endTime`)) {
        self$`endTime` <- this_object$`endTime`
      }
      if (!is.null(this_object$`responses`)) {
        self$`responses` <- ApiClient$new()$deserializeObj(this_object$`responses`, "array[RoutingResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`orignalRequest`)) {
        self$`orignalRequest` <- this_object$`orignalRequest`
      }
      if (!is.null(this_object$`generated`)) {
        self$`generated` <- this_object$`generated`
      }
      if (!is.null(this_object$`itineraries`)) {
        self$`itineraries` <- ApiClient$new()$deserializeObj(this_object$`itineraries`, "array[ItineraryResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`loadSize`)) {
        self$`loadSize` <- this_object$`loadSize`
      }
      if (!is.null(this_object$`runtime`)) {
        self$`runtime` <- this_object$`runtime`
      }
      if (!is.null(this_object$`earliestPickupWindow`)) {
        self$`earliestPickupWindow` <- this_object$`earliestPickupWindow`
      }
      if (!is.null(this_object$`latestPickupWindow`)) {
        self$`latestPickupWindow` <- this_object$`latestPickupWindow`
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
    #' @return RoutingResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RoutingResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RoutingResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[LoadResponse]", loadNamespace("openapi"))
      self$`vehicles` <- ApiClient$new()$deserializeObj(this_object$`vehicles`, "array[VehicleResponse]", loadNamespace("openapi"))
      self$`drivers` <- ApiClient$new()$deserializeObj(this_object$`drivers`, "array[DriverResponse]", loadNamespace("openapi"))
      self$`config` <- ConfigRoutingRequest$new()$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
      self$`error` <- this_object$`error`
      self$`debug` <- ApiClient$new()$deserializeObj(this_object$`debug`, "array[character]", loadNamespace("openapi"))
      self$`startTime` <- this_object$`startTime`
      self$`endTime` <- this_object$`endTime`
      self$`responses` <- ApiClient$new()$deserializeObj(this_object$`responses`, "array[RoutingResponse]", loadNamespace("openapi"))
      self$`orignalRequest` <- this_object$`orignalRequest`
      self$`generated` <- this_object$`generated`
      self$`itineraries` <- ApiClient$new()$deserializeObj(this_object$`itineraries`, "array[ItineraryResponse]", loadNamespace("openapi"))
      self$`score` <- this_object$`score`
      self$`loadSize` <- this_object$`loadSize`
      self$`runtime` <- this_object$`runtime`
      self$`earliestPickupWindow` <- this_object$`earliestPickupWindow`
      self$`latestPickupWindow` <- this_object$`latestPickupWindow`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to RoutingResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RoutingResponse
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
# RoutingResponse$unlock()
#
## Below is an example to define the print function
# RoutingResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RoutingResponse$lock()

