#' Create a new NodeRequest
#'
#' @description
#' NodeRequest Class
#'
#' @docType class
#' @title NodeRequest
#' @description NodeRequest Class
#' @format An \code{R6Class} generator object
#' @field x  integer [optional]
#' @field y  integer [optional]
#' @field z  integer [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field altitude  numeric [optional]
#' @field date  integer [optional]
#' @field isWaypoint  character [optional]
#' @field accountId  integer [optional]
#' @field node  \link{Node} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NodeRequest <- R6::R6Class(
  "NodeRequest",
  public = list(
    `x` = NULL,
    `y` = NULL,
    `z` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `altitude` = NULL,
    `date` = NULL,
    `isWaypoint` = NULL,
    `accountId` = NULL,
    `node` = NULL,

    #' @description
    #' Initialize a new NodeRequest class.
    #'
    #' @param x x
    #' @param y y
    #' @param z z
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param altitude altitude
    #' @param date date
    #' @param isWaypoint isWaypoint
    #' @param accountId accountId
    #' @param node node
    #' @param ... Other optional arguments.
    initialize = function(`x` = NULL, `y` = NULL, `z` = NULL, `latitude` = NULL, `longitude` = NULL, `altitude` = NULL, `date` = NULL, `isWaypoint` = NULL, `accountId` = NULL, `node` = NULL, ...) {
      if (!is.null(`x`)) {
        if (!(is.numeric(`x`) && length(`x`) == 1)) {
          stop(paste("Error! Invalid data for `x`. Must be an integer:", `x`))
        }
        self$`x` <- `x`
      }
      if (!is.null(`y`)) {
        if (!(is.numeric(`y`) && length(`y`) == 1)) {
          stop(paste("Error! Invalid data for `y`. Must be an integer:", `y`))
        }
        self$`y` <- `y`
      }
      if (!is.null(`z`)) {
        if (!(is.numeric(`z`) && length(`z`) == 1)) {
          stop(paste("Error! Invalid data for `z`. Must be an integer:", `z`))
        }
        self$`z` <- `z`
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
      if (!is.null(`altitude`)) {
        if (!(is.numeric(`altitude`) && length(`altitude`) == 1)) {
          stop(paste("Error! Invalid data for `altitude`. Must be a number:", `altitude`))
        }
        self$`altitude` <- `altitude`
      }
      if (!is.null(`date`)) {
        if (!(is.numeric(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be an integer:", `date`))
        }
        self$`date` <- `date`
      }
      if (!is.null(`isWaypoint`)) {
        if (!(is.logical(`isWaypoint`) && length(`isWaypoint`) == 1)) {
          stop(paste("Error! Invalid data for `isWaypoint`. Must be a boolean:", `isWaypoint`))
        }
        self$`isWaypoint` <- `isWaypoint`
      }
      if (!is.null(`accountId`)) {
        if (!(is.numeric(`accountId`) && length(`accountId`) == 1)) {
          stop(paste("Error! Invalid data for `accountId`. Must be an integer:", `accountId`))
        }
        self$`accountId` <- `accountId`
      }
      if (!is.null(`node`)) {
        stopifnot(R6::is.R6(`node`))
        self$`node` <- `node`
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
    #' @return NodeRequest as a base R list.
    #' @examples
    #' # convert array of NodeRequest (x) to a data frame
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
    #' Convert NodeRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NodeRequestObject <- list()
      if (!is.null(self$`x`)) {
        NodeRequestObject[["x"]] <-
          self$`x`
      }
      if (!is.null(self$`y`)) {
        NodeRequestObject[["y"]] <-
          self$`y`
      }
      if (!is.null(self$`z`)) {
        NodeRequestObject[["z"]] <-
          self$`z`
      }
      if (!is.null(self$`latitude`)) {
        NodeRequestObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        NodeRequestObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`altitude`)) {
        NodeRequestObject[["altitude"]] <-
          self$`altitude`
      }
      if (!is.null(self$`date`)) {
        NodeRequestObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`isWaypoint`)) {
        NodeRequestObject[["isWaypoint"]] <-
          self$`isWaypoint`
      }
      if (!is.null(self$`accountId`)) {
        NodeRequestObject[["accountId"]] <-
          self$`accountId`
      }
      if (!is.null(self$`node`)) {
        NodeRequestObject[["node"]] <-
          self$extractSimpleType(self$`node`)
      }
      return(NodeRequestObject)
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
    #' Deserialize JSON string into an instance of NodeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of NodeRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`x`)) {
        self$`x` <- this_object$`x`
      }
      if (!is.null(this_object$`y`)) {
        self$`y` <- this_object$`y`
      }
      if (!is.null(this_object$`z`)) {
        self$`z` <- this_object$`z`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`altitude`)) {
        self$`altitude` <- this_object$`altitude`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`isWaypoint`)) {
        self$`isWaypoint` <- this_object$`isWaypoint`
      }
      if (!is.null(this_object$`accountId`)) {
        self$`accountId` <- this_object$`accountId`
      }
      if (!is.null(this_object$`node`)) {
        `node_object` <- Node$new()
        `node_object`$fromJSON(jsonlite::toJSON(this_object$`node`, auto_unbox = TRUE, digits = NA))
        self$`node` <- `node_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return NodeRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NodeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of NodeRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`x` <- this_object$`x`
      self$`y` <- this_object$`y`
      self$`z` <- this_object$`z`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`altitude` <- this_object$`altitude`
      self$`date` <- this_object$`date`
      self$`isWaypoint` <- this_object$`isWaypoint`
      self$`accountId` <- this_object$`accountId`
      self$`node` <- Node$new()$fromJSON(jsonlite::toJSON(this_object$`node`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to NodeRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NodeRequest
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
# NodeRequest$unlock()
#
## Below is an example to define the print function
# NodeRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NodeRequest$lock()

