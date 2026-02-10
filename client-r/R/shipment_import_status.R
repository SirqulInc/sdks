#' Create a new ShipmentImportStatus
#'
#' @description
#' ShipmentImportStatus Class
#'
#' @docType class
#' @title ShipmentImportStatus
#' @description ShipmentImportStatus Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field name  character [optional]
#' @field batchId  character [optional]
#' @field message  character [optional]
#' @field shipment  \link{Shipment} [optional]
#' @field started  character [optional]
#' @field completed  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ShipmentImportStatus <- R6::R6Class(
  "ShipmentImportStatus",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `name` = NULL,
    `batchId` = NULL,
    `message` = NULL,
    `shipment` = NULL,
    `started` = NULL,
    `completed` = NULL,

    #' @description
    #' Initialize a new ShipmentImportStatus class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param name name
    #' @param batchId batchId
    #' @param message message
    #' @param shipment shipment
    #' @param started started
    #' @param completed completed
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `name` = NULL, `batchId` = NULL, `message` = NULL, `shipment` = NULL, `started` = NULL, `completed` = NULL, ...) {
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
      if (!is.null(`batchId`)) {
        if (!(is.character(`batchId`) && length(`batchId`) == 1)) {
          stop(paste("Error! Invalid data for `batchId`. Must be a string:", `batchId`))
        }
        self$`batchId` <- `batchId`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`shipment`)) {
        stopifnot(R6::is.R6(`shipment`))
        self$`shipment` <- `shipment`
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
    #' @return ShipmentImportStatus as a base R list.
    #' @examples
    #' # convert array of ShipmentImportStatus (x) to a data frame
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
    #' Convert ShipmentImportStatus to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShipmentImportStatusObject <- list()
      if (!is.null(self$`id`)) {
        ShipmentImportStatusObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ShipmentImportStatusObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ShipmentImportStatusObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`name`)) {
        ShipmentImportStatusObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`batchId`)) {
        ShipmentImportStatusObject[["batchId"]] <-
          self$`batchId`
      }
      if (!is.null(self$`message`)) {
        ShipmentImportStatusObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`shipment`)) {
        ShipmentImportStatusObject[["shipment"]] <-
          self$extractSimpleType(self$`shipment`)
      }
      if (!is.null(self$`started`)) {
        ShipmentImportStatusObject[["started"]] <-
          self$`started`
      }
      if (!is.null(self$`completed`)) {
        ShipmentImportStatusObject[["completed"]] <-
          self$`completed`
      }
      return(ShipmentImportStatusObject)
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
    #' Deserialize JSON string into an instance of ShipmentImportStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShipmentImportStatus
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
      if (!is.null(this_object$`batchId`)) {
        self$`batchId` <- this_object$`batchId`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`shipment`)) {
        `shipment_object` <- Shipment$new()
        `shipment_object`$fromJSON(jsonlite::toJSON(this_object$`shipment`, auto_unbox = TRUE, digits = NA))
        self$`shipment` <- `shipment_object`
      }
      if (!is.null(this_object$`started`)) {
        self$`started` <- this_object$`started`
      }
      if (!is.null(this_object$`completed`)) {
        self$`completed` <- this_object$`completed`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ShipmentImportStatus in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ShipmentImportStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShipmentImportStatus
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`name` <- this_object$`name`
      self$`batchId` <- this_object$`batchId`
      self$`message` <- this_object$`message`
      self$`shipment` <- Shipment$new()$fromJSON(jsonlite::toJSON(this_object$`shipment`, auto_unbox = TRUE, digits = NA))
      self$`started` <- this_object$`started`
      self$`completed` <- this_object$`completed`
      self
    },

    #' @description
    #' Validate JSON input with respect to ShipmentImportStatus and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ShipmentImportStatus
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
# ShipmentImportStatus$unlock()
#
## Below is an example to define the print function
# ShipmentImportStatus$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ShipmentImportStatus$lock()

