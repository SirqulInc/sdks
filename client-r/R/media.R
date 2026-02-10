#' Create a new Media
#'
#' @description
#' Media Class
#'
#' @docType class
#' @title Media
#' @description Media Class
#' @format An \code{R6Class} generator object
#' @field mediaType  character [optional]
#' @field condition  character [optional]
#' @field isbn  character [optional]
#' @field asin  character [optional]
#' @field catalogNumbers  list(character) [optional]
#' @field duration  integer [optional]
#' @field author  character [optional]
#' @field releaseDate  integer [optional]
#' @field availabilityDate  integer [optional]
#' @field parentalRating  character [optional]
#' @field collections  list(\link{Album}) [optional]
#' @field collectionCount  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Media <- R6::R6Class(
  "Media",
  public = list(
    `mediaType` = NULL,
    `condition` = NULL,
    `isbn` = NULL,
    `asin` = NULL,
    `catalogNumbers` = NULL,
    `duration` = NULL,
    `author` = NULL,
    `releaseDate` = NULL,
    `availabilityDate` = NULL,
    `parentalRating` = NULL,
    `collections` = NULL,
    `collectionCount` = NULL,

    #' @description
    #' Initialize a new Media class.
    #'
    #' @param mediaType mediaType
    #' @param condition condition
    #' @param isbn isbn
    #' @param asin asin
    #' @param catalogNumbers catalogNumbers
    #' @param duration duration
    #' @param author author
    #' @param releaseDate releaseDate
    #' @param availabilityDate availabilityDate
    #' @param parentalRating parentalRating
    #' @param collections collections
    #' @param collectionCount collectionCount
    #' @param ... Other optional arguments.
    initialize = function(`mediaType` = NULL, `condition` = NULL, `isbn` = NULL, `asin` = NULL, `catalogNumbers` = NULL, `duration` = NULL, `author` = NULL, `releaseDate` = NULL, `availabilityDate` = NULL, `parentalRating` = NULL, `collections` = NULL, `collectionCount` = NULL, ...) {
      if (!is.null(`mediaType`)) {
        if (!(`mediaType` %in% c("APK", "APPLICATION", "IMAGE", "AUDIO", "VIDEO", "MULTIPART", "BAR_CODE", "TEXT", "OTHER"))) {
          stop(paste("Error! \"", `mediaType`, "\" cannot be assigned to `mediaType`. Must be \"APK\", \"APPLICATION\", \"IMAGE\", \"AUDIO\", \"VIDEO\", \"MULTIPART\", \"BAR_CODE\", \"TEXT\", \"OTHER\".", sep = ""))
        }
        if (!(is.character(`mediaType`) && length(`mediaType`) == 1)) {
          stop(paste("Error! Invalid data for `mediaType`. Must be a string:", `mediaType`))
        }
        self$`mediaType` <- `mediaType`
      }
      if (!is.null(`condition`)) {
        if (!(`condition` %in% c("NEW", "USED", "REFURBISHED", "OTHER"))) {
          stop(paste("Error! \"", `condition`, "\" cannot be assigned to `condition`. Must be \"NEW\", \"USED\", \"REFURBISHED\", \"OTHER\".", sep = ""))
        }
        if (!(is.character(`condition`) && length(`condition`) == 1)) {
          stop(paste("Error! Invalid data for `condition`. Must be a string:", `condition`))
        }
        self$`condition` <- `condition`
      }
      if (!is.null(`isbn`)) {
        if (!(is.character(`isbn`) && length(`isbn`) == 1)) {
          stop(paste("Error! Invalid data for `isbn`. Must be a string:", `isbn`))
        }
        self$`isbn` <- `isbn`
      }
      if (!is.null(`asin`)) {
        if (!(is.character(`asin`) && length(`asin`) == 1)) {
          stop(paste("Error! Invalid data for `asin`. Must be a string:", `asin`))
        }
        self$`asin` <- `asin`
      }
      if (!is.null(`catalogNumbers`)) {
        stopifnot(is.vector(`catalogNumbers`), length(`catalogNumbers`) != 0)
        sapply(`catalogNumbers`, function(x) stopifnot(is.character(x)))
        self$`catalogNumbers` <- `catalogNumbers`
      }
      if (!is.null(`duration`)) {
        if (!(is.numeric(`duration`) && length(`duration`) == 1)) {
          stop(paste("Error! Invalid data for `duration`. Must be an integer:", `duration`))
        }
        self$`duration` <- `duration`
      }
      if (!is.null(`author`)) {
        if (!(is.character(`author`) && length(`author`) == 1)) {
          stop(paste("Error! Invalid data for `author`. Must be a string:", `author`))
        }
        self$`author` <- `author`
      }
      if (!is.null(`releaseDate`)) {
        if (!(is.numeric(`releaseDate`) && length(`releaseDate`) == 1)) {
          stop(paste("Error! Invalid data for `releaseDate`. Must be an integer:", `releaseDate`))
        }
        self$`releaseDate` <- `releaseDate`
      }
      if (!is.null(`availabilityDate`)) {
        if (!(is.numeric(`availabilityDate`) && length(`availabilityDate`) == 1)) {
          stop(paste("Error! Invalid data for `availabilityDate`. Must be an integer:", `availabilityDate`))
        }
        self$`availabilityDate` <- `availabilityDate`
      }
      if (!is.null(`parentalRating`)) {
        if (!(is.character(`parentalRating`) && length(`parentalRating`) == 1)) {
          stop(paste("Error! Invalid data for `parentalRating`. Must be a string:", `parentalRating`))
        }
        self$`parentalRating` <- `parentalRating`
      }
      if (!is.null(`collections`)) {
        stopifnot(is.vector(`collections`), length(`collections`) != 0)
        sapply(`collections`, function(x) stopifnot(R6::is.R6(x)))
        self$`collections` <- `collections`
      }
      if (!is.null(`collectionCount`)) {
        if (!(is.numeric(`collectionCount`) && length(`collectionCount`) == 1)) {
          stop(paste("Error! Invalid data for `collectionCount`. Must be an integer:", `collectionCount`))
        }
        self$`collectionCount` <- `collectionCount`
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
    #' @return Media as a base R list.
    #' @examples
    #' # convert array of Media (x) to a data frame
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
    #' Convert Media to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MediaObject <- list()
      if (!is.null(self$`mediaType`)) {
        MediaObject[["mediaType"]] <-
          self$`mediaType`
      }
      if (!is.null(self$`condition`)) {
        MediaObject[["condition"]] <-
          self$`condition`
      }
      if (!is.null(self$`isbn`)) {
        MediaObject[["isbn"]] <-
          self$`isbn`
      }
      if (!is.null(self$`asin`)) {
        MediaObject[["asin"]] <-
          self$`asin`
      }
      if (!is.null(self$`catalogNumbers`)) {
        MediaObject[["catalogNumbers"]] <-
          self$`catalogNumbers`
      }
      if (!is.null(self$`duration`)) {
        MediaObject[["duration"]] <-
          self$`duration`
      }
      if (!is.null(self$`author`)) {
        MediaObject[["author"]] <-
          self$`author`
      }
      if (!is.null(self$`releaseDate`)) {
        MediaObject[["releaseDate"]] <-
          self$`releaseDate`
      }
      if (!is.null(self$`availabilityDate`)) {
        MediaObject[["availabilityDate"]] <-
          self$`availabilityDate`
      }
      if (!is.null(self$`parentalRating`)) {
        MediaObject[["parentalRating"]] <-
          self$`parentalRating`
      }
      if (!is.null(self$`collections`)) {
        MediaObject[["collections"]] <-
          self$extractSimpleType(self$`collections`)
      }
      if (!is.null(self$`collectionCount`)) {
        MediaObject[["collectionCount"]] <-
          self$`collectionCount`
      }
      return(MediaObject)
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
    #' Deserialize JSON string into an instance of Media
    #'
    #' @param input_json the JSON input
    #' @return the instance of Media
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`mediaType`)) {
        if (!is.null(this_object$`mediaType`) && !(this_object$`mediaType` %in% c("APK", "APPLICATION", "IMAGE", "AUDIO", "VIDEO", "MULTIPART", "BAR_CODE", "TEXT", "OTHER"))) {
          stop(paste("Error! \"", this_object$`mediaType`, "\" cannot be assigned to `mediaType`. Must be \"APK\", \"APPLICATION\", \"IMAGE\", \"AUDIO\", \"VIDEO\", \"MULTIPART\", \"BAR_CODE\", \"TEXT\", \"OTHER\".", sep = ""))
        }
        self$`mediaType` <- this_object$`mediaType`
      }
      if (!is.null(this_object$`condition`)) {
        if (!is.null(this_object$`condition`) && !(this_object$`condition` %in% c("NEW", "USED", "REFURBISHED", "OTHER"))) {
          stop(paste("Error! \"", this_object$`condition`, "\" cannot be assigned to `condition`. Must be \"NEW\", \"USED\", \"REFURBISHED\", \"OTHER\".", sep = ""))
        }
        self$`condition` <- this_object$`condition`
      }
      if (!is.null(this_object$`isbn`)) {
        self$`isbn` <- this_object$`isbn`
      }
      if (!is.null(this_object$`asin`)) {
        self$`asin` <- this_object$`asin`
      }
      if (!is.null(this_object$`catalogNumbers`)) {
        self$`catalogNumbers` <- ApiClient$new()$deserializeObj(this_object$`catalogNumbers`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`duration`)) {
        self$`duration` <- this_object$`duration`
      }
      if (!is.null(this_object$`author`)) {
        self$`author` <- this_object$`author`
      }
      if (!is.null(this_object$`releaseDate`)) {
        self$`releaseDate` <- this_object$`releaseDate`
      }
      if (!is.null(this_object$`availabilityDate`)) {
        self$`availabilityDate` <- this_object$`availabilityDate`
      }
      if (!is.null(this_object$`parentalRating`)) {
        self$`parentalRating` <- this_object$`parentalRating`
      }
      if (!is.null(this_object$`collections`)) {
        self$`collections` <- ApiClient$new()$deserializeObj(this_object$`collections`, "array[Album]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`collectionCount`)) {
        self$`collectionCount` <- this_object$`collectionCount`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Media in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Media
    #'
    #' @param input_json the JSON input
    #' @return the instance of Media
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`mediaType`) && !(this_object$`mediaType` %in% c("APK", "APPLICATION", "IMAGE", "AUDIO", "VIDEO", "MULTIPART", "BAR_CODE", "TEXT", "OTHER"))) {
        stop(paste("Error! \"", this_object$`mediaType`, "\" cannot be assigned to `mediaType`. Must be \"APK\", \"APPLICATION\", \"IMAGE\", \"AUDIO\", \"VIDEO\", \"MULTIPART\", \"BAR_CODE\", \"TEXT\", \"OTHER\".", sep = ""))
      }
      self$`mediaType` <- this_object$`mediaType`
      if (!is.null(this_object$`condition`) && !(this_object$`condition` %in% c("NEW", "USED", "REFURBISHED", "OTHER"))) {
        stop(paste("Error! \"", this_object$`condition`, "\" cannot be assigned to `condition`. Must be \"NEW\", \"USED\", \"REFURBISHED\", \"OTHER\".", sep = ""))
      }
      self$`condition` <- this_object$`condition`
      self$`isbn` <- this_object$`isbn`
      self$`asin` <- this_object$`asin`
      self$`catalogNumbers` <- ApiClient$new()$deserializeObj(this_object$`catalogNumbers`, "array[character]", loadNamespace("openapi"))
      self$`duration` <- this_object$`duration`
      self$`author` <- this_object$`author`
      self$`releaseDate` <- this_object$`releaseDate`
      self$`availabilityDate` <- this_object$`availabilityDate`
      self$`parentalRating` <- this_object$`parentalRating`
      self$`collections` <- ApiClient$new()$deserializeObj(this_object$`collections`, "array[Album]", loadNamespace("openapi"))
      self$`collectionCount` <- this_object$`collectionCount`
      self
    },

    #' @description
    #' Validate JSON input with respect to Media and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Media
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
# Media$unlock()
#
## Below is an example to define the print function
# Media$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Media$lock()

