#' Create a new Tutorial
#'
#' @description
#' Tutorial Class
#'
#' @docType class
#' @title Tutorial
#' @description Tutorial Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field alignment  character [optional]
#' @field image  \link{Asset} [optional]
#' @field orderIndex  integer [optional]
#' @field tutorialObjectType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Tutorial <- R6::R6Class(
  "Tutorial",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `name` = NULL,
    `description` = NULL,
    `alignment` = NULL,
    `image` = NULL,
    `orderIndex` = NULL,
    `tutorialObjectType` = NULL,

    #' @description
    #' Initialize a new Tutorial class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param name name
    #' @param description description
    #' @param alignment alignment
    #' @param image image
    #' @param orderIndex orderIndex
    #' @param tutorialObjectType tutorialObjectType
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `name` = NULL, `description` = NULL, `alignment` = NULL, `image` = NULL, `orderIndex` = NULL, `tutorialObjectType` = NULL, ...) {
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
      if (!is.null(`alignment`)) {
        if (!(`alignment` %in% c("NONE", "IMAGE_ABOVE", "IMAGE_BELOW", "IMAGE_LEFT", "IMAGE_RIGHT", "IMAGE_ONLY", "TEXT_ONLY"))) {
          stop(paste("Error! \"", `alignment`, "\" cannot be assigned to `alignment`. Must be \"NONE\", \"IMAGE_ABOVE\", \"IMAGE_BELOW\", \"IMAGE_LEFT\", \"IMAGE_RIGHT\", \"IMAGE_ONLY\", \"TEXT_ONLY\".", sep = ""))
        }
        if (!(is.character(`alignment`) && length(`alignment`) == 1)) {
          stop(paste("Error! Invalid data for `alignment`. Must be a string:", `alignment`))
        }
        self$`alignment` <- `alignment`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`orderIndex`)) {
        if (!(is.numeric(`orderIndex`) && length(`orderIndex`) == 1)) {
          stop(paste("Error! Invalid data for `orderIndex`. Must be an integer:", `orderIndex`))
        }
        self$`orderIndex` <- `orderIndex`
      }
      if (!is.null(`tutorialObjectType`)) {
        if (!(`tutorialObjectType` %in% c("GAME_OBJECT", "GAME_LEVEL", "PACK", "GAME", "MISSION", "PROFILE", "APPLICATION", "TICKETS", "ASSET", "CUSTOM"))) {
          stop(paste("Error! \"", `tutorialObjectType`, "\" cannot be assigned to `tutorialObjectType`. Must be \"GAME_OBJECT\", \"GAME_LEVEL\", \"PACK\", \"GAME\", \"MISSION\", \"PROFILE\", \"APPLICATION\", \"TICKETS\", \"ASSET\", \"CUSTOM\".", sep = ""))
        }
        if (!(is.character(`tutorialObjectType`) && length(`tutorialObjectType`) == 1)) {
          stop(paste("Error! Invalid data for `tutorialObjectType`. Must be a string:", `tutorialObjectType`))
        }
        self$`tutorialObjectType` <- `tutorialObjectType`
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
    #' @return Tutorial as a base R list.
    #' @examples
    #' # convert array of Tutorial (x) to a data frame
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
    #' Convert Tutorial to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TutorialObject <- list()
      if (!is.null(self$`id`)) {
        TutorialObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        TutorialObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        TutorialObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`name`)) {
        TutorialObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        TutorialObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`alignment`)) {
        TutorialObject[["alignment"]] <-
          self$`alignment`
      }
      if (!is.null(self$`image`)) {
        TutorialObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`orderIndex`)) {
        TutorialObject[["orderIndex"]] <-
          self$`orderIndex`
      }
      if (!is.null(self$`tutorialObjectType`)) {
        TutorialObject[["tutorialObjectType"]] <-
          self$`tutorialObjectType`
      }
      return(TutorialObject)
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
    #' Deserialize JSON string into an instance of Tutorial
    #'
    #' @param input_json the JSON input
    #' @return the instance of Tutorial
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
      if (!is.null(this_object$`alignment`)) {
        if (!is.null(this_object$`alignment`) && !(this_object$`alignment` %in% c("NONE", "IMAGE_ABOVE", "IMAGE_BELOW", "IMAGE_LEFT", "IMAGE_RIGHT", "IMAGE_ONLY", "TEXT_ONLY"))) {
          stop(paste("Error! \"", this_object$`alignment`, "\" cannot be assigned to `alignment`. Must be \"NONE\", \"IMAGE_ABOVE\", \"IMAGE_BELOW\", \"IMAGE_LEFT\", \"IMAGE_RIGHT\", \"IMAGE_ONLY\", \"TEXT_ONLY\".", sep = ""))
        }
        self$`alignment` <- this_object$`alignment`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- Asset$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`orderIndex`)) {
        self$`orderIndex` <- this_object$`orderIndex`
      }
      if (!is.null(this_object$`tutorialObjectType`)) {
        if (!is.null(this_object$`tutorialObjectType`) && !(this_object$`tutorialObjectType` %in% c("GAME_OBJECT", "GAME_LEVEL", "PACK", "GAME", "MISSION", "PROFILE", "APPLICATION", "TICKETS", "ASSET", "CUSTOM"))) {
          stop(paste("Error! \"", this_object$`tutorialObjectType`, "\" cannot be assigned to `tutorialObjectType`. Must be \"GAME_OBJECT\", \"GAME_LEVEL\", \"PACK\", \"GAME\", \"MISSION\", \"PROFILE\", \"APPLICATION\", \"TICKETS\", \"ASSET\", \"CUSTOM\".", sep = ""))
        }
        self$`tutorialObjectType` <- this_object$`tutorialObjectType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Tutorial in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Tutorial
    #'
    #' @param input_json the JSON input
    #' @return the instance of Tutorial
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`alignment`) && !(this_object$`alignment` %in% c("NONE", "IMAGE_ABOVE", "IMAGE_BELOW", "IMAGE_LEFT", "IMAGE_RIGHT", "IMAGE_ONLY", "TEXT_ONLY"))) {
        stop(paste("Error! \"", this_object$`alignment`, "\" cannot be assigned to `alignment`. Must be \"NONE\", \"IMAGE_ABOVE\", \"IMAGE_BELOW\", \"IMAGE_LEFT\", \"IMAGE_RIGHT\", \"IMAGE_ONLY\", \"TEXT_ONLY\".", sep = ""))
      }
      self$`alignment` <- this_object$`alignment`
      self$`image` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`orderIndex` <- this_object$`orderIndex`
      if (!is.null(this_object$`tutorialObjectType`) && !(this_object$`tutorialObjectType` %in% c("GAME_OBJECT", "GAME_LEVEL", "PACK", "GAME", "MISSION", "PROFILE", "APPLICATION", "TICKETS", "ASSET", "CUSTOM"))) {
        stop(paste("Error! \"", this_object$`tutorialObjectType`, "\" cannot be assigned to `tutorialObjectType`. Must be \"GAME_OBJECT\", \"GAME_LEVEL\", \"PACK\", \"GAME\", \"MISSION\", \"PROFILE\", \"APPLICATION\", \"TICKETS\", \"ASSET\", \"CUSTOM\".", sep = ""))
      }
      self$`tutorialObjectType` <- this_object$`tutorialObjectType`
      self
    },

    #' @description
    #' Validate JSON input with respect to Tutorial and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Tutorial
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
# Tutorial$unlock()
#
## Below is an example to define the print function
# Tutorial$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Tutorial$lock()

