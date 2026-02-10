#' Create a new OrsonAiEmotionsResponse
#'
#' @description
#' OrsonAiEmotionsResponse Class
#'
#' @docType class
#' @title OrsonAiEmotionsResponse
#' @description OrsonAiEmotionsResponse Class
#' @format An \code{R6Class} generator object
#' @field requestId  character [optional]
#' @field responseCode  integer [optional]
#' @field responseRaw  character [optional]
#' @field status  character [optional]
#' @field error  character [optional]
#' @field audioEmotions  list(character) [optional]
#' @field visualEmotions  list(\link{OrsonAiVisualEmotionResponse}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrsonAiEmotionsResponse <- R6::R6Class(
  "OrsonAiEmotionsResponse",
  public = list(
    `requestId` = NULL,
    `responseCode` = NULL,
    `responseRaw` = NULL,
    `status` = NULL,
    `error` = NULL,
    `audioEmotions` = NULL,
    `visualEmotions` = NULL,

    #' @description
    #' Initialize a new OrsonAiEmotionsResponse class.
    #'
    #' @param requestId requestId
    #' @param responseCode responseCode
    #' @param responseRaw responseRaw
    #' @param status status
    #' @param error error
    #' @param audioEmotions audioEmotions
    #' @param visualEmotions visualEmotions
    #' @param ... Other optional arguments.
    initialize = function(`requestId` = NULL, `responseCode` = NULL, `responseRaw` = NULL, `status` = NULL, `error` = NULL, `audioEmotions` = NULL, `visualEmotions` = NULL, ...) {
      if (!is.null(`requestId`)) {
        if (!(is.character(`requestId`) && length(`requestId`) == 1)) {
          stop(paste("Error! Invalid data for `requestId`. Must be a string:", `requestId`))
        }
        self$`requestId` <- `requestId`
      }
      if (!is.null(`responseCode`)) {
        if (!(is.numeric(`responseCode`) && length(`responseCode`) == 1)) {
          stop(paste("Error! Invalid data for `responseCode`. Must be an integer:", `responseCode`))
        }
        self$`responseCode` <- `responseCode`
      }
      if (!is.null(`responseRaw`)) {
        if (!(is.character(`responseRaw`) && length(`responseRaw`) == 1)) {
          stop(paste("Error! Invalid data for `responseRaw`. Must be a string:", `responseRaw`))
        }
        self$`responseRaw` <- `responseRaw`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
      }
      if (!is.null(`audioEmotions`)) {
        stopifnot(is.vector(`audioEmotions`), length(`audioEmotions`) != 0)
        sapply(`audioEmotions`, function(x) stopifnot(is.character(x)))
        self$`audioEmotions` <- `audioEmotions`
      }
      if (!is.null(`visualEmotions`)) {
        stopifnot(is.vector(`visualEmotions`), length(`visualEmotions`) != 0)
        sapply(`visualEmotions`, function(x) stopifnot(R6::is.R6(x)))
        self$`visualEmotions` <- `visualEmotions`
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
    #' @return OrsonAiEmotionsResponse as a base R list.
    #' @examples
    #' # convert array of OrsonAiEmotionsResponse (x) to a data frame
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
    #' Convert OrsonAiEmotionsResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrsonAiEmotionsResponseObject <- list()
      if (!is.null(self$`requestId`)) {
        OrsonAiEmotionsResponseObject[["requestId"]] <-
          self$`requestId`
      }
      if (!is.null(self$`responseCode`)) {
        OrsonAiEmotionsResponseObject[["responseCode"]] <-
          self$`responseCode`
      }
      if (!is.null(self$`responseRaw`)) {
        OrsonAiEmotionsResponseObject[["responseRaw"]] <-
          self$`responseRaw`
      }
      if (!is.null(self$`status`)) {
        OrsonAiEmotionsResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`error`)) {
        OrsonAiEmotionsResponseObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`audioEmotions`)) {
        OrsonAiEmotionsResponseObject[["audioEmotions"]] <-
          self$`audioEmotions`
      }
      if (!is.null(self$`visualEmotions`)) {
        OrsonAiEmotionsResponseObject[["visualEmotions"]] <-
          self$extractSimpleType(self$`visualEmotions`)
      }
      return(OrsonAiEmotionsResponseObject)
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
    #' Deserialize JSON string into an instance of OrsonAiEmotionsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiEmotionsResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`requestId`)) {
        self$`requestId` <- this_object$`requestId`
      }
      if (!is.null(this_object$`responseCode`)) {
        self$`responseCode` <- this_object$`responseCode`
      }
      if (!is.null(this_object$`responseRaw`)) {
        self$`responseRaw` <- this_object$`responseRaw`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`audioEmotions`)) {
        self$`audioEmotions` <- ApiClient$new()$deserializeObj(this_object$`audioEmotions`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`visualEmotions`)) {
        self$`visualEmotions` <- ApiClient$new()$deserializeObj(this_object$`visualEmotions`, "array[OrsonAiVisualEmotionResponse]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrsonAiEmotionsResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonAiEmotionsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiEmotionsResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`requestId` <- this_object$`requestId`
      self$`responseCode` <- this_object$`responseCode`
      self$`responseRaw` <- this_object$`responseRaw`
      self$`status` <- this_object$`status`
      self$`error` <- this_object$`error`
      self$`audioEmotions` <- ApiClient$new()$deserializeObj(this_object$`audioEmotions`, "array[character]", loadNamespace("openapi"))
      self$`visualEmotions` <- ApiClient$new()$deserializeObj(this_object$`visualEmotions`, "array[OrsonAiVisualEmotionResponse]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to OrsonAiEmotionsResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrsonAiEmotionsResponse
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
# OrsonAiEmotionsResponse$unlock()
#
## Below is an example to define the print function
# OrsonAiEmotionsResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrsonAiEmotionsResponse$lock()

