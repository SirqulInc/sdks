#' Create a new SubscriptionOption
#'
#' @description
#' SubscriptionOption Class
#'
#' @docType class
#' @title SubscriptionOption
#' @description SubscriptionOption Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field name  character [optional]
#' @field price  numeric [optional]
#' @field quantity  integer [optional]
#' @field threshold  integer [optional]
#' @field visible  character [optional]
#' @field optionType  character [optional]
#' @field offerType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SubscriptionOption <- R6::R6Class(
  "SubscriptionOption",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `name` = NULL,
    `price` = NULL,
    `quantity` = NULL,
    `threshold` = NULL,
    `visible` = NULL,
    `optionType` = NULL,
    `offerType` = NULL,

    #' @description
    #' Initialize a new SubscriptionOption class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param name name
    #' @param price price
    #' @param quantity quantity
    #' @param threshold threshold
    #' @param visible visible
    #' @param optionType optionType
    #' @param offerType offerType
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `name` = NULL, `price` = NULL, `quantity` = NULL, `threshold` = NULL, `visible` = NULL, `optionType` = NULL, `offerType` = NULL, ...) {
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
      if (!is.null(`price`)) {
        if (!(is.numeric(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be a number:", `price`))
        }
        self$`price` <- `price`
      }
      if (!is.null(`quantity`)) {
        if (!(is.numeric(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", `quantity`))
        }
        self$`quantity` <- `quantity`
      }
      if (!is.null(`threshold`)) {
        if (!(is.numeric(`threshold`) && length(`threshold`) == 1)) {
          stop(paste("Error! Invalid data for `threshold`. Must be an integer:", `threshold`))
        }
        self$`threshold` <- `threshold`
      }
      if (!is.null(`visible`)) {
        if (!(is.logical(`visible`) && length(`visible`) == 1)) {
          stop(paste("Error! Invalid data for `visible`. Must be a boolean:", `visible`))
        }
        self$`visible` <- `visible`
      }
      if (!is.null(`optionType`)) {
        if (!(`optionType` %in% c("MISSION", "LOCATION", "OFFER", "NOTIFICATION", "REQUEST", "STORAGE_S3", "STORAGE_DB"))) {
          stop(paste("Error! \"", `optionType`, "\" cannot be assigned to `optionType`. Must be \"MISSION\", \"LOCATION\", \"OFFER\", \"NOTIFICATION\", \"REQUEST\", \"STORAGE_S3\", \"STORAGE_DB\".", sep = ""))
        }
        if (!(is.character(`optionType`) && length(`optionType`) == 1)) {
          stop(paste("Error! Invalid data for `optionType`. Must be a string:", `optionType`))
        }
        self$`optionType` <- `optionType`
      }
      if (!is.null(`offerType`)) {
        if (!(`offerType` %in% c("VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE"))) {
          stop(paste("Error! \"", `offerType`, "\" cannot be assigned to `offerType`. Must be \"VOUCHER\", \"COUPON\", \"PRODUCT\", \"MEDIA\", \"EVENT\", \"DEVICE\".", sep = ""))
        }
        if (!(is.character(`offerType`) && length(`offerType`) == 1)) {
          stop(paste("Error! Invalid data for `offerType`. Must be a string:", `offerType`))
        }
        self$`offerType` <- `offerType`
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
    #' @return SubscriptionOption as a base R list.
    #' @examples
    #' # convert array of SubscriptionOption (x) to a data frame
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
    #' Convert SubscriptionOption to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SubscriptionOptionObject <- list()
      if (!is.null(self$`id`)) {
        SubscriptionOptionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        SubscriptionOptionObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        SubscriptionOptionObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`name`)) {
        SubscriptionOptionObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`price`)) {
        SubscriptionOptionObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`quantity`)) {
        SubscriptionOptionObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`threshold`)) {
        SubscriptionOptionObject[["threshold"]] <-
          self$`threshold`
      }
      if (!is.null(self$`visible`)) {
        SubscriptionOptionObject[["visible"]] <-
          self$`visible`
      }
      if (!is.null(self$`optionType`)) {
        SubscriptionOptionObject[["optionType"]] <-
          self$`optionType`
      }
      if (!is.null(self$`offerType`)) {
        SubscriptionOptionObject[["offerType"]] <-
          self$`offerType`
      }
      return(SubscriptionOptionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SubscriptionOption
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionOption
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
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      if (!is.null(this_object$`threshold`)) {
        self$`threshold` <- this_object$`threshold`
      }
      if (!is.null(this_object$`visible`)) {
        self$`visible` <- this_object$`visible`
      }
      if (!is.null(this_object$`optionType`)) {
        if (!is.null(this_object$`optionType`) && !(this_object$`optionType` %in% c("MISSION", "LOCATION", "OFFER", "NOTIFICATION", "REQUEST", "STORAGE_S3", "STORAGE_DB"))) {
          stop(paste("Error! \"", this_object$`optionType`, "\" cannot be assigned to `optionType`. Must be \"MISSION\", \"LOCATION\", \"OFFER\", \"NOTIFICATION\", \"REQUEST\", \"STORAGE_S3\", \"STORAGE_DB\".", sep = ""))
        }
        self$`optionType` <- this_object$`optionType`
      }
      if (!is.null(this_object$`offerType`)) {
        if (!is.null(this_object$`offerType`) && !(this_object$`offerType` %in% c("VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE"))) {
          stop(paste("Error! \"", this_object$`offerType`, "\" cannot be assigned to `offerType`. Must be \"VOUCHER\", \"COUPON\", \"PRODUCT\", \"MEDIA\", \"EVENT\", \"DEVICE\".", sep = ""))
        }
        self$`offerType` <- this_object$`offerType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SubscriptionOption in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SubscriptionOption
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionOption
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`name` <- this_object$`name`
      self$`price` <- this_object$`price`
      self$`quantity` <- this_object$`quantity`
      self$`threshold` <- this_object$`threshold`
      self$`visible` <- this_object$`visible`
      if (!is.null(this_object$`optionType`) && !(this_object$`optionType` %in% c("MISSION", "LOCATION", "OFFER", "NOTIFICATION", "REQUEST", "STORAGE_S3", "STORAGE_DB"))) {
        stop(paste("Error! \"", this_object$`optionType`, "\" cannot be assigned to `optionType`. Must be \"MISSION\", \"LOCATION\", \"OFFER\", \"NOTIFICATION\", \"REQUEST\", \"STORAGE_S3\", \"STORAGE_DB\".", sep = ""))
      }
      self$`optionType` <- this_object$`optionType`
      if (!is.null(this_object$`offerType`) && !(this_object$`offerType` %in% c("VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE"))) {
        stop(paste("Error! \"", this_object$`offerType`, "\" cannot be assigned to `offerType`. Must be \"VOUCHER\", \"COUPON\", \"PRODUCT\", \"MEDIA\", \"EVENT\", \"DEVICE\".", sep = ""))
      }
      self$`offerType` <- this_object$`offerType`
      self
    },

    #' @description
    #' Validate JSON input with respect to SubscriptionOption and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SubscriptionOption
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
# SubscriptionOption$unlock()
#
## Below is an example to define the print function
# SubscriptionOption$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SubscriptionOption$lock()

