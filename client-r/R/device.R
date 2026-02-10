#' Create a new Device
#'
#' @description
#' Device Class
#'
#' @docType class
#' @title Device
#' @description Device Class
#' @format An \code{R6Class} generator object
#' @field rebootTimeHour  integer [optional]
#' @field rebootTimeMinute  integer [optional]
#' @field idleTimeoutInSecond  integer [optional]
#' @field serialNumber  character [optional]
#' @field udid  character [optional]
#' @field deviceType  character [optional]
#' @field devicePower  numeric [optional]
#' @field deviceInterference  numeric [optional]
#' @field lastHeartbeatSent  character [optional]
#' @field lastDown  character [optional]
#' @field lastUp  character [optional]
#' @field lastNotificationSent  character [optional]
#' @field health  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Device <- R6::R6Class(
  "Device",
  public = list(
    `rebootTimeHour` = NULL,
    `rebootTimeMinute` = NULL,
    `idleTimeoutInSecond` = NULL,
    `serialNumber` = NULL,
    `udid` = NULL,
    `deviceType` = NULL,
    `devicePower` = NULL,
    `deviceInterference` = NULL,
    `lastHeartbeatSent` = NULL,
    `lastDown` = NULL,
    `lastUp` = NULL,
    `lastNotificationSent` = NULL,
    `health` = NULL,

    #' @description
    #' Initialize a new Device class.
    #'
    #' @param rebootTimeHour rebootTimeHour
    #' @param rebootTimeMinute rebootTimeMinute
    #' @param idleTimeoutInSecond idleTimeoutInSecond
    #' @param serialNumber serialNumber
    #' @param udid udid
    #' @param deviceType deviceType
    #' @param devicePower devicePower
    #' @param deviceInterference deviceInterference
    #' @param lastHeartbeatSent lastHeartbeatSent
    #' @param lastDown lastDown
    #' @param lastUp lastUp
    #' @param lastNotificationSent lastNotificationSent
    #' @param health health
    #' @param ... Other optional arguments.
    initialize = function(`rebootTimeHour` = NULL, `rebootTimeMinute` = NULL, `idleTimeoutInSecond` = NULL, `serialNumber` = NULL, `udid` = NULL, `deviceType` = NULL, `devicePower` = NULL, `deviceInterference` = NULL, `lastHeartbeatSent` = NULL, `lastDown` = NULL, `lastUp` = NULL, `lastNotificationSent` = NULL, `health` = NULL, ...) {
      if (!is.null(`rebootTimeHour`)) {
        if (!(is.numeric(`rebootTimeHour`) && length(`rebootTimeHour`) == 1)) {
          stop(paste("Error! Invalid data for `rebootTimeHour`. Must be an integer:", `rebootTimeHour`))
        }
        self$`rebootTimeHour` <- `rebootTimeHour`
      }
      if (!is.null(`rebootTimeMinute`)) {
        if (!(is.numeric(`rebootTimeMinute`) && length(`rebootTimeMinute`) == 1)) {
          stop(paste("Error! Invalid data for `rebootTimeMinute`. Must be an integer:", `rebootTimeMinute`))
        }
        self$`rebootTimeMinute` <- `rebootTimeMinute`
      }
      if (!is.null(`idleTimeoutInSecond`)) {
        if (!(is.numeric(`idleTimeoutInSecond`) && length(`idleTimeoutInSecond`) == 1)) {
          stop(paste("Error! Invalid data for `idleTimeoutInSecond`. Must be an integer:", `idleTimeoutInSecond`))
        }
        self$`idleTimeoutInSecond` <- `idleTimeoutInSecond`
      }
      if (!is.null(`serialNumber`)) {
        if (!(is.character(`serialNumber`) && length(`serialNumber`) == 1)) {
          stop(paste("Error! Invalid data for `serialNumber`. Must be a string:", `serialNumber`))
        }
        self$`serialNumber` <- `serialNumber`
      }
      if (!is.null(`udid`)) {
        if (!(is.character(`udid`) && length(`udid`) == 1)) {
          stop(paste("Error! Invalid data for `udid`. Must be a string:", `udid`))
        }
        self$`udid` <- `udid`
      }
      if (!is.null(`deviceType`)) {
        if (!(is.character(`deviceType`) && length(`deviceType`) == 1)) {
          stop(paste("Error! Invalid data for `deviceType`. Must be a string:", `deviceType`))
        }
        self$`deviceType` <- `deviceType`
      }
      if (!is.null(`devicePower`)) {
        if (!(is.numeric(`devicePower`) && length(`devicePower`) == 1)) {
          stop(paste("Error! Invalid data for `devicePower`. Must be a number:", `devicePower`))
        }
        self$`devicePower` <- `devicePower`
      }
      if (!is.null(`deviceInterference`)) {
        if (!(is.numeric(`deviceInterference`) && length(`deviceInterference`) == 1)) {
          stop(paste("Error! Invalid data for `deviceInterference`. Must be a number:", `deviceInterference`))
        }
        self$`deviceInterference` <- `deviceInterference`
      }
      if (!is.null(`lastHeartbeatSent`)) {
        if (!is.character(`lastHeartbeatSent`)) {
          stop(paste("Error! Invalid data for `lastHeartbeatSent`. Must be a string:", `lastHeartbeatSent`))
        }
        self$`lastHeartbeatSent` <- `lastHeartbeatSent`
      }
      if (!is.null(`lastDown`)) {
        if (!is.character(`lastDown`)) {
          stop(paste("Error! Invalid data for `lastDown`. Must be a string:", `lastDown`))
        }
        self$`lastDown` <- `lastDown`
      }
      if (!is.null(`lastUp`)) {
        if (!is.character(`lastUp`)) {
          stop(paste("Error! Invalid data for `lastUp`. Must be a string:", `lastUp`))
        }
        self$`lastUp` <- `lastUp`
      }
      if (!is.null(`lastNotificationSent`)) {
        if (!is.character(`lastNotificationSent`)) {
          stop(paste("Error! Invalid data for `lastNotificationSent`. Must be a string:", `lastNotificationSent`))
        }
        self$`lastNotificationSent` <- `lastNotificationSent`
      }
      if (!is.null(`health`)) {
        if (!(`health` %in% c("RUNNING", "WARNING", "DOWN"))) {
          stop(paste("Error! \"", `health`, "\" cannot be assigned to `health`. Must be \"RUNNING\", \"WARNING\", \"DOWN\".", sep = ""))
        }
        if (!(is.character(`health`) && length(`health`) == 1)) {
          stop(paste("Error! Invalid data for `health`. Must be a string:", `health`))
        }
        self$`health` <- `health`
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
    #' @return Device as a base R list.
    #' @examples
    #' # convert array of Device (x) to a data frame
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
    #' Convert Device to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeviceObject <- list()
      if (!is.null(self$`rebootTimeHour`)) {
        DeviceObject[["rebootTimeHour"]] <-
          self$`rebootTimeHour`
      }
      if (!is.null(self$`rebootTimeMinute`)) {
        DeviceObject[["rebootTimeMinute"]] <-
          self$`rebootTimeMinute`
      }
      if (!is.null(self$`idleTimeoutInSecond`)) {
        DeviceObject[["idleTimeoutInSecond"]] <-
          self$`idleTimeoutInSecond`
      }
      if (!is.null(self$`serialNumber`)) {
        DeviceObject[["serialNumber"]] <-
          self$`serialNumber`
      }
      if (!is.null(self$`udid`)) {
        DeviceObject[["udid"]] <-
          self$`udid`
      }
      if (!is.null(self$`deviceType`)) {
        DeviceObject[["deviceType"]] <-
          self$`deviceType`
      }
      if (!is.null(self$`devicePower`)) {
        DeviceObject[["devicePower"]] <-
          self$`devicePower`
      }
      if (!is.null(self$`deviceInterference`)) {
        DeviceObject[["deviceInterference"]] <-
          self$`deviceInterference`
      }
      if (!is.null(self$`lastHeartbeatSent`)) {
        DeviceObject[["lastHeartbeatSent"]] <-
          self$`lastHeartbeatSent`
      }
      if (!is.null(self$`lastDown`)) {
        DeviceObject[["lastDown"]] <-
          self$`lastDown`
      }
      if (!is.null(self$`lastUp`)) {
        DeviceObject[["lastUp"]] <-
          self$`lastUp`
      }
      if (!is.null(self$`lastNotificationSent`)) {
        DeviceObject[["lastNotificationSent"]] <-
          self$`lastNotificationSent`
      }
      if (!is.null(self$`health`)) {
        DeviceObject[["health"]] <-
          self$`health`
      }
      return(DeviceObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Device
    #'
    #' @param input_json the JSON input
    #' @return the instance of Device
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`rebootTimeHour`)) {
        self$`rebootTimeHour` <- this_object$`rebootTimeHour`
      }
      if (!is.null(this_object$`rebootTimeMinute`)) {
        self$`rebootTimeMinute` <- this_object$`rebootTimeMinute`
      }
      if (!is.null(this_object$`idleTimeoutInSecond`)) {
        self$`idleTimeoutInSecond` <- this_object$`idleTimeoutInSecond`
      }
      if (!is.null(this_object$`serialNumber`)) {
        self$`serialNumber` <- this_object$`serialNumber`
      }
      if (!is.null(this_object$`udid`)) {
        self$`udid` <- this_object$`udid`
      }
      if (!is.null(this_object$`deviceType`)) {
        self$`deviceType` <- this_object$`deviceType`
      }
      if (!is.null(this_object$`devicePower`)) {
        self$`devicePower` <- this_object$`devicePower`
      }
      if (!is.null(this_object$`deviceInterference`)) {
        self$`deviceInterference` <- this_object$`deviceInterference`
      }
      if (!is.null(this_object$`lastHeartbeatSent`)) {
        self$`lastHeartbeatSent` <- this_object$`lastHeartbeatSent`
      }
      if (!is.null(this_object$`lastDown`)) {
        self$`lastDown` <- this_object$`lastDown`
      }
      if (!is.null(this_object$`lastUp`)) {
        self$`lastUp` <- this_object$`lastUp`
      }
      if (!is.null(this_object$`lastNotificationSent`)) {
        self$`lastNotificationSent` <- this_object$`lastNotificationSent`
      }
      if (!is.null(this_object$`health`)) {
        if (!is.null(this_object$`health`) && !(this_object$`health` %in% c("RUNNING", "WARNING", "DOWN"))) {
          stop(paste("Error! \"", this_object$`health`, "\" cannot be assigned to `health`. Must be \"RUNNING\", \"WARNING\", \"DOWN\".", sep = ""))
        }
        self$`health` <- this_object$`health`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Device in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Device
    #'
    #' @param input_json the JSON input
    #' @return the instance of Device
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`rebootTimeHour` <- this_object$`rebootTimeHour`
      self$`rebootTimeMinute` <- this_object$`rebootTimeMinute`
      self$`idleTimeoutInSecond` <- this_object$`idleTimeoutInSecond`
      self$`serialNumber` <- this_object$`serialNumber`
      self$`udid` <- this_object$`udid`
      self$`deviceType` <- this_object$`deviceType`
      self$`devicePower` <- this_object$`devicePower`
      self$`deviceInterference` <- this_object$`deviceInterference`
      self$`lastHeartbeatSent` <- this_object$`lastHeartbeatSent`
      self$`lastDown` <- this_object$`lastDown`
      self$`lastUp` <- this_object$`lastUp`
      self$`lastNotificationSent` <- this_object$`lastNotificationSent`
      if (!is.null(this_object$`health`) && !(this_object$`health` %in% c("RUNNING", "WARNING", "DOWN"))) {
        stop(paste("Error! \"", this_object$`health`, "\" cannot be assigned to `health`. Must be \"RUNNING\", \"WARNING\", \"DOWN\".", sep = ""))
      }
      self$`health` <- this_object$`health`
      self
    },

    #' @description
    #' Validate JSON input with respect to Device and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Device
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
# Device$unlock()
#
## Below is an example to define the print function
# Device$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Device$lock()

