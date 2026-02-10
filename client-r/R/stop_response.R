#' Create a new StopResponse
#'
#' @description
#' StopResponse Class
#'
#' @docType class
#' @title StopResponse
#' @description StopResponse Class
#' @format An \code{R6Class} generator object
#' @field geoId  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field startWindow  integer [optional]
#' @field endWindow  integer [optional]
#' @field type  character [optional]
#' @field eta  integer [optional]
#' @field etd  integer [optional]
#' @field score  integer [optional]
#' @field errorCode  character [optional]
#' @field error  character [optional]
#' @field itemId  character [optional]
#' @field itemSize  integer [optional]
#' @field load  \link{LoadShortResponse} [optional]
#' @field floorPlanPath  list(\link{NodeRequest}) [optional]
#' @field valid  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StopResponse <- R6::R6Class(
  "StopResponse",
  public = list(
    `geoId` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `startWindow` = NULL,
    `endWindow` = NULL,
    `type` = NULL,
    `eta` = NULL,
    `etd` = NULL,
    `score` = NULL,
    `errorCode` = NULL,
    `error` = NULL,
    `itemId` = NULL,
    `itemSize` = NULL,
    `load` = NULL,
    `floorPlanPath` = NULL,
    `valid` = NULL,

    #' @description
    #' Initialize a new StopResponse class.
    #'
    #' @param geoId geoId
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param startWindow startWindow
    #' @param endWindow endWindow
    #' @param type type
    #' @param eta eta
    #' @param etd etd
    #' @param score score
    #' @param errorCode errorCode
    #' @param error error
    #' @param itemId itemId
    #' @param itemSize itemSize
    #' @param load load
    #' @param floorPlanPath floorPlanPath
    #' @param valid valid
    #' @param ... Other optional arguments.
    initialize = function(`geoId` = NULL, `latitude` = NULL, `longitude` = NULL, `startWindow` = NULL, `endWindow` = NULL, `type` = NULL, `eta` = NULL, `etd` = NULL, `score` = NULL, `errorCode` = NULL, `error` = NULL, `itemId` = NULL, `itemSize` = NULL, `load` = NULL, `floorPlanPath` = NULL, `valid` = NULL, ...) {
      if (!is.null(`geoId`)) {
        if (!(is.character(`geoId`) && length(`geoId`) == 1)) {
          stop(paste("Error! Invalid data for `geoId`. Must be a string:", `geoId`))
        }
        self$`geoId` <- `geoId`
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
      if (!is.null(`startWindow`)) {
        if (!(is.numeric(`startWindow`) && length(`startWindow`) == 1)) {
          stop(paste("Error! Invalid data for `startWindow`. Must be an integer:", `startWindow`))
        }
        self$`startWindow` <- `startWindow`
      }
      if (!is.null(`endWindow`)) {
        if (!(is.numeric(`endWindow`) && length(`endWindow`) == 1)) {
          stop(paste("Error! Invalid data for `endWindow`. Must be an integer:", `endWindow`))
        }
        self$`endWindow` <- `endWindow`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("PICKUP", "DROPOFF", "START", "END", "ROUTING"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"PICKUP\", \"DROPOFF\", \"START\", \"END\", \"ROUTING\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`eta`)) {
        if (!(is.numeric(`eta`) && length(`eta`) == 1)) {
          stop(paste("Error! Invalid data for `eta`. Must be an integer:", `eta`))
        }
        self$`eta` <- `eta`
      }
      if (!is.null(`etd`)) {
        if (!(is.numeric(`etd`) && length(`etd`) == 1)) {
          stop(paste("Error! Invalid data for `etd`. Must be an integer:", `etd`))
        }
        self$`etd` <- `etd`
      }
      if (!is.null(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", `score`))
        }
        self$`score` <- `score`
      }
      if (!is.null(`errorCode`)) {
        if (!(is.character(`errorCode`) && length(`errorCode`) == 1)) {
          stop(paste("Error! Invalid data for `errorCode`. Must be a string:", `errorCode`))
        }
        self$`errorCode` <- `errorCode`
      }
      if (!is.null(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
      }
      if (!is.null(`itemId`)) {
        if (!(is.character(`itemId`) && length(`itemId`) == 1)) {
          stop(paste("Error! Invalid data for `itemId`. Must be a string:", `itemId`))
        }
        self$`itemId` <- `itemId`
      }
      if (!is.null(`itemSize`)) {
        if (!(is.numeric(`itemSize`) && length(`itemSize`) == 1)) {
          stop(paste("Error! Invalid data for `itemSize`. Must be an integer:", `itemSize`))
        }
        self$`itemSize` <- `itemSize`
      }
      if (!is.null(`load`)) {
        stopifnot(R6::is.R6(`load`))
        self$`load` <- `load`
      }
      if (!is.null(`floorPlanPath`)) {
        stopifnot(is.vector(`floorPlanPath`), length(`floorPlanPath`) != 0)
        sapply(`floorPlanPath`, function(x) stopifnot(R6::is.R6(x)))
        self$`floorPlanPath` <- `floorPlanPath`
      }
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
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
    #' @return StopResponse as a base R list.
    #' @examples
    #' # convert array of StopResponse (x) to a data frame
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
    #' Convert StopResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StopResponseObject <- list()
      if (!is.null(self$`geoId`)) {
        StopResponseObject[["geoId"]] <-
          self$`geoId`
      }
      if (!is.null(self$`latitude`)) {
        StopResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        StopResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`startWindow`)) {
        StopResponseObject[["startWindow"]] <-
          self$`startWindow`
      }
      if (!is.null(self$`endWindow`)) {
        StopResponseObject[["endWindow"]] <-
          self$`endWindow`
      }
      if (!is.null(self$`type`)) {
        StopResponseObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`eta`)) {
        StopResponseObject[["eta"]] <-
          self$`eta`
      }
      if (!is.null(self$`etd`)) {
        StopResponseObject[["etd"]] <-
          self$`etd`
      }
      if (!is.null(self$`score`)) {
        StopResponseObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`errorCode`)) {
        StopResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`error`)) {
        StopResponseObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`itemId`)) {
        StopResponseObject[["itemId"]] <-
          self$`itemId`
      }
      if (!is.null(self$`itemSize`)) {
        StopResponseObject[["itemSize"]] <-
          self$`itemSize`
      }
      if (!is.null(self$`load`)) {
        StopResponseObject[["load"]] <-
          self$extractSimpleType(self$`load`)
      }
      if (!is.null(self$`floorPlanPath`)) {
        StopResponseObject[["floorPlanPath"]] <-
          self$extractSimpleType(self$`floorPlanPath`)
      }
      if (!is.null(self$`valid`)) {
        StopResponseObject[["valid"]] <-
          self$`valid`
      }
      return(StopResponseObject)
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
    #' Deserialize JSON string into an instance of StopResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of StopResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`geoId`)) {
        self$`geoId` <- this_object$`geoId`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`startWindow`)) {
        self$`startWindow` <- this_object$`startWindow`
      }
      if (!is.null(this_object$`endWindow`)) {
        self$`endWindow` <- this_object$`endWindow`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("PICKUP", "DROPOFF", "START", "END", "ROUTING"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"PICKUP\", \"DROPOFF\", \"START\", \"END\", \"ROUTING\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`eta`)) {
        self$`eta` <- this_object$`eta`
      }
      if (!is.null(this_object$`etd`)) {
        self$`etd` <- this_object$`etd`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`errorCode`)) {
        self$`errorCode` <- this_object$`errorCode`
      }
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`itemId`)) {
        self$`itemId` <- this_object$`itemId`
      }
      if (!is.null(this_object$`itemSize`)) {
        self$`itemSize` <- this_object$`itemSize`
      }
      if (!is.null(this_object$`load`)) {
        `load_object` <- LoadShortResponse$new()
        `load_object`$fromJSON(jsonlite::toJSON(this_object$`load`, auto_unbox = TRUE, digits = NA))
        self$`load` <- `load_object`
      }
      if (!is.null(this_object$`floorPlanPath`)) {
        self$`floorPlanPath` <- ApiClient$new()$deserializeObj(this_object$`floorPlanPath`, "array[NodeRequest]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StopResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StopResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of StopResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`geoId` <- this_object$`geoId`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`startWindow` <- this_object$`startWindow`
      self$`endWindow` <- this_object$`endWindow`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("PICKUP", "DROPOFF", "START", "END", "ROUTING"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"PICKUP\", \"DROPOFF\", \"START\", \"END\", \"ROUTING\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`eta` <- this_object$`eta`
      self$`etd` <- this_object$`etd`
      self$`score` <- this_object$`score`
      self$`errorCode` <- this_object$`errorCode`
      self$`error` <- this_object$`error`
      self$`itemId` <- this_object$`itemId`
      self$`itemSize` <- this_object$`itemSize`
      self$`load` <- LoadShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`load`, auto_unbox = TRUE, digits = NA))
      self$`floorPlanPath` <- ApiClient$new()$deserializeObj(this_object$`floorPlanPath`, "array[NodeRequest]", loadNamespace("openapi"))
      self$`valid` <- this_object$`valid`
      self
    },

    #' @description
    #' Validate JSON input with respect to StopResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StopResponse
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
# StopResponse$unlock()
#
## Below is an example to define the print function
# StopResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StopResponse$lock()

