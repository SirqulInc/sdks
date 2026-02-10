#' Create a new FlagResponse
#'
#' @description
#' FlagResponse Class
#'
#' @docType class
#' @title FlagResponse
#' @description FlagResponse Class
#' @format An \code{R6Class} generator object
#' @field flagId  integer [optional]
#' @field flagableId  integer [optional]
#' @field flagableType  character [optional]
#' @field flagDescription  character [optional]
#' @field createdDate  integer [optional]
#' @field updatedDate  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FlagResponse <- R6::R6Class(
  "FlagResponse",
  public = list(
    `flagId` = NULL,
    `flagableId` = NULL,
    `flagableType` = NULL,
    `flagDescription` = NULL,
    `createdDate` = NULL,
    `updatedDate` = NULL,

    #' @description
    #' Initialize a new FlagResponse class.
    #'
    #' @param flagId flagId
    #' @param flagableId flagableId
    #' @param flagableType flagableType
    #' @param flagDescription flagDescription
    #' @param createdDate createdDate
    #' @param updatedDate updatedDate
    #' @param ... Other optional arguments.
    initialize = function(`flagId` = NULL, `flagableId` = NULL, `flagableType` = NULL, `flagDescription` = NULL, `createdDate` = NULL, `updatedDate` = NULL, ...) {
      if (!is.null(`flagId`)) {
        if (!(is.numeric(`flagId`) && length(`flagId`) == 1)) {
          stop(paste("Error! Invalid data for `flagId`. Must be an integer:", `flagId`))
        }
        self$`flagId` <- `flagId`
      }
      if (!is.null(`flagableId`)) {
        if (!(is.numeric(`flagableId`) && length(`flagableId`) == 1)) {
          stop(paste("Error! Invalid data for `flagableId`. Must be an integer:", `flagableId`))
        }
        self$`flagableId` <- `flagableId`
      }
      if (!is.null(`flagableType`)) {
        if (!(is.character(`flagableType`) && length(`flagableType`) == 1)) {
          stop(paste("Error! Invalid data for `flagableType`. Must be a string:", `flagableType`))
        }
        self$`flagableType` <- `flagableType`
      }
      if (!is.null(`flagDescription`)) {
        if (!(is.character(`flagDescription`) && length(`flagDescription`) == 1)) {
          stop(paste("Error! Invalid data for `flagDescription`. Must be a string:", `flagDescription`))
        }
        self$`flagDescription` <- `flagDescription`
      }
      if (!is.null(`createdDate`)) {
        if (!(is.numeric(`createdDate`) && length(`createdDate`) == 1)) {
          stop(paste("Error! Invalid data for `createdDate`. Must be an integer:", `createdDate`))
        }
        self$`createdDate` <- `createdDate`
      }
      if (!is.null(`updatedDate`)) {
        if (!(is.numeric(`updatedDate`) && length(`updatedDate`) == 1)) {
          stop(paste("Error! Invalid data for `updatedDate`. Must be an integer:", `updatedDate`))
        }
        self$`updatedDate` <- `updatedDate`
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
    #' @return FlagResponse as a base R list.
    #' @examples
    #' # convert array of FlagResponse (x) to a data frame
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
    #' Convert FlagResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FlagResponseObject <- list()
      if (!is.null(self$`flagId`)) {
        FlagResponseObject[["flagId"]] <-
          self$`flagId`
      }
      if (!is.null(self$`flagableId`)) {
        FlagResponseObject[["flagableId"]] <-
          self$`flagableId`
      }
      if (!is.null(self$`flagableType`)) {
        FlagResponseObject[["flagableType"]] <-
          self$`flagableType`
      }
      if (!is.null(self$`flagDescription`)) {
        FlagResponseObject[["flagDescription"]] <-
          self$`flagDescription`
      }
      if (!is.null(self$`createdDate`)) {
        FlagResponseObject[["createdDate"]] <-
          self$`createdDate`
      }
      if (!is.null(self$`updatedDate`)) {
        FlagResponseObject[["updatedDate"]] <-
          self$`updatedDate`
      }
      return(FlagResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FlagResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FlagResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`flagId`)) {
        self$`flagId` <- this_object$`flagId`
      }
      if (!is.null(this_object$`flagableId`)) {
        self$`flagableId` <- this_object$`flagableId`
      }
      if (!is.null(this_object$`flagableType`)) {
        self$`flagableType` <- this_object$`flagableType`
      }
      if (!is.null(this_object$`flagDescription`)) {
        self$`flagDescription` <- this_object$`flagDescription`
      }
      if (!is.null(this_object$`createdDate`)) {
        self$`createdDate` <- this_object$`createdDate`
      }
      if (!is.null(this_object$`updatedDate`)) {
        self$`updatedDate` <- this_object$`updatedDate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FlagResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FlagResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FlagResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`flagId` <- this_object$`flagId`
      self$`flagableId` <- this_object$`flagableId`
      self$`flagableType` <- this_object$`flagableType`
      self$`flagDescription` <- this_object$`flagDescription`
      self$`createdDate` <- this_object$`createdDate`
      self$`updatedDate` <- this_object$`updatedDate`
      self
    },

    #' @description
    #' Validate JSON input with respect to FlagResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FlagResponse
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
# FlagResponse$unlock()
#
## Below is an example to define the print function
# FlagResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FlagResponse$lock()

