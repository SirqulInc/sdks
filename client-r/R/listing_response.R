#' Create a new ListingResponse
#'
#' @description
#' ListingResponse Class
#'
#' @docType class
#' @title ListingResponse
#' @description ListingResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field start  integer [optional]
#' @field end  integer [optional]
#' @field locationName  character [optional]
#' @field locationDescription  character [optional]
#' @field privateListing  character [optional]
#' @field active  character [optional]
#' @field participants  list(\link{ParticipantResponse}) [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ListingResponse <- R6::R6Class(
  "ListingResponse",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `start` = NULL,
    `end` = NULL,
    `locationName` = NULL,
    `locationDescription` = NULL,
    `privateListing` = NULL,
    `active` = NULL,
    `participants` = NULL,
    `owner` = NULL,

    #' @description
    #' Initialize a new ListingResponse class.
    #'
    #' @param id id
    #' @param name name
    #' @param description description
    #' @param start start
    #' @param end end
    #' @param locationName locationName
    #' @param locationDescription locationDescription
    #' @param privateListing privateListing
    #' @param active active
    #' @param participants participants
    #' @param owner owner
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `description` = NULL, `start` = NULL, `end` = NULL, `locationName` = NULL, `locationDescription` = NULL, `privateListing` = NULL, `active` = NULL, `participants` = NULL, `owner` = NULL, ...) {
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
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`start`)) {
        if (!(is.numeric(`start`) && length(`start`) == 1)) {
          stop(paste("Error! Invalid data for `start`. Must be an integer:", `start`))
        }
        self$`start` <- `start`
      }
      if (!is.null(`end`)) {
        if (!(is.numeric(`end`) && length(`end`) == 1)) {
          stop(paste("Error! Invalid data for `end`. Must be an integer:", `end`))
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
      if (!is.null(`privateListing`)) {
        if (!(is.logical(`privateListing`) && length(`privateListing`) == 1)) {
          stop(paste("Error! Invalid data for `privateListing`. Must be a boolean:", `privateListing`))
        }
        self$`privateListing` <- `privateListing`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`participants`)) {
        stopifnot(is.vector(`participants`), length(`participants`) != 0)
        sapply(`participants`, function(x) stopifnot(R6::is.R6(x)))
        self$`participants` <- `participants`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
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
    #' @return ListingResponse as a base R list.
    #' @examples
    #' # convert array of ListingResponse (x) to a data frame
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
    #' Convert ListingResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ListingResponseObject <- list()
      if (!is.null(self$`id`)) {
        ListingResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        ListingResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        ListingResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`start`)) {
        ListingResponseObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        ListingResponseObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`locationName`)) {
        ListingResponseObject[["locationName"]] <-
          self$`locationName`
      }
      if (!is.null(self$`locationDescription`)) {
        ListingResponseObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`privateListing`)) {
        ListingResponseObject[["privateListing"]] <-
          self$`privateListing`
      }
      if (!is.null(self$`active`)) {
        ListingResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`participants`)) {
        ListingResponseObject[["participants"]] <-
          self$extractSimpleType(self$`participants`)
      }
      if (!is.null(self$`owner`)) {
        ListingResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      return(ListingResponseObject)
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
    #' Deserialize JSON string into an instance of ListingResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListingResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
      if (!is.null(this_object$`privateListing`)) {
        self$`privateListing` <- this_object$`privateListing`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`participants`)) {
        self$`participants` <- ApiClient$new()$deserializeObj(this_object$`participants`, "array[ParticipantResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- AccountShortResponse$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ListingResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ListingResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListingResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`locationName` <- this_object$`locationName`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`privateListing` <- this_object$`privateListing`
      self$`active` <- this_object$`active`
      self$`participants` <- ApiClient$new()$deserializeObj(this_object$`participants`, "array[ParticipantResponse]", loadNamespace("openapi"))
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ListingResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ListingResponse
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
# ListingResponse$unlock()
#
## Below is an example to define the print function
# ListingResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ListingResponse$lock()

