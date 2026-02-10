#' Create a new Filter
#'
#' @description
#' Filter Class
#'
#' @docType class
#' @title Filter
#' @description Filter Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field application  \link{Application} [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field parent  \link{Filter} [optional]
#' @field children  list(\link{Filter}) [optional]
#' @field display  character [optional]
#' @field externalId  character [optional]
#' @field externalType  character [optional]
#' @field tree  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Filter <- R6::R6Class(
  "Filter",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `application` = NULL,
    `name` = NULL,
    `description` = NULL,
    `parent` = NULL,
    `children` = NULL,
    `display` = NULL,
    `externalId` = NULL,
    `externalType` = NULL,
    `tree` = NULL,

    #' @description
    #' Initialize a new Filter class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param application application
    #' @param name name
    #' @param description description
    #' @param parent parent
    #' @param children children
    #' @param display display
    #' @param externalId externalId
    #' @param externalType externalType
    #' @param tree tree
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `application` = NULL, `name` = NULL, `description` = NULL, `parent` = NULL, `children` = NULL, `display` = NULL, `externalId` = NULL, `externalType` = NULL, `tree` = NULL, ...) {
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
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
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
      if (!is.null(`parent`)) {
        stopifnot(R6::is.R6(`parent`))
        self$`parent` <- `parent`
      }
      if (!is.null(`children`)) {
        stopifnot(is.vector(`children`), length(`children`) != 0)
        sapply(`children`, function(x) stopifnot(R6::is.R6(x)))
        self$`children` <- `children`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`externalType`)) {
        if (!(is.character(`externalType`) && length(`externalType`) == 1)) {
          stop(paste("Error! Invalid data for `externalType`. Must be a string:", `externalType`))
        }
        self$`externalType` <- `externalType`
      }
      if (!is.null(`tree`)) {
        if (!(is.character(`tree`) && length(`tree`) == 1)) {
          stop(paste("Error! Invalid data for `tree`. Must be a string:", `tree`))
        }
        self$`tree` <- `tree`
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
    #' @return Filter as a base R list.
    #' @examples
    #' # convert array of Filter (x) to a data frame
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
    #' Convert Filter to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FilterObject <- list()
      if (!is.null(self$`id`)) {
        FilterObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        FilterObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        FilterObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`application`)) {
        FilterObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`name`)) {
        FilterObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        FilterObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`parent`)) {
        FilterObject[["parent"]] <-
          self$extractSimpleType(self$`parent`)
      }
      if (!is.null(self$`children`)) {
        FilterObject[["children"]] <-
          self$extractSimpleType(self$`children`)
      }
      if (!is.null(self$`display`)) {
        FilterObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`externalId`)) {
        FilterObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`externalType`)) {
        FilterObject[["externalType"]] <-
          self$`externalType`
      }
      if (!is.null(self$`tree`)) {
        FilterObject[["tree"]] <-
          self$`tree`
      }
      return(FilterObject)
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
    #' Deserialize JSON string into an instance of Filter
    #'
    #' @param input_json the JSON input
    #' @return the instance of Filter
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
      if (!is.null(this_object$`application`)) {
        `application_object` <- Application$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`parent`)) {
        `parent_object` <- Filter$new()
        `parent_object`$fromJSON(jsonlite::toJSON(this_object$`parent`, auto_unbox = TRUE, digits = NA))
        self$`parent` <- `parent_object`
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[Filter]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`externalType`)) {
        self$`externalType` <- this_object$`externalType`
      }
      if (!is.null(this_object$`tree`)) {
        self$`tree` <- this_object$`tree`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Filter in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Filter
    #'
    #' @param input_json the JSON input
    #' @return the instance of Filter
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`application` <- Application$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`parent` <- Filter$new()$fromJSON(jsonlite::toJSON(this_object$`parent`, auto_unbox = TRUE, digits = NA))
      self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[Filter]", loadNamespace("openapi"))
      self$`display` <- this_object$`display`
      self$`externalId` <- this_object$`externalId`
      self$`externalType` <- this_object$`externalType`
      self$`tree` <- this_object$`tree`
      self
    },

    #' @description
    #' Validate JSON input with respect to Filter and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Filter
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
# Filter$unlock()
#
## Below is an example to define the print function
# Filter$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Filter$lock()

