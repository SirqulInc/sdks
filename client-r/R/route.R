#' Create a new Route
#'
#' @description
#' Route Class
#'
#' @docType class
#' @title Route
#' @description Route Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field name  character [optional]
#' @field externalId  character [optional]
#' @field hub  \link{ServiceHub} [optional]
#' @field program  \link{Program} [optional]
#' @field zone  \link{Region} [optional]
#' @field vehicle  \link{Vehicle} [optional]
#' @field driver  \link{Account} [optional]
#' @field concierge  \link{Account} [optional]
#' @field scheduled  character [optional]
#' @field approved  character [optional]
#' @field started  character [optional]
#' @field completed  character [optional]
#' @field totalDistance  numeric [optional]
#' @field totalTime  integer [optional]
#' @field estimatedDistance  numeric [optional]
#' @field estimatedTime  integer [optional]
#' @field startStop  \link{Stop} [optional]
#' @field endStop  \link{Stop} [optional]
#' @field stops  list(\link{Stop}) [optional]
#' @field shipments  list(\link{Shipment}) [optional]
#' @field allShipmentsConfirmed  character [optional]
#' @field shipmentOrderCount  integer [optional]
#' @field polyline  character [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field noteCount  integer [optional]
#' @field glympseToken  character [optional]
#' @field enableOptimization  character [optional]
#' @field optimizedDate  character [optional]
#' @field optimizationStarted  character [optional]
#' @field optimizationCompleted  character [optional]
#' @field featured  character [optional]
#' @field image  \link{Asset} [optional]
#' @field parent  \link{Route} [optional]
#' @field contentName  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Route <- R6::R6Class(
  "Route",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `name` = NULL,
    `externalId` = NULL,
    `hub` = NULL,
    `program` = NULL,
    `zone` = NULL,
    `vehicle` = NULL,
    `driver` = NULL,
    `concierge` = NULL,
    `scheduled` = NULL,
    `approved` = NULL,
    `started` = NULL,
    `completed` = NULL,
    `totalDistance` = NULL,
    `totalTime` = NULL,
    `estimatedDistance` = NULL,
    `estimatedTime` = NULL,
    `startStop` = NULL,
    `endStop` = NULL,
    `stops` = NULL,
    `shipments` = NULL,
    `allShipmentsConfirmed` = NULL,
    `shipmentOrderCount` = NULL,
    `polyline` = NULL,
    `notes` = NULL,
    `noteCount` = NULL,
    `glympseToken` = NULL,
    `enableOptimization` = NULL,
    `optimizedDate` = NULL,
    `optimizationStarted` = NULL,
    `optimizationCompleted` = NULL,
    `featured` = NULL,
    `image` = NULL,
    `parent` = NULL,
    `contentName` = NULL,

    #' @description
    #' Initialize a new Route class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param name name
    #' @param externalId externalId
    #' @param hub hub
    #' @param program program
    #' @param zone zone
    #' @param vehicle vehicle
    #' @param driver driver
    #' @param concierge concierge
    #' @param scheduled scheduled
    #' @param approved approved
    #' @param started started
    #' @param completed completed
    #' @param totalDistance totalDistance
    #' @param totalTime totalTime
    #' @param estimatedDistance estimatedDistance
    #' @param estimatedTime estimatedTime
    #' @param startStop startStop
    #' @param endStop endStop
    #' @param stops stops
    #' @param shipments shipments
    #' @param allShipmentsConfirmed allShipmentsConfirmed
    #' @param shipmentOrderCount shipmentOrderCount
    #' @param polyline polyline
    #' @param notes notes
    #' @param noteCount noteCount
    #' @param glympseToken glympseToken
    #' @param enableOptimization enableOptimization
    #' @param optimizedDate optimizedDate
    #' @param optimizationStarted optimizationStarted
    #' @param optimizationCompleted optimizationCompleted
    #' @param featured featured
    #' @param image image
    #' @param parent parent
    #' @param contentName contentName
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `name` = NULL, `externalId` = NULL, `hub` = NULL, `program` = NULL, `zone` = NULL, `vehicle` = NULL, `driver` = NULL, `concierge` = NULL, `scheduled` = NULL, `approved` = NULL, `started` = NULL, `completed` = NULL, `totalDistance` = NULL, `totalTime` = NULL, `estimatedDistance` = NULL, `estimatedTime` = NULL, `startStop` = NULL, `endStop` = NULL, `stops` = NULL, `shipments` = NULL, `allShipmentsConfirmed` = NULL, `shipmentOrderCount` = NULL, `polyline` = NULL, `notes` = NULL, `noteCount` = NULL, `glympseToken` = NULL, `enableOptimization` = NULL, `optimizedDate` = NULL, `optimizationStarted` = NULL, `optimizationCompleted` = NULL, `featured` = NULL, `image` = NULL, `parent` = NULL, `contentName` = NULL, ...) {
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
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`hub`)) {
        stopifnot(R6::is.R6(`hub`))
        self$`hub` <- `hub`
      }
      if (!is.null(`program`)) {
        stopifnot(R6::is.R6(`program`))
        self$`program` <- `program`
      }
      if (!is.null(`zone`)) {
        stopifnot(R6::is.R6(`zone`))
        self$`zone` <- `zone`
      }
      if (!is.null(`vehicle`)) {
        stopifnot(R6::is.R6(`vehicle`))
        self$`vehicle` <- `vehicle`
      }
      if (!is.null(`driver`)) {
        stopifnot(R6::is.R6(`driver`))
        self$`driver` <- `driver`
      }
      if (!is.null(`concierge`)) {
        stopifnot(R6::is.R6(`concierge`))
        self$`concierge` <- `concierge`
      }
      if (!is.null(`scheduled`)) {
        if (!is.character(`scheduled`)) {
          stop(paste("Error! Invalid data for `scheduled`. Must be a string:", `scheduled`))
        }
        self$`scheduled` <- `scheduled`
      }
      if (!is.null(`approved`)) {
        if (!is.character(`approved`)) {
          stop(paste("Error! Invalid data for `approved`. Must be a string:", `approved`))
        }
        self$`approved` <- `approved`
      }
      if (!is.null(`started`)) {
        if (!is.character(`started`)) {
          stop(paste("Error! Invalid data for `started`. Must be a string:", `started`))
        }
        self$`started` <- `started`
      }
      if (!is.null(`completed`)) {
        if (!is.character(`completed`)) {
          stop(paste("Error! Invalid data for `completed`. Must be a string:", `completed`))
        }
        self$`completed` <- `completed`
      }
      if (!is.null(`totalDistance`)) {
        if (!(is.numeric(`totalDistance`) && length(`totalDistance`) == 1)) {
          stop(paste("Error! Invalid data for `totalDistance`. Must be a number:", `totalDistance`))
        }
        self$`totalDistance` <- `totalDistance`
      }
      if (!is.null(`totalTime`)) {
        if (!(is.numeric(`totalTime`) && length(`totalTime`) == 1)) {
          stop(paste("Error! Invalid data for `totalTime`. Must be an integer:", `totalTime`))
        }
        self$`totalTime` <- `totalTime`
      }
      if (!is.null(`estimatedDistance`)) {
        if (!(is.numeric(`estimatedDistance`) && length(`estimatedDistance`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedDistance`. Must be a number:", `estimatedDistance`))
        }
        self$`estimatedDistance` <- `estimatedDistance`
      }
      if (!is.null(`estimatedTime`)) {
        if (!(is.numeric(`estimatedTime`) && length(`estimatedTime`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedTime`. Must be an integer:", `estimatedTime`))
        }
        self$`estimatedTime` <- `estimatedTime`
      }
      if (!is.null(`startStop`)) {
        stopifnot(R6::is.R6(`startStop`))
        self$`startStop` <- `startStop`
      }
      if (!is.null(`endStop`)) {
        stopifnot(R6::is.R6(`endStop`))
        self$`endStop` <- `endStop`
      }
      if (!is.null(`stops`)) {
        stopifnot(is.vector(`stops`), length(`stops`) != 0)
        sapply(`stops`, function(x) stopifnot(R6::is.R6(x)))
        self$`stops` <- `stops`
      }
      if (!is.null(`shipments`)) {
        stopifnot(is.vector(`shipments`), length(`shipments`) != 0)
        sapply(`shipments`, function(x) stopifnot(R6::is.R6(x)))
        self$`shipments` <- `shipments`
      }
      if (!is.null(`allShipmentsConfirmed`)) {
        if (!(is.logical(`allShipmentsConfirmed`) && length(`allShipmentsConfirmed`) == 1)) {
          stop(paste("Error! Invalid data for `allShipmentsConfirmed`. Must be a boolean:", `allShipmentsConfirmed`))
        }
        self$`allShipmentsConfirmed` <- `allShipmentsConfirmed`
      }
      if (!is.null(`shipmentOrderCount`)) {
        if (!(is.numeric(`shipmentOrderCount`) && length(`shipmentOrderCount`) == 1)) {
          stop(paste("Error! Invalid data for `shipmentOrderCount`. Must be an integer:", `shipmentOrderCount`))
        }
        self$`shipmentOrderCount` <- `shipmentOrderCount`
      }
      if (!is.null(`polyline`)) {
        if (!(is.character(`polyline`) && length(`polyline`) == 1)) {
          stop(paste("Error! Invalid data for `polyline`. Must be a string:", `polyline`))
        }
        self$`polyline` <- `polyline`
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
      if (!is.null(`glympseToken`)) {
        if (!(is.character(`glympseToken`) && length(`glympseToken`) == 1)) {
          stop(paste("Error! Invalid data for `glympseToken`. Must be a string:", `glympseToken`))
        }
        self$`glympseToken` <- `glympseToken`
      }
      if (!is.null(`enableOptimization`)) {
        if (!(is.logical(`enableOptimization`) && length(`enableOptimization`) == 1)) {
          stop(paste("Error! Invalid data for `enableOptimization`. Must be a boolean:", `enableOptimization`))
        }
        self$`enableOptimization` <- `enableOptimization`
      }
      if (!is.null(`optimizedDate`)) {
        if (!is.character(`optimizedDate`)) {
          stop(paste("Error! Invalid data for `optimizedDate`. Must be a string:", `optimizedDate`))
        }
        self$`optimizedDate` <- `optimizedDate`
      }
      if (!is.null(`optimizationStarted`)) {
        if (!is.character(`optimizationStarted`)) {
          stop(paste("Error! Invalid data for `optimizationStarted`. Must be a string:", `optimizationStarted`))
        }
        self$`optimizationStarted` <- `optimizationStarted`
      }
      if (!is.null(`optimizationCompleted`)) {
        if (!is.character(`optimizationCompleted`)) {
          stop(paste("Error! Invalid data for `optimizationCompleted`. Must be a string:", `optimizationCompleted`))
        }
        self$`optimizationCompleted` <- `optimizationCompleted`
      }
      if (!is.null(`featured`)) {
        if (!(is.logical(`featured`) && length(`featured`) == 1)) {
          stop(paste("Error! Invalid data for `featured`. Must be a boolean:", `featured`))
        }
        self$`featured` <- `featured`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`parent`)) {
        stopifnot(R6::is.R6(`parent`))
        self$`parent` <- `parent`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
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
    #' @return Route as a base R list.
    #' @examples
    #' # convert array of Route (x) to a data frame
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
    #' Convert Route to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RouteObject <- list()
      if (!is.null(self$`id`)) {
        RouteObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        RouteObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        RouteObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`name`)) {
        RouteObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`externalId`)) {
        RouteObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`hub`)) {
        RouteObject[["hub"]] <-
          self$extractSimpleType(self$`hub`)
      }
      if (!is.null(self$`program`)) {
        RouteObject[["program"]] <-
          self$extractSimpleType(self$`program`)
      }
      if (!is.null(self$`zone`)) {
        RouteObject[["zone"]] <-
          self$extractSimpleType(self$`zone`)
      }
      if (!is.null(self$`vehicle`)) {
        RouteObject[["vehicle"]] <-
          self$extractSimpleType(self$`vehicle`)
      }
      if (!is.null(self$`driver`)) {
        RouteObject[["driver"]] <-
          self$extractSimpleType(self$`driver`)
      }
      if (!is.null(self$`concierge`)) {
        RouteObject[["concierge"]] <-
          self$extractSimpleType(self$`concierge`)
      }
      if (!is.null(self$`scheduled`)) {
        RouteObject[["scheduled"]] <-
          self$`scheduled`
      }
      if (!is.null(self$`approved`)) {
        RouteObject[["approved"]] <-
          self$`approved`
      }
      if (!is.null(self$`started`)) {
        RouteObject[["started"]] <-
          self$`started`
      }
      if (!is.null(self$`completed`)) {
        RouteObject[["completed"]] <-
          self$`completed`
      }
      if (!is.null(self$`totalDistance`)) {
        RouteObject[["totalDistance"]] <-
          self$`totalDistance`
      }
      if (!is.null(self$`totalTime`)) {
        RouteObject[["totalTime"]] <-
          self$`totalTime`
      }
      if (!is.null(self$`estimatedDistance`)) {
        RouteObject[["estimatedDistance"]] <-
          self$`estimatedDistance`
      }
      if (!is.null(self$`estimatedTime`)) {
        RouteObject[["estimatedTime"]] <-
          self$`estimatedTime`
      }
      if (!is.null(self$`startStop`)) {
        RouteObject[["startStop"]] <-
          self$extractSimpleType(self$`startStop`)
      }
      if (!is.null(self$`endStop`)) {
        RouteObject[["endStop"]] <-
          self$extractSimpleType(self$`endStop`)
      }
      if (!is.null(self$`stops`)) {
        RouteObject[["stops"]] <-
          self$extractSimpleType(self$`stops`)
      }
      if (!is.null(self$`shipments`)) {
        RouteObject[["shipments"]] <-
          self$extractSimpleType(self$`shipments`)
      }
      if (!is.null(self$`allShipmentsConfirmed`)) {
        RouteObject[["allShipmentsConfirmed"]] <-
          self$`allShipmentsConfirmed`
      }
      if (!is.null(self$`shipmentOrderCount`)) {
        RouteObject[["shipmentOrderCount"]] <-
          self$`shipmentOrderCount`
      }
      if (!is.null(self$`polyline`)) {
        RouteObject[["polyline"]] <-
          self$`polyline`
      }
      if (!is.null(self$`notes`)) {
        RouteObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`noteCount`)) {
        RouteObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`glympseToken`)) {
        RouteObject[["glympseToken"]] <-
          self$`glympseToken`
      }
      if (!is.null(self$`enableOptimization`)) {
        RouteObject[["enableOptimization"]] <-
          self$`enableOptimization`
      }
      if (!is.null(self$`optimizedDate`)) {
        RouteObject[["optimizedDate"]] <-
          self$`optimizedDate`
      }
      if (!is.null(self$`optimizationStarted`)) {
        RouteObject[["optimizationStarted"]] <-
          self$`optimizationStarted`
      }
      if (!is.null(self$`optimizationCompleted`)) {
        RouteObject[["optimizationCompleted"]] <-
          self$`optimizationCompleted`
      }
      if (!is.null(self$`featured`)) {
        RouteObject[["featured"]] <-
          self$`featured`
      }
      if (!is.null(self$`image`)) {
        RouteObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`parent`)) {
        RouteObject[["parent"]] <-
          self$extractSimpleType(self$`parent`)
      }
      if (!is.null(self$`contentName`)) {
        RouteObject[["contentName"]] <-
          self$`contentName`
      }
      return(RouteObject)
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
    #' Deserialize JSON string into an instance of Route
    #'
    #' @param input_json the JSON input
    #' @return the instance of Route
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`hub`)) {
        `hub_object` <- ServiceHub$new()
        `hub_object`$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
        self$`hub` <- `hub_object`
      }
      if (!is.null(this_object$`program`)) {
        `program_object` <- Program$new()
        `program_object`$fromJSON(jsonlite::toJSON(this_object$`program`, auto_unbox = TRUE, digits = NA))
        self$`program` <- `program_object`
      }
      if (!is.null(this_object$`zone`)) {
        `zone_object` <- Region$new()
        `zone_object`$fromJSON(jsonlite::toJSON(this_object$`zone`, auto_unbox = TRUE, digits = NA))
        self$`zone` <- `zone_object`
      }
      if (!is.null(this_object$`vehicle`)) {
        `vehicle_object` <- Vehicle$new()
        `vehicle_object`$fromJSON(jsonlite::toJSON(this_object$`vehicle`, auto_unbox = TRUE, digits = NA))
        self$`vehicle` <- `vehicle_object`
      }
      if (!is.null(this_object$`driver`)) {
        `driver_object` <- Account$new()
        `driver_object`$fromJSON(jsonlite::toJSON(this_object$`driver`, auto_unbox = TRUE, digits = NA))
        self$`driver` <- `driver_object`
      }
      if (!is.null(this_object$`concierge`)) {
        `concierge_object` <- Account$new()
        `concierge_object`$fromJSON(jsonlite::toJSON(this_object$`concierge`, auto_unbox = TRUE, digits = NA))
        self$`concierge` <- `concierge_object`
      }
      if (!is.null(this_object$`scheduled`)) {
        self$`scheduled` <- this_object$`scheduled`
      }
      if (!is.null(this_object$`approved`)) {
        self$`approved` <- this_object$`approved`
      }
      if (!is.null(this_object$`started`)) {
        self$`started` <- this_object$`started`
      }
      if (!is.null(this_object$`completed`)) {
        self$`completed` <- this_object$`completed`
      }
      if (!is.null(this_object$`totalDistance`)) {
        self$`totalDistance` <- this_object$`totalDistance`
      }
      if (!is.null(this_object$`totalTime`)) {
        self$`totalTime` <- this_object$`totalTime`
      }
      if (!is.null(this_object$`estimatedDistance`)) {
        self$`estimatedDistance` <- this_object$`estimatedDistance`
      }
      if (!is.null(this_object$`estimatedTime`)) {
        self$`estimatedTime` <- this_object$`estimatedTime`
      }
      if (!is.null(this_object$`startStop`)) {
        `startstop_object` <- Stop$new()
        `startstop_object`$fromJSON(jsonlite::toJSON(this_object$`startStop`, auto_unbox = TRUE, digits = NA))
        self$`startStop` <- `startstop_object`
      }
      if (!is.null(this_object$`endStop`)) {
        `endstop_object` <- Stop$new()
        `endstop_object`$fromJSON(jsonlite::toJSON(this_object$`endStop`, auto_unbox = TRUE, digits = NA))
        self$`endStop` <- `endstop_object`
      }
      if (!is.null(this_object$`stops`)) {
        self$`stops` <- ApiClient$new()$deserializeObj(this_object$`stops`, "array[Stop]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`shipments`)) {
        self$`shipments` <- ApiClient$new()$deserializeObj(this_object$`shipments`, "array[Shipment]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`allShipmentsConfirmed`)) {
        self$`allShipmentsConfirmed` <- this_object$`allShipmentsConfirmed`
      }
      if (!is.null(this_object$`shipmentOrderCount`)) {
        self$`shipmentOrderCount` <- this_object$`shipmentOrderCount`
      }
      if (!is.null(this_object$`polyline`)) {
        self$`polyline` <- this_object$`polyline`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
      }
      if (!is.null(this_object$`glympseToken`)) {
        self$`glympseToken` <- this_object$`glympseToken`
      }
      if (!is.null(this_object$`enableOptimization`)) {
        self$`enableOptimization` <- this_object$`enableOptimization`
      }
      if (!is.null(this_object$`optimizedDate`)) {
        self$`optimizedDate` <- this_object$`optimizedDate`
      }
      if (!is.null(this_object$`optimizationStarted`)) {
        self$`optimizationStarted` <- this_object$`optimizationStarted`
      }
      if (!is.null(this_object$`optimizationCompleted`)) {
        self$`optimizationCompleted` <- this_object$`optimizationCompleted`
      }
      if (!is.null(this_object$`featured`)) {
        self$`featured` <- this_object$`featured`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- Asset$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`parent`)) {
        `parent_object` <- Route$new()
        `parent_object`$fromJSON(jsonlite::toJSON(this_object$`parent`, auto_unbox = TRUE, digits = NA))
        self$`parent` <- `parent_object`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Route in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Route
    #'
    #' @param input_json the JSON input
    #' @return the instance of Route
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`name` <- this_object$`name`
      self$`externalId` <- this_object$`externalId`
      self$`hub` <- ServiceHub$new()$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
      self$`program` <- Program$new()$fromJSON(jsonlite::toJSON(this_object$`program`, auto_unbox = TRUE, digits = NA))
      self$`zone` <- Region$new()$fromJSON(jsonlite::toJSON(this_object$`zone`, auto_unbox = TRUE, digits = NA))
      self$`vehicle` <- Vehicle$new()$fromJSON(jsonlite::toJSON(this_object$`vehicle`, auto_unbox = TRUE, digits = NA))
      self$`driver` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`driver`, auto_unbox = TRUE, digits = NA))
      self$`concierge` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`concierge`, auto_unbox = TRUE, digits = NA))
      self$`scheduled` <- this_object$`scheduled`
      self$`approved` <- this_object$`approved`
      self$`started` <- this_object$`started`
      self$`completed` <- this_object$`completed`
      self$`totalDistance` <- this_object$`totalDistance`
      self$`totalTime` <- this_object$`totalTime`
      self$`estimatedDistance` <- this_object$`estimatedDistance`
      self$`estimatedTime` <- this_object$`estimatedTime`
      self$`startStop` <- Stop$new()$fromJSON(jsonlite::toJSON(this_object$`startStop`, auto_unbox = TRUE, digits = NA))
      self$`endStop` <- Stop$new()$fromJSON(jsonlite::toJSON(this_object$`endStop`, auto_unbox = TRUE, digits = NA))
      self$`stops` <- ApiClient$new()$deserializeObj(this_object$`stops`, "array[Stop]", loadNamespace("openapi"))
      self$`shipments` <- ApiClient$new()$deserializeObj(this_object$`shipments`, "array[Shipment]", loadNamespace("openapi"))
      self$`allShipmentsConfirmed` <- this_object$`allShipmentsConfirmed`
      self$`shipmentOrderCount` <- this_object$`shipmentOrderCount`
      self$`polyline` <- this_object$`polyline`
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`noteCount` <- this_object$`noteCount`
      self$`glympseToken` <- this_object$`glympseToken`
      self$`enableOptimization` <- this_object$`enableOptimization`
      self$`optimizedDate` <- this_object$`optimizedDate`
      self$`optimizationStarted` <- this_object$`optimizationStarted`
      self$`optimizationCompleted` <- this_object$`optimizationCompleted`
      self$`featured` <- this_object$`featured`
      self$`image` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`parent` <- Route$new()$fromJSON(jsonlite::toJSON(this_object$`parent`, auto_unbox = TRUE, digits = NA))
      self$`contentName` <- this_object$`contentName`
      self
    },

    #' @description
    #' Validate JSON input with respect to Route and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Route
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
# Route$unlock()
#
## Below is an example to define the print function
# Route$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Route$lock()

