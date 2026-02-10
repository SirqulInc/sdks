#' Create a new Listing
#'
#' @description
#' Listing Class
#'
#' @docType class
#' @title Listing
#' @description Listing Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field owner  \link{Account} [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field start  character [optional]
#' @field end  character [optional]
#' @field locationName  character [optional]
#' @field locationDescription  character [optional]
#' @field participants  list(\link{Participant}) [optional]
#' @field externalId  character [optional]
#' @field externalGroupId  character [optional]
#' @field filters  list(\link{Filter}) [optional]
#' @field item_private  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Listing <- R6::R6Class(
  "Listing",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `owner` = NULL,
    `name` = NULL,
    `description` = NULL,
    `start` = NULL,
    `end` = NULL,
    `locationName` = NULL,
    `locationDescription` = NULL,
    `participants` = NULL,
    `externalId` = NULL,
    `externalGroupId` = NULL,
    `filters` = NULL,
    `item_private` = NULL,

    #' @description
    #' Initialize a new Listing class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param owner owner
    #' @param name name
    #' @param description description
    #' @param start start
    #' @param end end
    #' @param locationName locationName
    #' @param locationDescription locationDescription
    #' @param participants participants
    #' @param externalId externalId
    #' @param externalGroupId externalGroupId
    #' @param filters filters
    #' @param item_private item_private
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `owner` = NULL, `name` = NULL, `description` = NULL, `start` = NULL, `end` = NULL, `locationName` = NULL, `locationDescription` = NULL, `participants` = NULL, `externalId` = NULL, `externalGroupId` = NULL, `filters` = NULL, `item_private` = NULL, ...) {
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
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`start`)) {
        if (!is.character(`start`)) {
          stop(paste("Error! Invalid data for `start`. Must be a string:", `start`))
        }
        self$`start` <- `start`
      }
      if (!is.null(`end`)) {
        if (!is.character(`end`)) {
          stop(paste("Error! Invalid data for `end`. Must be a string:", `end`))
        }
        self$`end` <- `end`
      }
      if (!is.null(`locationName`)) {
        if (!(is.character(`locationName`) && length(`locationName`) == 1)) {
          stop(paste("Error! Invalid data for `locationName`. Must be a string:", `locationName`))
        }
        self$`locationName` <- `locationName`
      }
      if (!is.null(`locationDescription`)) {
        if (!(is.character(`locationDescription`) && length(`locationDescription`) == 1)) {
          stop(paste("Error! Invalid data for `locationDescription`. Must be a string:", `locationDescription`))
        }
        self$`locationDescription` <- `locationDescription`
      }
      if (!is.null(`participants`)) {
        stopifnot(is.vector(`participants`), length(`participants`) != 0)
        sapply(`participants`, function(x) stopifnot(R6::is.R6(x)))
        self$`participants` <- `participants`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`externalGroupId`)) {
        if (!(is.character(`externalGroupId`) && length(`externalGroupId`) == 1)) {
          stop(paste("Error! Invalid data for `externalGroupId`. Must be a string:", `externalGroupId`))
        }
        self$`externalGroupId` <- `externalGroupId`
      }
      if (!is.null(`filters`)) {
        stopifnot(is.vector(`filters`), length(`filters`) != 0)
        sapply(`filters`, function(x) stopifnot(R6::is.R6(x)))
        self$`filters` <- `filters`
      }
      if (!is.null(`item_private`)) {
        if (!(is.logical(`item_private`) && length(`item_private`) == 1)) {
          stop(paste("Error! Invalid data for `item_private`. Must be a boolean:", `item_private`))
        }
        self$`item_private` <- `item_private`
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
    #' @return Listing as a base R list.
    #' @examples
    #' # convert array of Listing (x) to a data frame
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
    #' Convert Listing to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ListingObject <- list()
      if (!is.null(self$`id`)) {
        ListingObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ListingObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ListingObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`owner`)) {
        ListingObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`name`)) {
        ListingObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        ListingObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`start`)) {
        ListingObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        ListingObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`locationName`)) {
        ListingObject[["locationName"]] <-
          self$`locationName`
      }
      if (!is.null(self$`locationDescription`)) {
        ListingObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`participants`)) {
        ListingObject[["participants"]] <-
          self$extractSimpleType(self$`participants`)
      }
      if (!is.null(self$`externalId`)) {
        ListingObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`externalGroupId`)) {
        ListingObject[["externalGroupId"]] <-
          self$`externalGroupId`
      }
      if (!is.null(self$`filters`)) {
        ListingObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`item_private`)) {
        ListingObject[["private"]] <-
          self$`item_private`
      }
      return(ListingObject)
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
    #' Deserialize JSON string into an instance of Listing
    #'
    #' @param input_json the JSON input
    #' @return the instance of Listing
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
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`locationName`)) {
        self$`locationName` <- this_object$`locationName`
      }
      if (!is.null(this_object$`locationDescription`)) {
        self$`locationDescription` <- this_object$`locationDescription`
      }
      if (!is.null(this_object$`participants`)) {
        self$`participants` <- ApiClient$new()$deserializeObj(this_object$`participants`, "array[Participant]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`externalGroupId`)) {
        self$`externalGroupId` <- this_object$`externalGroupId`
      }
      if (!is.null(this_object$`filters`)) {
        self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[Filter]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`private`)) {
        self$`item_private` <- this_object$`private`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Listing in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Listing
    #'
    #' @param input_json the JSON input
    #' @return the instance of Listing
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`locationName` <- this_object$`locationName`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`participants` <- ApiClient$new()$deserializeObj(this_object$`participants`, "array[Participant]", loadNamespace("openapi"))
      self$`externalId` <- this_object$`externalId`
      self$`externalGroupId` <- this_object$`externalGroupId`
      self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[Filter]", loadNamespace("openapi"))
      self$`item_private` <- this_object$`item_private`
      self
    },

    #' @description
    #' Validate JSON input with respect to Listing and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Listing
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
# Listing$unlock()
#
## Below is an example to define the print function
# Listing$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Listing$lock()

