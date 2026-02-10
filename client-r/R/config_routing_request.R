#' Create a new ConfigRoutingRequest
#'
#' @description
#' ConfigRoutingRequest Class
#'
#' @docType class
#' @title ConfigRoutingRequest
#' @description ConfigRoutingRequest Class
#' @format An \code{R6Class} generator object
#' @field debugMode  character [optional]
#' @field threaded  character [optional]
#' @field threadType  character [optional]
#' @field maxRuntime  integer [optional]
#' @field numberOfMatches  integer [optional]
#' @field maxItineraryTime  integer [optional]
#' @field maxStopsPerVehicle  integer [optional]
#' @field averageCityTimePerMile  integer [optional]
#' @field averageFreewayTimePerMile  integer [optional]
#' @field freewayTravelDistance  numeric [optional]
#' @field sameStopBuffer  numeric [optional]
#' @field orderAlgorithm  character [optional]
#' @field scoreAlgorithm  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConfigRoutingRequest <- R6::R6Class(
  "ConfigRoutingRequest",
  public = list(
    `debugMode` = NULL,
    `threaded` = NULL,
    `threadType` = NULL,
    `maxRuntime` = NULL,
    `numberOfMatches` = NULL,
    `maxItineraryTime` = NULL,
    `maxStopsPerVehicle` = NULL,
    `averageCityTimePerMile` = NULL,
    `averageFreewayTimePerMile` = NULL,
    `freewayTravelDistance` = NULL,
    `sameStopBuffer` = NULL,
    `orderAlgorithm` = NULL,
    `scoreAlgorithm` = NULL,

    #' @description
    #' Initialize a new ConfigRoutingRequest class.
    #'
    #' @param debugMode debugMode
    #' @param threaded threaded
    #' @param threadType threadType
    #' @param maxRuntime maxRuntime
    #' @param numberOfMatches numberOfMatches
    #' @param maxItineraryTime maxItineraryTime
    #' @param maxStopsPerVehicle maxStopsPerVehicle
    #' @param averageCityTimePerMile averageCityTimePerMile
    #' @param averageFreewayTimePerMile averageFreewayTimePerMile
    #' @param freewayTravelDistance freewayTravelDistance
    #' @param sameStopBuffer sameStopBuffer
    #' @param orderAlgorithm orderAlgorithm
    #' @param scoreAlgorithm scoreAlgorithm
    #' @param ... Other optional arguments.
    initialize = function(`debugMode` = NULL, `threaded` = NULL, `threadType` = NULL, `maxRuntime` = NULL, `numberOfMatches` = NULL, `maxItineraryTime` = NULL, `maxStopsPerVehicle` = NULL, `averageCityTimePerMile` = NULL, `averageFreewayTimePerMile` = NULL, `freewayTravelDistance` = NULL, `sameStopBuffer` = NULL, `orderAlgorithm` = NULL, `scoreAlgorithm` = NULL, ...) {
      if (!is.null(`debugMode`)) {
        if (!(is.logical(`debugMode`) && length(`debugMode`) == 1)) {
          stop(paste("Error! Invalid data for `debugMode`. Must be a boolean:", `debugMode`))
        }
        self$`debugMode` <- `debugMode`
      }
      if (!is.null(`threaded`)) {
        if (!(is.logical(`threaded`) && length(`threaded`) == 1)) {
          stop(paste("Error! Invalid data for `threaded`. Must be a boolean:", `threaded`))
        }
        self$`threaded` <- `threaded`
      }
      if (!is.null(`threadType`)) {
        if (!(is.character(`threadType`) && length(`threadType`) == 1)) {
          stop(paste("Error! Invalid data for `threadType`. Must be a string:", `threadType`))
        }
        self$`threadType` <- `threadType`
      }
      if (!is.null(`maxRuntime`)) {
        if (!(is.numeric(`maxRuntime`) && length(`maxRuntime`) == 1)) {
          stop(paste("Error! Invalid data for `maxRuntime`. Must be an integer:", `maxRuntime`))
        }
        self$`maxRuntime` <- `maxRuntime`
      }
      if (!is.null(`numberOfMatches`)) {
        if (!(is.numeric(`numberOfMatches`) && length(`numberOfMatches`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfMatches`. Must be an integer:", `numberOfMatches`))
        }
        self$`numberOfMatches` <- `numberOfMatches`
      }
      if (!is.null(`maxItineraryTime`)) {
        if (!(is.numeric(`maxItineraryTime`) && length(`maxItineraryTime`) == 1)) {
          stop(paste("Error! Invalid data for `maxItineraryTime`. Must be an integer:", `maxItineraryTime`))
        }
        self$`maxItineraryTime` <- `maxItineraryTime`
      }
      if (!is.null(`maxStopsPerVehicle`)) {
        if (!(is.numeric(`maxStopsPerVehicle`) && length(`maxStopsPerVehicle`) == 1)) {
          stop(paste("Error! Invalid data for `maxStopsPerVehicle`. Must be an integer:", `maxStopsPerVehicle`))
        }
        self$`maxStopsPerVehicle` <- `maxStopsPerVehicle`
      }
      if (!is.null(`averageCityTimePerMile`)) {
        if (!(is.numeric(`averageCityTimePerMile`) && length(`averageCityTimePerMile`) == 1)) {
          stop(paste("Error! Invalid data for `averageCityTimePerMile`. Must be an integer:", `averageCityTimePerMile`))
        }
        self$`averageCityTimePerMile` <- `averageCityTimePerMile`
      }
      if (!is.null(`averageFreewayTimePerMile`)) {
        if (!(is.numeric(`averageFreewayTimePerMile`) && length(`averageFreewayTimePerMile`) == 1)) {
          stop(paste("Error! Invalid data for `averageFreewayTimePerMile`. Must be an integer:", `averageFreewayTimePerMile`))
        }
        self$`averageFreewayTimePerMile` <- `averageFreewayTimePerMile`
      }
      if (!is.null(`freewayTravelDistance`)) {
        if (!(is.numeric(`freewayTravelDistance`) && length(`freewayTravelDistance`) == 1)) {
          stop(paste("Error! Invalid data for `freewayTravelDistance`. Must be a number:", `freewayTravelDistance`))
        }
        self$`freewayTravelDistance` <- `freewayTravelDistance`
      }
      if (!is.null(`sameStopBuffer`)) {
        if (!(is.numeric(`sameStopBuffer`) && length(`sameStopBuffer`) == 1)) {
          stop(paste("Error! Invalid data for `sameStopBuffer`. Must be a number:", `sameStopBuffer`))
        }
        self$`sameStopBuffer` <- `sameStopBuffer`
      }
      if (!is.null(`orderAlgorithm`)) {
        if (!(`orderAlgorithm` %in% c("CLOSEST_FIRST", "FURTHEST_FIRST", "PICKUPS_FIRST"))) {
          stop(paste("Error! \"", `orderAlgorithm`, "\" cannot be assigned to `orderAlgorithm`. Must be \"CLOSEST_FIRST\", \"FURTHEST_FIRST\", \"PICKUPS_FIRST\".", sep = ""))
        }
        if (!(is.character(`orderAlgorithm`) && length(`orderAlgorithm`) == 1)) {
          stop(paste("Error! Invalid data for `orderAlgorithm`. Must be a string:", `orderAlgorithm`))
        }
        self$`orderAlgorithm` <- `orderAlgorithm`
      }
      if (!is.null(`scoreAlgorithm`)) {
        if (!(`scoreAlgorithm` %in% c("FEWEST_VEHICLES", "SHORTEST_PASSENGER_TIME"))) {
          stop(paste("Error! \"", `scoreAlgorithm`, "\" cannot be assigned to `scoreAlgorithm`. Must be \"FEWEST_VEHICLES\", \"SHORTEST_PASSENGER_TIME\".", sep = ""))
        }
        if (!(is.character(`scoreAlgorithm`) && length(`scoreAlgorithm`) == 1)) {
          stop(paste("Error! Invalid data for `scoreAlgorithm`. Must be a string:", `scoreAlgorithm`))
        }
        self$`scoreAlgorithm` <- `scoreAlgorithm`
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
    #' @return ConfigRoutingRequest as a base R list.
    #' @examples
    #' # convert array of ConfigRoutingRequest (x) to a data frame
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
    #' Convert ConfigRoutingRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConfigRoutingRequestObject <- list()
      if (!is.null(self$`debugMode`)) {
        ConfigRoutingRequestObject[["debugMode"]] <-
          self$`debugMode`
      }
      if (!is.null(self$`threaded`)) {
        ConfigRoutingRequestObject[["threaded"]] <-
          self$`threaded`
      }
      if (!is.null(self$`threadType`)) {
        ConfigRoutingRequestObject[["threadType"]] <-
          self$`threadType`
      }
      if (!is.null(self$`maxRuntime`)) {
        ConfigRoutingRequestObject[["maxRuntime"]] <-
          self$`maxRuntime`
      }
      if (!is.null(self$`numberOfMatches`)) {
        ConfigRoutingRequestObject[["numberOfMatches"]] <-
          self$`numberOfMatches`
      }
      if (!is.null(self$`maxItineraryTime`)) {
        ConfigRoutingRequestObject[["maxItineraryTime"]] <-
          self$`maxItineraryTime`
      }
      if (!is.null(self$`maxStopsPerVehicle`)) {
        ConfigRoutingRequestObject[["maxStopsPerVehicle"]] <-
          self$`maxStopsPerVehicle`
      }
      if (!is.null(self$`averageCityTimePerMile`)) {
        ConfigRoutingRequestObject[["averageCityTimePerMile"]] <-
          self$`averageCityTimePerMile`
      }
      if (!is.null(self$`averageFreewayTimePerMile`)) {
        ConfigRoutingRequestObject[["averageFreewayTimePerMile"]] <-
          self$`averageFreewayTimePerMile`
      }
      if (!is.null(self$`freewayTravelDistance`)) {
        ConfigRoutingRequestObject[["freewayTravelDistance"]] <-
          self$`freewayTravelDistance`
      }
      if (!is.null(self$`sameStopBuffer`)) {
        ConfigRoutingRequestObject[["sameStopBuffer"]] <-
          self$`sameStopBuffer`
      }
      if (!is.null(self$`orderAlgorithm`)) {
        ConfigRoutingRequestObject[["orderAlgorithm"]] <-
          self$`orderAlgorithm`
      }
      if (!is.null(self$`scoreAlgorithm`)) {
        ConfigRoutingRequestObject[["scoreAlgorithm"]] <-
          self$`scoreAlgorithm`
      }
      return(ConfigRoutingRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ConfigRoutingRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConfigRoutingRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`debugMode`)) {
        self$`debugMode` <- this_object$`debugMode`
      }
      if (!is.null(this_object$`threaded`)) {
        self$`threaded` <- this_object$`threaded`
      }
      if (!is.null(this_object$`threadType`)) {
        self$`threadType` <- this_object$`threadType`
      }
      if (!is.null(this_object$`maxRuntime`)) {
        self$`maxRuntime` <- this_object$`maxRuntime`
      }
      if (!is.null(this_object$`numberOfMatches`)) {
        self$`numberOfMatches` <- this_object$`numberOfMatches`
      }
      if (!is.null(this_object$`maxItineraryTime`)) {
        self$`maxItineraryTime` <- this_object$`maxItineraryTime`
      }
      if (!is.null(this_object$`maxStopsPerVehicle`)) {
        self$`maxStopsPerVehicle` <- this_object$`maxStopsPerVehicle`
      }
      if (!is.null(this_object$`averageCityTimePerMile`)) {
        self$`averageCityTimePerMile` <- this_object$`averageCityTimePerMile`
      }
      if (!is.null(this_object$`averageFreewayTimePerMile`)) {
        self$`averageFreewayTimePerMile` <- this_object$`averageFreewayTimePerMile`
      }
      if (!is.null(this_object$`freewayTravelDistance`)) {
        self$`freewayTravelDistance` <- this_object$`freewayTravelDistance`
      }
      if (!is.null(this_object$`sameStopBuffer`)) {
        self$`sameStopBuffer` <- this_object$`sameStopBuffer`
      }
      if (!is.null(this_object$`orderAlgorithm`)) {
        if (!is.null(this_object$`orderAlgorithm`) && !(this_object$`orderAlgorithm` %in% c("CLOSEST_FIRST", "FURTHEST_FIRST", "PICKUPS_FIRST"))) {
          stop(paste("Error! \"", this_object$`orderAlgorithm`, "\" cannot be assigned to `orderAlgorithm`. Must be \"CLOSEST_FIRST\", \"FURTHEST_FIRST\", \"PICKUPS_FIRST\".", sep = ""))
        }
        self$`orderAlgorithm` <- this_object$`orderAlgorithm`
      }
      if (!is.null(this_object$`scoreAlgorithm`)) {
        if (!is.null(this_object$`scoreAlgorithm`) && !(this_object$`scoreAlgorithm` %in% c("FEWEST_VEHICLES", "SHORTEST_PASSENGER_TIME"))) {
          stop(paste("Error! \"", this_object$`scoreAlgorithm`, "\" cannot be assigned to `scoreAlgorithm`. Must be \"FEWEST_VEHICLES\", \"SHORTEST_PASSENGER_TIME\".", sep = ""))
        }
        self$`scoreAlgorithm` <- this_object$`scoreAlgorithm`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ConfigRoutingRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConfigRoutingRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConfigRoutingRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`debugMode` <- this_object$`debugMode`
      self$`threaded` <- this_object$`threaded`
      self$`threadType` <- this_object$`threadType`
      self$`maxRuntime` <- this_object$`maxRuntime`
      self$`numberOfMatches` <- this_object$`numberOfMatches`
      self$`maxItineraryTime` <- this_object$`maxItineraryTime`
      self$`maxStopsPerVehicle` <- this_object$`maxStopsPerVehicle`
      self$`averageCityTimePerMile` <- this_object$`averageCityTimePerMile`
      self$`averageFreewayTimePerMile` <- this_object$`averageFreewayTimePerMile`
      self$`freewayTravelDistance` <- this_object$`freewayTravelDistance`
      self$`sameStopBuffer` <- this_object$`sameStopBuffer`
      if (!is.null(this_object$`orderAlgorithm`) && !(this_object$`orderAlgorithm` %in% c("CLOSEST_FIRST", "FURTHEST_FIRST", "PICKUPS_FIRST"))) {
        stop(paste("Error! \"", this_object$`orderAlgorithm`, "\" cannot be assigned to `orderAlgorithm`. Must be \"CLOSEST_FIRST\", \"FURTHEST_FIRST\", \"PICKUPS_FIRST\".", sep = ""))
      }
      self$`orderAlgorithm` <- this_object$`orderAlgorithm`
      if (!is.null(this_object$`scoreAlgorithm`) && !(this_object$`scoreAlgorithm` %in% c("FEWEST_VEHICLES", "SHORTEST_PASSENGER_TIME"))) {
        stop(paste("Error! \"", this_object$`scoreAlgorithm`, "\" cannot be assigned to `scoreAlgorithm`. Must be \"FEWEST_VEHICLES\", \"SHORTEST_PASSENGER_TIME\".", sep = ""))
      }
      self$`scoreAlgorithm` <- this_object$`scoreAlgorithm`
      self
    },

    #' @description
    #' Validate JSON input with respect to ConfigRoutingRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConfigRoutingRequest
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
# ConfigRoutingRequest$unlock()
#
## Below is an example to define the print function
# ConfigRoutingRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConfigRoutingRequest$lock()

