#' Create a new CargoType
#'
#' @description
#' CargoType Class
#'
#' @docType class
#' @title CargoType
#' @description CargoType Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field business  \link{Retailer} [optional]
#' @field hub  \link{ServiceHub} [optional]
#' @field name  character [optional]
#' @field width  numeric [optional]
#' @field height  numeric [optional]
#' @field depth  numeric [optional]
#' @field volume  numeric [optional]
#' @field weight  numeric [optional]
#' @field loadTime  integer [optional]
#' @field palletizable  character [optional]
#' @field palletRatio  integer [optional]
#' @field adminOnly  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CargoType <- R6::R6Class(
  "CargoType",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `business` = NULL,
    `hub` = NULL,
    `name` = NULL,
    `width` = NULL,
    `height` = NULL,
    `depth` = NULL,
    `volume` = NULL,
    `weight` = NULL,
    `loadTime` = NULL,
    `palletizable` = NULL,
    `palletRatio` = NULL,
    `adminOnly` = NULL,

    #' @description
    #' Initialize a new CargoType class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param business business
    #' @param hub hub
    #' @param name name
    #' @param width width
    #' @param height height
    #' @param depth depth
    #' @param volume volume
    #' @param weight weight
    #' @param loadTime loadTime
    #' @param palletizable palletizable
    #' @param palletRatio palletRatio
    #' @param adminOnly adminOnly
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `business` = NULL, `hub` = NULL, `name` = NULL, `width` = NULL, `height` = NULL, `depth` = NULL, `volume` = NULL, `weight` = NULL, `loadTime` = NULL, `palletizable` = NULL, `palletRatio` = NULL, `adminOnly` = NULL, ...) {
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
      if (!is.null(`business`)) {
        stopifnot(R6::is.R6(`business`))
        self$`business` <- `business`
      }
      if (!is.null(`hub`)) {
        stopifnot(R6::is.R6(`hub`))
        self$`hub` <- `hub`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`width`)) {
        if (!(is.numeric(`width`) && length(`width`) == 1)) {
          stop(paste("Error! Invalid data for `width`. Must be a number:", `width`))
        }
        self$`width` <- `width`
      }
      if (!is.null(`height`)) {
        if (!(is.numeric(`height`) && length(`height`) == 1)) {
          stop(paste("Error! Invalid data for `height`. Must be a number:", `height`))
        }
        self$`height` <- `height`
      }
      if (!is.null(`depth`)) {
        if (!(is.numeric(`depth`) && length(`depth`) == 1)) {
          stop(paste("Error! Invalid data for `depth`. Must be a number:", `depth`))
        }
        self$`depth` <- `depth`
      }
      if (!is.null(`volume`)) {
        if (!(is.numeric(`volume`) && length(`volume`) == 1)) {
          stop(paste("Error! Invalid data for `volume`. Must be a number:", `volume`))
        }
        self$`volume` <- `volume`
      }
      if (!is.null(`weight`)) {
        if (!(is.numeric(`weight`) && length(`weight`) == 1)) {
          stop(paste("Error! Invalid data for `weight`. Must be a number:", `weight`))
        }
        self$`weight` <- `weight`
      }
      if (!is.null(`loadTime`)) {
        if (!(is.numeric(`loadTime`) && length(`loadTime`) == 1)) {
          stop(paste("Error! Invalid data for `loadTime`. Must be an integer:", `loadTime`))
        }
        self$`loadTime` <- `loadTime`
      }
      if (!is.null(`palletizable`)) {
        if (!(is.logical(`palletizable`) && length(`palletizable`) == 1)) {
          stop(paste("Error! Invalid data for `palletizable`. Must be a boolean:", `palletizable`))
        }
        self$`palletizable` <- `palletizable`
      }
      if (!is.null(`palletRatio`)) {
        if (!(is.numeric(`palletRatio`) && length(`palletRatio`) == 1)) {
          stop(paste("Error! Invalid data for `palletRatio`. Must be an integer:", `palletRatio`))
        }
        self$`palletRatio` <- `palletRatio`
      }
      if (!is.null(`adminOnly`)) {
        if (!(is.logical(`adminOnly`) && length(`adminOnly`) == 1)) {
          stop(paste("Error! Invalid data for `adminOnly`. Must be a boolean:", `adminOnly`))
        }
        self$`adminOnly` <- `adminOnly`
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
    #' @return CargoType as a base R list.
    #' @examples
    #' # convert array of CargoType (x) to a data frame
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
    #' Convert CargoType to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CargoTypeObject <- list()
      if (!is.null(self$`id`)) {
        CargoTypeObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        CargoTypeObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        CargoTypeObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`business`)) {
        CargoTypeObject[["business"]] <-
          self$extractSimpleType(self$`business`)
      }
      if (!is.null(self$`hub`)) {
        CargoTypeObject[["hub"]] <-
          self$extractSimpleType(self$`hub`)
      }
      if (!is.null(self$`name`)) {
        CargoTypeObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`width`)) {
        CargoTypeObject[["width"]] <-
          self$`width`
      }
      if (!is.null(self$`height`)) {
        CargoTypeObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`depth`)) {
        CargoTypeObject[["depth"]] <-
          self$`depth`
      }
      if (!is.null(self$`volume`)) {
        CargoTypeObject[["volume"]] <-
          self$`volume`
      }
      if (!is.null(self$`weight`)) {
        CargoTypeObject[["weight"]] <-
          self$`weight`
      }
      if (!is.null(self$`loadTime`)) {
        CargoTypeObject[["loadTime"]] <-
          self$`loadTime`
      }
      if (!is.null(self$`palletizable`)) {
        CargoTypeObject[["palletizable"]] <-
          self$`palletizable`
      }
      if (!is.null(self$`palletRatio`)) {
        CargoTypeObject[["palletRatio"]] <-
          self$`palletRatio`
      }
      if (!is.null(self$`adminOnly`)) {
        CargoTypeObject[["adminOnly"]] <-
          self$`adminOnly`
      }
      return(CargoTypeObject)
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
    #' Deserialize JSON string into an instance of CargoType
    #'
    #' @param input_json the JSON input
    #' @return the instance of CargoType
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
      if (!is.null(this_object$`business`)) {
        `business_object` <- Retailer$new()
        `business_object`$fromJSON(jsonlite::toJSON(this_object$`business`, auto_unbox = TRUE, digits = NA))
        self$`business` <- `business_object`
      }
      if (!is.null(this_object$`hub`)) {
        `hub_object` <- ServiceHub$new()
        `hub_object`$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
        self$`hub` <- `hub_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`width`)) {
        self$`width` <- this_object$`width`
      }
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`depth`)) {
        self$`depth` <- this_object$`depth`
      }
      if (!is.null(this_object$`volume`)) {
        self$`volume` <- this_object$`volume`
      }
      if (!is.null(this_object$`weight`)) {
        self$`weight` <- this_object$`weight`
      }
      if (!is.null(this_object$`loadTime`)) {
        self$`loadTime` <- this_object$`loadTime`
      }
      if (!is.null(this_object$`palletizable`)) {
        self$`palletizable` <- this_object$`palletizable`
      }
      if (!is.null(this_object$`palletRatio`)) {
        self$`palletRatio` <- this_object$`palletRatio`
      }
      if (!is.null(this_object$`adminOnly`)) {
        self$`adminOnly` <- this_object$`adminOnly`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CargoType in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CargoType
    #'
    #' @param input_json the JSON input
    #' @return the instance of CargoType
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`business` <- Retailer$new()$fromJSON(jsonlite::toJSON(this_object$`business`, auto_unbox = TRUE, digits = NA))
      self$`hub` <- ServiceHub$new()$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`width` <- this_object$`width`
      self$`height` <- this_object$`height`
      self$`depth` <- this_object$`depth`
      self$`volume` <- this_object$`volume`
      self$`weight` <- this_object$`weight`
      self$`loadTime` <- this_object$`loadTime`
      self$`palletizable` <- this_object$`palletizable`
      self$`palletRatio` <- this_object$`palletRatio`
      self$`adminOnly` <- this_object$`adminOnly`
      self
    },

    #' @description
    #' Validate JSON input with respect to CargoType and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CargoType
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
# CargoType$unlock()
#
## Below is an example to define the print function
# CargoType$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CargoType$lock()

