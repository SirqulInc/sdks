#' Create a new QueueResponse
#'
#' @description
#' QueueResponse Class
#'
#' @docType class
#' @title QueueResponse
#' @description QueueResponse Class
#' @format An \code{R6Class} generator object
#' @field queueId  integer [optional]
#' @field name  character [optional]
#' @field host  character [optional]
#' @field port  integer [optional]
#' @field username  character [optional]
#' @field password  character [optional]
#' @field virtualHost  character [optional]
#' @field workers  integer [optional]
#' @field exchanger  character [optional]
#' @field exchangerType  character [optional]
#' @field handleDelivery  character [optional]
#' @field dataMapping  character [optional]
#' @field analyticTags  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueueResponse <- R6::R6Class(
  "QueueResponse",
  public = list(
    `queueId` = NULL,
    `name` = NULL,
    `host` = NULL,
    `port` = NULL,
    `username` = NULL,
    `password` = NULL,
    `virtualHost` = NULL,
    `workers` = NULL,
    `exchanger` = NULL,
    `exchangerType` = NULL,
    `handleDelivery` = NULL,
    `dataMapping` = NULL,
    `analyticTags` = NULL,

    #' @description
    #' Initialize a new QueueResponse class.
    #'
    #' @param queueId queueId
    #' @param name name
    #' @param host host
    #' @param port port
    #' @param username username
    #' @param password password
    #' @param virtualHost virtualHost
    #' @param workers workers
    #' @param exchanger exchanger
    #' @param exchangerType exchangerType
    #' @param handleDelivery handleDelivery
    #' @param dataMapping dataMapping
    #' @param analyticTags analyticTags
    #' @param ... Other optional arguments.
    initialize = function(`queueId` = NULL, `name` = NULL, `host` = NULL, `port` = NULL, `username` = NULL, `password` = NULL, `virtualHost` = NULL, `workers` = NULL, `exchanger` = NULL, `exchangerType` = NULL, `handleDelivery` = NULL, `dataMapping` = NULL, `analyticTags` = NULL, ...) {
      if (!is.null(`queueId`)) {
        if (!(is.numeric(`queueId`) && length(`queueId`) == 1)) {
          stop(paste("Error! Invalid data for `queueId`. Must be an integer:", `queueId`))
        }
        self$`queueId` <- `queueId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`host`)) {
        if (!(is.character(`host`) && length(`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", `host`))
        }
        self$`host` <- `host`
      }
      if (!is.null(`port`)) {
        if (!(is.numeric(`port`) && length(`port`) == 1)) {
          stop(paste("Error! Invalid data for `port`. Must be an integer:", `port`))
        }
        self$`port` <- `port`
      }
      if (!is.null(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!is.null(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
      }
      if (!is.null(`virtualHost`)) {
        if (!(is.character(`virtualHost`) && length(`virtualHost`) == 1)) {
          stop(paste("Error! Invalid data for `virtualHost`. Must be a string:", `virtualHost`))
        }
        self$`virtualHost` <- `virtualHost`
      }
      if (!is.null(`workers`)) {
        if (!(is.numeric(`workers`) && length(`workers`) == 1)) {
          stop(paste("Error! Invalid data for `workers`. Must be an integer:", `workers`))
        }
        self$`workers` <- `workers`
      }
      if (!is.null(`exchanger`)) {
        if (!(is.character(`exchanger`) && length(`exchanger`) == 1)) {
          stop(paste("Error! Invalid data for `exchanger`. Must be a string:", `exchanger`))
        }
        self$`exchanger` <- `exchanger`
      }
      if (!is.null(`exchangerType`)) {
        if (!(is.character(`exchangerType`) && length(`exchangerType`) == 1)) {
          stop(paste("Error! Invalid data for `exchangerType`. Must be a string:", `exchangerType`))
        }
        self$`exchangerType` <- `exchangerType`
      }
      if (!is.null(`handleDelivery`)) {
        if (!(is.logical(`handleDelivery`) && length(`handleDelivery`) == 1)) {
          stop(paste("Error! Invalid data for `handleDelivery`. Must be a boolean:", `handleDelivery`))
        }
        self$`handleDelivery` <- `handleDelivery`
      }
      if (!is.null(`dataMapping`)) {
        if (!(is.character(`dataMapping`) && length(`dataMapping`) == 1)) {
          stop(paste("Error! Invalid data for `dataMapping`. Must be a string:", `dataMapping`))
        }
        self$`dataMapping` <- `dataMapping`
      }
      if (!is.null(`analyticTags`)) {
        if (!(is.character(`analyticTags`) && length(`analyticTags`) == 1)) {
          stop(paste("Error! Invalid data for `analyticTags`. Must be a string:", `analyticTags`))
        }
        self$`analyticTags` <- `analyticTags`
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
    #' @return QueueResponse as a base R list.
    #' @examples
    #' # convert array of QueueResponse (x) to a data frame
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
    #' Convert QueueResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QueueResponseObject <- list()
      if (!is.null(self$`queueId`)) {
        QueueResponseObject[["queueId"]] <-
          self$`queueId`
      }
      if (!is.null(self$`name`)) {
        QueueResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`host`)) {
        QueueResponseObject[["host"]] <-
          self$`host`
      }
      if (!is.null(self$`port`)) {
        QueueResponseObject[["port"]] <-
          self$`port`
      }
      if (!is.null(self$`username`)) {
        QueueResponseObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`password`)) {
        QueueResponseObject[["password"]] <-
          self$`password`
      }
      if (!is.null(self$`virtualHost`)) {
        QueueResponseObject[["virtualHost"]] <-
          self$`virtualHost`
      }
      if (!is.null(self$`workers`)) {
        QueueResponseObject[["workers"]] <-
          self$`workers`
      }
      if (!is.null(self$`exchanger`)) {
        QueueResponseObject[["exchanger"]] <-
          self$`exchanger`
      }
      if (!is.null(self$`exchangerType`)) {
        QueueResponseObject[["exchangerType"]] <-
          self$`exchangerType`
      }
      if (!is.null(self$`handleDelivery`)) {
        QueueResponseObject[["handleDelivery"]] <-
          self$`handleDelivery`
      }
      if (!is.null(self$`dataMapping`)) {
        QueueResponseObject[["dataMapping"]] <-
          self$`dataMapping`
      }
      if (!is.null(self$`analyticTags`)) {
        QueueResponseObject[["analyticTags"]] <-
          self$`analyticTags`
      }
      return(QueueResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QueueResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueueResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`queueId`)) {
        self$`queueId` <- this_object$`queueId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`host`)) {
        self$`host` <- this_object$`host`
      }
      if (!is.null(this_object$`port`)) {
        self$`port` <- this_object$`port`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      if (!is.null(this_object$`virtualHost`)) {
        self$`virtualHost` <- this_object$`virtualHost`
      }
      if (!is.null(this_object$`workers`)) {
        self$`workers` <- this_object$`workers`
      }
      if (!is.null(this_object$`exchanger`)) {
        self$`exchanger` <- this_object$`exchanger`
      }
      if (!is.null(this_object$`exchangerType`)) {
        self$`exchangerType` <- this_object$`exchangerType`
      }
      if (!is.null(this_object$`handleDelivery`)) {
        self$`handleDelivery` <- this_object$`handleDelivery`
      }
      if (!is.null(this_object$`dataMapping`)) {
        self$`dataMapping` <- this_object$`dataMapping`
      }
      if (!is.null(this_object$`analyticTags`)) {
        self$`analyticTags` <- this_object$`analyticTags`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QueueResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QueueResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueueResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`queueId` <- this_object$`queueId`
      self$`name` <- this_object$`name`
      self$`host` <- this_object$`host`
      self$`port` <- this_object$`port`
      self$`username` <- this_object$`username`
      self$`password` <- this_object$`password`
      self$`virtualHost` <- this_object$`virtualHost`
      self$`workers` <- this_object$`workers`
      self$`exchanger` <- this_object$`exchanger`
      self$`exchangerType` <- this_object$`exchangerType`
      self$`handleDelivery` <- this_object$`handleDelivery`
      self$`dataMapping` <- this_object$`dataMapping`
      self$`analyticTags` <- this_object$`analyticTags`
      self
    },

    #' @description
    #' Validate JSON input with respect to QueueResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QueueResponse
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
# QueueResponse$unlock()
#
## Below is an example to define the print function
# QueueResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QueueResponse$lock()

