#' Create a new Stop
#'
#' @description
#' Stop Class
#'
#' @docType class
#' @title Stop
#' @description Stop Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field name  character [optional]
#' @field owner  \link{Account} [optional]
#' @field location  \link{Location} [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field noteCount  integer [optional]
#' @field stopType  character [optional]
#' @field orderIndex  integer [optional]
#' @field startTime  character [optional]
#' @field endTime  character [optional]
#' @field estimatedTime  character [optional]
#' @field estimatedArrivalTime  character [optional]
#' @field estimatedDepartureTime  character [optional]
#' @field actualTime  character [optional]
#' @field desiredTime  character [optional]
#' @field timePadding  integer [optional]
#' @field route  \link{Route} [optional]
#' @field shipment  \link{Shipment} [optional]
#' @field progressStatus  character [optional]
#' @field compareEstimatedTime  character [optional]
#' @field compareEstimatedArrivalTime  character [optional]
#' @field compareEstimiatedDepartureTime  character [optional]
#' @field polyline  character [optional]
#' @field parent  \link{Stop} [optional]
#' @field locationDisplay  character [optional]
#' @field complete  character [optional]
#' @field contentName  character [optional]
#' @field locationAddress  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Stop <- R6::R6Class(
  "Stop",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `name` = NULL,
    `owner` = NULL,
    `location` = NULL,
    `notes` = NULL,
    `noteCount` = NULL,
    `stopType` = NULL,
    `orderIndex` = NULL,
    `startTime` = NULL,
    `endTime` = NULL,
    `estimatedTime` = NULL,
    `estimatedArrivalTime` = NULL,
    `estimatedDepartureTime` = NULL,
    `actualTime` = NULL,
    `desiredTime` = NULL,
    `timePadding` = NULL,
    `route` = NULL,
    `shipment` = NULL,
    `progressStatus` = NULL,
    `compareEstimatedTime` = NULL,
    `compareEstimatedArrivalTime` = NULL,
    `compareEstimiatedDepartureTime` = NULL,
    `polyline` = NULL,
    `parent` = NULL,
    `locationDisplay` = NULL,
    `complete` = NULL,
    `contentName` = NULL,
    `locationAddress` = NULL,

    #' @description
    #' Initialize a new Stop class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param name name
    #' @param owner owner
    #' @param location location
    #' @param notes notes
    #' @param noteCount noteCount
    #' @param stopType stopType
    #' @param orderIndex orderIndex
    #' @param startTime startTime
    #' @param endTime endTime
    #' @param estimatedTime estimatedTime
    #' @param estimatedArrivalTime estimatedArrivalTime
    #' @param estimatedDepartureTime estimatedDepartureTime
    #' @param actualTime actualTime
    #' @param desiredTime desiredTime
    #' @param timePadding timePadding
    #' @param route route
    #' @param shipment shipment
    #' @param progressStatus progressStatus
    #' @param compareEstimatedTime compareEstimatedTime
    #' @param compareEstimatedArrivalTime compareEstimatedArrivalTime
    #' @param compareEstimiatedDepartureTime compareEstimiatedDepartureTime
    #' @param polyline polyline
    #' @param parent parent
    #' @param locationDisplay locationDisplay
    #' @param complete complete
    #' @param contentName contentName
    #' @param locationAddress locationAddress
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `name` = NULL, `owner` = NULL, `location` = NULL, `notes` = NULL, `noteCount` = NULL, `stopType` = NULL, `orderIndex` = NULL, `startTime` = NULL, `endTime` = NULL, `estimatedTime` = NULL, `estimatedArrivalTime` = NULL, `estimatedDepartureTime` = NULL, `actualTime` = NULL, `desiredTime` = NULL, `timePadding` = NULL, `route` = NULL, `shipment` = NULL, `progressStatus` = NULL, `compareEstimatedTime` = NULL, `compareEstimatedArrivalTime` = NULL, `compareEstimiatedDepartureTime` = NULL, `polyline` = NULL, `parent` = NULL, `locationDisplay` = NULL, `complete` = NULL, `contentName` = NULL, `locationAddress` = NULL, ...) {
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
      if (!is.null(`locationDescription`)) {
        if (!(is.character(`locationDescription`) && length(`locationDescription`) == 1)) {
          stop(paste("Error! Invalid data for `locationDescription`. Must be a string:", `locationDescription`))
        }
        self$`locationDescription` <- `locationDescription`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`location`)) {
        stopifnot(R6::is.R6(`location`))
        self$`location` <- `location`
      }
      if (!is.null(`notes`)) {
        stopifnot(is.vector(`notes`), length(`notes`) != 0)
        sapply(`notes`, function(x) stopifnot(R6::is.R6(x)))
        self$`notes` <- `notes`
      }
      if (!is.null(`noteCount`)) {
        if (!(is.numeric(`noteCount`) && length(`noteCount`) == 1)) {
          stop(paste("Error! Invalid data for `noteCount`. Must be an integer:", `noteCount`))
        }
        self$`noteCount` <- `noteCount`
      }
      if (!is.null(`stopType`)) {
        if (!(`stopType` %in% c("PICKUP", "DROPOFF", "START", "END", "ROUTING"))) {
          stop(paste("Error! \"", `stopType`, "\" cannot be assigned to `stopType`. Must be \"PICKUP\", \"DROPOFF\", \"START\", \"END\", \"ROUTING\".", sep = ""))
        }
        if (!(is.character(`stopType`) && length(`stopType`) == 1)) {
          stop(paste("Error! Invalid data for `stopType`. Must be a string:", `stopType`))
        }
        self$`stopType` <- `stopType`
      }
      if (!is.null(`orderIndex`)) {
        if (!(is.numeric(`orderIndex`) && length(`orderIndex`) == 1)) {
          stop(paste("Error! Invalid data for `orderIndex`. Must be an integer:", `orderIndex`))
        }
        self$`orderIndex` <- `orderIndex`
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
      if (!is.null(`estimatedTime`)) {
        if (!is.character(`estimatedTime`)) {
          stop(paste("Error! Invalid data for `estimatedTime`. Must be a string:", `estimatedTime`))
        }
        self$`estimatedTime` <- `estimatedTime`
      }
      if (!is.null(`estimatedArrivalTime`)) {
        if (!is.character(`estimatedArrivalTime`)) {
          stop(paste("Error! Invalid data for `estimatedArrivalTime`. Must be a string:", `estimatedArrivalTime`))
        }
        self$`estimatedArrivalTime` <- `estimatedArrivalTime`
      }
      if (!is.null(`estimatedDepartureTime`)) {
        if (!is.character(`estimatedDepartureTime`)) {
          stop(paste("Error! Invalid data for `estimatedDepartureTime`. Must be a string:", `estimatedDepartureTime`))
        }
        self$`estimatedDepartureTime` <- `estimatedDepartureTime`
      }
      if (!is.null(`actualTime`)) {
        if (!is.character(`actualTime`)) {
          stop(paste("Error! Invalid data for `actualTime`. Must be a string:", `actualTime`))
        }
        self$`actualTime` <- `actualTime`
      }
      if (!is.null(`desiredTime`)) {
        if (!is.character(`desiredTime`)) {
          stop(paste("Error! Invalid data for `desiredTime`. Must be a string:", `desiredTime`))
        }
        self$`desiredTime` <- `desiredTime`
      }
      if (!is.null(`timePadding`)) {
        if (!(is.numeric(`timePadding`) && length(`timePadding`) == 1)) {
          stop(paste("Error! Invalid data for `timePadding`. Must be an integer:", `timePadding`))
        }
        self$`timePadding` <- `timePadding`
      }
      if (!is.null(`route`)) {
        stopifnot(R6::is.R6(`route`))
        self$`route` <- `route`
      }
      if (!is.null(`shipment`)) {
        stopifnot(R6::is.R6(`shipment`))
        self$`shipment` <- `shipment`
      }
      if (!is.null(`progressStatus`)) {
        if (!(`progressStatus` %in% c("PENDING", "COMPLETE", "INVALID"))) {
          stop(paste("Error! \"", `progressStatus`, "\" cannot be assigned to `progressStatus`. Must be \"PENDING\", \"COMPLETE\", \"INVALID\".", sep = ""))
        }
        if (!(is.character(`progressStatus`) && length(`progressStatus`) == 1)) {
          stop(paste("Error! Invalid data for `progressStatus`. Must be a string:", `progressStatus`))
        }
        self$`progressStatus` <- `progressStatus`
      }
      if (!is.null(`compareEstimatedTime`)) {
        if (!is.character(`compareEstimatedTime`)) {
          stop(paste("Error! Invalid data for `compareEstimatedTime`. Must be a string:", `compareEstimatedTime`))
        }
        self$`compareEstimatedTime` <- `compareEstimatedTime`
      }
      if (!is.null(`compareEstimatedArrivalTime`)) {
        if (!is.character(`compareEstimatedArrivalTime`)) {
          stop(paste("Error! Invalid data for `compareEstimatedArrivalTime`. Must be a string:", `compareEstimatedArrivalTime`))
        }
        self$`compareEstimatedArrivalTime` <- `compareEstimatedArrivalTime`
      }
      if (!is.null(`compareEstimiatedDepartureTime`)) {
        if (!is.character(`compareEstimiatedDepartureTime`)) {
          stop(paste("Error! Invalid data for `compareEstimiatedDepartureTime`. Must be a string:", `compareEstimiatedDepartureTime`))
        }
        self$`compareEstimiatedDepartureTime` <- `compareEstimiatedDepartureTime`
      }
      if (!is.null(`polyline`)) {
        if (!(is.character(`polyline`) && length(`polyline`) == 1)) {
          stop(paste("Error! Invalid data for `polyline`. Must be a string:", `polyline`))
        }
        self$`polyline` <- `polyline`
      }
      if (!is.null(`parent`)) {
        stopifnot(R6::is.R6(`parent`))
        self$`parent` <- `parent`
      }
      if (!is.null(`locationDisplay`)) {
        if (!(is.character(`locationDisplay`) && length(`locationDisplay`) == 1)) {
          stop(paste("Error! Invalid data for `locationDisplay`. Must be a string:", `locationDisplay`))
        }
        self$`locationDisplay` <- `locationDisplay`
      }
      if (!is.null(`complete`)) {
        if (!(is.logical(`complete`) && length(`complete`) == 1)) {
          stop(paste("Error! Invalid data for `complete`. Must be a boolean:", `complete`))
        }
        self$`complete` <- `complete`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
      }
      if (!is.null(`locationAddress`)) {
        if (!(is.character(`locationAddress`) && length(`locationAddress`) == 1)) {
          stop(paste("Error! Invalid data for `locationAddress`. Must be a string:", `locationAddress`))
        }
        self$`locationAddress` <- `locationAddress`
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
    #' @return Stop as a base R list.
    #' @examples
    #' # convert array of Stop (x) to a data frame
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
    #' Convert Stop to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StopObject <- list()
      if (!is.null(self$`id`)) {
        StopObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        StopObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        StopObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        StopObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        StopObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        StopObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`name`)) {
        StopObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`owner`)) {
        StopObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`location`)) {
        StopObject[["location"]] <-
          self$extractSimpleType(self$`location`)
      }
      if (!is.null(self$`notes`)) {
        StopObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`noteCount`)) {
        StopObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`stopType`)) {
        StopObject[["stopType"]] <-
          self$`stopType`
      }
      if (!is.null(self$`orderIndex`)) {
        StopObject[["orderIndex"]] <-
          self$`orderIndex`
      }
      if (!is.null(self$`startTime`)) {
        StopObject[["startTime"]] <-
          self$`startTime`
      }
      if (!is.null(self$`endTime`)) {
        StopObject[["endTime"]] <-
          self$`endTime`
      }
      if (!is.null(self$`estimatedTime`)) {
        StopObject[["estimatedTime"]] <-
          self$`estimatedTime`
      }
      if (!is.null(self$`estimatedArrivalTime`)) {
        StopObject[["estimatedArrivalTime"]] <-
          self$`estimatedArrivalTime`
      }
      if (!is.null(self$`estimatedDepartureTime`)) {
        StopObject[["estimatedDepartureTime"]] <-
          self$`estimatedDepartureTime`
      }
      if (!is.null(self$`actualTime`)) {
        StopObject[["actualTime"]] <-
          self$`actualTime`
      }
      if (!is.null(self$`desiredTime`)) {
        StopObject[["desiredTime"]] <-
          self$`desiredTime`
      }
      if (!is.null(self$`timePadding`)) {
        StopObject[["timePadding"]] <-
          self$`timePadding`
      }
      if (!is.null(self$`route`)) {
        StopObject[["route"]] <-
          self$extractSimpleType(self$`route`)
      }
      if (!is.null(self$`shipment`)) {
        StopObject[["shipment"]] <-
          self$extractSimpleType(self$`shipment`)
      }
      if (!is.null(self$`progressStatus`)) {
        StopObject[["progressStatus"]] <-
          self$`progressStatus`
      }
      if (!is.null(self$`compareEstimatedTime`)) {
        StopObject[["compareEstimatedTime"]] <-
          self$`compareEstimatedTime`
      }
      if (!is.null(self$`compareEstimatedArrivalTime`)) {
        StopObject[["compareEstimatedArrivalTime"]] <-
          self$`compareEstimatedArrivalTime`
      }
      if (!is.null(self$`compareEstimiatedDepartureTime`)) {
        StopObject[["compareEstimiatedDepartureTime"]] <-
          self$`compareEstimiatedDepartureTime`
      }
      if (!is.null(self$`polyline`)) {
        StopObject[["polyline"]] <-
          self$`polyline`
      }
      if (!is.null(self$`parent`)) {
        StopObject[["parent"]] <-
          self$extractSimpleType(self$`parent`)
      }
      if (!is.null(self$`locationDisplay`)) {
        StopObject[["locationDisplay"]] <-
          self$`locationDisplay`
      }
      if (!is.null(self$`complete`)) {
        StopObject[["complete"]] <-
          self$`complete`
      }
      if (!is.null(self$`contentName`)) {
        StopObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`locationAddress`)) {
        StopObject[["locationAddress"]] <-
          self$`locationAddress`
      }
      return(StopObject)
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
    #' Deserialize JSON string into an instance of Stop
    #'
    #' @param input_json the JSON input
    #' @return the instance of Stop
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
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`locationDescription`)) {
        self$`locationDescription` <- this_object$`locationDescription`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`location`)) {
        `location_object` <- Location$new()
        `location_object`$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
        self$`location` <- `location_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
      }
      if (!is.null(this_object$`stopType`)) {
        if (!is.null(this_object$`stopType`) && !(this_object$`stopType` %in% c("PICKUP", "DROPOFF", "START", "END", "ROUTING"))) {
          stop(paste("Error! \"", this_object$`stopType`, "\" cannot be assigned to `stopType`. Must be \"PICKUP\", \"DROPOFF\", \"START\", \"END\", \"ROUTING\".", sep = ""))
        }
        self$`stopType` <- this_object$`stopType`
      }
      if (!is.null(this_object$`orderIndex`)) {
        self$`orderIndex` <- this_object$`orderIndex`
      }
      if (!is.null(this_object$`startTime`)) {
        self$`startTime` <- this_object$`startTime`
      }
      if (!is.null(this_object$`endTime`)) {
        self$`endTime` <- this_object$`endTime`
      }
      if (!is.null(this_object$`estimatedTime`)) {
        self$`estimatedTime` <- this_object$`estimatedTime`
      }
      if (!is.null(this_object$`estimatedArrivalTime`)) {
        self$`estimatedArrivalTime` <- this_object$`estimatedArrivalTime`
      }
      if (!is.null(this_object$`estimatedDepartureTime`)) {
        self$`estimatedDepartureTime` <- this_object$`estimatedDepartureTime`
      }
      if (!is.null(this_object$`actualTime`)) {
        self$`actualTime` <- this_object$`actualTime`
      }
      if (!is.null(this_object$`desiredTime`)) {
        self$`desiredTime` <- this_object$`desiredTime`
      }
      if (!is.null(this_object$`timePadding`)) {
        self$`timePadding` <- this_object$`timePadding`
      }
      if (!is.null(this_object$`route`)) {
        `route_object` <- Route$new()
        `route_object`$fromJSON(jsonlite::toJSON(this_object$`route`, auto_unbox = TRUE, digits = NA))
        self$`route` <- `route_object`
      }
      if (!is.null(this_object$`shipment`)) {
        `shipment_object` <- Shipment$new()
        `shipment_object`$fromJSON(jsonlite::toJSON(this_object$`shipment`, auto_unbox = TRUE, digits = NA))
        self$`shipment` <- `shipment_object`
      }
      if (!is.null(this_object$`progressStatus`)) {
        if (!is.null(this_object$`progressStatus`) && !(this_object$`progressStatus` %in% c("PENDING", "COMPLETE", "INVALID"))) {
          stop(paste("Error! \"", this_object$`progressStatus`, "\" cannot be assigned to `progressStatus`. Must be \"PENDING\", \"COMPLETE\", \"INVALID\".", sep = ""))
        }
        self$`progressStatus` <- this_object$`progressStatus`
      }
      if (!is.null(this_object$`compareEstimatedTime`)) {
        self$`compareEstimatedTime` <- this_object$`compareEstimatedTime`
      }
      if (!is.null(this_object$`compareEstimatedArrivalTime`)) {
        self$`compareEstimatedArrivalTime` <- this_object$`compareEstimatedArrivalTime`
      }
      if (!is.null(this_object$`compareEstimiatedDepartureTime`)) {
        self$`compareEstimiatedDepartureTime` <- this_object$`compareEstimiatedDepartureTime`
      }
      if (!is.null(this_object$`polyline`)) {
        self$`polyline` <- this_object$`polyline`
      }
      if (!is.null(this_object$`parent`)) {
        `parent_object` <- Stop$new()
        `parent_object`$fromJSON(jsonlite::toJSON(this_object$`parent`, auto_unbox = TRUE, digits = NA))
        self$`parent` <- `parent_object`
      }
      if (!is.null(this_object$`locationDisplay`)) {
        self$`locationDisplay` <- this_object$`locationDisplay`
      }
      if (!is.null(this_object$`complete`)) {
        self$`complete` <- this_object$`complete`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      if (!is.null(this_object$`locationAddress`)) {
        self$`locationAddress` <- this_object$`locationAddress`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Stop in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Stop
    #'
    #' @param input_json the JSON input
    #' @return the instance of Stop
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`name` <- this_object$`name`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`location` <- Location$new()$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`noteCount` <- this_object$`noteCount`
      if (!is.null(this_object$`stopType`) && !(this_object$`stopType` %in% c("PICKUP", "DROPOFF", "START", "END", "ROUTING"))) {
        stop(paste("Error! \"", this_object$`stopType`, "\" cannot be assigned to `stopType`. Must be \"PICKUP\", \"DROPOFF\", \"START\", \"END\", \"ROUTING\".", sep = ""))
      }
      self$`stopType` <- this_object$`stopType`
      self$`orderIndex` <- this_object$`orderIndex`
      self$`startTime` <- this_object$`startTime`
      self$`endTime` <- this_object$`endTime`
      self$`estimatedTime` <- this_object$`estimatedTime`
      self$`estimatedArrivalTime` <- this_object$`estimatedArrivalTime`
      self$`estimatedDepartureTime` <- this_object$`estimatedDepartureTime`
      self$`actualTime` <- this_object$`actualTime`
      self$`desiredTime` <- this_object$`desiredTime`
      self$`timePadding` <- this_object$`timePadding`
      self$`route` <- Route$new()$fromJSON(jsonlite::toJSON(this_object$`route`, auto_unbox = TRUE, digits = NA))
      self$`shipment` <- Shipment$new()$fromJSON(jsonlite::toJSON(this_object$`shipment`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`progressStatus`) && !(this_object$`progressStatus` %in% c("PENDING", "COMPLETE", "INVALID"))) {
        stop(paste("Error! \"", this_object$`progressStatus`, "\" cannot be assigned to `progressStatus`. Must be \"PENDING\", \"COMPLETE\", \"INVALID\".", sep = ""))
      }
      self$`progressStatus` <- this_object$`progressStatus`
      self$`compareEstimatedTime` <- this_object$`compareEstimatedTime`
      self$`compareEstimatedArrivalTime` <- this_object$`compareEstimatedArrivalTime`
      self$`compareEstimiatedDepartureTime` <- this_object$`compareEstimiatedDepartureTime`
      self$`polyline` <- this_object$`polyline`
      self$`parent` <- Stop$new()$fromJSON(jsonlite::toJSON(this_object$`parent`, auto_unbox = TRUE, digits = NA))
      self$`locationDisplay` <- this_object$`locationDisplay`
      self$`complete` <- this_object$`complete`
      self$`contentName` <- this_object$`contentName`
      self$`locationAddress` <- this_object$`locationAddress`
      self
    },

    #' @description
    #' Validate JSON input with respect to Stop and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Stop
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
# Stop$unlock()
#
## Below is an example to define the print function
# Stop$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Stop$lock()

