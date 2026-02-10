#' Create a new OrsonAiTechTuneResponse
#'
#' @description
#' OrsonAiTechTuneResponse Class
#'
#' @docType class
#' @title OrsonAiTechTuneResponse
#' @description OrsonAiTechTuneResponse Class
#' @format An \code{R6Class} generator object
#' @field requestId  character [optional]
#' @field responseCode  integer [optional]
#' @field responseRaw  character [optional]
#' @field people  integer [optional]
#' @field wasCutoff  character [optional]
#' @field frames  integer [optional]
#' @field framesWithoutAFace  integer [optional]
#' @field framesWithFaceOffscreen  integer [optional]
#' @field framesWithWrongNumberOfPeople  integer [optional]
#' @field height  integer [optional]
#' @field width  integer [optional]
#' @field fps  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrsonAiTechTuneResponse <- R6::R6Class(
  "OrsonAiTechTuneResponse",
  public = list(
    `requestId` = NULL,
    `responseCode` = NULL,
    `responseRaw` = NULL,
    `people` = NULL,
    `wasCutoff` = NULL,
    `frames` = NULL,
    `framesWithoutAFace` = NULL,
    `framesWithFaceOffscreen` = NULL,
    `framesWithWrongNumberOfPeople` = NULL,
    `height` = NULL,
    `width` = NULL,
    `fps` = NULL,

    #' @description
    #' Initialize a new OrsonAiTechTuneResponse class.
    #'
    #' @param requestId requestId
    #' @param responseCode responseCode
    #' @param responseRaw responseRaw
    #' @param people people
    #' @param wasCutoff wasCutoff
    #' @param frames frames
    #' @param framesWithoutAFace framesWithoutAFace
    #' @param framesWithFaceOffscreen framesWithFaceOffscreen
    #' @param framesWithWrongNumberOfPeople framesWithWrongNumberOfPeople
    #' @param height height
    #' @param width width
    #' @param fps fps
    #' @param ... Other optional arguments.
    initialize = function(`requestId` = NULL, `responseCode` = NULL, `responseRaw` = NULL, `people` = NULL, `wasCutoff` = NULL, `frames` = NULL, `framesWithoutAFace` = NULL, `framesWithFaceOffscreen` = NULL, `framesWithWrongNumberOfPeople` = NULL, `height` = NULL, `width` = NULL, `fps` = NULL, ...) {
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
      if (!is.null(`people`)) {
        if (!(is.numeric(`people`) && length(`people`) == 1)) {
          stop(paste("Error! Invalid data for `people`. Must be an integer:", `people`))
        }
        self$`people` <- `people`
      }
      if (!is.null(`wasCutoff`)) {
        if (!(is.logical(`wasCutoff`) && length(`wasCutoff`) == 1)) {
          stop(paste("Error! Invalid data for `wasCutoff`. Must be a boolean:", `wasCutoff`))
        }
        self$`wasCutoff` <- `wasCutoff`
      }
      if (!is.null(`frames`)) {
        if (!(is.numeric(`frames`) && length(`frames`) == 1)) {
          stop(paste("Error! Invalid data for `frames`. Must be an integer:", `frames`))
        }
        self$`frames` <- `frames`
      }
      if (!is.null(`framesWithoutAFace`)) {
        if (!(is.numeric(`framesWithoutAFace`) && length(`framesWithoutAFace`) == 1)) {
          stop(paste("Error! Invalid data for `framesWithoutAFace`. Must be an integer:", `framesWithoutAFace`))
        }
        self$`framesWithoutAFace` <- `framesWithoutAFace`
      }
      if (!is.null(`framesWithFaceOffscreen`)) {
        if (!(is.numeric(`framesWithFaceOffscreen`) && length(`framesWithFaceOffscreen`) == 1)) {
          stop(paste("Error! Invalid data for `framesWithFaceOffscreen`. Must be an integer:", `framesWithFaceOffscreen`))
        }
        self$`framesWithFaceOffscreen` <- `framesWithFaceOffscreen`
      }
      if (!is.null(`framesWithWrongNumberOfPeople`)) {
        if (!(is.numeric(`framesWithWrongNumberOfPeople`) && length(`framesWithWrongNumberOfPeople`) == 1)) {
          stop(paste("Error! Invalid data for `framesWithWrongNumberOfPeople`. Must be an integer:", `framesWithWrongNumberOfPeople`))
        }
        self$`framesWithWrongNumberOfPeople` <- `framesWithWrongNumberOfPeople`
      }
      if (!is.null(`height`)) {
        if (!(is.numeric(`height`) && length(`height`) == 1)) {
          stop(paste("Error! Invalid data for `height`. Must be an integer:", `height`))
        }
        self$`height` <- `height`
      }
      if (!is.null(`width`)) {
        if (!(is.numeric(`width`) && length(`width`) == 1)) {
          stop(paste("Error! Invalid data for `width`. Must be an integer:", `width`))
        }
        self$`width` <- `width`
      }
      if (!is.null(`fps`)) {
        if (!(is.numeric(`fps`) && length(`fps`) == 1)) {
          stop(paste("Error! Invalid data for `fps`. Must be an integer:", `fps`))
        }
        self$`fps` <- `fps`
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
    #' @return OrsonAiTechTuneResponse as a base R list.
    #' @examples
    #' # convert array of OrsonAiTechTuneResponse (x) to a data frame
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
    #' Convert OrsonAiTechTuneResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrsonAiTechTuneResponseObject <- list()
      if (!is.null(self$`requestId`)) {
        OrsonAiTechTuneResponseObject[["requestId"]] <-
          self$`requestId`
      }
      if (!is.null(self$`responseCode`)) {
        OrsonAiTechTuneResponseObject[["responseCode"]] <-
          self$`responseCode`
      }
      if (!is.null(self$`responseRaw`)) {
        OrsonAiTechTuneResponseObject[["responseRaw"]] <-
          self$`responseRaw`
      }
      if (!is.null(self$`people`)) {
        OrsonAiTechTuneResponseObject[["people"]] <-
          self$`people`
      }
      if (!is.null(self$`wasCutoff`)) {
        OrsonAiTechTuneResponseObject[["wasCutoff"]] <-
          self$`wasCutoff`
      }
      if (!is.null(self$`frames`)) {
        OrsonAiTechTuneResponseObject[["frames"]] <-
          self$`frames`
      }
      if (!is.null(self$`framesWithoutAFace`)) {
        OrsonAiTechTuneResponseObject[["framesWithoutAFace"]] <-
          self$`framesWithoutAFace`
      }
      if (!is.null(self$`framesWithFaceOffscreen`)) {
        OrsonAiTechTuneResponseObject[["framesWithFaceOffscreen"]] <-
          self$`framesWithFaceOffscreen`
      }
      if (!is.null(self$`framesWithWrongNumberOfPeople`)) {
        OrsonAiTechTuneResponseObject[["framesWithWrongNumberOfPeople"]] <-
          self$`framesWithWrongNumberOfPeople`
      }
      if (!is.null(self$`height`)) {
        OrsonAiTechTuneResponseObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`width`)) {
        OrsonAiTechTuneResponseObject[["width"]] <-
          self$`width`
      }
      if (!is.null(self$`fps`)) {
        OrsonAiTechTuneResponseObject[["fps"]] <-
          self$`fps`
      }
      return(OrsonAiTechTuneResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonAiTechTuneResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiTechTuneResponse
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
      if (!is.null(this_object$`people`)) {
        self$`people` <- this_object$`people`
      }
      if (!is.null(this_object$`wasCutoff`)) {
        self$`wasCutoff` <- this_object$`wasCutoff`
      }
      if (!is.null(this_object$`frames`)) {
        self$`frames` <- this_object$`frames`
      }
      if (!is.null(this_object$`framesWithoutAFace`)) {
        self$`framesWithoutAFace` <- this_object$`framesWithoutAFace`
      }
      if (!is.null(this_object$`framesWithFaceOffscreen`)) {
        self$`framesWithFaceOffscreen` <- this_object$`framesWithFaceOffscreen`
      }
      if (!is.null(this_object$`framesWithWrongNumberOfPeople`)) {
        self$`framesWithWrongNumberOfPeople` <- this_object$`framesWithWrongNumberOfPeople`
      }
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`width`)) {
        self$`width` <- this_object$`width`
      }
      if (!is.null(this_object$`fps`)) {
        self$`fps` <- this_object$`fps`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrsonAiTechTuneResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonAiTechTuneResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiTechTuneResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`requestId` <- this_object$`requestId`
      self$`responseCode` <- this_object$`responseCode`
      self$`responseRaw` <- this_object$`responseRaw`
      self$`people` <- this_object$`people`
      self$`wasCutoff` <- this_object$`wasCutoff`
      self$`frames` <- this_object$`frames`
      self$`framesWithoutAFace` <- this_object$`framesWithoutAFace`
      self$`framesWithFaceOffscreen` <- this_object$`framesWithFaceOffscreen`
      self$`framesWithWrongNumberOfPeople` <- this_object$`framesWithWrongNumberOfPeople`
      self$`height` <- this_object$`height`
      self$`width` <- this_object$`width`
      self$`fps` <- this_object$`fps`
      self
    },

    #' @description
    #' Validate JSON input with respect to OrsonAiTechTuneResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrsonAiTechTuneResponse
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
# OrsonAiTechTuneResponse$unlock()
#
## Below is an example to define the print function
# OrsonAiTechTuneResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrsonAiTechTuneResponse$lock()

