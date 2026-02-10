#' Create a new CreativeResponse
#'
#' @description
#' CreativeResponse Class
#'
#' @docType class
#' @title CreativeResponse
#' @description CreativeResponse Class
#' @format An \code{R6Class} generator object
#' @field creativeId  integer [optional]
#' @field active  character [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field image  \link{AssetShortResponse} [optional]
#' @field action  character [optional]
#' @field content  \link{JsonElement} [optional]
#' @field suffix  character [optional]
#' @field type  character [optional]
#' @field appVersion  character [optional]
#' @field preview  character [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @field currentBid  \link{BidResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreativeResponse <- R6::R6Class(
  "CreativeResponse",
  public = list(
    `creativeId` = NULL,
    `active` = NULL,
    `name` = NULL,
    `description` = NULL,
    `image` = NULL,
    `action` = NULL,
    `content` = NULL,
    `suffix` = NULL,
    `type` = NULL,
    `appVersion` = NULL,
    `preview` = NULL,
    `owner` = NULL,
    `currentBid` = NULL,

    #' @description
    #' Initialize a new CreativeResponse class.
    #'
    #' @param creativeId creativeId
    #' @param active active
    #' @param name name
    #' @param description description
    #' @param image image
    #' @param action action
    #' @param content content
    #' @param suffix suffix
    #' @param type type
    #' @param appVersion appVersion
    #' @param preview preview
    #' @param owner owner
    #' @param currentBid currentBid
    #' @param ... Other optional arguments.
    initialize = function(`creativeId` = NULL, `active` = NULL, `name` = NULL, `description` = NULL, `image` = NULL, `action` = NULL, `content` = NULL, `suffix` = NULL, `type` = NULL, `appVersion` = NULL, `preview` = NULL, `owner` = NULL, `currentBid` = NULL, ...) {
      if (!is.null(`creativeId`)) {
        if (!(is.numeric(`creativeId`) && length(`creativeId`) == 1)) {
          stop(paste("Error! Invalid data for `creativeId`. Must be an integer:", `creativeId`))
        }
        self$`creativeId` <- `creativeId`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`action`)) {
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
      if (!is.null(`content`)) {
        stopifnot(R6::is.R6(`content`))
        self$`content` <- `content`
      }
      if (!is.null(`suffix`)) {
        if (!(is.character(`suffix`) && length(`suffix`) == 1)) {
          stop(paste("Error! Invalid data for `suffix`. Must be a string:", `suffix`))
        }
        self$`suffix` <- `suffix`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`appVersion`)) {
        if (!(is.character(`appVersion`) && length(`appVersion`) == 1)) {
          stop(paste("Error! Invalid data for `appVersion`. Must be a string:", `appVersion`))
        }
        self$`appVersion` <- `appVersion`
      }
      if (!is.null(`preview`)) {
        if (!(is.logical(`preview`) && length(`preview`) == 1)) {
          stop(paste("Error! Invalid data for `preview`. Must be a boolean:", `preview`))
        }
        self$`preview` <- `preview`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`currentBid`)) {
        stopifnot(R6::is.R6(`currentBid`))
        self$`currentBid` <- `currentBid`
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
    #' @return CreativeResponse as a base R list.
    #' @examples
    #' # convert array of CreativeResponse (x) to a data frame
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
    #' Convert CreativeResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreativeResponseObject <- list()
      if (!is.null(self$`creativeId`)) {
        CreativeResponseObject[["creativeId"]] <-
          self$`creativeId`
      }
      if (!is.null(self$`active`)) {
        CreativeResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`name`)) {
        CreativeResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        CreativeResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`image`)) {
        CreativeResponseObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`action`)) {
        CreativeResponseObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`content`)) {
        CreativeResponseObject[["content"]] <-
          self$extractSimpleType(self$`content`)
      }
      if (!is.null(self$`suffix`)) {
        CreativeResponseObject[["suffix"]] <-
          self$`suffix`
      }
      if (!is.null(self$`type`)) {
        CreativeResponseObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`appVersion`)) {
        CreativeResponseObject[["appVersion"]] <-
          self$`appVersion`
      }
      if (!is.null(self$`preview`)) {
        CreativeResponseObject[["preview"]] <-
          self$`preview`
      }
      if (!is.null(self$`owner`)) {
        CreativeResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`currentBid`)) {
        CreativeResponseObject[["currentBid"]] <-
          self$extractSimpleType(self$`currentBid`)
      }
      return(CreativeResponseObject)
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
    #' Deserialize JSON string into an instance of CreativeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreativeResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`creativeId`)) {
        self$`creativeId` <- this_object$`creativeId`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- AssetShortResponse$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`action`)) {
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`content`)) {
        `content_object` <- JsonElement$new()
        `content_object`$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
        self$`content` <- `content_object`
      }
      if (!is.null(this_object$`suffix`)) {
        self$`suffix` <- this_object$`suffix`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`appVersion`)) {
        self$`appVersion` <- this_object$`appVersion`
      }
      if (!is.null(this_object$`preview`)) {
        self$`preview` <- this_object$`preview`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- AccountShortResponse$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`currentBid`)) {
        `currentbid_object` <- BidResponse$new()
        `currentbid_object`$fromJSON(jsonlite::toJSON(this_object$`currentBid`, auto_unbox = TRUE, digits = NA))
        self$`currentBid` <- `currentbid_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreativeResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreativeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreativeResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`creativeId` <- this_object$`creativeId`
      self$`active` <- this_object$`active`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`image` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`action` <- this_object$`action`
      self$`content` <- JsonElement$new()$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
      self$`suffix` <- this_object$`suffix`
      self$`type` <- this_object$`type`
      self$`appVersion` <- this_object$`appVersion`
      self$`preview` <- this_object$`preview`
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`currentBid` <- BidResponse$new()$fromJSON(jsonlite::toJSON(this_object$`currentBid`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CreativeResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreativeResponse
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
# CreativeResponse$unlock()
#
## Below is an example to define the print function
# CreativeResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreativeResponse$lock()

