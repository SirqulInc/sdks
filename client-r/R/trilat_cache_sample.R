#' Create a new TrilatCacheSample
#'
#' @description
#' TrilatCacheSample Class
#'
#' @docType class
#' @title TrilatCacheSample
#' @description TrilatCacheSample Class
#' @format An \code{R6Class} generator object
#' @field avatarId  character [optional]
#' @field deviceId  character [optional]
#' @field rssi  list(integer) [optional]
#' @field filteredRssi  numeric [optional]
#' @field time  integer [optional]
#' @field networkName  character [optional]
#' @field randomizedId  character [optional]
#' @field deviceSignature  character [optional]
#' @field alternateId  character [optional]
#' @field type  character [optional]
#' @field probeType  character [optional]
#' @field avgRssi  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TrilatCacheSample <- R6::R6Class(
  "TrilatCacheSample",
  public = list(
    `avatarId` = NULL,
    `deviceId` = NULL,
    `rssi` = NULL,
    `filteredRssi` = NULL,
    `time` = NULL,
    `networkName` = NULL,
    `randomizedId` = NULL,
    `deviceSignature` = NULL,
    `alternateId` = NULL,
    `type` = NULL,
    `probeType` = NULL,
    `avgRssi` = NULL,

    #' @description
    #' Initialize a new TrilatCacheSample class.
    #'
    #' @param avatarId avatarId
    #' @param deviceId deviceId
    #' @param rssi rssi
    #' @param filteredRssi filteredRssi
    #' @param time time
    #' @param networkName networkName
    #' @param randomizedId randomizedId
    #' @param deviceSignature deviceSignature
    #' @param alternateId alternateId
    #' @param type type
    #' @param probeType probeType
    #' @param avgRssi avgRssi
    #' @param ... Other optional arguments.
    initialize = function(`avatarId` = NULL, `deviceId` = NULL, `rssi` = NULL, `filteredRssi` = NULL, `time` = NULL, `networkName` = NULL, `randomizedId` = NULL, `deviceSignature` = NULL, `alternateId` = NULL, `type` = NULL, `probeType` = NULL, `avgRssi` = NULL, ...) {
      if (!is.null(`avatarId`)) {
        if (!(is.character(`avatarId`) && length(`avatarId`) == 1)) {
          stop(paste("Error! Invalid data for `avatarId`. Must be a string:", `avatarId`))
        }
        self$`avatarId` <- `avatarId`
      }
      if (!is.null(`deviceId`)) {
        if (!(is.character(`deviceId`) && length(`deviceId`) == 1)) {
          stop(paste("Error! Invalid data for `deviceId`. Must be a string:", `deviceId`))
        }
        self$`deviceId` <- `deviceId`
      }
      if (!is.null(`rssi`)) {
        stopifnot(is.vector(`rssi`), length(`rssi`) != 0)
        sapply(`rssi`, function(x) stopifnot(is.character(x)))
        self$`rssi` <- `rssi`
      }
      if (!is.null(`filteredRssi`)) {
        if (!(is.numeric(`filteredRssi`) && length(`filteredRssi`) == 1)) {
          stop(paste("Error! Invalid data for `filteredRssi`. Must be a number:", `filteredRssi`))
        }
        self$`filteredRssi` <- `filteredRssi`
      }
      if (!is.null(`time`)) {
        if (!(is.numeric(`time`) && length(`time`) == 1)) {
          stop(paste("Error! Invalid data for `time`. Must be an integer:", `time`))
        }
        self$`time` <- `time`
      }
      if (!is.null(`networkName`)) {
        if (!(is.character(`networkName`) && length(`networkName`) == 1)) {
          stop(paste("Error! Invalid data for `networkName`. Must be a string:", `networkName`))
        }
        self$`networkName` <- `networkName`
      }
      if (!is.null(`randomizedId`)) {
        if (!(is.logical(`randomizedId`) && length(`randomizedId`) == 1)) {
          stop(paste("Error! Invalid data for `randomizedId`. Must be a boolean:", `randomizedId`))
        }
        self$`randomizedId` <- `randomizedId`
      }
      if (!is.null(`deviceSignature`)) {
        if (!(is.character(`deviceSignature`) && length(`deviceSignature`) == 1)) {
          stop(paste("Error! Invalid data for `deviceSignature`. Must be a string:", `deviceSignature`))
        }
        self$`deviceSignature` <- `deviceSignature`
      }
      if (!is.null(`alternateId`)) {
        if (!(is.character(`alternateId`) && length(`alternateId`) == 1)) {
          stop(paste("Error! Invalid data for `alternateId`. Must be a string:", `alternateId`))
        }
        self$`alternateId` <- `alternateId`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`probeType`)) {
        if (!(`probeType` %in% c("WIFI_PROBE_REQUEST", "IBEACON", "BLE", "UNKNOWN"))) {
          stop(paste("Error! \"", `probeType`, "\" cannot be assigned to `probeType`. Must be \"WIFI_PROBE_REQUEST\", \"IBEACON\", \"BLE\", \"UNKNOWN\".", sep = ""))
        }
        if (!(is.character(`probeType`) && length(`probeType`) == 1)) {
          stop(paste("Error! Invalid data for `probeType`. Must be a string:", `probeType`))
        }
        self$`probeType` <- `probeType`
      }
      if (!is.null(`avgRssi`)) {
        if (!(is.numeric(`avgRssi`) && length(`avgRssi`) == 1)) {
          stop(paste("Error! Invalid data for `avgRssi`. Must be a number:", `avgRssi`))
        }
        self$`avgRssi` <- `avgRssi`
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
    #' @return TrilatCacheSample as a base R list.
    #' @examples
    #' # convert array of TrilatCacheSample (x) to a data frame
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
    #' Convert TrilatCacheSample to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TrilatCacheSampleObject <- list()
      if (!is.null(self$`avatarId`)) {
        TrilatCacheSampleObject[["avatarId"]] <-
          self$`avatarId`
      }
      if (!is.null(self$`deviceId`)) {
        TrilatCacheSampleObject[["deviceId"]] <-
          self$`deviceId`
      }
      if (!is.null(self$`rssi`)) {
        TrilatCacheSampleObject[["rssi"]] <-
          self$`rssi`
      }
      if (!is.null(self$`filteredRssi`)) {
        TrilatCacheSampleObject[["filteredRssi"]] <-
          self$`filteredRssi`
      }
      if (!is.null(self$`time`)) {
        TrilatCacheSampleObject[["time"]] <-
          self$`time`
      }
      if (!is.null(self$`networkName`)) {
        TrilatCacheSampleObject[["networkName"]] <-
          self$`networkName`
      }
      if (!is.null(self$`randomizedId`)) {
        TrilatCacheSampleObject[["randomizedId"]] <-
          self$`randomizedId`
      }
      if (!is.null(self$`deviceSignature`)) {
        TrilatCacheSampleObject[["deviceSignature"]] <-
          self$`deviceSignature`
      }
      if (!is.null(self$`alternateId`)) {
        TrilatCacheSampleObject[["alternateId"]] <-
          self$`alternateId`
      }
      if (!is.null(self$`type`)) {
        TrilatCacheSampleObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`probeType`)) {
        TrilatCacheSampleObject[["probeType"]] <-
          self$`probeType`
      }
      if (!is.null(self$`avgRssi`)) {
        TrilatCacheSampleObject[["avgRssi"]] <-
          self$`avgRssi`
      }
      return(TrilatCacheSampleObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TrilatCacheSample
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrilatCacheSample
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`avatarId`)) {
        self$`avatarId` <- this_object$`avatarId`
      }
      if (!is.null(this_object$`deviceId`)) {
        self$`deviceId` <- this_object$`deviceId`
      }
      if (!is.null(this_object$`rssi`)) {
        self$`rssi` <- ApiClient$new()$deserializeObj(this_object$`rssi`, "array[integer]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`filteredRssi`)) {
        self$`filteredRssi` <- this_object$`filteredRssi`
      }
      if (!is.null(this_object$`time`)) {
        self$`time` <- this_object$`time`
      }
      if (!is.null(this_object$`networkName`)) {
        self$`networkName` <- this_object$`networkName`
      }
      if (!is.null(this_object$`randomizedId`)) {
        self$`randomizedId` <- this_object$`randomizedId`
      }
      if (!is.null(this_object$`deviceSignature`)) {
        self$`deviceSignature` <- this_object$`deviceSignature`
      }
      if (!is.null(this_object$`alternateId`)) {
        self$`alternateId` <- this_object$`alternateId`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`probeType`)) {
        if (!is.null(this_object$`probeType`) && !(this_object$`probeType` %in% c("WIFI_PROBE_REQUEST", "IBEACON", "BLE", "UNKNOWN"))) {
          stop(paste("Error! \"", this_object$`probeType`, "\" cannot be assigned to `probeType`. Must be \"WIFI_PROBE_REQUEST\", \"IBEACON\", \"BLE\", \"UNKNOWN\".", sep = ""))
        }
        self$`probeType` <- this_object$`probeType`
      }
      if (!is.null(this_object$`avgRssi`)) {
        self$`avgRssi` <- this_object$`avgRssi`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TrilatCacheSample in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TrilatCacheSample
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrilatCacheSample
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`avatarId` <- this_object$`avatarId`
      self$`deviceId` <- this_object$`deviceId`
      self$`rssi` <- ApiClient$new()$deserializeObj(this_object$`rssi`, "array[integer]", loadNamespace("openapi"))
      self$`filteredRssi` <- this_object$`filteredRssi`
      self$`time` <- this_object$`time`
      self$`networkName` <- this_object$`networkName`
      self$`randomizedId` <- this_object$`randomizedId`
      self$`deviceSignature` <- this_object$`deviceSignature`
      self$`alternateId` <- this_object$`alternateId`
      self$`type` <- this_object$`type`
      if (!is.null(this_object$`probeType`) && !(this_object$`probeType` %in% c("WIFI_PROBE_REQUEST", "IBEACON", "BLE", "UNKNOWN"))) {
        stop(paste("Error! \"", this_object$`probeType`, "\" cannot be assigned to `probeType`. Must be \"WIFI_PROBE_REQUEST\", \"IBEACON\", \"BLE\", \"UNKNOWN\".", sep = ""))
      }
      self$`probeType` <- this_object$`probeType`
      self$`avgRssi` <- this_object$`avgRssi`
      self
    },

    #' @description
    #' Validate JSON input with respect to TrilatCacheSample and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TrilatCacheSample
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
# TrilatCacheSample$unlock()
#
## Below is an example to define the print function
# TrilatCacheSample$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TrilatCacheSample$lock()

