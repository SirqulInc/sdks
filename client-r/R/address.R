#' Create a new Address
#'
#' @description
#' Address Class
#'
#' @docType class
#' @title Address
#' @description Address Class
#' @format An \code{R6Class} generator object
#' @field streetAddress  character [optional]
#' @field streetAddress2  character [optional]
#' @field city  character [optional]
#' @field stateCode  character [optional]
#' @field state  character [optional]
#' @field postalCode  character [optional]
#' @field countryCode  character [optional]
#' @field country  character [optional]
#' @field display  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Address <- R6::R6Class(
  "Address",
  public = list(
    `streetAddress` = NULL,
    `streetAddress2` = NULL,
    `city` = NULL,
    `stateCode` = NULL,
    `state` = NULL,
    `postalCode` = NULL,
    `countryCode` = NULL,
    `country` = NULL,
    `display` = NULL,

    #' @description
    #' Initialize a new Address class.
    #'
    #' @param streetAddress streetAddress
    #' @param streetAddress2 streetAddress2
    #' @param city city
    #' @param stateCode stateCode
    #' @param state state
    #' @param postalCode postalCode
    #' @param countryCode countryCode
    #' @param country country
    #' @param display display
    #' @param ... Other optional arguments.
    initialize = function(`streetAddress` = NULL, `streetAddress2` = NULL, `city` = NULL, `stateCode` = NULL, `state` = NULL, `postalCode` = NULL, `countryCode` = NULL, `country` = NULL, `display` = NULL, ...) {
      if (!is.null(`streetAddress`)) {
        if (!(is.character(`streetAddress`) && length(`streetAddress`) == 1)) {
          stop(paste("Error! Invalid data for `streetAddress`. Must be a string:", `streetAddress`))
        }
        self$`streetAddress` <- `streetAddress`
      }
      if (!is.null(`streetAddress2`)) {
        if (!(is.character(`streetAddress2`) && length(`streetAddress2`) == 1)) {
          stop(paste("Error! Invalid data for `streetAddress2`. Must be a string:", `streetAddress2`))
        }
        self$`streetAddress2` <- `streetAddress2`
      }
      if (!is.null(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!is.null(`stateCode`)) {
        if (!(is.character(`stateCode`) && length(`stateCode`) == 1)) {
          stop(paste("Error! Invalid data for `stateCode`. Must be a string:", `stateCode`))
        }
        self$`stateCode` <- `stateCode`
      }
      if (!is.null(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!is.null(`postalCode`)) {
        if (!(is.character(`postalCode`) && length(`postalCode`) == 1)) {
          stop(paste("Error! Invalid data for `postalCode`. Must be a string:", `postalCode`))
        }
        self$`postalCode` <- `postalCode`
      }
      if (!is.null(`countryCode`)) {
        if (!(is.character(`countryCode`) && length(`countryCode`) == 1)) {
          stop(paste("Error! Invalid data for `countryCode`. Must be a string:", `countryCode`))
        }
        self$`countryCode` <- `countryCode`
      }
      if (!is.null(`country`)) {
        if (!(is.character(`country`) && length(`country`) == 1)) {
          stop(paste("Error! Invalid data for `country`. Must be a string:", `country`))
        }
        self$`country` <- `country`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
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
    #' @return Address as a base R list.
    #' @examples
    #' # convert array of Address (x) to a data frame
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
    #' Convert Address to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AddressObject <- list()
      if (!is.null(self$`streetAddress`)) {
        AddressObject[["streetAddress"]] <-
          self$`streetAddress`
      }
      if (!is.null(self$`streetAddress2`)) {
        AddressObject[["streetAddress2"]] <-
          self$`streetAddress2`
      }
      if (!is.null(self$`city`)) {
        AddressObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`stateCode`)) {
        AddressObject[["stateCode"]] <-
          self$`stateCode`
      }
      if (!is.null(self$`state`)) {
        AddressObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`postalCode`)) {
        AddressObject[["postalCode"]] <-
          self$`postalCode`
      }
      if (!is.null(self$`countryCode`)) {
        AddressObject[["countryCode"]] <-
          self$`countryCode`
      }
      if (!is.null(self$`country`)) {
        AddressObject[["country"]] <-
          self$`country`
      }
      if (!is.null(self$`display`)) {
        AddressObject[["display"]] <-
          self$`display`
      }
      return(AddressObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Address
    #'
    #' @param input_json the JSON input
    #' @return the instance of Address
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`streetAddress`)) {
        self$`streetAddress` <- this_object$`streetAddress`
      }
      if (!is.null(this_object$`streetAddress2`)) {
        self$`streetAddress2` <- this_object$`streetAddress2`
      }
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`stateCode`)) {
        self$`stateCode` <- this_object$`stateCode`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`postalCode`)) {
        self$`postalCode` <- this_object$`postalCode`
      }
      if (!is.null(this_object$`countryCode`)) {
        self$`countryCode` <- this_object$`countryCode`
      }
      if (!is.null(this_object$`country`)) {
        self$`country` <- this_object$`country`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Address in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Address
    #'
    #' @param input_json the JSON input
    #' @return the instance of Address
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`streetAddress` <- this_object$`streetAddress`
      self$`streetAddress2` <- this_object$`streetAddress2`
      self$`city` <- this_object$`city`
      self$`stateCode` <- this_object$`stateCode`
      self$`state` <- this_object$`state`
      self$`postalCode` <- this_object$`postalCode`
      self$`countryCode` <- this_object$`countryCode`
      self$`country` <- this_object$`country`
      self$`display` <- this_object$`display`
      self
    },

    #' @description
    #' Validate JSON input with respect to Address and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Address
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
# Address$unlock()
#
## Below is an example to define the print function
# Address$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Address$lock()

