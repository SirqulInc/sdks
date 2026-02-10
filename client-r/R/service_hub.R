#' Create a new ServiceHub
#'
#' @description
#' ServiceHub Class
#'
#' @docType class
#' @title ServiceHub
#' @description ServiceHub Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field name  character [optional]
#' @field externalId  character [optional]
#' @field business  \link{Retailer} [optional]
#' @field location  \link{Location} [optional]
#' @field timeZone  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServiceHub <- R6::R6Class(
  "ServiceHub",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `name` = NULL,
    `externalId` = NULL,
    `business` = NULL,
    `location` = NULL,
    `timeZone` = NULL,

    #' @description
    #' Initialize a new ServiceHub class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param name name
    #' @param externalId externalId
    #' @param business business
    #' @param location location
    #' @param timeZone timeZone
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `name` = NULL, `externalId` = NULL, `business` = NULL, `location` = NULL, `timeZone` = NULL, ...) {
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
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`business`)) {
        stopifnot(R6::is.R6(`business`))
        self$`business` <- `business`
      }
      if (!is.null(`location`)) {
        stopifnot(R6::is.R6(`location`))
        self$`location` <- `location`
      }
      if (!is.null(`timeZone`)) {
        if (!(is.character(`timeZone`) && length(`timeZone`) == 1)) {
          stop(paste("Error! Invalid data for `timeZone`. Must be a string:", `timeZone`))
        }
        self$`timeZone` <- `timeZone`
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
    #' @return ServiceHub as a base R list.
    #' @examples
    #' # convert array of ServiceHub (x) to a data frame
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
    #' Convert ServiceHub to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServiceHubObject <- list()
      if (!is.null(self$`id`)) {
        ServiceHubObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ServiceHubObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ServiceHubObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        ServiceHubObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        ServiceHubObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        ServiceHubObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`name`)) {
        ServiceHubObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`externalId`)) {
        ServiceHubObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`business`)) {
        ServiceHubObject[["business"]] <-
          self$extractSimpleType(self$`business`)
      }
      if (!is.null(self$`location`)) {
        ServiceHubObject[["location"]] <-
          self$extractSimpleType(self$`location`)
      }
      if (!is.null(self$`timeZone`)) {
        ServiceHubObject[["timeZone"]] <-
          self$`timeZone`
      }
      return(ServiceHubObject)
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
    #' Deserialize JSON string into an instance of ServiceHub
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServiceHub
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
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`business`)) {
        `business_object` <- Retailer$new()
        `business_object`$fromJSON(jsonlite::toJSON(this_object$`business`, auto_unbox = TRUE, digits = NA))
        self$`business` <- `business_object`
      }
      if (!is.null(this_object$`location`)) {
        `location_object` <- Location$new()
        `location_object`$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
        self$`location` <- `location_object`
      }
      if (!is.null(this_object$`timeZone`)) {
        self$`timeZone` <- this_object$`timeZone`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServiceHub in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServiceHub
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServiceHub
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`name` <- this_object$`name`
      self$`externalId` <- this_object$`externalId`
      self$`business` <- Retailer$new()$fromJSON(jsonlite::toJSON(this_object$`business`, auto_unbox = TRUE, digits = NA))
      self$`location` <- Location$new()$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
      self$`timeZone` <- this_object$`timeZone`
      self
    },

    #' @description
    #' Validate JSON input with respect to ServiceHub and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServiceHub
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
# ServiceHub$unlock()
#
## Below is an example to define the print function
# ServiceHub$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServiceHub$lock()

