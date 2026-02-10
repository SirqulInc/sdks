#' Create a new ScoreResponse
#'
#' @description
#' ScoreResponse Class
#'
#' @docType class
#' @title ScoreResponse
#' @description ScoreResponse Class
#' @format An \code{R6Class} generator object
#' @field action  character [optional]
#' @field scoreId  integer [optional]
#' @field status  character [optional]
#' @field points  integer [optional]
#' @field timeTaken  integer [optional]
#' @field ticketsEarned  integer [optional]
#' @field gameType  character [optional]
#' @field accountId  integer [optional]
#' @field accountDisplay  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ScoreResponse <- R6::R6Class(
  "ScoreResponse",
  public = list(
    `action` = NULL,
    `scoreId` = NULL,
    `status` = NULL,
    `points` = NULL,
    `timeTaken` = NULL,
    `ticketsEarned` = NULL,
    `gameType` = NULL,
    `accountId` = NULL,
    `accountDisplay` = NULL,

    #' @description
    #' Initialize a new ScoreResponse class.
    #'
    #' @param action action
    #' @param scoreId scoreId
    #' @param status status
    #' @param points points
    #' @param timeTaken timeTaken
    #' @param ticketsEarned ticketsEarned
    #' @param gameType gameType
    #' @param accountId accountId
    #' @param accountDisplay accountDisplay
    #' @param ... Other optional arguments.
    initialize = function(`action` = NULL, `scoreId` = NULL, `status` = NULL, `points` = NULL, `timeTaken` = NULL, `ticketsEarned` = NULL, `gameType` = NULL, `accountId` = NULL, `accountDisplay` = NULL, ...) {
      if (!is.null(`action`)) {
        if (!(`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", `action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
      if (!is.null(`scoreId`)) {
        if (!(is.numeric(`scoreId`) && length(`scoreId`) == 1)) {
          stop(paste("Error! Invalid data for `scoreId`. Must be an integer:", `scoreId`))
        }
        self$`scoreId` <- `scoreId`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("COMPLETED", "OWNER_CREDIT", "SUMMATION", "TOURNAMENT"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"COMPLETED\", \"OWNER_CREDIT\", \"SUMMATION\", \"TOURNAMENT\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`points`)) {
        if (!(is.numeric(`points`) && length(`points`) == 1)) {
          stop(paste("Error! Invalid data for `points`. Must be an integer:", `points`))
        }
        self$`points` <- `points`
      }
      if (!is.null(`timeTaken`)) {
        if (!(is.numeric(`timeTaken`) && length(`timeTaken`) == 1)) {
          stop(paste("Error! Invalid data for `timeTaken`. Must be an integer:", `timeTaken`))
        }
        self$`timeTaken` <- `timeTaken`
      }
      if (!is.null(`ticketsEarned`)) {
        if (!(is.numeric(`ticketsEarned`) && length(`ticketsEarned`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsEarned`. Must be an integer:", `ticketsEarned`))
        }
        self$`ticketsEarned` <- `ticketsEarned`
      }
      if (!is.null(`gameType`)) {
        if (!(is.character(`gameType`) && length(`gameType`) == 1)) {
          stop(paste("Error! Invalid data for `gameType`. Must be a string:", `gameType`))
        }
        self$`gameType` <- `gameType`
      }
      if (!is.null(`accountId`)) {
        if (!(is.numeric(`accountId`) && length(`accountId`) == 1)) {
          stop(paste("Error! Invalid data for `accountId`. Must be an integer:", `accountId`))
        }
        self$`accountId` <- `accountId`
      }
      if (!is.null(`accountDisplay`)) {
        if (!(is.character(`accountDisplay`) && length(`accountDisplay`) == 1)) {
          stop(paste("Error! Invalid data for `accountDisplay`. Must be a string:", `accountDisplay`))
        }
        self$`accountDisplay` <- `accountDisplay`
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
    #' @return ScoreResponse as a base R list.
    #' @examples
    #' # convert array of ScoreResponse (x) to a data frame
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
    #' Convert ScoreResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ScoreResponseObject <- list()
      if (!is.null(self$`action`)) {
        ScoreResponseObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`scoreId`)) {
        ScoreResponseObject[["scoreId"]] <-
          self$`scoreId`
      }
      if (!is.null(self$`status`)) {
        ScoreResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`points`)) {
        ScoreResponseObject[["points"]] <-
          self$`points`
      }
      if (!is.null(self$`timeTaken`)) {
        ScoreResponseObject[["timeTaken"]] <-
          self$`timeTaken`
      }
      if (!is.null(self$`ticketsEarned`)) {
        ScoreResponseObject[["ticketsEarned"]] <-
          self$`ticketsEarned`
      }
      if (!is.null(self$`gameType`)) {
        ScoreResponseObject[["gameType"]] <-
          self$`gameType`
      }
      if (!is.null(self$`accountId`)) {
        ScoreResponseObject[["accountId"]] <-
          self$`accountId`
      }
      if (!is.null(self$`accountDisplay`)) {
        ScoreResponseObject[["accountDisplay"]] <-
          self$`accountDisplay`
      }
      return(ScoreResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ScoreResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ScoreResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`scoreId`)) {
        self$`scoreId` <- this_object$`scoreId`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("COMPLETED", "OWNER_CREDIT", "SUMMATION", "TOURNAMENT"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"COMPLETED\", \"OWNER_CREDIT\", \"SUMMATION\", \"TOURNAMENT\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`points`)) {
        self$`points` <- this_object$`points`
      }
      if (!is.null(this_object$`timeTaken`)) {
        self$`timeTaken` <- this_object$`timeTaken`
      }
      if (!is.null(this_object$`ticketsEarned`)) {
        self$`ticketsEarned` <- this_object$`ticketsEarned`
      }
      if (!is.null(this_object$`gameType`)) {
        self$`gameType` <- this_object$`gameType`
      }
      if (!is.null(this_object$`accountId`)) {
        self$`accountId` <- this_object$`accountId`
      }
      if (!is.null(this_object$`accountDisplay`)) {
        self$`accountDisplay` <- this_object$`accountDisplay`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ScoreResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ScoreResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ScoreResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
        stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
      }
      self$`action` <- this_object$`action`
      self$`scoreId` <- this_object$`scoreId`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("COMPLETED", "OWNER_CREDIT", "SUMMATION", "TOURNAMENT"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"COMPLETED\", \"OWNER_CREDIT\", \"SUMMATION\", \"TOURNAMENT\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`points` <- this_object$`points`
      self$`timeTaken` <- this_object$`timeTaken`
      self$`ticketsEarned` <- this_object$`ticketsEarned`
      self$`gameType` <- this_object$`gameType`
      self$`accountId` <- this_object$`accountId`
      self$`accountDisplay` <- this_object$`accountDisplay`
      self
    },

    #' @description
    #' Validate JSON input with respect to ScoreResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ScoreResponse
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
# ScoreResponse$unlock()
#
## Below is an example to define the print function
# ScoreResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ScoreResponse$lock()

