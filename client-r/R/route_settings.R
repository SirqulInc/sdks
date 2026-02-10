#' Create a new RouteSettings
#'
#' @description
#' RouteSettings Class
#'
#' @docType class
#' @title RouteSettings
#' @description RouteSettings Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field setting  character [optional]
#' @field settingType  character [optional]
#' @field program  \link{Program} [optional]
#' @field hub  \link{ServiceHub} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RouteSettings <- R6::R6Class(
  "RouteSettings",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `name` = NULL,
    `description` = NULL,
    `setting` = NULL,
    `settingType` = NULL,
    `program` = NULL,
    `hub` = NULL,

    #' @description
    #' Initialize a new RouteSettings class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param name name
    #' @param description description
    #' @param setting setting
    #' @param settingType settingType
    #' @param program program
    #' @param hub hub
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `name` = NULL, `description` = NULL, `setting` = NULL, `settingType` = NULL, `program` = NULL, `hub` = NULL, ...) {
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
      if (!is.null(`setting`)) {
        if (!(is.character(`setting`) && length(`setting`) == 1)) {
          stop(paste("Error! Invalid data for `setting`. Must be a string:", `setting`))
        }
        self$`setting` <- `setting`
      }
      if (!is.null(`settingType`)) {
        if (!(`settingType` %in% c("FLOAT", "DOUBLE", "INTEGER", "LONG", "BOOLEAN", "STRING"))) {
          stop(paste("Error! \"", `settingType`, "\" cannot be assigned to `settingType`. Must be \"FLOAT\", \"DOUBLE\", \"INTEGER\", \"LONG\", \"BOOLEAN\", \"STRING\".", sep = ""))
        }
        if (!(is.character(`settingType`) && length(`settingType`) == 1)) {
          stop(paste("Error! Invalid data for `settingType`. Must be a string:", `settingType`))
        }
        self$`settingType` <- `settingType`
      }
      if (!is.null(`program`)) {
        stopifnot(R6::is.R6(`program`))
        self$`program` <- `program`
      }
      if (!is.null(`hub`)) {
        stopifnot(R6::is.R6(`hub`))
        self$`hub` <- `hub`
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
    #' @return RouteSettings as a base R list.
    #' @examples
    #' # convert array of RouteSettings (x) to a data frame
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
    #' Convert RouteSettings to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RouteSettingsObject <- list()
      if (!is.null(self$`id`)) {
        RouteSettingsObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        RouteSettingsObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        RouteSettingsObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`name`)) {
        RouteSettingsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        RouteSettingsObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`setting`)) {
        RouteSettingsObject[["setting"]] <-
          self$`setting`
      }
      if (!is.null(self$`settingType`)) {
        RouteSettingsObject[["settingType"]] <-
          self$`settingType`
      }
      if (!is.null(self$`program`)) {
        RouteSettingsObject[["program"]] <-
          self$extractSimpleType(self$`program`)
      }
      if (!is.null(self$`hub`)) {
        RouteSettingsObject[["hub"]] <-
          self$extractSimpleType(self$`hub`)
      }
      return(RouteSettingsObject)
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
    #' Deserialize JSON string into an instance of RouteSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of RouteSettings
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`setting`)) {
        self$`setting` <- this_object$`setting`
      }
      if (!is.null(this_object$`settingType`)) {
        if (!is.null(this_object$`settingType`) && !(this_object$`settingType` %in% c("FLOAT", "DOUBLE", "INTEGER", "LONG", "BOOLEAN", "STRING"))) {
          stop(paste("Error! \"", this_object$`settingType`, "\" cannot be assigned to `settingType`. Must be \"FLOAT\", \"DOUBLE\", \"INTEGER\", \"LONG\", \"BOOLEAN\", \"STRING\".", sep = ""))
        }
        self$`settingType` <- this_object$`settingType`
      }
      if (!is.null(this_object$`program`)) {
        `program_object` <- Program$new()
        `program_object`$fromJSON(jsonlite::toJSON(this_object$`program`, auto_unbox = TRUE, digits = NA))
        self$`program` <- `program_object`
      }
      if (!is.null(this_object$`hub`)) {
        `hub_object` <- ServiceHub$new()
        `hub_object`$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
        self$`hub` <- `hub_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RouteSettings in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RouteSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of RouteSettings
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`setting` <- this_object$`setting`
      if (!is.null(this_object$`settingType`) && !(this_object$`settingType` %in% c("FLOAT", "DOUBLE", "INTEGER", "LONG", "BOOLEAN", "STRING"))) {
        stop(paste("Error! \"", this_object$`settingType`, "\" cannot be assigned to `settingType`. Must be \"FLOAT\", \"DOUBLE\", \"INTEGER\", \"LONG\", \"BOOLEAN\", \"STRING\".", sep = ""))
      }
      self$`settingType` <- this_object$`settingType`
      self$`program` <- Program$new()$fromJSON(jsonlite::toJSON(this_object$`program`, auto_unbox = TRUE, digits = NA))
      self$`hub` <- ServiceHub$new()$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to RouteSettings and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RouteSettings
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
# RouteSettings$unlock()
#
## Below is an example to define the print function
# RouteSettings$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RouteSettings$lock()

