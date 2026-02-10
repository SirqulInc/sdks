#' Create a new BillableEntity
#'
#' @description
#' BillableEntity Class
#'
#' @docType class
#' @title BillableEntity
#' @description BillableEntity Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field name  character [optional]
#' @field contactInfo  \link{ContactInfo} [optional]
#' @field responsible  \link{Account} [optional]
#' @field retailers  list(\link{Retailer}) [optional]
#' @field managers  list(\link{Account}) [optional]
#' @field categories  list(\link{Category}) [optional]
#' @field filters  list(\link{Filter}) [optional]
#' @field media  list(\link{Asset}) [optional]
#' @field mediaAlbum  \link{Album} [optional]
#' @field subscription  \link{Subscription} [optional]
#' @field disbursementIntrospect  \link{ThirdPartyNetwork} [optional]
#' @field authorizeNetTransactionKey  character [optional]
#' @field authorizeNetApiKey  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BillableEntity <- R6::R6Class(
  "BillableEntity",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `name` = NULL,
    `contactInfo` = NULL,
    `responsible` = NULL,
    `retailers` = NULL,
    `managers` = NULL,
    `categories` = NULL,
    `filters` = NULL,
    `media` = NULL,
    `mediaAlbum` = NULL,
    `subscription` = NULL,
    `disbursementIntrospect` = NULL,
    `authorizeNetTransactionKey` = NULL,
    `authorizeNetApiKey` = NULL,

    #' @description
    #' Initialize a new BillableEntity class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param name name
    #' @param contactInfo contactInfo
    #' @param responsible responsible
    #' @param retailers retailers
    #' @param managers managers
    #' @param categories categories
    #' @param filters filters
    #' @param media media
    #' @param mediaAlbum mediaAlbum
    #' @param subscription subscription
    #' @param disbursementIntrospect disbursementIntrospect
    #' @param authorizeNetTransactionKey authorizeNetTransactionKey
    #' @param authorizeNetApiKey authorizeNetApiKey
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `name` = NULL, `contactInfo` = NULL, `responsible` = NULL, `retailers` = NULL, `managers` = NULL, `categories` = NULL, `filters` = NULL, `media` = NULL, `mediaAlbum` = NULL, `subscription` = NULL, `disbursementIntrospect` = NULL, `authorizeNetTransactionKey` = NULL, `authorizeNetApiKey` = NULL, ...) {
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
      if (!is.null(`contactInfo`)) {
        stopifnot(R6::is.R6(`contactInfo`))
        self$`contactInfo` <- `contactInfo`
      }
      if (!is.null(`responsible`)) {
        stopifnot(R6::is.R6(`responsible`))
        self$`responsible` <- `responsible`
      }
      if (!is.null(`retailers`)) {
        stopifnot(is.vector(`retailers`), length(`retailers`) != 0)
        sapply(`retailers`, function(x) stopifnot(R6::is.R6(x)))
        self$`retailers` <- `retailers`
      }
      if (!is.null(`managers`)) {
        stopifnot(is.vector(`managers`), length(`managers`) != 0)
        sapply(`managers`, function(x) stopifnot(R6::is.R6(x)))
        self$`managers` <- `managers`
      }
      if (!is.null(`categories`)) {
        stopifnot(is.vector(`categories`), length(`categories`) != 0)
        sapply(`categories`, function(x) stopifnot(R6::is.R6(x)))
        self$`categories` <- `categories`
      }
      if (!is.null(`filters`)) {
        stopifnot(is.vector(`filters`), length(`filters`) != 0)
        sapply(`filters`, function(x) stopifnot(R6::is.R6(x)))
        self$`filters` <- `filters`
      }
      if (!is.null(`media`)) {
        stopifnot(is.vector(`media`), length(`media`) != 0)
        sapply(`media`, function(x) stopifnot(R6::is.R6(x)))
        self$`media` <- `media`
      }
      if (!is.null(`mediaAlbum`)) {
        stopifnot(R6::is.R6(`mediaAlbum`))
        self$`mediaAlbum` <- `mediaAlbum`
      }
      if (!is.null(`subscription`)) {
        stopifnot(R6::is.R6(`subscription`))
        self$`subscription` <- `subscription`
      }
      if (!is.null(`disbursementIntrospect`)) {
        stopifnot(R6::is.R6(`disbursementIntrospect`))
        self$`disbursementIntrospect` <- `disbursementIntrospect`
      }
      if (!is.null(`authorizeNetTransactionKey`)) {
        if (!(is.character(`authorizeNetTransactionKey`) && length(`authorizeNetTransactionKey`) == 1)) {
          stop(paste("Error! Invalid data for `authorizeNetTransactionKey`. Must be a string:", `authorizeNetTransactionKey`))
        }
        self$`authorizeNetTransactionKey` <- `authorizeNetTransactionKey`
      }
      if (!is.null(`authorizeNetApiKey`)) {
        if (!(is.character(`authorizeNetApiKey`) && length(`authorizeNetApiKey`) == 1)) {
          stop(paste("Error! Invalid data for `authorizeNetApiKey`. Must be a string:", `authorizeNetApiKey`))
        }
        self$`authorizeNetApiKey` <- `authorizeNetApiKey`
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
    #' @return BillableEntity as a base R list.
    #' @examples
    #' # convert array of BillableEntity (x) to a data frame
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
    #' Convert BillableEntity to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BillableEntityObject <- list()
      if (!is.null(self$`id`)) {
        BillableEntityObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        BillableEntityObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        BillableEntityObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`name`)) {
        BillableEntityObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`contactInfo`)) {
        BillableEntityObject[["contactInfo"]] <-
          self$extractSimpleType(self$`contactInfo`)
      }
      if (!is.null(self$`responsible`)) {
        BillableEntityObject[["responsible"]] <-
          self$extractSimpleType(self$`responsible`)
      }
      if (!is.null(self$`retailers`)) {
        BillableEntityObject[["retailers"]] <-
          self$extractSimpleType(self$`retailers`)
      }
      if (!is.null(self$`managers`)) {
        BillableEntityObject[["managers"]] <-
          self$extractSimpleType(self$`managers`)
      }
      if (!is.null(self$`categories`)) {
        BillableEntityObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`filters`)) {
        BillableEntityObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`media`)) {
        BillableEntityObject[["media"]] <-
          self$extractSimpleType(self$`media`)
      }
      if (!is.null(self$`mediaAlbum`)) {
        BillableEntityObject[["mediaAlbum"]] <-
          self$extractSimpleType(self$`mediaAlbum`)
      }
      if (!is.null(self$`subscription`)) {
        BillableEntityObject[["subscription"]] <-
          self$extractSimpleType(self$`subscription`)
      }
      if (!is.null(self$`disbursementIntrospect`)) {
        BillableEntityObject[["disbursementIntrospect"]] <-
          self$extractSimpleType(self$`disbursementIntrospect`)
      }
      if (!is.null(self$`authorizeNetTransactionKey`)) {
        BillableEntityObject[["authorizeNetTransactionKey"]] <-
          self$`authorizeNetTransactionKey`
      }
      if (!is.null(self$`authorizeNetApiKey`)) {
        BillableEntityObject[["authorizeNetApiKey"]] <-
          self$`authorizeNetApiKey`
      }
      return(BillableEntityObject)
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
    #' Deserialize JSON string into an instance of BillableEntity
    #'
    #' @param input_json the JSON input
    #' @return the instance of BillableEntity
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
      if (!is.null(this_object$`contactInfo`)) {
        `contactinfo_object` <- ContactInfo$new()
        `contactinfo_object`$fromJSON(jsonlite::toJSON(this_object$`contactInfo`, auto_unbox = TRUE, digits = NA))
        self$`contactInfo` <- `contactinfo_object`
      }
      if (!is.null(this_object$`responsible`)) {
        `responsible_object` <- Account$new()
        `responsible_object`$fromJSON(jsonlite::toJSON(this_object$`responsible`, auto_unbox = TRUE, digits = NA))
        self$`responsible` <- `responsible_object`
      }
      if (!is.null(this_object$`retailers`)) {
        self$`retailers` <- ApiClient$new()$deserializeObj(this_object$`retailers`, "array[Retailer]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`managers`)) {
        self$`managers` <- ApiClient$new()$deserializeObj(this_object$`managers`, "array[Account]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`filters`)) {
        self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[Filter]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`media`)) {
        self$`media` <- ApiClient$new()$deserializeObj(this_object$`media`, "array[Asset]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`mediaAlbum`)) {
        `mediaalbum_object` <- Album$new()
        `mediaalbum_object`$fromJSON(jsonlite::toJSON(this_object$`mediaAlbum`, auto_unbox = TRUE, digits = NA))
        self$`mediaAlbum` <- `mediaalbum_object`
      }
      if (!is.null(this_object$`subscription`)) {
        `subscription_object` <- Subscription$new()
        `subscription_object`$fromJSON(jsonlite::toJSON(this_object$`subscription`, auto_unbox = TRUE, digits = NA))
        self$`subscription` <- `subscription_object`
      }
      if (!is.null(this_object$`disbursementIntrospect`)) {
        `disbursementintrospect_object` <- ThirdPartyNetwork$new()
        `disbursementintrospect_object`$fromJSON(jsonlite::toJSON(this_object$`disbursementIntrospect`, auto_unbox = TRUE, digits = NA))
        self$`disbursementIntrospect` <- `disbursementintrospect_object`
      }
      if (!is.null(this_object$`authorizeNetTransactionKey`)) {
        self$`authorizeNetTransactionKey` <- this_object$`authorizeNetTransactionKey`
      }
      if (!is.null(this_object$`authorizeNetApiKey`)) {
        self$`authorizeNetApiKey` <- this_object$`authorizeNetApiKey`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BillableEntity in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BillableEntity
    #'
    #' @param input_json the JSON input
    #' @return the instance of BillableEntity
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`name` <- this_object$`name`
      self$`contactInfo` <- ContactInfo$new()$fromJSON(jsonlite::toJSON(this_object$`contactInfo`, auto_unbox = TRUE, digits = NA))
      self$`responsible` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`responsible`, auto_unbox = TRUE, digits = NA))
      self$`retailers` <- ApiClient$new()$deserializeObj(this_object$`retailers`, "array[Retailer]", loadNamespace("openapi"))
      self$`managers` <- ApiClient$new()$deserializeObj(this_object$`managers`, "array[Account]", loadNamespace("openapi"))
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[Filter]", loadNamespace("openapi"))
      self$`media` <- ApiClient$new()$deserializeObj(this_object$`media`, "array[Asset]", loadNamespace("openapi"))
      self$`mediaAlbum` <- Album$new()$fromJSON(jsonlite::toJSON(this_object$`mediaAlbum`, auto_unbox = TRUE, digits = NA))
      self$`subscription` <- Subscription$new()$fromJSON(jsonlite::toJSON(this_object$`subscription`, auto_unbox = TRUE, digits = NA))
      self$`disbursementIntrospect` <- ThirdPartyNetwork$new()$fromJSON(jsonlite::toJSON(this_object$`disbursementIntrospect`, auto_unbox = TRUE, digits = NA))
      self$`authorizeNetTransactionKey` <- this_object$`authorizeNetTransactionKey`
      self$`authorizeNetApiKey` <- this_object$`authorizeNetApiKey`
      self
    },

    #' @description
    #' Validate JSON input with respect to BillableEntity and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BillableEntity
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
# BillableEntity$unlock()
#
## Below is an example to define the print function
# BillableEntity$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BillableEntity$lock()

