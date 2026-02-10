#' Create a new OrsonRenderResponse
#'
#' @description
#' OrsonRenderResponse Class
#'
#' @docType class
#' @title OrsonRenderResponse
#' @description OrsonRenderResponse Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field thirdPartyAccountId  character [optional]
#' @field status  character [optional]
#' @field statusDescription  character [optional]
#' @field completedOn  character [optional]
#' @field responseCode  integer [optional]
#' @field responseRaw  character [optional]
#' @field video  \link{OrsonVideoResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrsonRenderResponse <- R6::R6Class(
  "OrsonRenderResponse",
  public = list(
    `id` = NULL,
    `thirdPartyAccountId` = NULL,
    `status` = NULL,
    `statusDescription` = NULL,
    `completedOn` = NULL,
    `responseCode` = NULL,
    `responseRaw` = NULL,
    `video` = NULL,

    #' @description
    #' Initialize a new OrsonRenderResponse class.
    #'
    #' @param id id
    #' @param thirdPartyAccountId thirdPartyAccountId
    #' @param status status
    #' @param statusDescription statusDescription
    #' @param completedOn completedOn
    #' @param responseCode responseCode
    #' @param responseRaw responseRaw
    #' @param video video
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `thirdPartyAccountId` = NULL, `status` = NULL, `statusDescription` = NULL, `completedOn` = NULL, `responseCode` = NULL, `responseRaw` = NULL, `video` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`thirdPartyAccountId`)) {
        if (!(is.character(`thirdPartyAccountId`) && length(`thirdPartyAccountId`) == 1)) {
          stop(paste("Error! Invalid data for `thirdPartyAccountId`. Must be a string:", `thirdPartyAccountId`))
        }
        self$`thirdPartyAccountId` <- `thirdPartyAccountId`
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
      if (!is.null(`completedOn`)) {
        if (!(is.character(`completedOn`) && length(`completedOn`) == 1)) {
          stop(paste("Error! Invalid data for `completedOn`. Must be a string:", `completedOn`))
        }
        self$`completedOn` <- `completedOn`
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
      if (!is.null(`video`)) {
        stopifnot(R6::is.R6(`video`))
        self$`video` <- `video`
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
    #' @return OrsonRenderResponse as a base R list.
    #' @examples
    #' # convert array of OrsonRenderResponse (x) to a data frame
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
    #' Convert OrsonRenderResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrsonRenderResponseObject <- list()
      if (!is.null(self$`id`)) {
        OrsonRenderResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`thirdPartyAccountId`)) {
        OrsonRenderResponseObject[["thirdPartyAccountId"]] <-
          self$`thirdPartyAccountId`
      }
      if (!is.null(self$`status`)) {
        OrsonRenderResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`statusDescription`)) {
        OrsonRenderResponseObject[["statusDescription"]] <-
          self$`statusDescription`
      }
      if (!is.null(self$`completedOn`)) {
        OrsonRenderResponseObject[["completedOn"]] <-
          self$`completedOn`
      }
      if (!is.null(self$`responseCode`)) {
        OrsonRenderResponseObject[["responseCode"]] <-
          self$`responseCode`
      }
      if (!is.null(self$`responseRaw`)) {
        OrsonRenderResponseObject[["responseRaw"]] <-
          self$`responseRaw`
      }
      if (!is.null(self$`video`)) {
        OrsonRenderResponseObject[["video"]] <-
          self$extractSimpleType(self$`video`)
      }
      return(OrsonRenderResponseObject)
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
    #' Deserialize JSON string into an instance of OrsonRenderResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonRenderResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`thirdPartyAccountId`)) {
        self$`thirdPartyAccountId` <- this_object$`thirdPartyAccountId`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`statusDescription`)) {
        self$`statusDescription` <- this_object$`statusDescription`
      }
      if (!is.null(this_object$`completedOn`)) {
        self$`completedOn` <- this_object$`completedOn`
      }
      if (!is.null(this_object$`responseCode`)) {
        self$`responseCode` <- this_object$`responseCode`
      }
      if (!is.null(this_object$`responseRaw`)) {
        self$`responseRaw` <- this_object$`responseRaw`
      }
      if (!is.null(this_object$`video`)) {
        `video_object` <- OrsonVideoResponse$new()
        `video_object`$fromJSON(jsonlite::toJSON(this_object$`video`, auto_unbox = TRUE, digits = NA))
        self$`video` <- `video_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrsonRenderResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonRenderResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonRenderResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`thirdPartyAccountId` <- this_object$`thirdPartyAccountId`
      self$`status` <- this_object$`status`
      self$`statusDescription` <- this_object$`statusDescription`
      self$`completedOn` <- this_object$`completedOn`
      self$`responseCode` <- this_object$`responseCode`
      self$`responseRaw` <- this_object$`responseRaw`
      self$`video` <- OrsonVideoResponse$new()$fromJSON(jsonlite::toJSON(this_object$`video`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to OrsonRenderResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrsonRenderResponse
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
# OrsonRenderResponse$unlock()
#
## Below is an example to define the print function
# OrsonRenderResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrsonRenderResponse$lock()

