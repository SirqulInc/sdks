#' Create a new NoteFullResponse
#'
#' @description
#' NoteFullResponse Class
#'
#' @docType class
#' @title NoteFullResponse
#' @description NoteFullResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field noteId  integer [optional]
#' @field comment  character [optional]
#' @field tags  character [optional]
#' @field likesCount  integer [optional]
#' @field dislikesCount  integer [optional]
#' @field dateCreated  integer [optional]
#' @field createdDate  integer [optional]
#' @field updatedDate  integer [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field attachedAssets  list(\link{AssetShortResponse}) [optional]
#' @field likes  list(\link{LikeResponse}) [optional]
#' @field hasLiked  character [optional]
#' @field hasDisliked  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NoteFullResponse <- R6::R6Class(
  "NoteFullResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `noteId` = NULL,
    `comment` = NULL,
    `tags` = NULL,
    `likesCount` = NULL,
    `dislikesCount` = NULL,
    `dateCreated` = NULL,
    `createdDate` = NULL,
    `updatedDate` = NULL,
    `owner` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `attachedAssets` = NULL,
    `likes` = NULL,
    `hasLiked` = NULL,
    `hasDisliked` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new NoteFullResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param noteId noteId
    #' @param comment comment
    #' @param tags tags
    #' @param likesCount likesCount
    #' @param dislikesCount dislikesCount
    #' @param dateCreated dateCreated
    #' @param createdDate createdDate
    #' @param updatedDate updatedDate
    #' @param owner owner
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param attachedAssets attachedAssets
    #' @param likes likes
    #' @param hasLiked hasLiked
    #' @param hasDisliked hasDisliked
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `noteId` = NULL, `comment` = NULL, `tags` = NULL, `likesCount` = NULL, `dislikesCount` = NULL, `dateCreated` = NULL, `createdDate` = NULL, `updatedDate` = NULL, `owner` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `attachedAssets` = NULL, `likes` = NULL, `hasLiked` = NULL, `hasDisliked` = NULL, `returning` = NULL, ...) {
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`version`)) {
        if (!(is.numeric(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a number:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`serializeNulls`)) {
        if (!(is.logical(`serializeNulls`) && length(`serializeNulls`) == 1)) {
          stop(paste("Error! Invalid data for `serializeNulls`. Must be a boolean:", `serializeNulls`))
        }
        self$`serializeNulls` <- `serializeNulls`
      }
      if (!is.null(`startTimeLog`)) {
        if (!(is.numeric(`startTimeLog`) && length(`startTimeLog`) == 1)) {
          stop(paste("Error! Invalid data for `startTimeLog`. Must be an integer:", `startTimeLog`))
        }
        self$`startTimeLog` <- `startTimeLog`
      }
      if (!is.null(`errorCode`)) {
        if (!(is.character(`errorCode`) && length(`errorCode`) == 1)) {
          stop(paste("Error! Invalid data for `errorCode`. Must be a string:", `errorCode`))
        }
        self$`errorCode` <- `errorCode`
      }
      if (!is.null(`request`)) {
        stopifnot(is.vector(`request`), length(`request`) != 0)
        sapply(`request`, function(x) stopifnot(R6::is.R6(x)))
        self$`request` <- `request`
      }
      if (!is.null(`noteId`)) {
        if (!(is.numeric(`noteId`) && length(`noteId`) == 1)) {
          stop(paste("Error! Invalid data for `noteId`. Must be an integer:", `noteId`))
        }
        self$`noteId` <- `noteId`
      }
      if (!is.null(`comment`)) {
        if (!(is.character(`comment`) && length(`comment`) == 1)) {
          stop(paste("Error! Invalid data for `comment`. Must be a string:", `comment`))
        }
        self$`comment` <- `comment`
      }
      if (!is.null(`tags`)) {
        if (!(is.character(`tags`) && length(`tags`) == 1)) {
          stop(paste("Error! Invalid data for `tags`. Must be a string:", `tags`))
        }
        self$`tags` <- `tags`
      }
      if (!is.null(`likesCount`)) {
        if (!(is.numeric(`likesCount`) && length(`likesCount`) == 1)) {
          stop(paste("Error! Invalid data for `likesCount`. Must be an integer:", `likesCount`))
        }
        self$`likesCount` <- `likesCount`
      }
      if (!is.null(`dislikesCount`)) {
        if (!(is.numeric(`dislikesCount`) && length(`dislikesCount`) == 1)) {
          stop(paste("Error! Invalid data for `dislikesCount`. Must be an integer:", `dislikesCount`))
        }
        self$`dislikesCount` <- `dislikesCount`
      }
      if (!is.null(`dateCreated`)) {
        if (!(is.numeric(`dateCreated`) && length(`dateCreated`) == 1)) {
          stop(paste("Error! Invalid data for `dateCreated`. Must be an integer:", `dateCreated`))
        }
        self$`dateCreated` <- `dateCreated`
      }
      if (!is.null(`createdDate`)) {
        if (!(is.numeric(`createdDate`) && length(`createdDate`) == 1)) {
          stop(paste("Error! Invalid data for `createdDate`. Must be an integer:", `createdDate`))
        }
        self$`createdDate` <- `createdDate`
      }
      if (!is.null(`updatedDate`)) {
        if (!(is.numeric(`updatedDate`) && length(`updatedDate`) == 1)) {
          stop(paste("Error! Invalid data for `updatedDate`. Must be an integer:", `updatedDate`))
        }
        self$`updatedDate` <- `updatedDate`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`latitude`)) {
        if (!(is.numeric(`latitude`) && length(`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", `latitude`))
        }
        self$`latitude` <- `latitude`
      }
      if (!is.null(`longitude`)) {
        if (!(is.numeric(`longitude`) && length(`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", `longitude`))
        }
        self$`longitude` <- `longitude`
      }
      if (!is.null(`locationDescription`)) {
        if (!(is.character(`locationDescription`) && length(`locationDescription`) == 1)) {
          stop(paste("Error! Invalid data for `locationDescription`. Must be a string:", `locationDescription`))
        }
        self$`locationDescription` <- `locationDescription`
      }
      if (!is.null(`attachedAssets`)) {
        stopifnot(is.vector(`attachedAssets`), length(`attachedAssets`) != 0)
        sapply(`attachedAssets`, function(x) stopifnot(R6::is.R6(x)))
        self$`attachedAssets` <- `attachedAssets`
      }
      if (!is.null(`likes`)) {
        stopifnot(is.vector(`likes`), length(`likes`) != 0)
        sapply(`likes`, function(x) stopifnot(R6::is.R6(x)))
        self$`likes` <- `likes`
      }
      if (!is.null(`hasLiked`)) {
        if (!(is.logical(`hasLiked`) && length(`hasLiked`) == 1)) {
          stop(paste("Error! Invalid data for `hasLiked`. Must be a boolean:", `hasLiked`))
        }
        self$`hasLiked` <- `hasLiked`
      }
      if (!is.null(`hasDisliked`)) {
        if (!(is.logical(`hasDisliked`) && length(`hasDisliked`) == 1)) {
          stop(paste("Error! Invalid data for `hasDisliked`. Must be a boolean:", `hasDisliked`))
        }
        self$`hasDisliked` <- `hasDisliked`
      }
      if (!is.null(`returning`)) {
        if (!(is.character(`returning`) && length(`returning`) == 1)) {
          stop(paste("Error! Invalid data for `returning`. Must be a string:", `returning`))
        }
        self$`returning` <- `returning`
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
    #' @return NoteFullResponse as a base R list.
    #' @examples
    #' # convert array of NoteFullResponse (x) to a data frame
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
    #' Convert NoteFullResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NoteFullResponseObject <- list()
      if (!is.null(self$`valid`)) {
        NoteFullResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        NoteFullResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        NoteFullResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        NoteFullResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        NoteFullResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        NoteFullResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        NoteFullResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`noteId`)) {
        NoteFullResponseObject[["noteId"]] <-
          self$`noteId`
      }
      if (!is.null(self$`comment`)) {
        NoteFullResponseObject[["comment"]] <-
          self$`comment`
      }
      if (!is.null(self$`tags`)) {
        NoteFullResponseObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`likesCount`)) {
        NoteFullResponseObject[["likesCount"]] <-
          self$`likesCount`
      }
      if (!is.null(self$`dislikesCount`)) {
        NoteFullResponseObject[["dislikesCount"]] <-
          self$`dislikesCount`
      }
      if (!is.null(self$`dateCreated`)) {
        NoteFullResponseObject[["dateCreated"]] <-
          self$`dateCreated`
      }
      if (!is.null(self$`createdDate`)) {
        NoteFullResponseObject[["createdDate"]] <-
          self$`createdDate`
      }
      if (!is.null(self$`updatedDate`)) {
        NoteFullResponseObject[["updatedDate"]] <-
          self$`updatedDate`
      }
      if (!is.null(self$`owner`)) {
        NoteFullResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`latitude`)) {
        NoteFullResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        NoteFullResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        NoteFullResponseObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`attachedAssets`)) {
        NoteFullResponseObject[["attachedAssets"]] <-
          self$extractSimpleType(self$`attachedAssets`)
      }
      if (!is.null(self$`likes`)) {
        NoteFullResponseObject[["likes"]] <-
          self$extractSimpleType(self$`likes`)
      }
      if (!is.null(self$`hasLiked`)) {
        NoteFullResponseObject[["hasLiked"]] <-
          self$`hasLiked`
      }
      if (!is.null(self$`hasDisliked`)) {
        NoteFullResponseObject[["hasDisliked"]] <-
          self$`hasDisliked`
      }
      if (!is.null(self$`returning`)) {
        NoteFullResponseObject[["returning"]] <-
          self$`returning`
      }
      return(NoteFullResponseObject)
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
    #' Deserialize JSON string into an instance of NoteFullResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of NoteFullResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`serializeNulls`)) {
        self$`serializeNulls` <- this_object$`serializeNulls`
      }
      if (!is.null(this_object$`startTimeLog`)) {
        self$`startTimeLog` <- this_object$`startTimeLog`
      }
      if (!is.null(this_object$`errorCode`)) {
        self$`errorCode` <- this_object$`errorCode`
      }
      if (!is.null(this_object$`request`)) {
        self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`noteId`)) {
        self$`noteId` <- this_object$`noteId`
      }
      if (!is.null(this_object$`comment`)) {
        self$`comment` <- this_object$`comment`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- this_object$`tags`
      }
      if (!is.null(this_object$`likesCount`)) {
        self$`likesCount` <- this_object$`likesCount`
      }
      if (!is.null(this_object$`dislikesCount`)) {
        self$`dislikesCount` <- this_object$`dislikesCount`
      }
      if (!is.null(this_object$`dateCreated`)) {
        self$`dateCreated` <- this_object$`dateCreated`
      }
      if (!is.null(this_object$`createdDate`)) {
        self$`createdDate` <- this_object$`createdDate`
      }
      if (!is.null(this_object$`updatedDate`)) {
        self$`updatedDate` <- this_object$`updatedDate`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- AccountShortResponse$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`locationDescription`)) {
        self$`locationDescription` <- this_object$`locationDescription`
      }
      if (!is.null(this_object$`attachedAssets`)) {
        self$`attachedAssets` <- ApiClient$new()$deserializeObj(this_object$`attachedAssets`, "array[AssetShortResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`likes`)) {
        self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[LikeResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`hasLiked`)) {
        self$`hasLiked` <- this_object$`hasLiked`
      }
      if (!is.null(this_object$`hasDisliked`)) {
        self$`hasDisliked` <- this_object$`hasDisliked`
      }
      if (!is.null(this_object$`returning`)) {
        self$`returning` <- this_object$`returning`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return NoteFullResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NoteFullResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of NoteFullResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`noteId` <- this_object$`noteId`
      self$`comment` <- this_object$`comment`
      self$`tags` <- this_object$`tags`
      self$`likesCount` <- this_object$`likesCount`
      self$`dislikesCount` <- this_object$`dislikesCount`
      self$`dateCreated` <- this_object$`dateCreated`
      self$`createdDate` <- this_object$`createdDate`
      self$`updatedDate` <- this_object$`updatedDate`
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`attachedAssets` <- ApiClient$new()$deserializeObj(this_object$`attachedAssets`, "array[AssetShortResponse]", loadNamespace("openapi"))
      self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[LikeResponse]", loadNamespace("openapi"))
      self$`hasLiked` <- this_object$`hasLiked`
      self$`hasDisliked` <- this_object$`hasDisliked`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to NoteFullResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NoteFullResponse
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
# NoteFullResponse$unlock()
#
## Below is an example to define the print function
# NoteFullResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NoteFullResponse$lock()

