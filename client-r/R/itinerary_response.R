#' Create a new ItineraryResponse
#'
#' @description
#' ItineraryResponse Class
#'
#' @docType class
#' @title ItineraryResponse
#' @description ItineraryResponse Class
#' @format An \code{R6Class} generator object
#' @field itineraryId  character [optional]
#' @field waypointCount  integer [optional]
#' @field score  integer [optional]
#' @field errorCode  character [optional]
#' @field error  character [optional]
#' @field itemCount  integer [optional]
#' @field vehicle  \link{VehicleResponse} [optional]
#' @field stops  list(\link{StopResponse}) [optional]
#' @field estimatedStartTime  integer [optional]
#' @field estimatedEndTime  integer [optional]
#' @field estimatedDuration  integer [optional]
#' @field estimatedDistance  numeric [optional]
#' @field waitTime  integer [optional]
#' @field generated  character [optional]
#' @field valid  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ItineraryResponse <- R6::R6Class(
  "ItineraryResponse",
  public = list(
    `itineraryId` = NULL,
    `waypointCount` = NULL,
    `score` = NULL,
    `errorCode` = NULL,
    `error` = NULL,
    `itemCount` = NULL,
    `vehicle` = NULL,
    `stops` = NULL,
    `estimatedStartTime` = NULL,
    `estimatedEndTime` = NULL,
    `estimatedDuration` = NULL,
    `estimatedDistance` = NULL,
    `waitTime` = NULL,
    `generated` = NULL,
    `valid` = NULL,

    #' @description
    #' Initialize a new ItineraryResponse class.
    #'
    #' @param itineraryId itineraryId
    #' @param waypointCount waypointCount
    #' @param score score
    #' @param errorCode errorCode
    #' @param error error
    #' @param itemCount itemCount
    #' @param vehicle vehicle
    #' @param stops stops
    #' @param estimatedStartTime estimatedStartTime
    #' @param estimatedEndTime estimatedEndTime
    #' @param estimatedDuration estimatedDuration
    #' @param estimatedDistance estimatedDistance
    #' @param waitTime waitTime
    #' @param generated generated
    #' @param valid valid
    #' @param ... Other optional arguments.
    initialize = function(`itineraryId` = NULL, `waypointCount` = NULL, `score` = NULL, `errorCode` = NULL, `error` = NULL, `itemCount` = NULL, `vehicle` = NULL, `stops` = NULL, `estimatedStartTime` = NULL, `estimatedEndTime` = NULL, `estimatedDuration` = NULL, `estimatedDistance` = NULL, `waitTime` = NULL, `generated` = NULL, `valid` = NULL, ...) {
      if (!is.null(`itineraryId`)) {
        if (!(is.character(`itineraryId`) && length(`itineraryId`) == 1)) {
          stop(paste("Error! Invalid data for `itineraryId`. Must be a string:", `itineraryId`))
        }
        self$`itineraryId` <- `itineraryId`
      }
      if (!is.null(`waypointCount`)) {
        if (!(is.numeric(`waypointCount`) && length(`waypointCount`) == 1)) {
          stop(paste("Error! Invalid data for `waypointCount`. Must be an integer:", `waypointCount`))
        }
        self$`waypointCount` <- `waypointCount`
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
      if (!is.null(`itemCount`)) {
        if (!(is.numeric(`itemCount`) && length(`itemCount`) == 1)) {
          stop(paste("Error! Invalid data for `itemCount`. Must be an integer:", `itemCount`))
        }
        self$`itemCount` <- `itemCount`
      }
      if (!is.null(`vehicle`)) {
        stopifnot(R6::is.R6(`vehicle`))
        self$`vehicle` <- `vehicle`
      }
      if (!is.null(`stops`)) {
        stopifnot(is.vector(`stops`), length(`stops`) != 0)
        sapply(`stops`, function(x) stopifnot(R6::is.R6(x)))
        self$`stops` <- `stops`
      }
      if (!is.null(`estimatedStartTime`)) {
        if (!(is.numeric(`estimatedStartTime`) && length(`estimatedStartTime`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedStartTime`. Must be an integer:", `estimatedStartTime`))
        }
        self$`estimatedStartTime` <- `estimatedStartTime`
      }
      if (!is.null(`estimatedEndTime`)) {
        if (!(is.numeric(`estimatedEndTime`) && length(`estimatedEndTime`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedEndTime`. Must be an integer:", `estimatedEndTime`))
        }
        self$`estimatedEndTime` <- `estimatedEndTime`
      }
      if (!is.null(`estimatedDuration`)) {
        if (!(is.numeric(`estimatedDuration`) && length(`estimatedDuration`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedDuration`. Must be an integer:", `estimatedDuration`))
        }
        self$`estimatedDuration` <- `estimatedDuration`
      }
      if (!is.null(`estimatedDistance`)) {
        if (!(is.numeric(`estimatedDistance`) && length(`estimatedDistance`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedDistance`. Must be a number:", `estimatedDistance`))
        }
        self$`estimatedDistance` <- `estimatedDistance`
      }
      if (!is.null(`waitTime`)) {
        if (!(is.numeric(`waitTime`) && length(`waitTime`) == 1)) {
          stop(paste("Error! Invalid data for `waitTime`. Must be an integer:", `waitTime`))
        }
        self$`waitTime` <- `waitTime`
      }
      if (!is.null(`generated`)) {
        if (!(is.logical(`generated`) && length(`generated`) == 1)) {
          stop(paste("Error! Invalid data for `generated`. Must be a boolean:", `generated`))
        }
        self$`generated` <- `generated`
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
    #' @return ItineraryResponse as a base R list.
    #' @examples
    #' # convert array of ItineraryResponse (x) to a data frame
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
    #' Convert ItineraryResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ItineraryResponseObject <- list()
      if (!is.null(self$`itineraryId`)) {
        ItineraryResponseObject[["itineraryId"]] <-
          self$`itineraryId`
      }
      if (!is.null(self$`waypointCount`)) {
        ItineraryResponseObject[["waypointCount"]] <-
          self$`waypointCount`
      }
      if (!is.null(self$`score`)) {
        ItineraryResponseObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`errorCode`)) {
        ItineraryResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`error`)) {
        ItineraryResponseObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`itemCount`)) {
        ItineraryResponseObject[["itemCount"]] <-
          self$`itemCount`
      }
      if (!is.null(self$`vehicle`)) {
        ItineraryResponseObject[["vehicle"]] <-
          self$extractSimpleType(self$`vehicle`)
      }
      if (!is.null(self$`stops`)) {
        ItineraryResponseObject[["stops"]] <-
          self$extractSimpleType(self$`stops`)
      }
      if (!is.null(self$`estimatedStartTime`)) {
        ItineraryResponseObject[["estimatedStartTime"]] <-
          self$`estimatedStartTime`
      }
      if (!is.null(self$`estimatedEndTime`)) {
        ItineraryResponseObject[["estimatedEndTime"]] <-
          self$`estimatedEndTime`
      }
      if (!is.null(self$`estimatedDuration`)) {
        ItineraryResponseObject[["estimatedDuration"]] <-
          self$`estimatedDuration`
      }
      if (!is.null(self$`estimatedDistance`)) {
        ItineraryResponseObject[["estimatedDistance"]] <-
          self$`estimatedDistance`
      }
      if (!is.null(self$`waitTime`)) {
        ItineraryResponseObject[["waitTime"]] <-
          self$`waitTime`
      }
      if (!is.null(self$`generated`)) {
        ItineraryResponseObject[["generated"]] <-
          self$`generated`
      }
      if (!is.null(self$`valid`)) {
        ItineraryResponseObject[["valid"]] <-
          self$`valid`
      }
      return(ItineraryResponseObject)
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
    #' Deserialize JSON string into an instance of ItineraryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ItineraryResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`itineraryId`)) {
        self$`itineraryId` <- this_object$`itineraryId`
      }
      if (!is.null(this_object$`waypointCount`)) {
        self$`waypointCount` <- this_object$`waypointCount`
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
      if (!is.null(this_object$`itemCount`)) {
        self$`itemCount` <- this_object$`itemCount`
      }
      if (!is.null(this_object$`vehicle`)) {
        `vehicle_object` <- VehicleResponse$new()
        `vehicle_object`$fromJSON(jsonlite::toJSON(this_object$`vehicle`, auto_unbox = TRUE, digits = NA))
        self$`vehicle` <- `vehicle_object`
      }
      if (!is.null(this_object$`stops`)) {
        self$`stops` <- ApiClient$new()$deserializeObj(this_object$`stops`, "array[StopResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`estimatedStartTime`)) {
        self$`estimatedStartTime` <- this_object$`estimatedStartTime`
      }
      if (!is.null(this_object$`estimatedEndTime`)) {
        self$`estimatedEndTime` <- this_object$`estimatedEndTime`
      }
      if (!is.null(this_object$`estimatedDuration`)) {
        self$`estimatedDuration` <- this_object$`estimatedDuration`
      }
      if (!is.null(this_object$`estimatedDistance`)) {
        self$`estimatedDistance` <- this_object$`estimatedDistance`
      }
      if (!is.null(this_object$`waitTime`)) {
        self$`waitTime` <- this_object$`waitTime`
      }
      if (!is.null(this_object$`generated`)) {
        self$`generated` <- this_object$`generated`
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
    #' @return ItineraryResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ItineraryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ItineraryResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`itineraryId` <- this_object$`itineraryId`
      self$`waypointCount` <- this_object$`waypointCount`
      self$`score` <- this_object$`score`
      self$`errorCode` <- this_object$`errorCode`
      self$`error` <- this_object$`error`
      self$`itemCount` <- this_object$`itemCount`
      self$`vehicle` <- VehicleResponse$new()$fromJSON(jsonlite::toJSON(this_object$`vehicle`, auto_unbox = TRUE, digits = NA))
      self$`stops` <- ApiClient$new()$deserializeObj(this_object$`stops`, "array[StopResponse]", loadNamespace("openapi"))
      self$`estimatedStartTime` <- this_object$`estimatedStartTime`
      self$`estimatedEndTime` <- this_object$`estimatedEndTime`
      self$`estimatedDuration` <- this_object$`estimatedDuration`
      self$`estimatedDistance` <- this_object$`estimatedDistance`
      self$`waitTime` <- this_object$`waitTime`
      self$`generated` <- this_object$`generated`
      self$`valid` <- this_object$`valid`
      self
    },

    #' @description
    #' Validate JSON input with respect to ItineraryResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ItineraryResponse
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
# ItineraryResponse$unlock()
#
## Below is an example to define the print function
# ItineraryResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ItineraryResponse$lock()

