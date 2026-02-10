#' Create a new ShipmentBatch
#'
#' @description
#' ShipmentBatch Class
#'
#' @docType class
#' @title ShipmentBatch
#' @description ShipmentBatch Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field created  character [optional]
#' @field updated  character [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field retailer  \link{Retailer} [optional]
#' @field hub  \link{ServiceHub} [optional]
#' @field program  \link{Program} [optional]
#' @field shipmentImportStatuses  list(\link{ShipmentImportStatus}) [optional]
#' @field shipments  list(\link{Shipment}) [optional]
#' @field uploaded  character [optional]
#' @field started  character [optional]
#' @field optimizationStarted  character [optional]
#' @field completed  character [optional]
#' @field optimizationCompleted  character [optional]
#' @field source  character [optional]
#' @field externalId  character [optional]
#' @field total  integer [optional]
#' @field processedCount  integer [optional]
#' @field successCount  integer [optional]
#' @field failedCount  integer [optional]
#' @field validCount  integer [optional]
#' @field invalidCount  integer [optional]
#' @field averageTravelSpeed  numeric [optional]
#' @field maxSeconds  integer [optional]
#' @field importStatus  character [optional]
#' @field totalRoutes  integer [optional]
#' @field routesCreated  integer [optional]
#' @field totalLegsRequests  integer [optional]
#' @field legsRequested  integer [optional]
#' @field initScore  integer [optional]
#' @field hardScore  integer [optional]
#' @field mediumScore  integer [optional]
#' @field softScore  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ShipmentBatch <- R6::R6Class(
  "ShipmentBatch",
  public = list(
    `id` = NULL,
    `created` = NULL,
    `updated` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `retailer` = NULL,
    `hub` = NULL,
    `program` = NULL,
    `shipmentImportStatuses` = NULL,
    `shipments` = NULL,
    `uploaded` = NULL,
    `started` = NULL,
    `optimizationStarted` = NULL,
    `completed` = NULL,
    `optimizationCompleted` = NULL,
    `source` = NULL,
    `externalId` = NULL,
    `total` = NULL,
    `processedCount` = NULL,
    `successCount` = NULL,
    `failedCount` = NULL,
    `validCount` = NULL,
    `invalidCount` = NULL,
    `averageTravelSpeed` = NULL,
    `maxSeconds` = NULL,
    `importStatus` = NULL,
    `totalRoutes` = NULL,
    `routesCreated` = NULL,
    `totalLegsRequests` = NULL,
    `legsRequested` = NULL,
    `initScore` = NULL,
    `hardScore` = NULL,
    `mediumScore` = NULL,
    `softScore` = NULL,

    #' @description
    #' Initialize a new ShipmentBatch class.
    #'
    #' @param id id
    #' @param created created
    #' @param updated updated
    #' @param active active
    #' @param valid valid
    #' @param retailer retailer
    #' @param hub hub
    #' @param program program
    #' @param shipmentImportStatuses shipmentImportStatuses
    #' @param shipments shipments
    #' @param uploaded uploaded
    #' @param started started
    #' @param optimizationStarted optimizationStarted
    #' @param completed completed
    #' @param optimizationCompleted optimizationCompleted
    #' @param source source
    #' @param externalId externalId
    #' @param total total
    #' @param processedCount processedCount
    #' @param successCount successCount
    #' @param failedCount failedCount
    #' @param validCount validCount
    #' @param invalidCount invalidCount
    #' @param averageTravelSpeed averageTravelSpeed
    #' @param maxSeconds maxSeconds
    #' @param importStatus importStatus
    #' @param totalRoutes totalRoutes
    #' @param routesCreated routesCreated
    #' @param totalLegsRequests totalLegsRequests
    #' @param legsRequested legsRequested
    #' @param initScore initScore
    #' @param hardScore hardScore
    #' @param mediumScore mediumScore
    #' @param softScore softScore
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `created` = NULL, `updated` = NULL, `active` = NULL, `valid` = NULL, `retailer` = NULL, `hub` = NULL, `program` = NULL, `shipmentImportStatuses` = NULL, `shipments` = NULL, `uploaded` = NULL, `started` = NULL, `optimizationStarted` = NULL, `completed` = NULL, `optimizationCompleted` = NULL, `source` = NULL, `externalId` = NULL, `total` = NULL, `processedCount` = NULL, `successCount` = NULL, `failedCount` = NULL, `validCount` = NULL, `invalidCount` = NULL, `averageTravelSpeed` = NULL, `maxSeconds` = NULL, `importStatus` = NULL, `totalRoutes` = NULL, `routesCreated` = NULL, `totalLegsRequests` = NULL, `legsRequested` = NULL, `initScore` = NULL, `hardScore` = NULL, `mediumScore` = NULL, `softScore` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`created`)) {
        if (!is.character(`created`)) {
          stop(paste("Error! Invalid data for `created`. Must be a string:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`updated`)) {
        if (!is.character(`updated`)) {
          stop(paste("Error! Invalid data for `updated`. Must be a string:", `updated`))
        }
        self$`updated` <- `updated`
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
      if (!is.null(`retailer`)) {
        stopifnot(R6::is.R6(`retailer`))
        self$`retailer` <- `retailer`
      }
      if (!is.null(`hub`)) {
        stopifnot(R6::is.R6(`hub`))
        self$`hub` <- `hub`
      }
      if (!is.null(`program`)) {
        stopifnot(R6::is.R6(`program`))
        self$`program` <- `program`
      }
      if (!is.null(`shipmentImportStatuses`)) {
        stopifnot(is.vector(`shipmentImportStatuses`), length(`shipmentImportStatuses`) != 0)
        sapply(`shipmentImportStatuses`, function(x) stopifnot(R6::is.R6(x)))
        self$`shipmentImportStatuses` <- `shipmentImportStatuses`
      }
      if (!is.null(`shipments`)) {
        stopifnot(is.vector(`shipments`), length(`shipments`) != 0)
        sapply(`shipments`, function(x) stopifnot(R6::is.R6(x)))
        self$`shipments` <- `shipments`
      }
      if (!is.null(`uploaded`)) {
        if (!is.character(`uploaded`)) {
          stop(paste("Error! Invalid data for `uploaded`. Must be a string:", `uploaded`))
        }
        self$`uploaded` <- `uploaded`
      }
      if (!is.null(`started`)) {
        if (!is.character(`started`)) {
          stop(paste("Error! Invalid data for `started`. Must be a string:", `started`))
        }
        self$`started` <- `started`
      }
      if (!is.null(`optimizationStarted`)) {
        if (!is.character(`optimizationStarted`)) {
          stop(paste("Error! Invalid data for `optimizationStarted`. Must be a string:", `optimizationStarted`))
        }
        self$`optimizationStarted` <- `optimizationStarted`
      }
      if (!is.null(`completed`)) {
        if (!is.character(`completed`)) {
          stop(paste("Error! Invalid data for `completed`. Must be a string:", `completed`))
        }
        self$`completed` <- `completed`
      }
      if (!is.null(`optimizationCompleted`)) {
        if (!is.character(`optimizationCompleted`)) {
          stop(paste("Error! Invalid data for `optimizationCompleted`. Must be a string:", `optimizationCompleted`))
        }
        self$`optimizationCompleted` <- `optimizationCompleted`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`processedCount`)) {
        if (!(is.numeric(`processedCount`) && length(`processedCount`) == 1)) {
          stop(paste("Error! Invalid data for `processedCount`. Must be an integer:", `processedCount`))
        }
        self$`processedCount` <- `processedCount`
      }
      if (!is.null(`successCount`)) {
        if (!(is.numeric(`successCount`) && length(`successCount`) == 1)) {
          stop(paste("Error! Invalid data for `successCount`. Must be an integer:", `successCount`))
        }
        self$`successCount` <- `successCount`
      }
      if (!is.null(`failedCount`)) {
        if (!(is.numeric(`failedCount`) && length(`failedCount`) == 1)) {
          stop(paste("Error! Invalid data for `failedCount`. Must be an integer:", `failedCount`))
        }
        self$`failedCount` <- `failedCount`
      }
      if (!is.null(`validCount`)) {
        if (!(is.numeric(`validCount`) && length(`validCount`) == 1)) {
          stop(paste("Error! Invalid data for `validCount`. Must be an integer:", `validCount`))
        }
        self$`validCount` <- `validCount`
      }
      if (!is.null(`invalidCount`)) {
        if (!(is.numeric(`invalidCount`) && length(`invalidCount`) == 1)) {
          stop(paste("Error! Invalid data for `invalidCount`. Must be an integer:", `invalidCount`))
        }
        self$`invalidCount` <- `invalidCount`
      }
      if (!is.null(`averageTravelSpeed`)) {
        if (!(is.numeric(`averageTravelSpeed`) && length(`averageTravelSpeed`) == 1)) {
          stop(paste("Error! Invalid data for `averageTravelSpeed`. Must be a number:", `averageTravelSpeed`))
        }
        self$`averageTravelSpeed` <- `averageTravelSpeed`
      }
      if (!is.null(`maxSeconds`)) {
        if (!(is.numeric(`maxSeconds`) && length(`maxSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `maxSeconds`. Must be an integer:", `maxSeconds`))
        }
        self$`maxSeconds` <- `maxSeconds`
      }
      if (!is.null(`importStatus`)) {
        if (!(`importStatus` %in% c("NEW", "STARTED", "FETCHING_DISTANCE_DATA", "OPTIMIZING", "CREATING_ROUTES", "COMPLETED", "INCOMPLETE"))) {
          stop(paste("Error! \"", `importStatus`, "\" cannot be assigned to `importStatus`. Must be \"NEW\", \"STARTED\", \"FETCHING_DISTANCE_DATA\", \"OPTIMIZING\", \"CREATING_ROUTES\", \"COMPLETED\", \"INCOMPLETE\".", sep = ""))
        }
        if (!(is.character(`importStatus`) && length(`importStatus`) == 1)) {
          stop(paste("Error! Invalid data for `importStatus`. Must be a string:", `importStatus`))
        }
        self$`importStatus` <- `importStatus`
      }
      if (!is.null(`totalRoutes`)) {
        if (!(is.numeric(`totalRoutes`) && length(`totalRoutes`) == 1)) {
          stop(paste("Error! Invalid data for `totalRoutes`. Must be an integer:", `totalRoutes`))
        }
        self$`totalRoutes` <- `totalRoutes`
      }
      if (!is.null(`routesCreated`)) {
        if (!(is.numeric(`routesCreated`) && length(`routesCreated`) == 1)) {
          stop(paste("Error! Invalid data for `routesCreated`. Must be an integer:", `routesCreated`))
        }
        self$`routesCreated` <- `routesCreated`
      }
      if (!is.null(`totalLegsRequests`)) {
        if (!(is.numeric(`totalLegsRequests`) && length(`totalLegsRequests`) == 1)) {
          stop(paste("Error! Invalid data for `totalLegsRequests`. Must be an integer:", `totalLegsRequests`))
        }
        self$`totalLegsRequests` <- `totalLegsRequests`
      }
      if (!is.null(`legsRequested`)) {
        if (!(is.numeric(`legsRequested`) && length(`legsRequested`) == 1)) {
          stop(paste("Error! Invalid data for `legsRequested`. Must be an integer:", `legsRequested`))
        }
        self$`legsRequested` <- `legsRequested`
      }
      if (!is.null(`initScore`)) {
        if (!(is.numeric(`initScore`) && length(`initScore`) == 1)) {
          stop(paste("Error! Invalid data for `initScore`. Must be an integer:", `initScore`))
        }
        self$`initScore` <- `initScore`
      }
      if (!is.null(`hardScore`)) {
        if (!(is.numeric(`hardScore`) && length(`hardScore`) == 1)) {
          stop(paste("Error! Invalid data for `hardScore`. Must be an integer:", `hardScore`))
        }
        self$`hardScore` <- `hardScore`
      }
      if (!is.null(`mediumScore`)) {
        if (!(is.numeric(`mediumScore`) && length(`mediumScore`) == 1)) {
          stop(paste("Error! Invalid data for `mediumScore`. Must be an integer:", `mediumScore`))
        }
        self$`mediumScore` <- `mediumScore`
      }
      if (!is.null(`softScore`)) {
        if (!(is.numeric(`softScore`) && length(`softScore`) == 1)) {
          stop(paste("Error! Invalid data for `softScore`. Must be an integer:", `softScore`))
        }
        self$`softScore` <- `softScore`
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
    #' @return ShipmentBatch as a base R list.
    #' @examples
    #' # convert array of ShipmentBatch (x) to a data frame
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
    #' Convert ShipmentBatch to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShipmentBatchObject <- list()
      if (!is.null(self$`id`)) {
        ShipmentBatchObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`created`)) {
        ShipmentBatchObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`updated`)) {
        ShipmentBatchObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`active`)) {
        ShipmentBatchObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ShipmentBatchObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`retailer`)) {
        ShipmentBatchObject[["retailer"]] <-
          self$extractSimpleType(self$`retailer`)
      }
      if (!is.null(self$`hub`)) {
        ShipmentBatchObject[["hub"]] <-
          self$extractSimpleType(self$`hub`)
      }
      if (!is.null(self$`program`)) {
        ShipmentBatchObject[["program"]] <-
          self$extractSimpleType(self$`program`)
      }
      if (!is.null(self$`shipmentImportStatuses`)) {
        ShipmentBatchObject[["shipmentImportStatuses"]] <-
          self$extractSimpleType(self$`shipmentImportStatuses`)
      }
      if (!is.null(self$`shipments`)) {
        ShipmentBatchObject[["shipments"]] <-
          self$extractSimpleType(self$`shipments`)
      }
      if (!is.null(self$`uploaded`)) {
        ShipmentBatchObject[["uploaded"]] <-
          self$`uploaded`
      }
      if (!is.null(self$`started`)) {
        ShipmentBatchObject[["started"]] <-
          self$`started`
      }
      if (!is.null(self$`optimizationStarted`)) {
        ShipmentBatchObject[["optimizationStarted"]] <-
          self$`optimizationStarted`
      }
      if (!is.null(self$`completed`)) {
        ShipmentBatchObject[["completed"]] <-
          self$`completed`
      }
      if (!is.null(self$`optimizationCompleted`)) {
        ShipmentBatchObject[["optimizationCompleted"]] <-
          self$`optimizationCompleted`
      }
      if (!is.null(self$`source`)) {
        ShipmentBatchObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`externalId`)) {
        ShipmentBatchObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`total`)) {
        ShipmentBatchObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`processedCount`)) {
        ShipmentBatchObject[["processedCount"]] <-
          self$`processedCount`
      }
      if (!is.null(self$`successCount`)) {
        ShipmentBatchObject[["successCount"]] <-
          self$`successCount`
      }
      if (!is.null(self$`failedCount`)) {
        ShipmentBatchObject[["failedCount"]] <-
          self$`failedCount`
      }
      if (!is.null(self$`validCount`)) {
        ShipmentBatchObject[["validCount"]] <-
          self$`validCount`
      }
      if (!is.null(self$`invalidCount`)) {
        ShipmentBatchObject[["invalidCount"]] <-
          self$`invalidCount`
      }
      if (!is.null(self$`averageTravelSpeed`)) {
        ShipmentBatchObject[["averageTravelSpeed"]] <-
          self$`averageTravelSpeed`
      }
      if (!is.null(self$`maxSeconds`)) {
        ShipmentBatchObject[["maxSeconds"]] <-
          self$`maxSeconds`
      }
      if (!is.null(self$`importStatus`)) {
        ShipmentBatchObject[["importStatus"]] <-
          self$`importStatus`
      }
      if (!is.null(self$`totalRoutes`)) {
        ShipmentBatchObject[["totalRoutes"]] <-
          self$`totalRoutes`
      }
      if (!is.null(self$`routesCreated`)) {
        ShipmentBatchObject[["routesCreated"]] <-
          self$`routesCreated`
      }
      if (!is.null(self$`totalLegsRequests`)) {
        ShipmentBatchObject[["totalLegsRequests"]] <-
          self$`totalLegsRequests`
      }
      if (!is.null(self$`legsRequested`)) {
        ShipmentBatchObject[["legsRequested"]] <-
          self$`legsRequested`
      }
      if (!is.null(self$`initScore`)) {
        ShipmentBatchObject[["initScore"]] <-
          self$`initScore`
      }
      if (!is.null(self$`hardScore`)) {
        ShipmentBatchObject[["hardScore"]] <-
          self$`hardScore`
      }
      if (!is.null(self$`mediumScore`)) {
        ShipmentBatchObject[["mediumScore"]] <-
          self$`mediumScore`
      }
      if (!is.null(self$`softScore`)) {
        ShipmentBatchObject[["softScore"]] <-
          self$`softScore`
      }
      return(ShipmentBatchObject)
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
    #' Deserialize JSON string into an instance of ShipmentBatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShipmentBatch
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`retailer`)) {
        `retailer_object` <- Retailer$new()
        `retailer_object`$fromJSON(jsonlite::toJSON(this_object$`retailer`, auto_unbox = TRUE, digits = NA))
        self$`retailer` <- `retailer_object`
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
      if (!is.null(this_object$`shipmentImportStatuses`)) {
        self$`shipmentImportStatuses` <- ApiClient$new()$deserializeObj(this_object$`shipmentImportStatuses`, "array[ShipmentImportStatus]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`shipments`)) {
        self$`shipments` <- ApiClient$new()$deserializeObj(this_object$`shipments`, "array[Shipment]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`uploaded`)) {
        self$`uploaded` <- this_object$`uploaded`
      }
      if (!is.null(this_object$`started`)) {
        self$`started` <- this_object$`started`
      }
      if (!is.null(this_object$`optimizationStarted`)) {
        self$`optimizationStarted` <- this_object$`optimizationStarted`
      }
      if (!is.null(this_object$`completed`)) {
        self$`completed` <- this_object$`completed`
      }
      if (!is.null(this_object$`optimizationCompleted`)) {
        self$`optimizationCompleted` <- this_object$`optimizationCompleted`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`processedCount`)) {
        self$`processedCount` <- this_object$`processedCount`
      }
      if (!is.null(this_object$`successCount`)) {
        self$`successCount` <- this_object$`successCount`
      }
      if (!is.null(this_object$`failedCount`)) {
        self$`failedCount` <- this_object$`failedCount`
      }
      if (!is.null(this_object$`validCount`)) {
        self$`validCount` <- this_object$`validCount`
      }
      if (!is.null(this_object$`invalidCount`)) {
        self$`invalidCount` <- this_object$`invalidCount`
      }
      if (!is.null(this_object$`averageTravelSpeed`)) {
        self$`averageTravelSpeed` <- this_object$`averageTravelSpeed`
      }
      if (!is.null(this_object$`maxSeconds`)) {
        self$`maxSeconds` <- this_object$`maxSeconds`
      }
      if (!is.null(this_object$`importStatus`)) {
        if (!is.null(this_object$`importStatus`) && !(this_object$`importStatus` %in% c("NEW", "STARTED", "FETCHING_DISTANCE_DATA", "OPTIMIZING", "CREATING_ROUTES", "COMPLETED", "INCOMPLETE"))) {
          stop(paste("Error! \"", this_object$`importStatus`, "\" cannot be assigned to `importStatus`. Must be \"NEW\", \"STARTED\", \"FETCHING_DISTANCE_DATA\", \"OPTIMIZING\", \"CREATING_ROUTES\", \"COMPLETED\", \"INCOMPLETE\".", sep = ""))
        }
        self$`importStatus` <- this_object$`importStatus`
      }
      if (!is.null(this_object$`totalRoutes`)) {
        self$`totalRoutes` <- this_object$`totalRoutes`
      }
      if (!is.null(this_object$`routesCreated`)) {
        self$`routesCreated` <- this_object$`routesCreated`
      }
      if (!is.null(this_object$`totalLegsRequests`)) {
        self$`totalLegsRequests` <- this_object$`totalLegsRequests`
      }
      if (!is.null(this_object$`legsRequested`)) {
        self$`legsRequested` <- this_object$`legsRequested`
      }
      if (!is.null(this_object$`initScore`)) {
        self$`initScore` <- this_object$`initScore`
      }
      if (!is.null(this_object$`hardScore`)) {
        self$`hardScore` <- this_object$`hardScore`
      }
      if (!is.null(this_object$`mediumScore`)) {
        self$`mediumScore` <- this_object$`mediumScore`
      }
      if (!is.null(this_object$`softScore`)) {
        self$`softScore` <- this_object$`softScore`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ShipmentBatch in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ShipmentBatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShipmentBatch
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`created` <- this_object$`created`
      self$`updated` <- this_object$`updated`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`retailer` <- Retailer$new()$fromJSON(jsonlite::toJSON(this_object$`retailer`, auto_unbox = TRUE, digits = NA))
      self$`hub` <- ServiceHub$new()$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
      self$`program` <- Program$new()$fromJSON(jsonlite::toJSON(this_object$`program`, auto_unbox = TRUE, digits = NA))
      self$`shipmentImportStatuses` <- ApiClient$new()$deserializeObj(this_object$`shipmentImportStatuses`, "array[ShipmentImportStatus]", loadNamespace("openapi"))
      self$`shipments` <- ApiClient$new()$deserializeObj(this_object$`shipments`, "array[Shipment]", loadNamespace("openapi"))
      self$`uploaded` <- this_object$`uploaded`
      self$`started` <- this_object$`started`
      self$`optimizationStarted` <- this_object$`optimizationStarted`
      self$`completed` <- this_object$`completed`
      self$`optimizationCompleted` <- this_object$`optimizationCompleted`
      self$`source` <- this_object$`source`
      self$`externalId` <- this_object$`externalId`
      self$`total` <- this_object$`total`
      self$`processedCount` <- this_object$`processedCount`
      self$`successCount` <- this_object$`successCount`
      self$`failedCount` <- this_object$`failedCount`
      self$`validCount` <- this_object$`validCount`
      self$`invalidCount` <- this_object$`invalidCount`
      self$`averageTravelSpeed` <- this_object$`averageTravelSpeed`
      self$`maxSeconds` <- this_object$`maxSeconds`
      if (!is.null(this_object$`importStatus`) && !(this_object$`importStatus` %in% c("NEW", "STARTED", "FETCHING_DISTANCE_DATA", "OPTIMIZING", "CREATING_ROUTES", "COMPLETED", "INCOMPLETE"))) {
        stop(paste("Error! \"", this_object$`importStatus`, "\" cannot be assigned to `importStatus`. Must be \"NEW\", \"STARTED\", \"FETCHING_DISTANCE_DATA\", \"OPTIMIZING\", \"CREATING_ROUTES\", \"COMPLETED\", \"INCOMPLETE\".", sep = ""))
      }
      self$`importStatus` <- this_object$`importStatus`
      self$`totalRoutes` <- this_object$`totalRoutes`
      self$`routesCreated` <- this_object$`routesCreated`
      self$`totalLegsRequests` <- this_object$`totalLegsRequests`
      self$`legsRequested` <- this_object$`legsRequested`
      self$`initScore` <- this_object$`initScore`
      self$`hardScore` <- this_object$`hardScore`
      self$`mediumScore` <- this_object$`mediumScore`
      self$`softScore` <- this_object$`softScore`
      self
    },

    #' @description
    #' Validate JSON input with respect to ShipmentBatch and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ShipmentBatch
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
# ShipmentBatch$unlock()
#
## Below is an example to define the print function
# ShipmentBatch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ShipmentBatch$lock()

