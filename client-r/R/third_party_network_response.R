#' Create a new ThirdPartyNetworkResponse
#'
#' @description
#' ThirdPartyNetworkResponse Class
#'
#' @docType class
#' @title ThirdPartyNetworkResponse
#' @description ThirdPartyNetworkResponse Class
#' @format An \code{R6Class} generator object
#' @field updated  integer [optional]
#' @field created  integer [optional]
#' @field active  character [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field networkUID  character [optional]
#' @field network  character [optional]
#' @field introspectionMethod  character [optional]
#' @field enableIntrospection  character [optional]
#' @field introspectionURL  character [optional]
#' @field introspectionParams  character [optional]
#' @field requiredRootField  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ThirdPartyNetworkResponse <- R6::R6Class(
  "ThirdPartyNetworkResponse",
  public = list(
    `updated` = NULL,
    `created` = NULL,
    `active` = NULL,
    `name` = NULL,
    `description` = NULL,
    `networkUID` = NULL,
    `network` = NULL,
    `introspectionMethod` = NULL,
    `enableIntrospection` = NULL,
    `introspectionURL` = NULL,
    `introspectionParams` = NULL,
    `requiredRootField` = NULL,

    #' @description
    #' Initialize a new ThirdPartyNetworkResponse class.
    #'
    #' @param updated updated
    #' @param created created
    #' @param active active
    #' @param name name
    #' @param description description
    #' @param networkUID networkUID
    #' @param network network
    #' @param introspectionMethod introspectionMethod
    #' @param enableIntrospection enableIntrospection
    #' @param introspectionURL introspectionURL
    #' @param introspectionParams introspectionParams
    #' @param requiredRootField requiredRootField
    #' @param ... Other optional arguments.
    initialize = function(`updated` = NULL, `created` = NULL, `active` = NULL, `name` = NULL, `description` = NULL, `networkUID` = NULL, `network` = NULL, `introspectionMethod` = NULL, `enableIntrospection` = NULL, `introspectionURL` = NULL, `introspectionParams` = NULL, `requiredRootField` = NULL, ...) {
      if (!is.null(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
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
      if (!is.null(`networkUID`)) {
        if (!(is.character(`networkUID`) && length(`networkUID`) == 1)) {
          stop(paste("Error! Invalid data for `networkUID`. Must be a string:", `networkUID`))
        }
        self$`networkUID` <- `networkUID`
      }
      if (!is.null(`network`)) {
        if (!(`network` %in% c("FACEBOOK", "TWITTER", "CLEAR", "USERNAME", "PHONE", "UNKNOWN", "CUSTOM"))) {
          stop(paste("Error! \"", `network`, "\" cannot be assigned to `network`. Must be \"FACEBOOK\", \"TWITTER\", \"CLEAR\", \"USERNAME\", \"PHONE\", \"UNKNOWN\", \"CUSTOM\".", sep = ""))
        }
        if (!(is.character(`network`) && length(`network`) == 1)) {
          stop(paste("Error! Invalid data for `network`. Must be a string:", `network`))
        }
        self$`network` <- `network`
      }
      if (!is.null(`introspectionMethod`)) {
        if (!(`introspectionMethod` %in% c("GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE"))) {
          stop(paste("Error! \"", `introspectionMethod`, "\" cannot be assigned to `introspectionMethod`. Must be \"GET\", \"HEAD\", \"POST\", \"PUT\", \"PATCH\", \"DELETE\", \"OPTIONS\", \"TRACE\".", sep = ""))
        }
        if (!(is.character(`introspectionMethod`) && length(`introspectionMethod`) == 1)) {
          stop(paste("Error! Invalid data for `introspectionMethod`. Must be a string:", `introspectionMethod`))
        }
        self$`introspectionMethod` <- `introspectionMethod`
      }
      if (!is.null(`enableIntrospection`)) {
        if (!(is.logical(`enableIntrospection`) && length(`enableIntrospection`) == 1)) {
          stop(paste("Error! Invalid data for `enableIntrospection`. Must be a boolean:", `enableIntrospection`))
        }
        self$`enableIntrospection` <- `enableIntrospection`
      }
      if (!is.null(`introspectionURL`)) {
        if (!(is.character(`introspectionURL`) && length(`introspectionURL`) == 1)) {
          stop(paste("Error! Invalid data for `introspectionURL`. Must be a string:", `introspectionURL`))
        }
        self$`introspectionURL` <- `introspectionURL`
      }
      if (!is.null(`introspectionParams`)) {
        if (!(is.character(`introspectionParams`) && length(`introspectionParams`) == 1)) {
          stop(paste("Error! Invalid data for `introspectionParams`. Must be a string:", `introspectionParams`))
        }
        self$`introspectionParams` <- `introspectionParams`
      }
      if (!is.null(`requiredRootField`)) {
        if (!(is.character(`requiredRootField`) && length(`requiredRootField`) == 1)) {
          stop(paste("Error! Invalid data for `requiredRootField`. Must be a string:", `requiredRootField`))
        }
        self$`requiredRootField` <- `requiredRootField`
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
    #' @return ThirdPartyNetworkResponse as a base R list.
    #' @examples
    #' # convert array of ThirdPartyNetworkResponse (x) to a data frame
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
    #' Convert ThirdPartyNetworkResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ThirdPartyNetworkResponseObject <- list()
      if (!is.null(self$`updated`)) {
        ThirdPartyNetworkResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`created`)) {
        ThirdPartyNetworkResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`active`)) {
        ThirdPartyNetworkResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`name`)) {
        ThirdPartyNetworkResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        ThirdPartyNetworkResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`networkUID`)) {
        ThirdPartyNetworkResponseObject[["networkUID"]] <-
          self$`networkUID`
      }
      if (!is.null(self$`network`)) {
        ThirdPartyNetworkResponseObject[["network"]] <-
          self$`network`
      }
      if (!is.null(self$`introspectionMethod`)) {
        ThirdPartyNetworkResponseObject[["introspectionMethod"]] <-
          self$`introspectionMethod`
      }
      if (!is.null(self$`enableIntrospection`)) {
        ThirdPartyNetworkResponseObject[["enableIntrospection"]] <-
          self$`enableIntrospection`
      }
      if (!is.null(self$`introspectionURL`)) {
        ThirdPartyNetworkResponseObject[["introspectionURL"]] <-
          self$`introspectionURL`
      }
      if (!is.null(self$`introspectionParams`)) {
        ThirdPartyNetworkResponseObject[["introspectionParams"]] <-
          self$`introspectionParams`
      }
      if (!is.null(self$`requiredRootField`)) {
        ThirdPartyNetworkResponseObject[["requiredRootField"]] <-
          self$`requiredRootField`
      }
      return(ThirdPartyNetworkResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ThirdPartyNetworkResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ThirdPartyNetworkResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`networkUID`)) {
        self$`networkUID` <- this_object$`networkUID`
      }
      if (!is.null(this_object$`network`)) {
        if (!is.null(this_object$`network`) && !(this_object$`network` %in% c("FACEBOOK", "TWITTER", "CLEAR", "USERNAME", "PHONE", "UNKNOWN", "CUSTOM"))) {
          stop(paste("Error! \"", this_object$`network`, "\" cannot be assigned to `network`. Must be \"FACEBOOK\", \"TWITTER\", \"CLEAR\", \"USERNAME\", \"PHONE\", \"UNKNOWN\", \"CUSTOM\".", sep = ""))
        }
        self$`network` <- this_object$`network`
      }
      if (!is.null(this_object$`introspectionMethod`)) {
        if (!is.null(this_object$`introspectionMethod`) && !(this_object$`introspectionMethod` %in% c("GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE"))) {
          stop(paste("Error! \"", this_object$`introspectionMethod`, "\" cannot be assigned to `introspectionMethod`. Must be \"GET\", \"HEAD\", \"POST\", \"PUT\", \"PATCH\", \"DELETE\", \"OPTIONS\", \"TRACE\".", sep = ""))
        }
        self$`introspectionMethod` <- this_object$`introspectionMethod`
      }
      if (!is.null(this_object$`enableIntrospection`)) {
        self$`enableIntrospection` <- this_object$`enableIntrospection`
      }
      if (!is.null(this_object$`introspectionURL`)) {
        self$`introspectionURL` <- this_object$`introspectionURL`
      }
      if (!is.null(this_object$`introspectionParams`)) {
        self$`introspectionParams` <- this_object$`introspectionParams`
      }
      if (!is.null(this_object$`requiredRootField`)) {
        self$`requiredRootField` <- this_object$`requiredRootField`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ThirdPartyNetworkResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ThirdPartyNetworkResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ThirdPartyNetworkResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`updated` <- this_object$`updated`
      self$`created` <- this_object$`created`
      self$`active` <- this_object$`active`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`networkUID` <- this_object$`networkUID`
      if (!is.null(this_object$`network`) && !(this_object$`network` %in% c("FACEBOOK", "TWITTER", "CLEAR", "USERNAME", "PHONE", "UNKNOWN", "CUSTOM"))) {
        stop(paste("Error! \"", this_object$`network`, "\" cannot be assigned to `network`. Must be \"FACEBOOK\", \"TWITTER\", \"CLEAR\", \"USERNAME\", \"PHONE\", \"UNKNOWN\", \"CUSTOM\".", sep = ""))
      }
      self$`network` <- this_object$`network`
      if (!is.null(this_object$`introspectionMethod`) && !(this_object$`introspectionMethod` %in% c("GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE"))) {
        stop(paste("Error! \"", this_object$`introspectionMethod`, "\" cannot be assigned to `introspectionMethod`. Must be \"GET\", \"HEAD\", \"POST\", \"PUT\", \"PATCH\", \"DELETE\", \"OPTIONS\", \"TRACE\".", sep = ""))
      }
      self$`introspectionMethod` <- this_object$`introspectionMethod`
      self$`enableIntrospection` <- this_object$`enableIntrospection`
      self$`introspectionURL` <- this_object$`introspectionURL`
      self$`introspectionParams` <- this_object$`introspectionParams`
      self$`requiredRootField` <- this_object$`requiredRootField`
      self
    },

    #' @description
    #' Validate JSON input with respect to ThirdPartyNetworkResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ThirdPartyNetworkResponse
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
# ThirdPartyNetworkResponse$unlock()
#
## Below is an example to define the print function
# ThirdPartyNetworkResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ThirdPartyNetworkResponse$lock()

