#' Create a new AudienceResponse
#'
#' @description
#' AudienceResponse Class
#'
#' @docType class
#' @title AudienceResponse
#' @description AudienceResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field name  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field radius  numeric [optional]
#' @field sendSuggestion  character [optional]
#' @field description  character [optional]
#' @field active  character [optional]
#' @field searchTags  character [optional]
#' @field ownerId  integer [optional]
#' @field gender  character [optional]
#' @field ageGroups  list(\link{AgeGroupResponse}) [optional]
#' @field categories  list(\link{CategoryResponse}) [optional]
#' @field applications  list(\link{ApplicationShortResponse}) [optional]
#' @field devices  list(\link{AudienceDeviceResponse}) [optional]
#' @field gameExperienceLevel  character [optional]
#' @field locations  list(\link{GeocodeLatLngResponse}) [optional]
#' @field associateType  character [optional]
#' @field associateId  integer [optional]
#' @field associateDescription  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AudienceResponse <- R6::R6Class(
  "AudienceResponse",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `radius` = NULL,
    `sendSuggestion` = NULL,
    `description` = NULL,
    `active` = NULL,
    `searchTags` = NULL,
    `ownerId` = NULL,
    `gender` = NULL,
    `ageGroups` = NULL,
    `categories` = NULL,
    `applications` = NULL,
    `devices` = NULL,
    `gameExperienceLevel` = NULL,
    `locations` = NULL,
    `associateType` = NULL,
    `associateId` = NULL,
    `associateDescription` = NULL,

    #' @description
    #' Initialize a new AudienceResponse class.
    #'
    #' @param id id
    #' @param name name
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param radius radius
    #' @param sendSuggestion sendSuggestion
    #' @param description description
    #' @param active active
    #' @param searchTags searchTags
    #' @param ownerId ownerId
    #' @param gender gender
    #' @param ageGroups ageGroups
    #' @param categories categories
    #' @param applications applications
    #' @param devices devices
    #' @param gameExperienceLevel gameExperienceLevel
    #' @param locations locations
    #' @param associateType associateType
    #' @param associateId associateId
    #' @param associateDescription associateDescription
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `latitude` = NULL, `longitude` = NULL, `radius` = NULL, `sendSuggestion` = NULL, `description` = NULL, `active` = NULL, `searchTags` = NULL, `ownerId` = NULL, `gender` = NULL, `ageGroups` = NULL, `categories` = NULL, `applications` = NULL, `devices` = NULL, `gameExperienceLevel` = NULL, `locations` = NULL, `associateType` = NULL, `associateId` = NULL, `associateDescription` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
      if (!is.null(`radius`)) {
        if (!(is.numeric(`radius`) && length(`radius`) == 1)) {
          stop(paste("Error! Invalid data for `radius`. Must be a number:", `radius`))
        }
        self$`radius` <- `radius`
      }
      if (!is.null(`sendSuggestion`)) {
        if (!(is.logical(`sendSuggestion`) && length(`sendSuggestion`) == 1)) {
          stop(paste("Error! Invalid data for `sendSuggestion`. Must be a boolean:", `sendSuggestion`))
        }
        self$`sendSuggestion` <- `sendSuggestion`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`searchTags`)) {
        if (!(is.character(`searchTags`) && length(`searchTags`) == 1)) {
          stop(paste("Error! Invalid data for `searchTags`. Must be a string:", `searchTags`))
        }
        self$`searchTags` <- `searchTags`
      }
      if (!is.null(`ownerId`)) {
        if (!(is.numeric(`ownerId`) && length(`ownerId`) == 1)) {
          stop(paste("Error! Invalid data for `ownerId`. Must be an integer:", `ownerId`))
        }
        self$`ownerId` <- `ownerId`
      }
      if (!is.null(`gender`)) {
        if (!(is.character(`gender`) && length(`gender`) == 1)) {
          stop(paste("Error! Invalid data for `gender`. Must be a string:", `gender`))
        }
        self$`gender` <- `gender`
      }
      if (!is.null(`ageGroups`)) {
        stopifnot(is.vector(`ageGroups`), length(`ageGroups`) != 0)
        sapply(`ageGroups`, function(x) stopifnot(R6::is.R6(x)))
        self$`ageGroups` <- `ageGroups`
      }
      if (!is.null(`categories`)) {
        stopifnot(is.vector(`categories`), length(`categories`) != 0)
        sapply(`categories`, function(x) stopifnot(R6::is.R6(x)))
        self$`categories` <- `categories`
      }
      if (!is.null(`applications`)) {
        stopifnot(is.vector(`applications`), length(`applications`) != 0)
        sapply(`applications`, function(x) stopifnot(R6::is.R6(x)))
        self$`applications` <- `applications`
      }
      if (!is.null(`devices`)) {
        stopifnot(is.vector(`devices`), length(`devices`) != 0)
        sapply(`devices`, function(x) stopifnot(R6::is.R6(x)))
        self$`devices` <- `devices`
      }
      if (!is.null(`gameExperienceLevel`)) {
        if (!(is.character(`gameExperienceLevel`) && length(`gameExperienceLevel`) == 1)) {
          stop(paste("Error! Invalid data for `gameExperienceLevel`. Must be a string:", `gameExperienceLevel`))
        }
        self$`gameExperienceLevel` <- `gameExperienceLevel`
      }
      if (!is.null(`locations`)) {
        stopifnot(is.vector(`locations`), length(`locations`) != 0)
        sapply(`locations`, function(x) stopifnot(R6::is.R6(x)))
        self$`locations` <- `locations`
      }
      if (!is.null(`associateType`)) {
        if (!(is.character(`associateType`) && length(`associateType`) == 1)) {
          stop(paste("Error! Invalid data for `associateType`. Must be a string:", `associateType`))
        }
        self$`associateType` <- `associateType`
      }
      if (!is.null(`associateId`)) {
        if (!(is.numeric(`associateId`) && length(`associateId`) == 1)) {
          stop(paste("Error! Invalid data for `associateId`. Must be an integer:", `associateId`))
        }
        self$`associateId` <- `associateId`
      }
      if (!is.null(`associateDescription`)) {
        if (!(is.character(`associateDescription`) && length(`associateDescription`) == 1)) {
          stop(paste("Error! Invalid data for `associateDescription`. Must be a string:", `associateDescription`))
        }
        self$`associateDescription` <- `associateDescription`
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
    #' @return AudienceResponse as a base R list.
    #' @examples
    #' # convert array of AudienceResponse (x) to a data frame
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
    #' Convert AudienceResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AudienceResponseObject <- list()
      if (!is.null(self$`id`)) {
        AudienceResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        AudienceResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`latitude`)) {
        AudienceResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        AudienceResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`radius`)) {
        AudienceResponseObject[["radius"]] <-
          self$`radius`
      }
      if (!is.null(self$`sendSuggestion`)) {
        AudienceResponseObject[["sendSuggestion"]] <-
          self$`sendSuggestion`
      }
      if (!is.null(self$`description`)) {
        AudienceResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`active`)) {
        AudienceResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`searchTags`)) {
        AudienceResponseObject[["searchTags"]] <-
          self$`searchTags`
      }
      if (!is.null(self$`ownerId`)) {
        AudienceResponseObject[["ownerId"]] <-
          self$`ownerId`
      }
      if (!is.null(self$`gender`)) {
        AudienceResponseObject[["gender"]] <-
          self$`gender`
      }
      if (!is.null(self$`ageGroups`)) {
        AudienceResponseObject[["ageGroups"]] <-
          self$extractSimpleType(self$`ageGroups`)
      }
      if (!is.null(self$`categories`)) {
        AudienceResponseObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`applications`)) {
        AudienceResponseObject[["applications"]] <-
          self$extractSimpleType(self$`applications`)
      }
      if (!is.null(self$`devices`)) {
        AudienceResponseObject[["devices"]] <-
          self$extractSimpleType(self$`devices`)
      }
      if (!is.null(self$`gameExperienceLevel`)) {
        AudienceResponseObject[["gameExperienceLevel"]] <-
          self$`gameExperienceLevel`
      }
      if (!is.null(self$`locations`)) {
        AudienceResponseObject[["locations"]] <-
          self$extractSimpleType(self$`locations`)
      }
      if (!is.null(self$`associateType`)) {
        AudienceResponseObject[["associateType"]] <-
          self$`associateType`
      }
      if (!is.null(self$`associateId`)) {
        AudienceResponseObject[["associateId"]] <-
          self$`associateId`
      }
      if (!is.null(self$`associateDescription`)) {
        AudienceResponseObject[["associateDescription"]] <-
          self$`associateDescription`
      }
      return(AudienceResponseObject)
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
    #' Deserialize JSON string into an instance of AudienceResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AudienceResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`radius`)) {
        self$`radius` <- this_object$`radius`
      }
      if (!is.null(this_object$`sendSuggestion`)) {
        self$`sendSuggestion` <- this_object$`sendSuggestion`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`searchTags`)) {
        self$`searchTags` <- this_object$`searchTags`
      }
      if (!is.null(this_object$`ownerId`)) {
        self$`ownerId` <- this_object$`ownerId`
      }
      if (!is.null(this_object$`gender`)) {
        self$`gender` <- this_object$`gender`
      }
      if (!is.null(this_object$`ageGroups`)) {
        self$`ageGroups` <- ApiClient$new()$deserializeObj(this_object$`ageGroups`, "array[AgeGroupResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[CategoryResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`applications`)) {
        self$`applications` <- ApiClient$new()$deserializeObj(this_object$`applications`, "array[ApplicationShortResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`devices`)) {
        self$`devices` <- ApiClient$new()$deserializeObj(this_object$`devices`, "array[AudienceDeviceResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`gameExperienceLevel`)) {
        self$`gameExperienceLevel` <- this_object$`gameExperienceLevel`
      }
      if (!is.null(this_object$`locations`)) {
        self$`locations` <- ApiClient$new()$deserializeObj(this_object$`locations`, "array[GeocodeLatLngResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`associateType`)) {
        self$`associateType` <- this_object$`associateType`
      }
      if (!is.null(this_object$`associateId`)) {
        self$`associateId` <- this_object$`associateId`
      }
      if (!is.null(this_object$`associateDescription`)) {
        self$`associateDescription` <- this_object$`associateDescription`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AudienceResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AudienceResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AudienceResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`radius` <- this_object$`radius`
      self$`sendSuggestion` <- this_object$`sendSuggestion`
      self$`description` <- this_object$`description`
      self$`active` <- this_object$`active`
      self$`searchTags` <- this_object$`searchTags`
      self$`ownerId` <- this_object$`ownerId`
      self$`gender` <- this_object$`gender`
      self$`ageGroups` <- ApiClient$new()$deserializeObj(this_object$`ageGroups`, "array[AgeGroupResponse]", loadNamespace("openapi"))
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[CategoryResponse]", loadNamespace("openapi"))
      self$`applications` <- ApiClient$new()$deserializeObj(this_object$`applications`, "array[ApplicationShortResponse]", loadNamespace("openapi"))
      self$`devices` <- ApiClient$new()$deserializeObj(this_object$`devices`, "array[AudienceDeviceResponse]", loadNamespace("openapi"))
      self$`gameExperienceLevel` <- this_object$`gameExperienceLevel`
      self$`locations` <- ApiClient$new()$deserializeObj(this_object$`locations`, "array[GeocodeLatLngResponse]", loadNamespace("openapi"))
      self$`associateType` <- this_object$`associateType`
      self$`associateId` <- this_object$`associateId`
      self$`associateDescription` <- this_object$`associateDescription`
      self
    },

    #' @description
    #' Validate JSON input with respect to AudienceResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AudienceResponse
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
# AudienceResponse$unlock()
#
## Below is an example to define the print function
# AudienceResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AudienceResponse$lock()

