#' Create a new RuleResponse
#'
#' @description
#' RuleResponse Class
#'
#' @docType class
#' @title RuleResponse
#' @description RuleResponse Class
#' @format An \code{R6Class} generator object
#' @field ruleId  integer [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field ruleTypeId  integer [optional]
#' @field ruleTypeTitle  character [optional]
#' @field ruleTypeDescription  character [optional]
#' @field ruleValueType  character [optional]
#' @field ruleValue  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RuleResponse <- R6::R6Class(
  "RuleResponse",
  public = list(
    `ruleId` = NULL,
    `title` = NULL,
    `description` = NULL,
    `ruleTypeId` = NULL,
    `ruleTypeTitle` = NULL,
    `ruleTypeDescription` = NULL,
    `ruleValueType` = NULL,
    `ruleValue` = NULL,

    #' @description
    #' Initialize a new RuleResponse class.
    #'
    #' @param ruleId ruleId
    #' @param title title
    #' @param description description
    #' @param ruleTypeId ruleTypeId
    #' @param ruleTypeTitle ruleTypeTitle
    #' @param ruleTypeDescription ruleTypeDescription
    #' @param ruleValueType ruleValueType
    #' @param ruleValue ruleValue
    #' @param ... Other optional arguments.
    initialize = function(`ruleId` = NULL, `title` = NULL, `description` = NULL, `ruleTypeId` = NULL, `ruleTypeTitle` = NULL, `ruleTypeDescription` = NULL, `ruleValueType` = NULL, `ruleValue` = NULL, ...) {
      if (!is.null(`ruleId`)) {
        if (!(is.numeric(`ruleId`) && length(`ruleId`) == 1)) {
          stop(paste("Error! Invalid data for `ruleId`. Must be an integer:", `ruleId`))
        }
        self$`ruleId` <- `ruleId`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`ruleTypeId`)) {
        if (!(is.numeric(`ruleTypeId`) && length(`ruleTypeId`) == 1)) {
          stop(paste("Error! Invalid data for `ruleTypeId`. Must be an integer:", `ruleTypeId`))
        }
        self$`ruleTypeId` <- `ruleTypeId`
      }
      if (!is.null(`ruleTypeTitle`)) {
        if (!(is.character(`ruleTypeTitle`) && length(`ruleTypeTitle`) == 1)) {
          stop(paste("Error! Invalid data for `ruleTypeTitle`. Must be a string:", `ruleTypeTitle`))
        }
        self$`ruleTypeTitle` <- `ruleTypeTitle`
      }
      if (!is.null(`ruleTypeDescription`)) {
        if (!(is.character(`ruleTypeDescription`) && length(`ruleTypeDescription`) == 1)) {
          stop(paste("Error! Invalid data for `ruleTypeDescription`. Must be a string:", `ruleTypeDescription`))
        }
        self$`ruleTypeDescription` <- `ruleTypeDescription`
      }
      if (!is.null(`ruleValueType`)) {
        if (!(is.character(`ruleValueType`) && length(`ruleValueType`) == 1)) {
          stop(paste("Error! Invalid data for `ruleValueType`. Must be a string:", `ruleValueType`))
        }
        self$`ruleValueType` <- `ruleValueType`
      }
      if (!is.null(`ruleValue`)) {
        if (!(is.character(`ruleValue`) && length(`ruleValue`) == 1)) {
          stop(paste("Error! Invalid data for `ruleValue`. Must be a string:", `ruleValue`))
        }
        self$`ruleValue` <- `ruleValue`
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
    #' @return RuleResponse as a base R list.
    #' @examples
    #' # convert array of RuleResponse (x) to a data frame
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
    #' Convert RuleResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RuleResponseObject <- list()
      if (!is.null(self$`ruleId`)) {
        RuleResponseObject[["ruleId"]] <-
          self$`ruleId`
      }
      if (!is.null(self$`title`)) {
        RuleResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        RuleResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`ruleTypeId`)) {
        RuleResponseObject[["ruleTypeId"]] <-
          self$`ruleTypeId`
      }
      if (!is.null(self$`ruleTypeTitle`)) {
        RuleResponseObject[["ruleTypeTitle"]] <-
          self$`ruleTypeTitle`
      }
      if (!is.null(self$`ruleTypeDescription`)) {
        RuleResponseObject[["ruleTypeDescription"]] <-
          self$`ruleTypeDescription`
      }
      if (!is.null(self$`ruleValueType`)) {
        RuleResponseObject[["ruleValueType"]] <-
          self$`ruleValueType`
      }
      if (!is.null(self$`ruleValue`)) {
        RuleResponseObject[["ruleValue"]] <-
          self$`ruleValue`
      }
      return(RuleResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RuleResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RuleResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ruleId`)) {
        self$`ruleId` <- this_object$`ruleId`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`ruleTypeId`)) {
        self$`ruleTypeId` <- this_object$`ruleTypeId`
      }
      if (!is.null(this_object$`ruleTypeTitle`)) {
        self$`ruleTypeTitle` <- this_object$`ruleTypeTitle`
      }
      if (!is.null(this_object$`ruleTypeDescription`)) {
        self$`ruleTypeDescription` <- this_object$`ruleTypeDescription`
      }
      if (!is.null(this_object$`ruleValueType`)) {
        self$`ruleValueType` <- this_object$`ruleValueType`
      }
      if (!is.null(this_object$`ruleValue`)) {
        self$`ruleValue` <- this_object$`ruleValue`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RuleResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RuleResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RuleResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ruleId` <- this_object$`ruleId`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`ruleTypeId` <- this_object$`ruleTypeId`
      self$`ruleTypeTitle` <- this_object$`ruleTypeTitle`
      self$`ruleTypeDescription` <- this_object$`ruleTypeDescription`
      self$`ruleValueType` <- this_object$`ruleValueType`
      self$`ruleValue` <- this_object$`ruleValue`
      self
    },

    #' @description
    #' Validate JSON input with respect to RuleResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RuleResponse
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
# RuleResponse$unlock()
#
## Below is an example to define the print function
# RuleResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RuleResponse$lock()

