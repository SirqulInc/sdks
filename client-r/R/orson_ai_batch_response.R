#' Create a new OrsonAiBatchResponse
#'
#' @description
#' OrsonAiBatchResponse Class
#'
#' @docType class
#' @title OrsonAiBatchResponse
#' @description OrsonAiBatchResponse Class
#' @format An \code{R6Class} generator object
#' @field requestId  character [optional]
#' @field responseCode  integer [optional]
#' @field responseRaw  character [optional]
#' @field transcript  \link{OrsonAiBatchTranscriptResponse} [optional]
#' @field topics  \link{OrsonAiBatchTopicsResponse} [optional]
#' @field emotions  \link{OrsonAiBatchEmotionsResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrsonAiBatchResponse <- R6::R6Class(
  "OrsonAiBatchResponse",
  public = list(
    `requestId` = NULL,
    `responseCode` = NULL,
    `responseRaw` = NULL,
    `transcript` = NULL,
    `topics` = NULL,
    `emotions` = NULL,

    #' @description
    #' Initialize a new OrsonAiBatchResponse class.
    #'
    #' @param requestId requestId
    #' @param responseCode responseCode
    #' @param responseRaw responseRaw
    #' @param transcript transcript
    #' @param topics topics
    #' @param emotions emotions
    #' @param ... Other optional arguments.
    initialize = function(`requestId` = NULL, `responseCode` = NULL, `responseRaw` = NULL, `transcript` = NULL, `topics` = NULL, `emotions` = NULL, ...) {
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
      if (!is.null(`transcript`)) {
        stopifnot(R6::is.R6(`transcript`))
        self$`transcript` <- `transcript`
      }
      if (!is.null(`topics`)) {
        stopifnot(R6::is.R6(`topics`))
        self$`topics` <- `topics`
      }
      if (!is.null(`emotions`)) {
        stopifnot(R6::is.R6(`emotions`))
        self$`emotions` <- `emotions`
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
    #' @return OrsonAiBatchResponse as a base R list.
    #' @examples
    #' # convert array of OrsonAiBatchResponse (x) to a data frame
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
    #' Convert OrsonAiBatchResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrsonAiBatchResponseObject <- list()
      if (!is.null(self$`requestId`)) {
        OrsonAiBatchResponseObject[["requestId"]] <-
          self$`requestId`
      }
      if (!is.null(self$`responseCode`)) {
        OrsonAiBatchResponseObject[["responseCode"]] <-
          self$`responseCode`
      }
      if (!is.null(self$`responseRaw`)) {
        OrsonAiBatchResponseObject[["responseRaw"]] <-
          self$`responseRaw`
      }
      if (!is.null(self$`transcript`)) {
        OrsonAiBatchResponseObject[["transcript"]] <-
          self$extractSimpleType(self$`transcript`)
      }
      if (!is.null(self$`topics`)) {
        OrsonAiBatchResponseObject[["topics"]] <-
          self$extractSimpleType(self$`topics`)
      }
      if (!is.null(self$`emotions`)) {
        OrsonAiBatchResponseObject[["emotions"]] <-
          self$extractSimpleType(self$`emotions`)
      }
      return(OrsonAiBatchResponseObject)
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
    #' Deserialize JSON string into an instance of OrsonAiBatchResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiBatchResponse
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
      if (!is.null(this_object$`transcript`)) {
        `transcript_object` <- OrsonAiBatchTranscriptResponse$new()
        `transcript_object`$fromJSON(jsonlite::toJSON(this_object$`transcript`, auto_unbox = TRUE, digits = NA))
        self$`transcript` <- `transcript_object`
      }
      if (!is.null(this_object$`topics`)) {
        `topics_object` <- OrsonAiBatchTopicsResponse$new()
        `topics_object`$fromJSON(jsonlite::toJSON(this_object$`topics`, auto_unbox = TRUE, digits = NA))
        self$`topics` <- `topics_object`
      }
      if (!is.null(this_object$`emotions`)) {
        `emotions_object` <- OrsonAiBatchEmotionsResponse$new()
        `emotions_object`$fromJSON(jsonlite::toJSON(this_object$`emotions`, auto_unbox = TRUE, digits = NA))
        self$`emotions` <- `emotions_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrsonAiBatchResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonAiBatchResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiBatchResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`requestId` <- this_object$`requestId`
      self$`responseCode` <- this_object$`responseCode`
      self$`responseRaw` <- this_object$`responseRaw`
      self$`transcript` <- OrsonAiBatchTranscriptResponse$new()$fromJSON(jsonlite::toJSON(this_object$`transcript`, auto_unbox = TRUE, digits = NA))
      self$`topics` <- OrsonAiBatchTopicsResponse$new()$fromJSON(jsonlite::toJSON(this_object$`topics`, auto_unbox = TRUE, digits = NA))
      self$`emotions` <- OrsonAiBatchEmotionsResponse$new()$fromJSON(jsonlite::toJSON(this_object$`emotions`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to OrsonAiBatchResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrsonAiBatchResponse
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
# OrsonAiBatchResponse$unlock()
#
## Below is an example to define the print function
# OrsonAiBatchResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrsonAiBatchResponse$lock()

