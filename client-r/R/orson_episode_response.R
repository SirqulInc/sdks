#' Create a new OrsonEpisodeResponse
#'
#' @description
#' OrsonEpisodeResponse Class
#'
#' @docType class
#' @title OrsonEpisodeResponse
#' @description OrsonEpisodeResponse Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field status  character [optional]
#' @field statusDescription  character [optional]
#' @field responseCode  integer [optional]
#' @field responseRaw  character [optional]
#' @field renders  list(\link{OrsonRenderResponse}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrsonEpisodeResponse <- R6::R6Class(
  "OrsonEpisodeResponse",
  public = list(
    `id` = NULL,
    `status` = NULL,
    `statusDescription` = NULL,
    `responseCode` = NULL,
    `responseRaw` = NULL,
    `renders` = NULL,

    #' @description
    #' Initialize a new OrsonEpisodeResponse class.
    #'
    #' @param id id
    #' @param status status
    #' @param statusDescription statusDescription
    #' @param responseCode responseCode
    #' @param responseRaw responseRaw
    #' @param renders renders
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `status` = NULL, `statusDescription` = NULL, `responseCode` = NULL, `responseRaw` = NULL, `renders` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`statusDescription`)) {
        if (!(is.character(`statusDescription`) && length(`statusDescription`) == 1)) {
          stop(paste("Error! Invalid data for `statusDescription`. Must be a string:", `statusDescription`))
        }
        self$`statusDescription` <- `statusDescription`
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
      if (!is.null(`renders`)) {
        stopifnot(is.vector(`renders`), length(`renders`) != 0)
        sapply(`renders`, function(x) stopifnot(R6::is.R6(x)))
        self$`renders` <- `renders`
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
    #' @return OrsonEpisodeResponse as a base R list.
    #' @examples
    #' # convert array of OrsonEpisodeResponse (x) to a data frame
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
    #' Convert OrsonEpisodeResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrsonEpisodeResponseObject <- list()
      if (!is.null(self$`id`)) {
        OrsonEpisodeResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`status`)) {
        OrsonEpisodeResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`statusDescription`)) {
        OrsonEpisodeResponseObject[["statusDescription"]] <-
          self$`statusDescription`
      }
      if (!is.null(self$`responseCode`)) {
        OrsonEpisodeResponseObject[["responseCode"]] <-
          self$`responseCode`
      }
      if (!is.null(self$`responseRaw`)) {
        OrsonEpisodeResponseObject[["responseRaw"]] <-
          self$`responseRaw`
      }
      if (!is.null(self$`renders`)) {
        OrsonEpisodeResponseObject[["renders"]] <-
          self$extractSimpleType(self$`renders`)
      }
      return(OrsonEpisodeResponseObject)
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
    #' Deserialize JSON string into an instance of OrsonEpisodeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonEpisodeResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`statusDescription`)) {
        self$`statusDescription` <- this_object$`statusDescription`
      }
      if (!is.null(this_object$`responseCode`)) {
        self$`responseCode` <- this_object$`responseCode`
      }
      if (!is.null(this_object$`responseRaw`)) {
        self$`responseRaw` <- this_object$`responseRaw`
      }
      if (!is.null(this_object$`renders`)) {
        self$`renders` <- ApiClient$new()$deserializeObj(this_object$`renders`, "array[OrsonRenderResponse]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrsonEpisodeResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonEpisodeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonEpisodeResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`status` <- this_object$`status`
      self$`statusDescription` <- this_object$`statusDescription`
      self$`responseCode` <- this_object$`responseCode`
      self$`responseRaw` <- this_object$`responseRaw`
      self$`renders` <- ApiClient$new()$deserializeObj(this_object$`renders`, "array[OrsonRenderResponse]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to OrsonEpisodeResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrsonEpisodeResponse
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
# OrsonEpisodeResponse$unlock()
#
## Below is an example to define the print function
# OrsonEpisodeResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrsonEpisodeResponse$lock()

