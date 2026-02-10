#' Create a new BlobFile
#'
#' @description
#' BlobFile Class
#'
#' @docType class
#' @title BlobFile
#' @description BlobFile Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field owner  \link{Account} [optional]
#' @field application  \link{Application} [optional]
#' @field folderUri  character [optional]
#' @field fileName  character [optional]
#' @field file  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BlobFile <- R6::R6Class(
  "BlobFile",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `owner` = NULL,
    `application` = NULL,
    `folderUri` = NULL,
    `fileName` = NULL,
    `file` = NULL,

    #' @description
    #' Initialize a new BlobFile class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param owner owner
    #' @param application application
    #' @param folderUri folderUri
    #' @param fileName fileName
    #' @param file file
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `owner` = NULL, `application` = NULL, `folderUri` = NULL, `fileName` = NULL, `file` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
      }
      if (!is.null(`folderUri`)) {
        if (!(is.character(`folderUri`) && length(`folderUri`) == 1)) {
          stop(paste("Error! Invalid data for `folderUri`. Must be a string:", `folderUri`))
        }
        self$`folderUri` <- `folderUri`
      }
      if (!is.null(`fileName`)) {
        if (!(is.character(`fileName`) && length(`fileName`) == 1)) {
          stop(paste("Error! Invalid data for `fileName`. Must be a string:", `fileName`))
        }
        self$`fileName` <- `fileName`
      }
      if (!is.null(`file`)) {
        stopifnot(is.vector(`file`), length(`file`) != 0)
        sapply(`file`, function(x) stopifnot(is.character(x)))
        self$`file` <- `file`
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
    #' @return BlobFile as a base R list.
    #' @examples
    #' # convert array of BlobFile (x) to a data frame
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
    #' Convert BlobFile to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BlobFileObject <- list()
      if (!is.null(self$`id`)) {
        BlobFileObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        BlobFileObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        BlobFileObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`owner`)) {
        BlobFileObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`application`)) {
        BlobFileObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`folderUri`)) {
        BlobFileObject[["folderUri"]] <-
          self$`folderUri`
      }
      if (!is.null(self$`fileName`)) {
        BlobFileObject[["fileName"]] <-
          self$`fileName`
      }
      if (!is.null(self$`file`)) {
        BlobFileObject[["file"]] <-
          self$`file`
      }
      return(BlobFileObject)
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
    #' Deserialize JSON string into an instance of BlobFile
    #'
    #' @param input_json the JSON input
    #' @return the instance of BlobFile
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- Application$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`folderUri`)) {
        self$`folderUri` <- this_object$`folderUri`
      }
      if (!is.null(this_object$`fileName`)) {
        self$`fileName` <- this_object$`fileName`
      }
      if (!is.null(this_object$`file`)) {
        self$`file` <- ApiClient$new()$deserializeObj(this_object$`file`, "array[character]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BlobFile in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BlobFile
    #'
    #' @param input_json the JSON input
    #' @return the instance of BlobFile
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`application` <- Application$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`folderUri` <- this_object$`folderUri`
      self$`fileName` <- this_object$`fileName`
      self$`file` <- ApiClient$new()$deserializeObj(this_object$`file`, "array[character]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to BlobFile and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BlobFile
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
# BlobFile$unlock()
#
## Below is an example to define the print function
# BlobFile$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BlobFile$lock()

