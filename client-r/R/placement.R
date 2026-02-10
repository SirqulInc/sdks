#' Create a new Placement
#'
#' @description
#' Placement Class
#'
#' @docType class
#' @title Placement
#' @description Placement Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field application  \link{Application} [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field size  character [optional]
#' @field clickType  character [optional]
#' @field height  integer [optional]
#' @field width  integer [optional]
#' @field refreshInterval  integer [optional]
#' @field defaultImage  \link{Asset} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Placement <- R6::R6Class(
  "Placement",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `application` = NULL,
    `name` = NULL,
    `description` = NULL,
    `size` = NULL,
    `clickType` = NULL,
    `height` = NULL,
    `width` = NULL,
    `refreshInterval` = NULL,
    `defaultImage` = NULL,

    #' @description
    #' Initialize a new Placement class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param application application
    #' @param name name
    #' @param description description
    #' @param size size
    #' @param clickType clickType
    #' @param height height
    #' @param width width
    #' @param refreshInterval refreshInterval
    #' @param defaultImage defaultImage
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `application` = NULL, `name` = NULL, `description` = NULL, `size` = NULL, `clickType` = NULL, `height` = NULL, `width` = NULL, `refreshInterval` = NULL, `defaultImage` = NULL, ...) {
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
      if (!is.null(`size`)) {
        if (!(`size` %in% c("CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10"))) {
          stop(paste("Error! \"", `size`, "\" cannot be assigned to `size`. Must be \"CONFIG\", \"BANNER\", \"LEADERBOARD\", \"SKYSCRAPER\", \"VIDEO\", \"ZIP\", \"INTERSTITIAL\", \"CUSTOM1\", \"CUSTOM2\", \"CUSTOM3\", \"CUSTOM4\", \"CUSTOM5\", \"CUSTOM6\", \"CUSTOM7\", \"CUSTOM8\", \"CUSTOM9\", \"CUSTOM10\".", sep = ""))
        }
        if (!(is.character(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be a string:", `size`))
        }
        self$`size` <- `size`
      }
      if (!is.null(`clickType`)) {
        if (!(`clickType` %in% c("CONFIG", "PURCHASE", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "FULL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10"))) {
          stop(paste("Error! \"", `clickType`, "\" cannot be assigned to `clickType`. Must be \"CONFIG\", \"PURCHASE\", \"BANNER\", \"LEADERBOARD\", \"SKYSCRAPER\", \"VIDEO\", \"ZIP\", \"FULL\", \"CUSTOM1\", \"CUSTOM2\", \"CUSTOM3\", \"CUSTOM4\", \"CUSTOM5\", \"CUSTOM6\", \"CUSTOM7\", \"CUSTOM8\", \"CUSTOM9\", \"CUSTOM10\".", sep = ""))
        }
        if (!(is.character(`clickType`) && length(`clickType`) == 1)) {
          stop(paste("Error! Invalid data for `clickType`. Must be a string:", `clickType`))
        }
        self$`clickType` <- `clickType`
      }
      if (!is.null(`height`)) {
        if (!(is.numeric(`height`) && length(`height`) == 1)) {
          stop(paste("Error! Invalid data for `height`. Must be an integer:", `height`))
        }
        self$`height` <- `height`
      }
      if (!is.null(`width`)) {
        if (!(is.numeric(`width`) && length(`width`) == 1)) {
          stop(paste("Error! Invalid data for `width`. Must be an integer:", `width`))
        }
        self$`width` <- `width`
      }
      if (!is.null(`refreshInterval`)) {
        if (!(is.numeric(`refreshInterval`) && length(`refreshInterval`) == 1)) {
          stop(paste("Error! Invalid data for `refreshInterval`. Must be an integer:", `refreshInterval`))
        }
        self$`refreshInterval` <- `refreshInterval`
      }
      if (!is.null(`defaultImage`)) {
        stopifnot(R6::is.R6(`defaultImage`))
        self$`defaultImage` <- `defaultImage`
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
    #' @return Placement as a base R list.
    #' @examples
    #' # convert array of Placement (x) to a data frame
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
    #' Convert Placement to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PlacementObject <- list()
      if (!is.null(self$`id`)) {
        PlacementObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        PlacementObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        PlacementObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`application`)) {
        PlacementObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`name`)) {
        PlacementObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        PlacementObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`size`)) {
        PlacementObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`clickType`)) {
        PlacementObject[["clickType"]] <-
          self$`clickType`
      }
      if (!is.null(self$`height`)) {
        PlacementObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`width`)) {
        PlacementObject[["width"]] <-
          self$`width`
      }
      if (!is.null(self$`refreshInterval`)) {
        PlacementObject[["refreshInterval"]] <-
          self$`refreshInterval`
      }
      if (!is.null(self$`defaultImage`)) {
        PlacementObject[["defaultImage"]] <-
          self$extractSimpleType(self$`defaultImage`)
      }
      return(PlacementObject)
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
    #' Deserialize JSON string into an instance of Placement
    #'
    #' @param input_json the JSON input
    #' @return the instance of Placement
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
      if (!is.null(this_object$`size`)) {
        if (!is.null(this_object$`size`) && !(this_object$`size` %in% c("CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10"))) {
          stop(paste("Error! \"", this_object$`size`, "\" cannot be assigned to `size`. Must be \"CONFIG\", \"BANNER\", \"LEADERBOARD\", \"SKYSCRAPER\", \"VIDEO\", \"ZIP\", \"INTERSTITIAL\", \"CUSTOM1\", \"CUSTOM2\", \"CUSTOM3\", \"CUSTOM4\", \"CUSTOM5\", \"CUSTOM6\", \"CUSTOM7\", \"CUSTOM8\", \"CUSTOM9\", \"CUSTOM10\".", sep = ""))
        }
        self$`size` <- this_object$`size`
      }
      if (!is.null(this_object$`clickType`)) {
        if (!is.null(this_object$`clickType`) && !(this_object$`clickType` %in% c("CONFIG", "PURCHASE", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "FULL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10"))) {
          stop(paste("Error! \"", this_object$`clickType`, "\" cannot be assigned to `clickType`. Must be \"CONFIG\", \"PURCHASE\", \"BANNER\", \"LEADERBOARD\", \"SKYSCRAPER\", \"VIDEO\", \"ZIP\", \"FULL\", \"CUSTOM1\", \"CUSTOM2\", \"CUSTOM3\", \"CUSTOM4\", \"CUSTOM5\", \"CUSTOM6\", \"CUSTOM7\", \"CUSTOM8\", \"CUSTOM9\", \"CUSTOM10\".", sep = ""))
        }
        self$`clickType` <- this_object$`clickType`
      }
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`width`)) {
        self$`width` <- this_object$`width`
      }
      if (!is.null(this_object$`refreshInterval`)) {
        self$`refreshInterval` <- this_object$`refreshInterval`
      }
      if (!is.null(this_object$`defaultImage`)) {
        `defaultimage_object` <- Asset$new()
        `defaultimage_object`$fromJSON(jsonlite::toJSON(this_object$`defaultImage`, auto_unbox = TRUE, digits = NA))
        self$`defaultImage` <- `defaultimage_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Placement in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Placement
    #'
    #' @param input_json the JSON input
    #' @return the instance of Placement
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`application` <- Application$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`size`) && !(this_object$`size` %in% c("CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10"))) {
        stop(paste("Error! \"", this_object$`size`, "\" cannot be assigned to `size`. Must be \"CONFIG\", \"BANNER\", \"LEADERBOARD\", \"SKYSCRAPER\", \"VIDEO\", \"ZIP\", \"INTERSTITIAL\", \"CUSTOM1\", \"CUSTOM2\", \"CUSTOM3\", \"CUSTOM4\", \"CUSTOM5\", \"CUSTOM6\", \"CUSTOM7\", \"CUSTOM8\", \"CUSTOM9\", \"CUSTOM10\".", sep = ""))
      }
      self$`size` <- this_object$`size`
      if (!is.null(this_object$`clickType`) && !(this_object$`clickType` %in% c("CONFIG", "PURCHASE", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "FULL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10"))) {
        stop(paste("Error! \"", this_object$`clickType`, "\" cannot be assigned to `clickType`. Must be \"CONFIG\", \"PURCHASE\", \"BANNER\", \"LEADERBOARD\", \"SKYSCRAPER\", \"VIDEO\", \"ZIP\", \"FULL\", \"CUSTOM1\", \"CUSTOM2\", \"CUSTOM3\", \"CUSTOM4\", \"CUSTOM5\", \"CUSTOM6\", \"CUSTOM7\", \"CUSTOM8\", \"CUSTOM9\", \"CUSTOM10\".", sep = ""))
      }
      self$`clickType` <- this_object$`clickType`
      self$`height` <- this_object$`height`
      self$`width` <- this_object$`width`
      self$`refreshInterval` <- this_object$`refreshInterval`
      self$`defaultImage` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`defaultImage`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Placement and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Placement
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
# Placement$unlock()
#
## Below is an example to define the print function
# Placement$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Placement$lock()

