#' Create a new PurchaseItemShortResponse
#'
#' @description
#' PurchaseItemShortResponse Class
#'
#' @docType class
#' @title PurchaseItemShortResponse
#' @description PurchaseItemShortResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field tickets  integer [optional]
#' @field coverAsset  \link{AssetShortResponse} [optional]
#' @field promoAsset  \link{AssetShortResponse} [optional]
#' @field giftable  character [optional]
#' @field assetable  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PurchaseItemShortResponse <- R6::R6Class(
  "PurchaseItemShortResponse",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `tickets` = NULL,
    `coverAsset` = NULL,
    `promoAsset` = NULL,
    `giftable` = NULL,
    `assetable` = NULL,

    #' @description
    #' Initialize a new PurchaseItemShortResponse class.
    #'
    #' @param id id
    #' @param name name
    #' @param description description
    #' @param tickets tickets
    #' @param coverAsset coverAsset
    #' @param promoAsset promoAsset
    #' @param giftable giftable
    #' @param assetable assetable
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `description` = NULL, `tickets` = NULL, `coverAsset` = NULL, `promoAsset` = NULL, `giftable` = NULL, `assetable` = NULL, ...) {
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
      if (!is.null(`tickets`)) {
        if (!(is.numeric(`tickets`) && length(`tickets`) == 1)) {
          stop(paste("Error! Invalid data for `tickets`. Must be an integer:", `tickets`))
        }
        self$`tickets` <- `tickets`
      }
      if (!is.null(`coverAsset`)) {
        stopifnot(R6::is.R6(`coverAsset`))
        self$`coverAsset` <- `coverAsset`
      }
      if (!is.null(`promoAsset`)) {
        stopifnot(R6::is.R6(`promoAsset`))
        self$`promoAsset` <- `promoAsset`
      }
      if (!is.null(`giftable`)) {
        if (!(is.logical(`giftable`) && length(`giftable`) == 1)) {
          stop(paste("Error! Invalid data for `giftable`. Must be a boolean:", `giftable`))
        }
        self$`giftable` <- `giftable`
      }
      if (!is.null(`assetable`)) {
        if (!(is.logical(`assetable`) && length(`assetable`) == 1)) {
          stop(paste("Error! Invalid data for `assetable`. Must be a boolean:", `assetable`))
        }
        self$`assetable` <- `assetable`
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
    #' @return PurchaseItemShortResponse as a base R list.
    #' @examples
    #' # convert array of PurchaseItemShortResponse (x) to a data frame
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
    #' Convert PurchaseItemShortResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PurchaseItemShortResponseObject <- list()
      if (!is.null(self$`id`)) {
        PurchaseItemShortResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        PurchaseItemShortResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        PurchaseItemShortResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`tickets`)) {
        PurchaseItemShortResponseObject[["tickets"]] <-
          self$`tickets`
      }
      if (!is.null(self$`coverAsset`)) {
        PurchaseItemShortResponseObject[["coverAsset"]] <-
          self$extractSimpleType(self$`coverAsset`)
      }
      if (!is.null(self$`promoAsset`)) {
        PurchaseItemShortResponseObject[["promoAsset"]] <-
          self$extractSimpleType(self$`promoAsset`)
      }
      if (!is.null(self$`giftable`)) {
        PurchaseItemShortResponseObject[["giftable"]] <-
          self$`giftable`
      }
      if (!is.null(self$`assetable`)) {
        PurchaseItemShortResponseObject[["assetable"]] <-
          self$`assetable`
      }
      return(PurchaseItemShortResponseObject)
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
    #' Deserialize JSON string into an instance of PurchaseItemShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PurchaseItemShortResponse
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
      if (!is.null(this_object$`tickets`)) {
        self$`tickets` <- this_object$`tickets`
      }
      if (!is.null(this_object$`coverAsset`)) {
        `coverasset_object` <- AssetShortResponse$new()
        `coverasset_object`$fromJSON(jsonlite::toJSON(this_object$`coverAsset`, auto_unbox = TRUE, digits = NA))
        self$`coverAsset` <- `coverasset_object`
      }
      if (!is.null(this_object$`promoAsset`)) {
        `promoasset_object` <- AssetShortResponse$new()
        `promoasset_object`$fromJSON(jsonlite::toJSON(this_object$`promoAsset`, auto_unbox = TRUE, digits = NA))
        self$`promoAsset` <- `promoasset_object`
      }
      if (!is.null(this_object$`giftable`)) {
        self$`giftable` <- this_object$`giftable`
      }
      if (!is.null(this_object$`assetable`)) {
        self$`assetable` <- this_object$`assetable`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PurchaseItemShortResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PurchaseItemShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PurchaseItemShortResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`tickets` <- this_object$`tickets`
      self$`coverAsset` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`coverAsset`, auto_unbox = TRUE, digits = NA))
      self$`promoAsset` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`promoAsset`, auto_unbox = TRUE, digits = NA))
      self$`giftable` <- this_object$`giftable`
      self$`assetable` <- this_object$`assetable`
      self
    },

    #' @description
    #' Validate JSON input with respect to PurchaseItemShortResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PurchaseItemShortResponse
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
# PurchaseItemShortResponse$unlock()
#
## Below is an example to define the print function
# PurchaseItemShortResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PurchaseItemShortResponse$lock()

