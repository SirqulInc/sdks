#' Create a new ThirdPartyNetwork
#'
#' @description
#' ThirdPartyNetwork Class
#'
#' @docType class
#' @title ThirdPartyNetwork
#' @description ThirdPartyNetwork Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field networkUID  character [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field introspectionMethod  character [optional]
#' @field introspectionURL  character [optional]
#' @field introspectionParams  character [optional]
#' @field requiredRootField  character [optional]
#' @field billableEntity  \link{BillableEntity} [optional]
#' @field supportedNetwork  character [optional]
#' @field enableIntrospection  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ThirdPartyNetwork <- R6::R6Class(
  "ThirdPartyNetwork",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `networkUID` = NULL,
    `name` = NULL,
    `description` = NULL,
    `introspectionMethod` = NULL,
    `introspectionURL` = NULL,
    `introspectionParams` = NULL,
    `requiredRootField` = NULL,
    `billableEntity` = NULL,
    `supportedNetwork` = NULL,
    `enableIntrospection` = NULL,

    #' @description
    #' Initialize a new ThirdPartyNetwork class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param networkUID networkUID
    #' @param name name
    #' @param description description
    #' @param introspectionMethod introspectionMethod
    #' @param introspectionURL introspectionURL
    #' @param introspectionParams introspectionParams
    #' @param requiredRootField requiredRootField
    #' @param billableEntity billableEntity
    #' @param supportedNetwork supportedNetwork
    #' @param enableIntrospection enableIntrospection
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `networkUID` = NULL, `name` = NULL, `description` = NULL, `introspectionMethod` = NULL, `introspectionURL` = NULL, `introspectionParams` = NULL, `requiredRootField` = NULL, `billableEntity` = NULL, `supportedNetwork` = NULL, `enableIntrospection` = NULL, ...) {
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
      if (!is.null(`networkUID`)) {
        if (!(is.character(`networkUID`) && length(`networkUID`) == 1)) {
          stop(paste("Error! Invalid data for `networkUID`. Must be a string:", `networkUID`))
        }
        self$`networkUID` <- `networkUID`
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
      if (!is.null(`introspectionMethod`)) {
        if (!(`introspectionMethod` %in% c("GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE"))) {
          stop(paste("Error! \"", `introspectionMethod`, "\" cannot be assigned to `introspectionMethod`. Must be \"GET\", \"HEAD\", \"POST\", \"PUT\", \"PATCH\", \"DELETE\", \"OPTIONS\", \"TRACE\".", sep = ""))
        }
        if (!(is.character(`introspectionMethod`) && length(`introspectionMethod`) == 1)) {
          stop(paste("Error! Invalid data for `introspectionMethod`. Must be a string:", `introspectionMethod`))
        }
        self$`introspectionMethod` <- `introspectionMethod`
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
      if (!is.null(`billableEntity`)) {
        stopifnot(R6::is.R6(`billableEntity`))
        self$`billableEntity` <- `billableEntity`
      }
      if (!is.null(`supportedNetwork`)) {
        if (!(`supportedNetwork` %in% c("FACEBOOK", "TWITTER", "CLEAR", "USERNAME", "PHONE", "UNKNOWN", "CUSTOM"))) {
          stop(paste("Error! \"", `supportedNetwork`, "\" cannot be assigned to `supportedNetwork`. Must be \"FACEBOOK\", \"TWITTER\", \"CLEAR\", \"USERNAME\", \"PHONE\", \"UNKNOWN\", \"CUSTOM\".", sep = ""))
        }
        if (!(is.character(`supportedNetwork`) && length(`supportedNetwork`) == 1)) {
          stop(paste("Error! Invalid data for `supportedNetwork`. Must be a string:", `supportedNetwork`))
        }
        self$`supportedNetwork` <- `supportedNetwork`
      }
      if (!is.null(`enableIntrospection`)) {
        if (!(is.logical(`enableIntrospection`) && length(`enableIntrospection`) == 1)) {
          stop(paste("Error! Invalid data for `enableIntrospection`. Must be a boolean:", `enableIntrospection`))
        }
        self$`enableIntrospection` <- `enableIntrospection`
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
    #' @return ThirdPartyNetwork as a base R list.
    #' @examples
    #' # convert array of ThirdPartyNetwork (x) to a data frame
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
    #' Convert ThirdPartyNetwork to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ThirdPartyNetworkObject <- list()
      if (!is.null(self$`id`)) {
        ThirdPartyNetworkObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ThirdPartyNetworkObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ThirdPartyNetworkObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`networkUID`)) {
        ThirdPartyNetworkObject[["networkUID"]] <-
          self$`networkUID`
      }
      if (!is.null(self$`name`)) {
        ThirdPartyNetworkObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        ThirdPartyNetworkObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`introspectionMethod`)) {
        ThirdPartyNetworkObject[["introspectionMethod"]] <-
          self$`introspectionMethod`
      }
      if (!is.null(self$`introspectionURL`)) {
        ThirdPartyNetworkObject[["introspectionURL"]] <-
          self$`introspectionURL`
      }
      if (!is.null(self$`introspectionParams`)) {
        ThirdPartyNetworkObject[["introspectionParams"]] <-
          self$`introspectionParams`
      }
      if (!is.null(self$`requiredRootField`)) {
        ThirdPartyNetworkObject[["requiredRootField"]] <-
          self$`requiredRootField`
      }
      if (!is.null(self$`billableEntity`)) {
        ThirdPartyNetworkObject[["billableEntity"]] <-
          self$extractSimpleType(self$`billableEntity`)
      }
      if (!is.null(self$`supportedNetwork`)) {
        ThirdPartyNetworkObject[["supportedNetwork"]] <-
          self$`supportedNetwork`
      }
      if (!is.null(self$`enableIntrospection`)) {
        ThirdPartyNetworkObject[["enableIntrospection"]] <-
          self$`enableIntrospection`
      }
      return(ThirdPartyNetworkObject)
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
    #' Deserialize JSON string into an instance of ThirdPartyNetwork
    #'
    #' @param input_json the JSON input
    #' @return the instance of ThirdPartyNetwork
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
      if (!is.null(this_object$`networkUID`)) {
        self$`networkUID` <- this_object$`networkUID`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`introspectionMethod`)) {
        if (!is.null(this_object$`introspectionMethod`) && !(this_object$`introspectionMethod` %in% c("GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE"))) {
          stop(paste("Error! \"", this_object$`introspectionMethod`, "\" cannot be assigned to `introspectionMethod`. Must be \"GET\", \"HEAD\", \"POST\", \"PUT\", \"PATCH\", \"DELETE\", \"OPTIONS\", \"TRACE\".", sep = ""))
        }
        self$`introspectionMethod` <- this_object$`introspectionMethod`
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
      if (!is.null(this_object$`billableEntity`)) {
        `billableentity_object` <- BillableEntity$new()
        `billableentity_object`$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
        self$`billableEntity` <- `billableentity_object`
      }
      if (!is.null(this_object$`supportedNetwork`)) {
        if (!is.null(this_object$`supportedNetwork`) && !(this_object$`supportedNetwork` %in% c("FACEBOOK", "TWITTER", "CLEAR", "USERNAME", "PHONE", "UNKNOWN", "CUSTOM"))) {
          stop(paste("Error! \"", this_object$`supportedNetwork`, "\" cannot be assigned to `supportedNetwork`. Must be \"FACEBOOK\", \"TWITTER\", \"CLEAR\", \"USERNAME\", \"PHONE\", \"UNKNOWN\", \"CUSTOM\".", sep = ""))
        }
        self$`supportedNetwork` <- this_object$`supportedNetwork`
      }
      if (!is.null(this_object$`enableIntrospection`)) {
        self$`enableIntrospection` <- this_object$`enableIntrospection`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ThirdPartyNetwork in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ThirdPartyNetwork
    #'
    #' @param input_json the JSON input
    #' @return the instance of ThirdPartyNetwork
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`networkUID` <- this_object$`networkUID`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`introspectionMethod`) && !(this_object$`introspectionMethod` %in% c("GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE"))) {
        stop(paste("Error! \"", this_object$`introspectionMethod`, "\" cannot be assigned to `introspectionMethod`. Must be \"GET\", \"HEAD\", \"POST\", \"PUT\", \"PATCH\", \"DELETE\", \"OPTIONS\", \"TRACE\".", sep = ""))
      }
      self$`introspectionMethod` <- this_object$`introspectionMethod`
      self$`introspectionURL` <- this_object$`introspectionURL`
      self$`introspectionParams` <- this_object$`introspectionParams`
      self$`requiredRootField` <- this_object$`requiredRootField`
      self$`billableEntity` <- BillableEntity$new()$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`supportedNetwork`) && !(this_object$`supportedNetwork` %in% c("FACEBOOK", "TWITTER", "CLEAR", "USERNAME", "PHONE", "UNKNOWN", "CUSTOM"))) {
        stop(paste("Error! \"", this_object$`supportedNetwork`, "\" cannot be assigned to `supportedNetwork`. Must be \"FACEBOOK\", \"TWITTER\", \"CLEAR\", \"USERNAME\", \"PHONE\", \"UNKNOWN\", \"CUSTOM\".", sep = ""))
      }
      self$`supportedNetwork` <- this_object$`supportedNetwork`
      self$`enableIntrospection` <- this_object$`enableIntrospection`
      self
    },

    #' @description
    #' Validate JSON input with respect to ThirdPartyNetwork and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ThirdPartyNetwork
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
# ThirdPartyNetwork$unlock()
#
## Below is an example to define the print function
# ThirdPartyNetwork$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ThirdPartyNetwork$lock()

