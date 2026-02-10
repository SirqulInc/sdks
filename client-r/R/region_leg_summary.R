#' Create a new RegionLegSummary
#'
#' @description
#' RegionLegSummary Class
#'
#' @docType class
#' @title RegionLegSummary
#' @description RegionLegSummary Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field regionId  integer [optional]
#' @field floorId  character [optional]
#' @field retailerLocationId  integer [optional]
#' @field legId  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RegionLegSummary <- R6::R6Class(
  "RegionLegSummary",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `regionId` = NULL,
    `floorId` = NULL,
    `retailerLocationId` = NULL,
    `legId` = NULL,

    #' @description
    #' Initialize a new RegionLegSummary class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param regionId regionId
    #' @param floorId floorId
    #' @param retailerLocationId retailerLocationId
    #' @param legId legId
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `regionId` = NULL, `floorId` = NULL, `retailerLocationId` = NULL, `legId` = NULL, ...) {
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
      if (!is.null(`regionId`)) {
        if (!(is.numeric(`regionId`) && length(`regionId`) == 1)) {
          stop(paste("Error! Invalid data for `regionId`. Must be an integer:", `regionId`))
        }
        self$`regionId` <- `regionId`
      }
      if (!is.null(`floorId`)) {
        if (!(is.character(`floorId`) && length(`floorId`) == 1)) {
          stop(paste("Error! Invalid data for `floorId`. Must be a string:", `floorId`))
        }
        self$`floorId` <- `floorId`
      }
      if (!is.null(`retailerLocationId`)) {
        if (!(is.numeric(`retailerLocationId`) && length(`retailerLocationId`) == 1)) {
          stop(paste("Error! Invalid data for `retailerLocationId`. Must be an integer:", `retailerLocationId`))
        }
        self$`retailerLocationId` <- `retailerLocationId`
      }
      if (!is.null(`legId`)) {
        if (!(is.numeric(`legId`) && length(`legId`) == 1)) {
          stop(paste("Error! Invalid data for `legId`. Must be an integer:", `legId`))
        }
        self$`legId` <- `legId`
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
    #' @return RegionLegSummary as a base R list.
    #' @examples
    #' # convert array of RegionLegSummary (x) to a data frame
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
    #' Convert RegionLegSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RegionLegSummaryObject <- list()
      if (!is.null(self$`id`)) {
        RegionLegSummaryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        RegionLegSummaryObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        RegionLegSummaryObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`regionId`)) {
        RegionLegSummaryObject[["regionId"]] <-
          self$`regionId`
      }
      if (!is.null(self$`floorId`)) {
        RegionLegSummaryObject[["floorId"]] <-
          self$`floorId`
      }
      if (!is.null(self$`retailerLocationId`)) {
        RegionLegSummaryObject[["retailerLocationId"]] <-
          self$`retailerLocationId`
      }
      if (!is.null(self$`legId`)) {
        RegionLegSummaryObject[["legId"]] <-
          self$`legId`
      }
      return(RegionLegSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RegionLegSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of RegionLegSummary
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
      if (!is.null(this_object$`regionId`)) {
        self$`regionId` <- this_object$`regionId`
      }
      if (!is.null(this_object$`floorId`)) {
        self$`floorId` <- this_object$`floorId`
      }
      if (!is.null(this_object$`retailerLocationId`)) {
        self$`retailerLocationId` <- this_object$`retailerLocationId`
      }
      if (!is.null(this_object$`legId`)) {
        self$`legId` <- this_object$`legId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RegionLegSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RegionLegSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of RegionLegSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`regionId` <- this_object$`regionId`
      self$`floorId` <- this_object$`floorId`
      self$`retailerLocationId` <- this_object$`retailerLocationId`
      self$`legId` <- this_object$`legId`
      self
    },

    #' @description
    #' Validate JSON input with respect to RegionLegSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RegionLegSummary
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
# RegionLegSummary$unlock()
#
## Below is an example to define the print function
# RegionLegSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RegionLegSummary$lock()

