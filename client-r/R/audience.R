#' Create a new Audience
#'
#' @description
#' Audience Class
#'
#' @docType class
#' @title Audience
#' @description Audience Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field name  character [optional]
#' @field display  character [optional]
#' @field description  character [optional]
#' @field owner  \link{Account} [optional]
#' @field gender  character [optional]
#' @field ageGroups  list(character) [optional]
#' @field gameExperienceLevel  character [optional]
#' @field deviceVersionRanges  list(\link{AudienceDeviceVersionRange}) [optional]
#' @field categories  list(\link{Category}) [optional]
#' @field applications  list(\link{Application}) [optional]
#' @field radius  numeric [optional]
#' @field locations  list(\link{AudienceLocation}) [optional]
#' @field sendSuggestion  character [optional]
#' @field startTimeOffset  integer [optional]
#' @field endTimeOffset  integer [optional]
#' @field target  \link{AudienceTargetType} [optional]
#' @field associateContentName  character [optional]
#' @field polygon  character [optional]
#' @field associateType  character [optional]
#' @field associateId  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Audience <- R6::R6Class(
  "Audience",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `name` = NULL,
    `display` = NULL,
    `description` = NULL,
    `owner` = NULL,
    `gender` = NULL,
    `ageGroups` = NULL,
    `gameExperienceLevel` = NULL,
    `deviceVersionRanges` = NULL,
    `categories` = NULL,
    `applications` = NULL,
    `radius` = NULL,
    `locations` = NULL,
    `sendSuggestion` = NULL,
    `startTimeOffset` = NULL,
    `endTimeOffset` = NULL,
    `target` = NULL,
    `associateContentName` = NULL,
    `polygon` = NULL,
    `associateType` = NULL,
    `associateId` = NULL,

    #' @description
    #' Initialize a new Audience class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param name name
    #' @param display display
    #' @param description description
    #' @param owner owner
    #' @param gender gender
    #' @param ageGroups ageGroups
    #' @param gameExperienceLevel gameExperienceLevel
    #' @param deviceVersionRanges deviceVersionRanges
    #' @param categories categories
    #' @param applications applications
    #' @param radius radius
    #' @param locations locations
    #' @param sendSuggestion sendSuggestion
    #' @param startTimeOffset startTimeOffset
    #' @param endTimeOffset endTimeOffset
    #' @param target target
    #' @param associateContentName associateContentName
    #' @param polygon polygon
    #' @param associateType associateType
    #' @param associateId associateId
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `name` = NULL, `display` = NULL, `description` = NULL, `owner` = NULL, `gender` = NULL, `ageGroups` = NULL, `gameExperienceLevel` = NULL, `deviceVersionRanges` = NULL, `categories` = NULL, `applications` = NULL, `radius` = NULL, `locations` = NULL, `sendSuggestion` = NULL, `startTimeOffset` = NULL, `endTimeOffset` = NULL, `target` = NULL, `associateContentName` = NULL, `polygon` = NULL, `associateType` = NULL, `associateId` = NULL, ...) {
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
      if (!is.null(`display`)) {
        if (!(is.logical(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a boolean:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`gender`)) {
        if (!(`gender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", `gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        if (!(is.character(`gender`) && length(`gender`) == 1)) {
          stop(paste("Error! Invalid data for `gender`. Must be a string:", `gender`))
        }
        self$`gender` <- `gender`
      }
      if (!is.null(`ageGroups`)) {
        stopifnot(is.vector(`ageGroups`), length(`ageGroups`) != 0)
        sapply(`ageGroups`, function(x) stopifnot(is.character(x)))
        self$`ageGroups` <- `ageGroups`
      }
      if (!is.null(`gameExperienceLevel`)) {
        if (!(`gameExperienceLevel` %in% c("ANY", "NEW", "BEGINNER", "INTERMEDIATE", "EXPERT"))) {
          stop(paste("Error! \"", `gameExperienceLevel`, "\" cannot be assigned to `gameExperienceLevel`. Must be \"ANY\", \"NEW\", \"BEGINNER\", \"INTERMEDIATE\", \"EXPERT\".", sep = ""))
        }
        if (!(is.character(`gameExperienceLevel`) && length(`gameExperienceLevel`) == 1)) {
          stop(paste("Error! Invalid data for `gameExperienceLevel`. Must be a string:", `gameExperienceLevel`))
        }
        self$`gameExperienceLevel` <- `gameExperienceLevel`
      }
      if (!is.null(`deviceVersionRanges`)) {
        stopifnot(is.vector(`deviceVersionRanges`), length(`deviceVersionRanges`) != 0)
        sapply(`deviceVersionRanges`, function(x) stopifnot(R6::is.R6(x)))
        self$`deviceVersionRanges` <- `deviceVersionRanges`
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
      if (!is.null(`radius`)) {
        if (!(is.numeric(`radius`) && length(`radius`) == 1)) {
          stop(paste("Error! Invalid data for `radius`. Must be a number:", `radius`))
        }
        self$`radius` <- `radius`
      }
      if (!is.null(`locations`)) {
        stopifnot(is.vector(`locations`), length(`locations`) != 0)
        sapply(`locations`, function(x) stopifnot(R6::is.R6(x)))
        self$`locations` <- `locations`
      }
      if (!is.null(`sendSuggestion`)) {
        if (!(is.logical(`sendSuggestion`) && length(`sendSuggestion`) == 1)) {
          stop(paste("Error! Invalid data for `sendSuggestion`. Must be a boolean:", `sendSuggestion`))
        }
        self$`sendSuggestion` <- `sendSuggestion`
      }
      if (!is.null(`startTimeOffset`)) {
        if (!(is.numeric(`startTimeOffset`) && length(`startTimeOffset`) == 1)) {
          stop(paste("Error! Invalid data for `startTimeOffset`. Must be an integer:", `startTimeOffset`))
        }
        self$`startTimeOffset` <- `startTimeOffset`
      }
      if (!is.null(`endTimeOffset`)) {
        if (!(is.numeric(`endTimeOffset`) && length(`endTimeOffset`) == 1)) {
          stop(paste("Error! Invalid data for `endTimeOffset`. Must be an integer:", `endTimeOffset`))
        }
        self$`endTimeOffset` <- `endTimeOffset`
      }
      if (!is.null(`target`)) {
        stopifnot(R6::is.R6(`target`))
        self$`target` <- `target`
      }
      if (!is.null(`associateContentName`)) {
        if (!(is.character(`associateContentName`) && length(`associateContentName`) == 1)) {
          stop(paste("Error! Invalid data for `associateContentName`. Must be a string:", `associateContentName`))
        }
        self$`associateContentName` <- `associateContentName`
      }
      if (!is.null(`polygon`)) {
        if (!(is.character(`polygon`) && length(`polygon`) == 1)) {
          stop(paste("Error! Invalid data for `polygon`. Must be a string:", `polygon`))
        }
        self$`polygon` <- `polygon`
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
    #' @return Audience as a base R list.
    #' @examples
    #' # convert array of Audience (x) to a data frame
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
    #' Convert Audience to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AudienceObject <- list()
      if (!is.null(self$`id`)) {
        AudienceObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        AudienceObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        AudienceObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        AudienceObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        AudienceObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        AudienceObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`name`)) {
        AudienceObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`display`)) {
        AudienceObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`description`)) {
        AudienceObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`owner`)) {
        AudienceObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`gender`)) {
        AudienceObject[["gender"]] <-
          self$`gender`
      }
      if (!is.null(self$`ageGroups`)) {
        AudienceObject[["ageGroups"]] <-
          self$`ageGroups`
      }
      if (!is.null(self$`gameExperienceLevel`)) {
        AudienceObject[["gameExperienceLevel"]] <-
          self$`gameExperienceLevel`
      }
      if (!is.null(self$`deviceVersionRanges`)) {
        AudienceObject[["deviceVersionRanges"]] <-
          self$extractSimpleType(self$`deviceVersionRanges`)
      }
      if (!is.null(self$`categories`)) {
        AudienceObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`applications`)) {
        AudienceObject[["applications"]] <-
          self$extractSimpleType(self$`applications`)
      }
      if (!is.null(self$`radius`)) {
        AudienceObject[["radius"]] <-
          self$`radius`
      }
      if (!is.null(self$`locations`)) {
        AudienceObject[["locations"]] <-
          self$extractSimpleType(self$`locations`)
      }
      if (!is.null(self$`sendSuggestion`)) {
        AudienceObject[["sendSuggestion"]] <-
          self$`sendSuggestion`
      }
      if (!is.null(self$`startTimeOffset`)) {
        AudienceObject[["startTimeOffset"]] <-
          self$`startTimeOffset`
      }
      if (!is.null(self$`endTimeOffset`)) {
        AudienceObject[["endTimeOffset"]] <-
          self$`endTimeOffset`
      }
      if (!is.null(self$`target`)) {
        AudienceObject[["target"]] <-
          self$extractSimpleType(self$`target`)
      }
      if (!is.null(self$`associateContentName`)) {
        AudienceObject[["associateContentName"]] <-
          self$`associateContentName`
      }
      if (!is.null(self$`polygon`)) {
        AudienceObject[["polygon"]] <-
          self$`polygon`
      }
      if (!is.null(self$`associateType`)) {
        AudienceObject[["associateType"]] <-
          self$`associateType`
      }
      if (!is.null(self$`associateId`)) {
        AudienceObject[["associateId"]] <-
          self$`associateId`
      }
      return(AudienceObject)
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
    #' Deserialize JSON string into an instance of Audience
    #'
    #' @param input_json the JSON input
    #' @return the instance of Audience
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
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`gender`)) {
        if (!is.null(this_object$`gender`) && !(this_object$`gender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", this_object$`gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        self$`gender` <- this_object$`gender`
      }
      if (!is.null(this_object$`ageGroups`)) {
        self$`ageGroups` <- ApiClient$new()$deserializeObj(this_object$`ageGroups`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`gameExperienceLevel`)) {
        if (!is.null(this_object$`gameExperienceLevel`) && !(this_object$`gameExperienceLevel` %in% c("ANY", "NEW", "BEGINNER", "INTERMEDIATE", "EXPERT"))) {
          stop(paste("Error! \"", this_object$`gameExperienceLevel`, "\" cannot be assigned to `gameExperienceLevel`. Must be \"ANY\", \"NEW\", \"BEGINNER\", \"INTERMEDIATE\", \"EXPERT\".", sep = ""))
        }
        self$`gameExperienceLevel` <- this_object$`gameExperienceLevel`
      }
      if (!is.null(this_object$`deviceVersionRanges`)) {
        self$`deviceVersionRanges` <- ApiClient$new()$deserializeObj(this_object$`deviceVersionRanges`, "array[AudienceDeviceVersionRange]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`applications`)) {
        self$`applications` <- ApiClient$new()$deserializeObj(this_object$`applications`, "array[Application]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`radius`)) {
        self$`radius` <- this_object$`radius`
      }
      if (!is.null(this_object$`locations`)) {
        self$`locations` <- ApiClient$new()$deserializeObj(this_object$`locations`, "array[AudienceLocation]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`sendSuggestion`)) {
        self$`sendSuggestion` <- this_object$`sendSuggestion`
      }
      if (!is.null(this_object$`startTimeOffset`)) {
        self$`startTimeOffset` <- this_object$`startTimeOffset`
      }
      if (!is.null(this_object$`endTimeOffset`)) {
        self$`endTimeOffset` <- this_object$`endTimeOffset`
      }
      if (!is.null(this_object$`target`)) {
        `target_object` <- AudienceTargetType$new()
        `target_object`$fromJSON(jsonlite::toJSON(this_object$`target`, auto_unbox = TRUE, digits = NA))
        self$`target` <- `target_object`
      }
      if (!is.null(this_object$`associateContentName`)) {
        self$`associateContentName` <- this_object$`associateContentName`
      }
      if (!is.null(this_object$`polygon`)) {
        self$`polygon` <- this_object$`polygon`
      }
      if (!is.null(this_object$`associateType`)) {
        self$`associateType` <- this_object$`associateType`
      }
      if (!is.null(this_object$`associateId`)) {
        self$`associateId` <- this_object$`associateId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Audience in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Audience
    #'
    #' @param input_json the JSON input
    #' @return the instance of Audience
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`name` <- this_object$`name`
      self$`display` <- this_object$`display`
      self$`description` <- this_object$`description`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`gender`) && !(this_object$`gender` %in% c("MALE", "FEMALE", "ANY"))) {
        stop(paste("Error! \"", this_object$`gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
      }
      self$`gender` <- this_object$`gender`
      self$`ageGroups` <- ApiClient$new()$deserializeObj(this_object$`ageGroups`, "array[character]", loadNamespace("openapi"))
      if (!is.null(this_object$`gameExperienceLevel`) && !(this_object$`gameExperienceLevel` %in% c("ANY", "NEW", "BEGINNER", "INTERMEDIATE", "EXPERT"))) {
        stop(paste("Error! \"", this_object$`gameExperienceLevel`, "\" cannot be assigned to `gameExperienceLevel`. Must be \"ANY\", \"NEW\", \"BEGINNER\", \"INTERMEDIATE\", \"EXPERT\".", sep = ""))
      }
      self$`gameExperienceLevel` <- this_object$`gameExperienceLevel`
      self$`deviceVersionRanges` <- ApiClient$new()$deserializeObj(this_object$`deviceVersionRanges`, "array[AudienceDeviceVersionRange]", loadNamespace("openapi"))
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      self$`applications` <- ApiClient$new()$deserializeObj(this_object$`applications`, "array[Application]", loadNamespace("openapi"))
      self$`radius` <- this_object$`radius`
      self$`locations` <- ApiClient$new()$deserializeObj(this_object$`locations`, "array[AudienceLocation]", loadNamespace("openapi"))
      self$`sendSuggestion` <- this_object$`sendSuggestion`
      self$`startTimeOffset` <- this_object$`startTimeOffset`
      self$`endTimeOffset` <- this_object$`endTimeOffset`
      self$`target` <- AudienceTargetType$new()$fromJSON(jsonlite::toJSON(this_object$`target`, auto_unbox = TRUE, digits = NA))
      self$`associateContentName` <- this_object$`associateContentName`
      self$`polygon` <- this_object$`polygon`
      self$`associateType` <- this_object$`associateType`
      self$`associateId` <- this_object$`associateId`
      self
    },

    #' @description
    #' Validate JSON input with respect to Audience and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Audience
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
# Audience$unlock()
#
## Below is an example to define the print function
# Audience$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Audience$lock()

