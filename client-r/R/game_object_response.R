#' Create a new GameObjectResponse
#'
#' @description
#' GameObjectResponse Class
#'
#' @docType class
#' @title GameObjectResponse
#' @description GameObjectResponse Class
#' @format An \code{R6Class} generator object
#' @field action  character [optional]
#' @field gameObjectId  integer [optional]
#' @field gameType  character [optional]
#' @field ticketsEarned  integer [optional]
#' @field scores  \link{ScoreListResponse} [optional]
#' @field tickets  \link{TicketListResponse} [optional]
#' @field items  list(\link{NameStringValueResponse}) [optional]
#' @field allocateTickets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GameObjectResponse <- R6::R6Class(
  "GameObjectResponse",
  public = list(
    `action` = NULL,
    `gameObjectId` = NULL,
    `gameType` = NULL,
    `ticketsEarned` = NULL,
    `scores` = NULL,
    `tickets` = NULL,
    `items` = NULL,
    `allocateTickets` = NULL,

    #' @description
    #' Initialize a new GameObjectResponse class.
    #'
    #' @param action action
    #' @param gameObjectId gameObjectId
    #' @param gameType gameType
    #' @param ticketsEarned ticketsEarned
    #' @param scores scores
    #' @param tickets tickets
    #' @param items items
    #' @param allocateTickets allocateTickets
    #' @param ... Other optional arguments.
    initialize = function(`action` = NULL, `gameObjectId` = NULL, `gameType` = NULL, `ticketsEarned` = NULL, `scores` = NULL, `tickets` = NULL, `items` = NULL, `allocateTickets` = NULL, ...) {
      if (!is.null(`action`)) {
        if (!(`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", `action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
      if (!is.null(`gameObjectId`)) {
        if (!(is.numeric(`gameObjectId`) && length(`gameObjectId`) == 1)) {
          stop(paste("Error! Invalid data for `gameObjectId`. Must be an integer:", `gameObjectId`))
        }
        self$`gameObjectId` <- `gameObjectId`
      }
      if (!is.null(`gameType`)) {
        if (!(is.character(`gameType`) && length(`gameType`) == 1)) {
          stop(paste("Error! Invalid data for `gameType`. Must be a string:", `gameType`))
        }
        self$`gameType` <- `gameType`
      }
      if (!is.null(`ticketsEarned`)) {
        if (!(is.numeric(`ticketsEarned`) && length(`ticketsEarned`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsEarned`. Must be an integer:", `ticketsEarned`))
        }
        self$`ticketsEarned` <- `ticketsEarned`
      }
      if (!is.null(`scores`)) {
        stopifnot(R6::is.R6(`scores`))
        self$`scores` <- `scores`
      }
      if (!is.null(`tickets`)) {
        stopifnot(R6::is.R6(`tickets`))
        self$`tickets` <- `tickets`
      }
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!is.null(`allocateTickets`)) {
        if (!(is.logical(`allocateTickets`) && length(`allocateTickets`) == 1)) {
          stop(paste("Error! Invalid data for `allocateTickets`. Must be a boolean:", `allocateTickets`))
        }
        self$`allocateTickets` <- `allocateTickets`
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
    #' @return GameObjectResponse as a base R list.
    #' @examples
    #' # convert array of GameObjectResponse (x) to a data frame
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
    #' Convert GameObjectResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GameObjectResponseObject <- list()
      if (!is.null(self$`action`)) {
        GameObjectResponseObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`gameObjectId`)) {
        GameObjectResponseObject[["gameObjectId"]] <-
          self$`gameObjectId`
      }
      if (!is.null(self$`gameType`)) {
        GameObjectResponseObject[["gameType"]] <-
          self$`gameType`
      }
      if (!is.null(self$`ticketsEarned`)) {
        GameObjectResponseObject[["ticketsEarned"]] <-
          self$`ticketsEarned`
      }
      if (!is.null(self$`scores`)) {
        GameObjectResponseObject[["scores"]] <-
          self$extractSimpleType(self$`scores`)
      }
      if (!is.null(self$`tickets`)) {
        GameObjectResponseObject[["tickets"]] <-
          self$extractSimpleType(self$`tickets`)
      }
      if (!is.null(self$`items`)) {
        GameObjectResponseObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`allocateTickets`)) {
        GameObjectResponseObject[["allocateTickets"]] <-
          self$`allocateTickets`
      }
      return(GameObjectResponseObject)
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
    #' Deserialize JSON string into an instance of GameObjectResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GameObjectResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`gameObjectId`)) {
        self$`gameObjectId` <- this_object$`gameObjectId`
      }
      if (!is.null(this_object$`gameType`)) {
        self$`gameType` <- this_object$`gameType`
      }
      if (!is.null(this_object$`ticketsEarned`)) {
        self$`ticketsEarned` <- this_object$`ticketsEarned`
      }
      if (!is.null(this_object$`scores`)) {
        `scores_object` <- ScoreListResponse$new()
        `scores_object`$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
        self$`scores` <- `scores_object`
      }
      if (!is.null(this_object$`tickets`)) {
        `tickets_object` <- TicketListResponse$new()
        `tickets_object`$fromJSON(jsonlite::toJSON(this_object$`tickets`, auto_unbox = TRUE, digits = NA))
        self$`tickets` <- `tickets_object`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`allocateTickets`)) {
        self$`allocateTickets` <- this_object$`allocateTickets`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GameObjectResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GameObjectResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GameObjectResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
        stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
      }
      self$`action` <- this_object$`action`
      self$`gameObjectId` <- this_object$`gameObjectId`
      self$`gameType` <- this_object$`gameType`
      self$`ticketsEarned` <- this_object$`ticketsEarned`
      self$`scores` <- ScoreListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
      self$`tickets` <- TicketListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`tickets`, auto_unbox = TRUE, digits = NA))
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`allocateTickets` <- this_object$`allocateTickets`
      self
    },

    #' @description
    #' Validate JSON input with respect to GameObjectResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GameObjectResponse
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
# GameObjectResponse$unlock()
#
## Below is an example to define the print function
# GameObjectResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GameObjectResponse$lock()

