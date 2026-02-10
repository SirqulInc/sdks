#' Create a new ConnectionGroup
#'
#' @description
#' ConnectionGroup Class
#'
#' @docType class
#' @title ConnectionGroup
#' @description ConnectionGroup Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field owner  \link{Account} [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field connections  list(\link{Connection}) [optional]
#' @field permissions  \link{GroupPermissions} [optional]
#' @field image  \link{Asset} [optional]
#' @field subGroups  list(\link{ConnectionGroup}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConnectionGroup <- R6::R6Class(
  "ConnectionGroup",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `owner` = NULL,
    `name` = NULL,
    `description` = NULL,
    `connections` = NULL,
    `permissions` = NULL,
    `image` = NULL,
    `subGroups` = NULL,

    #' @description
    #' Initialize a new ConnectionGroup class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param owner owner
    #' @param name name
    #' @param description description
    #' @param connections connections
    #' @param permissions permissions
    #' @param image image
    #' @param subGroups subGroups
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `owner` = NULL, `name` = NULL, `description` = NULL, `connections` = NULL, `permissions` = NULL, `image` = NULL, `subGroups` = NULL, ...) {
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
      if (!is.null(`connections`)) {
        stopifnot(is.vector(`connections`), length(`connections`) != 0)
        sapply(`connections`, function(x) stopifnot(R6::is.R6(x)))
        self$`connections` <- `connections`
      }
      if (!is.null(`permissions`)) {
        stopifnot(R6::is.R6(`permissions`))
        self$`permissions` <- `permissions`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`subGroups`)) {
        stopifnot(is.vector(`subGroups`), length(`subGroups`) != 0)
        sapply(`subGroups`, function(x) stopifnot(R6::is.R6(x)))
        self$`subGroups` <- `subGroups`
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
    #' @return ConnectionGroup as a base R list.
    #' @examples
    #' # convert array of ConnectionGroup (x) to a data frame
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
    #' Convert ConnectionGroup to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConnectionGroupObject <- list()
      if (!is.null(self$`id`)) {
        ConnectionGroupObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ConnectionGroupObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ConnectionGroupObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`owner`)) {
        ConnectionGroupObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`name`)) {
        ConnectionGroupObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        ConnectionGroupObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`connections`)) {
        ConnectionGroupObject[["connections"]] <-
          self$extractSimpleType(self$`connections`)
      }
      if (!is.null(self$`permissions`)) {
        ConnectionGroupObject[["permissions"]] <-
          self$extractSimpleType(self$`permissions`)
      }
      if (!is.null(self$`image`)) {
        ConnectionGroupObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`subGroups`)) {
        ConnectionGroupObject[["subGroups"]] <-
          self$extractSimpleType(self$`subGroups`)
      }
      return(ConnectionGroupObject)
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
    #' Deserialize JSON string into an instance of ConnectionGroup
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionGroup
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
      if (!is.null(this_object$`connections`)) {
        self$`connections` <- ApiClient$new()$deserializeObj(this_object$`connections`, "array[Connection]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`permissions`)) {
        `permissions_object` <- GroupPermissions$new()
        `permissions_object`$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
        self$`permissions` <- `permissions_object`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- Asset$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`subGroups`)) {
        self$`subGroups` <- ApiClient$new()$deserializeObj(this_object$`subGroups`, "array[ConnectionGroup]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ConnectionGroup in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConnectionGroup
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionGroup
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`connections` <- ApiClient$new()$deserializeObj(this_object$`connections`, "array[Connection]", loadNamespace("openapi"))
      self$`permissions` <- GroupPermissions$new()$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
      self$`image` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`subGroups` <- ApiClient$new()$deserializeObj(this_object$`subGroups`, "array[ConnectionGroup]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ConnectionGroup and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConnectionGroup
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
# ConnectionGroup$unlock()
#
## Below is an example to define the print function
# ConnectionGroup$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConnectionGroup$lock()

