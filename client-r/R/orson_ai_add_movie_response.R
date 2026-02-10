#' Create a new OrsonAiAddMovieResponse
#'
#' @description
#' OrsonAiAddMovieResponse Class
#'
#' @docType class
#' @title OrsonAiAddMovieResponse
#' @description OrsonAiAddMovieResponse Class
#' @format An \code{R6Class} generator object
#' @field requestId  character [optional]
#' @field responseCode  integer [optional]
#' @field responseRaw  character [optional]
#' @field id  character [optional]
#' @field hasBeenIndexed  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrsonAiAddMovieResponse <- R6::R6Class(
  "OrsonAiAddMovieResponse",
  public = list(
    `requestId` = NULL,
    `responseCode` = NULL,
    `responseRaw` = NULL,
    `id` = NULL,
    `hasBeenIndexed` = NULL,

    #' @description
    #' Initialize a new OrsonAiAddMovieResponse class.
    #'
    #' @param requestId requestId
    #' @param responseCode responseCode
    #' @param responseRaw responseRaw
    #' @param id id
    #' @param hasBeenIndexed hasBeenIndexed
    #' @param ... Other optional arguments.
    initialize = function(`requestId` = NULL, `responseCode` = NULL, `responseRaw` = NULL, `id` = NULL, `hasBeenIndexed` = NULL, ...) {
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
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`hasBeenIndexed`)) {
        if (!(is.logical(`hasBeenIndexed`) && length(`hasBeenIndexed`) == 1)) {
          stop(paste("Error! Invalid data for `hasBeenIndexed`. Must be a boolean:", `hasBeenIndexed`))
        }
        self$`hasBeenIndexed` <- `hasBeenIndexed`
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
    #' @return OrsonAiAddMovieResponse as a base R list.
    #' @examples
    #' # convert array of OrsonAiAddMovieResponse (x) to a data frame
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
    #' Convert OrsonAiAddMovieResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrsonAiAddMovieResponseObject <- list()
      if (!is.null(self$`requestId`)) {
        OrsonAiAddMovieResponseObject[["requestId"]] <-
          self$`requestId`
      }
      if (!is.null(self$`responseCode`)) {
        OrsonAiAddMovieResponseObject[["responseCode"]] <-
          self$`responseCode`
      }
      if (!is.null(self$`responseRaw`)) {
        OrsonAiAddMovieResponseObject[["responseRaw"]] <-
          self$`responseRaw`
      }
      if (!is.null(self$`id`)) {
        OrsonAiAddMovieResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`hasBeenIndexed`)) {
        OrsonAiAddMovieResponseObject[["hasBeenIndexed"]] <-
          self$`hasBeenIndexed`
      }
      return(OrsonAiAddMovieResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonAiAddMovieResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiAddMovieResponse
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
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`hasBeenIndexed`)) {
        self$`hasBeenIndexed` <- this_object$`hasBeenIndexed`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrsonAiAddMovieResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonAiAddMovieResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiAddMovieResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`requestId` <- this_object$`requestId`
      self$`responseCode` <- this_object$`responseCode`
      self$`responseRaw` <- this_object$`responseRaw`
      self$`id` <- this_object$`id`
      self$`hasBeenIndexed` <- this_object$`hasBeenIndexed`
      self
    },

    #' @description
    #' Validate JSON input with respect to OrsonAiAddMovieResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrsonAiAddMovieResponse
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
# OrsonAiAddMovieResponse$unlock()
#
## Below is an example to define the print function
# OrsonAiAddMovieResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrsonAiAddMovieResponse$lock()

