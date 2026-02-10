#' Create a new EntityReference
#'
#' @description
#' EntityReference Class
#'
#' @docType class
#' @title EntityReference
#' @description EntityReference Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field entityType  character [optional]
#' @field masterEntityId  integer [optional]
#' @field slaveUID  character [optional]
#' @field slaveEntityId  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EntityReference <- R6::R6Class(
  "EntityReference",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `entityType` = NULL,
    `masterEntityId` = NULL,
    `slaveUID` = NULL,
    `slaveEntityId` = NULL,

    #' @description
    #' Initialize a new EntityReference class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param entityType entityType
    #' @param masterEntityId masterEntityId
    #' @param slaveUID slaveUID
    #' @param slaveEntityId slaveEntityId
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `entityType` = NULL, `masterEntityId` = NULL, `slaveUID` = NULL, `slaveEntityId` = NULL, ...) {
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
      if (!is.null(`entityType`)) {
        if (!(is.character(`entityType`) && length(`entityType`) == 1)) {
          stop(paste("Error! Invalid data for `entityType`. Must be a string:", `entityType`))
        }
        self$`entityType` <- `entityType`
      }
      if (!is.null(`masterEntityId`)) {
        if (!(is.numeric(`masterEntityId`) && length(`masterEntityId`) == 1)) {
          stop(paste("Error! Invalid data for `masterEntityId`. Must be an integer:", `masterEntityId`))
        }
        self$`masterEntityId` <- `masterEntityId`
      }
      if (!is.null(`slaveUID`)) {
        if (!(is.character(`slaveUID`) && length(`slaveUID`) == 1)) {
          stop(paste("Error! Invalid data for `slaveUID`. Must be a string:", `slaveUID`))
        }
        self$`slaveUID` <- `slaveUID`
      }
      if (!is.null(`slaveEntityId`)) {
        if (!(is.numeric(`slaveEntityId`) && length(`slaveEntityId`) == 1)) {
          stop(paste("Error! Invalid data for `slaveEntityId`. Must be an integer:", `slaveEntityId`))
        }
        self$`slaveEntityId` <- `slaveEntityId`
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
    #' @return EntityReference as a base R list.
    #' @examples
    #' # convert array of EntityReference (x) to a data frame
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
    #' Convert EntityReference to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EntityReferenceObject <- list()
      if (!is.null(self$`id`)) {
        EntityReferenceObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        EntityReferenceObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        EntityReferenceObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`entityType`)) {
        EntityReferenceObject[["entityType"]] <-
          self$`entityType`
      }
      if (!is.null(self$`masterEntityId`)) {
        EntityReferenceObject[["masterEntityId"]] <-
          self$`masterEntityId`
      }
      if (!is.null(self$`slaveUID`)) {
        EntityReferenceObject[["slaveUID"]] <-
          self$`slaveUID`
      }
      if (!is.null(self$`slaveEntityId`)) {
        EntityReferenceObject[["slaveEntityId"]] <-
          self$`slaveEntityId`
      }
      return(EntityReferenceObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of EntityReference
    #'
    #' @param input_json the JSON input
    #' @return the instance of EntityReference
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
      if (!is.null(this_object$`entityType`)) {
        self$`entityType` <- this_object$`entityType`
      }
      if (!is.null(this_object$`masterEntityId`)) {
        self$`masterEntityId` <- this_object$`masterEntityId`
      }
      if (!is.null(this_object$`slaveUID`)) {
        self$`slaveUID` <- this_object$`slaveUID`
      }
      if (!is.null(this_object$`slaveEntityId`)) {
        self$`slaveEntityId` <- this_object$`slaveEntityId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EntityReference in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EntityReference
    #'
    #' @param input_json the JSON input
    #' @return the instance of EntityReference
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`entityType` <- this_object$`entityType`
      self$`masterEntityId` <- this_object$`masterEntityId`
      self$`slaveUID` <- this_object$`slaveUID`
      self$`slaveEntityId` <- this_object$`slaveEntityId`
      self
    },

    #' @description
    #' Validate JSON input with respect to EntityReference and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EntityReference
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
# EntityReference$unlock()
#
## Below is an example to define the print function
# EntityReference$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EntityReference$lock()

