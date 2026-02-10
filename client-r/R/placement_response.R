#' Create a new PlacementResponse
#'
#' @description
#' PlacementResponse Class
#'
#' @docType class
#' @title PlacementResponse
#' @description PlacementResponse Class
#' @format An \code{R6Class} generator object
#' @field placementId  integer [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field size  character [optional]
#' @field height  integer [optional]
#' @field width  integer [optional]
#' @field refreshInterval  integer [optional]
#' @field appName  character [optional]
#' @field appKey  character [optional]
#' @field active  character [optional]
#' @field defaultImage  \link{AssetShortResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlacementResponse <- R6::R6Class(
  "PlacementResponse",
  public = list(
    `placementId` = NULL,
    `name` = NULL,
    `description` = NULL,
    `size` = NULL,
    `height` = NULL,
    `width` = NULL,
    `refreshInterval` = NULL,
    `appName` = NULL,
    `appKey` = NULL,
    `active` = NULL,
    `defaultImage` = NULL,

    #' @description
    #' Initialize a new PlacementResponse class.
    #'
    #' @param placementId placementId
    #' @param name name
    #' @param description description
    #' @param size size
    #' @param height height
    #' @param width width
    #' @param refreshInterval refreshInterval
    #' @param appName appName
    #' @param appKey appKey
    #' @param active active
    #' @param defaultImage defaultImage
    #' @param ... Other optional arguments.
    initialize = function(`placementId` = NULL, `name` = NULL, `description` = NULL, `size` = NULL, `height` = NULL, `width` = NULL, `refreshInterval` = NULL, `appName` = NULL, `appKey` = NULL, `active` = NULL, `defaultImage` = NULL, ...) {
      if (!is.null(`placementId`)) {
        if (!(is.numeric(`placementId`) && length(`placementId`) == 1)) {
          stop(paste("Error! Invalid data for `placementId`. Must be an integer:", `placementId`))
        }
        self$`placementId` <- `placementId`
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
      if (!is.null(`appName`)) {
        if (!(is.character(`appName`) && length(`appName`) == 1)) {
          stop(paste("Error! Invalid data for `appName`. Must be a string:", `appName`))
        }
        self$`appName` <- `appName`
      }
      if (!is.null(`appKey`)) {
        if (!(is.character(`appKey`) && length(`appKey`) == 1)) {
          stop(paste("Error! Invalid data for `appKey`. Must be a string:", `appKey`))
        }
        self$`appKey` <- `appKey`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
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
    #' @return PlacementResponse as a base R list.
    #' @examples
    #' # convert array of PlacementResponse (x) to a data frame
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
    #' Convert PlacementResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PlacementResponseObject <- list()
      if (!is.null(self$`placementId`)) {
        PlacementResponseObject[["placementId"]] <-
          self$`placementId`
      }
      if (!is.null(self$`name`)) {
        PlacementResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        PlacementResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`size`)) {
        PlacementResponseObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`height`)) {
        PlacementResponseObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`width`)) {
        PlacementResponseObject[["width"]] <-
          self$`width`
      }
      if (!is.null(self$`refreshInterval`)) {
        PlacementResponseObject[["refreshInterval"]] <-
          self$`refreshInterval`
      }
      if (!is.null(self$`appName`)) {
        PlacementResponseObject[["appName"]] <-
          self$`appName`
      }
      if (!is.null(self$`appKey`)) {
        PlacementResponseObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`active`)) {
        PlacementResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`defaultImage`)) {
        PlacementResponseObject[["defaultImage"]] <-
          self$extractSimpleType(self$`defaultImage`)
      }
      return(PlacementResponseObject)
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
    #' Deserialize JSON string into an instance of PlacementResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlacementResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`placementId`)) {
        self$`placementId` <- this_object$`placementId`
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
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`width`)) {
        self$`width` <- this_object$`width`
      }
      if (!is.null(this_object$`refreshInterval`)) {
        self$`refreshInterval` <- this_object$`refreshInterval`
      }
      if (!is.null(this_object$`appName`)) {
        self$`appName` <- this_object$`appName`
      }
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`defaultImage`)) {
        `defaultimage_object` <- AssetShortResponse$new()
        `defaultimage_object`$fromJSON(jsonlite::toJSON(this_object$`defaultImage`, auto_unbox = TRUE, digits = NA))
        self$`defaultImage` <- `defaultimage_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PlacementResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PlacementResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlacementResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`placementId` <- this_object$`placementId`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`size`) && !(this_object$`size` %in% c("CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10"))) {
        stop(paste("Error! \"", this_object$`size`, "\" cannot be assigned to `size`. Must be \"CONFIG\", \"BANNER\", \"LEADERBOARD\", \"SKYSCRAPER\", \"VIDEO\", \"ZIP\", \"INTERSTITIAL\", \"CUSTOM1\", \"CUSTOM2\", \"CUSTOM3\", \"CUSTOM4\", \"CUSTOM5\", \"CUSTOM6\", \"CUSTOM7\", \"CUSTOM8\", \"CUSTOM9\", \"CUSTOM10\".", sep = ""))
      }
      self$`size` <- this_object$`size`
      self$`height` <- this_object$`height`
      self$`width` <- this_object$`width`
      self$`refreshInterval` <- this_object$`refreshInterval`
      self$`appName` <- this_object$`appName`
      self$`appKey` <- this_object$`appKey`
      self$`active` <- this_object$`active`
      self$`defaultImage` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`defaultImage`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to PlacementResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PlacementResponse
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
# PlacementResponse$unlock()
#
## Below is an example to define the print function
# PlacementResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PlacementResponse$lock()

