#' Create a new OrsonAiVisualEmotionResponse
#'
#' @description
#' OrsonAiVisualEmotionResponse Class
#'
#' @docType class
#' @title OrsonAiVisualEmotionResponse
#' @description OrsonAiVisualEmotionResponse Class
#' @format An \code{R6Class} generator object
#' @field requestId  character [optional]
#' @field responseCode  integer [optional]
#' @field responseRaw  character [optional]
#' @field userIndex  integer [optional]
#' @field emotion  character [optional]
#' @field probability  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrsonAiVisualEmotionResponse <- R6::R6Class(
  "OrsonAiVisualEmotionResponse",
  public = list(
    `requestId` = NULL,
    `responseCode` = NULL,
    `responseRaw` = NULL,
    `userIndex` = NULL,
    `emotion` = NULL,
    `probability` = NULL,

    #' @description
    #' Initialize a new OrsonAiVisualEmotionResponse class.
    #'
    #' @param requestId requestId
    #' @param responseCode responseCode
    #' @param responseRaw responseRaw
    #' @param userIndex userIndex
    #' @param emotion emotion
    #' @param probability probability
    #' @param ... Other optional arguments.
    initialize = function(`requestId` = NULL, `responseCode` = NULL, `responseRaw` = NULL, `userIndex` = NULL, `emotion` = NULL, `probability` = NULL, ...) {
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
      if (!is.null(`userIndex`)) {
        if (!(is.numeric(`userIndex`) && length(`userIndex`) == 1)) {
          stop(paste("Error! Invalid data for `userIndex`. Must be an integer:", `userIndex`))
        }
        self$`userIndex` <- `userIndex`
      }
      if (!is.null(`emotion`)) {
        if (!(is.character(`emotion`) && length(`emotion`) == 1)) {
          stop(paste("Error! Invalid data for `emotion`. Must be a string:", `emotion`))
        }
        self$`emotion` <- `emotion`
      }
      if (!is.null(`probability`)) {
        if (!(is.numeric(`probability`) && length(`probability`) == 1)) {
          stop(paste("Error! Invalid data for `probability`. Must be a number:", `probability`))
        }
        self$`probability` <- `probability`
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
    #' @return OrsonAiVisualEmotionResponse as a base R list.
    #' @examples
    #' # convert array of OrsonAiVisualEmotionResponse (x) to a data frame
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
    #' Convert OrsonAiVisualEmotionResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrsonAiVisualEmotionResponseObject <- list()
      if (!is.null(self$`requestId`)) {
        OrsonAiVisualEmotionResponseObject[["requestId"]] <-
          self$`requestId`
      }
      if (!is.null(self$`responseCode`)) {
        OrsonAiVisualEmotionResponseObject[["responseCode"]] <-
          self$`responseCode`
      }
      if (!is.null(self$`responseRaw`)) {
        OrsonAiVisualEmotionResponseObject[["responseRaw"]] <-
          self$`responseRaw`
      }
      if (!is.null(self$`userIndex`)) {
        OrsonAiVisualEmotionResponseObject[["userIndex"]] <-
          self$`userIndex`
      }
      if (!is.null(self$`emotion`)) {
        OrsonAiVisualEmotionResponseObject[["emotion"]] <-
          self$`emotion`
      }
      if (!is.null(self$`probability`)) {
        OrsonAiVisualEmotionResponseObject[["probability"]] <-
          self$`probability`
      }
      return(OrsonAiVisualEmotionResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonAiVisualEmotionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiVisualEmotionResponse
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
      if (!is.null(this_object$`userIndex`)) {
        self$`userIndex` <- this_object$`userIndex`
      }
      if (!is.null(this_object$`emotion`)) {
        self$`emotion` <- this_object$`emotion`
      }
      if (!is.null(this_object$`probability`)) {
        self$`probability` <- this_object$`probability`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrsonAiVisualEmotionResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonAiVisualEmotionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiVisualEmotionResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`requestId` <- this_object$`requestId`
      self$`responseCode` <- this_object$`responseCode`
      self$`responseRaw` <- this_object$`responseRaw`
      self$`userIndex` <- this_object$`userIndex`
      self$`emotion` <- this_object$`emotion`
      self$`probability` <- this_object$`probability`
      self
    },

    #' @description
    #' Validate JSON input with respect to OrsonAiVisualEmotionResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrsonAiVisualEmotionResponse
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
# OrsonAiVisualEmotionResponse$unlock()
#
## Below is an example to define the print function
# OrsonAiVisualEmotionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrsonAiVisualEmotionResponse$lock()

