#' Create a new CellCarrier
#'
#' @description
#' CellCarrier Class
#'
#' @docType class
#' @title CellCarrier
#' @description CellCarrier Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field uid  character [optional]
#' @field display  character [optional]
#' @field emailFormat  character [optional]
#' @field apiUrl  character [optional]
#' @field authUrl  character [optional]
#' @field shortCode  character [optional]
#' @field clientId  character [optional]
#' @field clientSecret  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CellCarrier <- R6::R6Class(
  "CellCarrier",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `uid` = NULL,
    `display` = NULL,
    `emailFormat` = NULL,
    `apiUrl` = NULL,
    `authUrl` = NULL,
    `shortCode` = NULL,
    `clientId` = NULL,
    `clientSecret` = NULL,

    #' @description
    #' Initialize a new CellCarrier class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param uid uid
    #' @param display display
    #' @param emailFormat emailFormat
    #' @param apiUrl apiUrl
    #' @param authUrl authUrl
    #' @param shortCode shortCode
    #' @param clientId clientId
    #' @param clientSecret clientSecret
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `uid` = NULL, `display` = NULL, `emailFormat` = NULL, `apiUrl` = NULL, `authUrl` = NULL, `shortCode` = NULL, `clientId` = NULL, `clientSecret` = NULL, ...) {
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
      if (!is.null(`uid`)) {
        if (!(is.character(`uid`) && length(`uid`) == 1)) {
          stop(paste("Error! Invalid data for `uid`. Must be a string:", `uid`))
        }
        self$`uid` <- `uid`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`emailFormat`)) {
        if (!(is.character(`emailFormat`) && length(`emailFormat`) == 1)) {
          stop(paste("Error! Invalid data for `emailFormat`. Must be a string:", `emailFormat`))
        }
        self$`emailFormat` <- `emailFormat`
      }
      if (!is.null(`apiUrl`)) {
        if (!(is.character(`apiUrl`) && length(`apiUrl`) == 1)) {
          stop(paste("Error! Invalid data for `apiUrl`. Must be a string:", `apiUrl`))
        }
        self$`apiUrl` <- `apiUrl`
      }
      if (!is.null(`authUrl`)) {
        if (!(is.character(`authUrl`) && length(`authUrl`) == 1)) {
          stop(paste("Error! Invalid data for `authUrl`. Must be a string:", `authUrl`))
        }
        self$`authUrl` <- `authUrl`
      }
      if (!is.null(`shortCode`)) {
        if (!(is.character(`shortCode`) && length(`shortCode`) == 1)) {
          stop(paste("Error! Invalid data for `shortCode`. Must be a string:", `shortCode`))
        }
        self$`shortCode` <- `shortCode`
      }
      if (!is.null(`clientId`)) {
        if (!(is.character(`clientId`) && length(`clientId`) == 1)) {
          stop(paste("Error! Invalid data for `clientId`. Must be a string:", `clientId`))
        }
        self$`clientId` <- `clientId`
      }
      if (!is.null(`clientSecret`)) {
        if (!(is.character(`clientSecret`) && length(`clientSecret`) == 1)) {
          stop(paste("Error! Invalid data for `clientSecret`. Must be a string:", `clientSecret`))
        }
        self$`clientSecret` <- `clientSecret`
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
    #' @return CellCarrier as a base R list.
    #' @examples
    #' # convert array of CellCarrier (x) to a data frame
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
    #' Convert CellCarrier to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CellCarrierObject <- list()
      if (!is.null(self$`id`)) {
        CellCarrierObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        CellCarrierObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        CellCarrierObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`uid`)) {
        CellCarrierObject[["uid"]] <-
          self$`uid`
      }
      if (!is.null(self$`display`)) {
        CellCarrierObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`emailFormat`)) {
        CellCarrierObject[["emailFormat"]] <-
          self$`emailFormat`
      }
      if (!is.null(self$`apiUrl`)) {
        CellCarrierObject[["apiUrl"]] <-
          self$`apiUrl`
      }
      if (!is.null(self$`authUrl`)) {
        CellCarrierObject[["authUrl"]] <-
          self$`authUrl`
      }
      if (!is.null(self$`shortCode`)) {
        CellCarrierObject[["shortCode"]] <-
          self$`shortCode`
      }
      if (!is.null(self$`clientId`)) {
        CellCarrierObject[["clientId"]] <-
          self$`clientId`
      }
      if (!is.null(self$`clientSecret`)) {
        CellCarrierObject[["clientSecret"]] <-
          self$`clientSecret`
      }
      return(CellCarrierObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CellCarrier
    #'
    #' @param input_json the JSON input
    #' @return the instance of CellCarrier
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
      if (!is.null(this_object$`uid`)) {
        self$`uid` <- this_object$`uid`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`emailFormat`)) {
        self$`emailFormat` <- this_object$`emailFormat`
      }
      if (!is.null(this_object$`apiUrl`)) {
        self$`apiUrl` <- this_object$`apiUrl`
      }
      if (!is.null(this_object$`authUrl`)) {
        self$`authUrl` <- this_object$`authUrl`
      }
      if (!is.null(this_object$`shortCode`)) {
        self$`shortCode` <- this_object$`shortCode`
      }
      if (!is.null(this_object$`clientId`)) {
        self$`clientId` <- this_object$`clientId`
      }
      if (!is.null(this_object$`clientSecret`)) {
        self$`clientSecret` <- this_object$`clientSecret`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CellCarrier in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CellCarrier
    #'
    #' @param input_json the JSON input
    #' @return the instance of CellCarrier
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`uid` <- this_object$`uid`
      self$`display` <- this_object$`display`
      self$`emailFormat` <- this_object$`emailFormat`
      self$`apiUrl` <- this_object$`apiUrl`
      self$`authUrl` <- this_object$`authUrl`
      self$`shortCode` <- this_object$`shortCode`
      self$`clientId` <- this_object$`clientId`
      self$`clientSecret` <- this_object$`clientSecret`
      self
    },

    #' @description
    #' Validate JSON input with respect to CellCarrier and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CellCarrier
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
# CellCarrier$unlock()
#
## Below is an example to define the print function
# CellCarrier$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CellCarrier$lock()

