#' Create a new ServiceType
#'
#' @description
#' ServiceType Class
#'
#' @docType class
#' @title ServiceType
#' @description ServiceType Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field business  \link{Retailer} [optional]
#' @field hub  \link{ServiceHub} [optional]
#' @field name  character [optional]
#' @field additionalLoadTime  integer [optional]
#' @field pickupAddressOverride  \link{Address} [optional]
#' @field dropoffAddressOverride  \link{Address} [optional]
#' @field pickupStartTimeOverride  \link{LocalTime} [optional]
#' @field pickupEndTimeOverride  \link{LocalTime} [optional]
#' @field dropoffStartTimeOverride  \link{LocalTime} [optional]
#' @field dropoffEndTimeOverride  \link{LocalTime} [optional]
#' @field dateOverride  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServiceType <- R6::R6Class(
  "ServiceType",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `business` = NULL,
    `hub` = NULL,
    `name` = NULL,
    `additionalLoadTime` = NULL,
    `pickupAddressOverride` = NULL,
    `dropoffAddressOverride` = NULL,
    `pickupStartTimeOverride` = NULL,
    `pickupEndTimeOverride` = NULL,
    `dropoffStartTimeOverride` = NULL,
    `dropoffEndTimeOverride` = NULL,
    `dateOverride` = NULL,

    #' @description
    #' Initialize a new ServiceType class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param business business
    #' @param hub hub
    #' @param name name
    #' @param additionalLoadTime additionalLoadTime
    #' @param pickupAddressOverride pickupAddressOverride
    #' @param dropoffAddressOverride dropoffAddressOverride
    #' @param pickupStartTimeOverride pickupStartTimeOverride
    #' @param pickupEndTimeOverride pickupEndTimeOverride
    #' @param dropoffStartTimeOverride dropoffStartTimeOverride
    #' @param dropoffEndTimeOverride dropoffEndTimeOverride
    #' @param dateOverride dateOverride
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `business` = NULL, `hub` = NULL, `name` = NULL, `additionalLoadTime` = NULL, `pickupAddressOverride` = NULL, `dropoffAddressOverride` = NULL, `pickupStartTimeOverride` = NULL, `pickupEndTimeOverride` = NULL, `dropoffStartTimeOverride` = NULL, `dropoffEndTimeOverride` = NULL, `dateOverride` = NULL, ...) {
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
      if (!is.null(`business`)) {
        stopifnot(R6::is.R6(`business`))
        self$`business` <- `business`
      }
      if (!is.null(`hub`)) {
        stopifnot(R6::is.R6(`hub`))
        self$`hub` <- `hub`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`additionalLoadTime`)) {
        if (!(is.numeric(`additionalLoadTime`) && length(`additionalLoadTime`) == 1)) {
          stop(paste("Error! Invalid data for `additionalLoadTime`. Must be an integer:", `additionalLoadTime`))
        }
        self$`additionalLoadTime` <- `additionalLoadTime`
      }
      if (!is.null(`pickupAddressOverride`)) {
        stopifnot(R6::is.R6(`pickupAddressOverride`))
        self$`pickupAddressOverride` <- `pickupAddressOverride`
      }
      if (!is.null(`dropoffAddressOverride`)) {
        stopifnot(R6::is.R6(`dropoffAddressOverride`))
        self$`dropoffAddressOverride` <- `dropoffAddressOverride`
      }
      if (!is.null(`pickupStartTimeOverride`)) {
        stopifnot(R6::is.R6(`pickupStartTimeOverride`))
        self$`pickupStartTimeOverride` <- `pickupStartTimeOverride`
      }
      if (!is.null(`pickupEndTimeOverride`)) {
        stopifnot(R6::is.R6(`pickupEndTimeOverride`))
        self$`pickupEndTimeOverride` <- `pickupEndTimeOverride`
      }
      if (!is.null(`dropoffStartTimeOverride`)) {
        stopifnot(R6::is.R6(`dropoffStartTimeOverride`))
        self$`dropoffStartTimeOverride` <- `dropoffStartTimeOverride`
      }
      if (!is.null(`dropoffEndTimeOverride`)) {
        stopifnot(R6::is.R6(`dropoffEndTimeOverride`))
        self$`dropoffEndTimeOverride` <- `dropoffEndTimeOverride`
      }
      if (!is.null(`dateOverride`)) {
        if (!(`dateOverride` %in% c("NONE", "PICKUP_START", "PICKUP_END", "DROPOFF_START", "DROPOFF_END"))) {
          stop(paste("Error! \"", `dateOverride`, "\" cannot be assigned to `dateOverride`. Must be \"NONE\", \"PICKUP_START\", \"PICKUP_END\", \"DROPOFF_START\", \"DROPOFF_END\".", sep = ""))
        }
        if (!(is.character(`dateOverride`) && length(`dateOverride`) == 1)) {
          stop(paste("Error! Invalid data for `dateOverride`. Must be a string:", `dateOverride`))
        }
        self$`dateOverride` <- `dateOverride`
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
    #' @return ServiceType as a base R list.
    #' @examples
    #' # convert array of ServiceType (x) to a data frame
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
    #' Convert ServiceType to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServiceTypeObject <- list()
      if (!is.null(self$`id`)) {
        ServiceTypeObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ServiceTypeObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ServiceTypeObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`business`)) {
        ServiceTypeObject[["business"]] <-
          self$extractSimpleType(self$`business`)
      }
      if (!is.null(self$`hub`)) {
        ServiceTypeObject[["hub"]] <-
          self$extractSimpleType(self$`hub`)
      }
      if (!is.null(self$`name`)) {
        ServiceTypeObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`additionalLoadTime`)) {
        ServiceTypeObject[["additionalLoadTime"]] <-
          self$`additionalLoadTime`
      }
      if (!is.null(self$`pickupAddressOverride`)) {
        ServiceTypeObject[["pickupAddressOverride"]] <-
          self$extractSimpleType(self$`pickupAddressOverride`)
      }
      if (!is.null(self$`dropoffAddressOverride`)) {
        ServiceTypeObject[["dropoffAddressOverride"]] <-
          self$extractSimpleType(self$`dropoffAddressOverride`)
      }
      if (!is.null(self$`pickupStartTimeOverride`)) {
        ServiceTypeObject[["pickupStartTimeOverride"]] <-
          self$extractSimpleType(self$`pickupStartTimeOverride`)
      }
      if (!is.null(self$`pickupEndTimeOverride`)) {
        ServiceTypeObject[["pickupEndTimeOverride"]] <-
          self$extractSimpleType(self$`pickupEndTimeOverride`)
      }
      if (!is.null(self$`dropoffStartTimeOverride`)) {
        ServiceTypeObject[["dropoffStartTimeOverride"]] <-
          self$extractSimpleType(self$`dropoffStartTimeOverride`)
      }
      if (!is.null(self$`dropoffEndTimeOverride`)) {
        ServiceTypeObject[["dropoffEndTimeOverride"]] <-
          self$extractSimpleType(self$`dropoffEndTimeOverride`)
      }
      if (!is.null(self$`dateOverride`)) {
        ServiceTypeObject[["dateOverride"]] <-
          self$`dateOverride`
      }
      return(ServiceTypeObject)
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
    #' Deserialize JSON string into an instance of ServiceType
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServiceType
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
      if (!is.null(this_object$`business`)) {
        `business_object` <- Retailer$new()
        `business_object`$fromJSON(jsonlite::toJSON(this_object$`business`, auto_unbox = TRUE, digits = NA))
        self$`business` <- `business_object`
      }
      if (!is.null(this_object$`hub`)) {
        `hub_object` <- ServiceHub$new()
        `hub_object`$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
        self$`hub` <- `hub_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`additionalLoadTime`)) {
        self$`additionalLoadTime` <- this_object$`additionalLoadTime`
      }
      if (!is.null(this_object$`pickupAddressOverride`)) {
        `pickupaddressoverride_object` <- Address$new()
        `pickupaddressoverride_object`$fromJSON(jsonlite::toJSON(this_object$`pickupAddressOverride`, auto_unbox = TRUE, digits = NA))
        self$`pickupAddressOverride` <- `pickupaddressoverride_object`
      }
      if (!is.null(this_object$`dropoffAddressOverride`)) {
        `dropoffaddressoverride_object` <- Address$new()
        `dropoffaddressoverride_object`$fromJSON(jsonlite::toJSON(this_object$`dropoffAddressOverride`, auto_unbox = TRUE, digits = NA))
        self$`dropoffAddressOverride` <- `dropoffaddressoverride_object`
      }
      if (!is.null(this_object$`pickupStartTimeOverride`)) {
        `pickupstarttimeoverride_object` <- LocalTime$new()
        `pickupstarttimeoverride_object`$fromJSON(jsonlite::toJSON(this_object$`pickupStartTimeOverride`, auto_unbox = TRUE, digits = NA))
        self$`pickupStartTimeOverride` <- `pickupstarttimeoverride_object`
      }
      if (!is.null(this_object$`pickupEndTimeOverride`)) {
        `pickupendtimeoverride_object` <- LocalTime$new()
        `pickupendtimeoverride_object`$fromJSON(jsonlite::toJSON(this_object$`pickupEndTimeOverride`, auto_unbox = TRUE, digits = NA))
        self$`pickupEndTimeOverride` <- `pickupendtimeoverride_object`
      }
      if (!is.null(this_object$`dropoffStartTimeOverride`)) {
        `dropoffstarttimeoverride_object` <- LocalTime$new()
        `dropoffstarttimeoverride_object`$fromJSON(jsonlite::toJSON(this_object$`dropoffStartTimeOverride`, auto_unbox = TRUE, digits = NA))
        self$`dropoffStartTimeOverride` <- `dropoffstarttimeoverride_object`
      }
      if (!is.null(this_object$`dropoffEndTimeOverride`)) {
        `dropoffendtimeoverride_object` <- LocalTime$new()
        `dropoffendtimeoverride_object`$fromJSON(jsonlite::toJSON(this_object$`dropoffEndTimeOverride`, auto_unbox = TRUE, digits = NA))
        self$`dropoffEndTimeOverride` <- `dropoffendtimeoverride_object`
      }
      if (!is.null(this_object$`dateOverride`)) {
        if (!is.null(this_object$`dateOverride`) && !(this_object$`dateOverride` %in% c("NONE", "PICKUP_START", "PICKUP_END", "DROPOFF_START", "DROPOFF_END"))) {
          stop(paste("Error! \"", this_object$`dateOverride`, "\" cannot be assigned to `dateOverride`. Must be \"NONE\", \"PICKUP_START\", \"PICKUP_END\", \"DROPOFF_START\", \"DROPOFF_END\".", sep = ""))
        }
        self$`dateOverride` <- this_object$`dateOverride`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServiceType in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServiceType
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServiceType
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`business` <- Retailer$new()$fromJSON(jsonlite::toJSON(this_object$`business`, auto_unbox = TRUE, digits = NA))
      self$`hub` <- ServiceHub$new()$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`additionalLoadTime` <- this_object$`additionalLoadTime`
      self$`pickupAddressOverride` <- Address$new()$fromJSON(jsonlite::toJSON(this_object$`pickupAddressOverride`, auto_unbox = TRUE, digits = NA))
      self$`dropoffAddressOverride` <- Address$new()$fromJSON(jsonlite::toJSON(this_object$`dropoffAddressOverride`, auto_unbox = TRUE, digits = NA))
      self$`pickupStartTimeOverride` <- LocalTime$new()$fromJSON(jsonlite::toJSON(this_object$`pickupStartTimeOverride`, auto_unbox = TRUE, digits = NA))
      self$`pickupEndTimeOverride` <- LocalTime$new()$fromJSON(jsonlite::toJSON(this_object$`pickupEndTimeOverride`, auto_unbox = TRUE, digits = NA))
      self$`dropoffStartTimeOverride` <- LocalTime$new()$fromJSON(jsonlite::toJSON(this_object$`dropoffStartTimeOverride`, auto_unbox = TRUE, digits = NA))
      self$`dropoffEndTimeOverride` <- LocalTime$new()$fromJSON(jsonlite::toJSON(this_object$`dropoffEndTimeOverride`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`dateOverride`) && !(this_object$`dateOverride` %in% c("NONE", "PICKUP_START", "PICKUP_END", "DROPOFF_START", "DROPOFF_END"))) {
        stop(paste("Error! \"", this_object$`dateOverride`, "\" cannot be assigned to `dateOverride`. Must be \"NONE\", \"PICKUP_START\", \"PICKUP_END\", \"DROPOFF_START\", \"DROPOFF_END\".", sep = ""))
      }
      self$`dateOverride` <- this_object$`dateOverride`
      self
    },

    #' @description
    #' Validate JSON input with respect to ServiceType and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServiceType
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
# ServiceType$unlock()
#
## Below is an example to define the print function
# ServiceType$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServiceType$lock()

