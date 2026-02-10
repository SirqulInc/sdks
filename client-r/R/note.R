#' Create a new Note
#'
#' @description
#' Note Class
#'
#' @docType class
#' @title Note
#' @description Note Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field owner  \link{Account} [optional]
#' @field notableType  character [optional]
#' @field notableId  integer [optional]
#' @field noteTag  character [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field likes  list(\link{YayOrNay}) [optional]
#' @field assets  list(\link{Asset}) [optional]
#' @field noteDescription  character [optional]
#' @field likeCount  integer [optional]
#' @field dislikeCount  integer [optional]
#' @field noteCount  integer [optional]
#' @field flags  list(\link{Flag}) [optional]
#' @field flagCount  integer [optional]
#' @field flagThreshold  \link{FlagThreshold} [optional]
#' @field contentName  character [optional]
#' @field defaultThreshold  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Note <- R6::R6Class(
  "Note",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `owner` = NULL,
    `notableType` = NULL,
    `notableId` = NULL,
    `noteTag` = NULL,
    `notes` = NULL,
    `likes` = NULL,
    `assets` = NULL,
    `noteDescription` = NULL,
    `likeCount` = NULL,
    `dislikeCount` = NULL,
    `noteCount` = NULL,
    `flags` = NULL,
    `flagCount` = NULL,
    `flagThreshold` = NULL,
    `contentName` = NULL,
    `defaultThreshold` = NULL,

    #' @description
    #' Initialize a new Note class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param owner owner
    #' @param notableType notableType
    #' @param notableId notableId
    #' @param noteTag noteTag
    #' @param notes notes
    #' @param likes likes
    #' @param assets assets
    #' @param noteDescription noteDescription
    #' @param likeCount likeCount
    #' @param dislikeCount dislikeCount
    #' @param noteCount noteCount
    #' @param flags flags
    #' @param flagCount flagCount
    #' @param flagThreshold flagThreshold
    #' @param contentName contentName
    #' @param defaultThreshold defaultThreshold
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `owner` = NULL, `notableType` = NULL, `notableId` = NULL, `noteTag` = NULL, `notes` = NULL, `likes` = NULL, `assets` = NULL, `noteDescription` = NULL, `likeCount` = NULL, `dislikeCount` = NULL, `noteCount` = NULL, `flags` = NULL, `flagCount` = NULL, `flagThreshold` = NULL, `contentName` = NULL, `defaultThreshold` = NULL, ...) {
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
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`notableType`)) {
        if (!(is.character(`notableType`) && length(`notableType`) == 1)) {
          stop(paste("Error! Invalid data for `notableType`. Must be a string:", `notableType`))
        }
        self$`notableType` <- `notableType`
      }
      if (!is.null(`notableId`)) {
        if (!(is.numeric(`notableId`) && length(`notableId`) == 1)) {
          stop(paste("Error! Invalid data for `notableId`. Must be an integer:", `notableId`))
        }
        self$`notableId` <- `notableId`
      }
      if (!is.null(`noteTag`)) {
        if (!(is.character(`noteTag`) && length(`noteTag`) == 1)) {
          stop(paste("Error! Invalid data for `noteTag`. Must be a string:", `noteTag`))
        }
        self$`noteTag` <- `noteTag`
      }
      if (!is.null(`notes`)) {
        stopifnot(is.vector(`notes`), length(`notes`) != 0)
        sapply(`notes`, function(x) stopifnot(R6::is.R6(x)))
        self$`notes` <- `notes`
      }
      if (!is.null(`likes`)) {
        stopifnot(is.vector(`likes`), length(`likes`) != 0)
        sapply(`likes`, function(x) stopifnot(R6::is.R6(x)))
        self$`likes` <- `likes`
      }
      if (!is.null(`assets`)) {
        stopifnot(is.vector(`assets`), length(`assets`) != 0)
        sapply(`assets`, function(x) stopifnot(R6::is.R6(x)))
        self$`assets` <- `assets`
      }
      if (!is.null(`noteDescription`)) {
        if (!(is.character(`noteDescription`) && length(`noteDescription`) == 1)) {
          stop(paste("Error! Invalid data for `noteDescription`. Must be a string:", `noteDescription`))
        }
        self$`noteDescription` <- `noteDescription`
      }
      if (!is.null(`likeCount`)) {
        if (!(is.numeric(`likeCount`) && length(`likeCount`) == 1)) {
          stop(paste("Error! Invalid data for `likeCount`. Must be an integer:", `likeCount`))
        }
        self$`likeCount` <- `likeCount`
      }
      if (!is.null(`dislikeCount`)) {
        if (!(is.numeric(`dislikeCount`) && length(`dislikeCount`) == 1)) {
          stop(paste("Error! Invalid data for `dislikeCount`. Must be an integer:", `dislikeCount`))
        }
        self$`dislikeCount` <- `dislikeCount`
      }
      if (!is.null(`noteCount`)) {
        if (!(is.numeric(`noteCount`) && length(`noteCount`) == 1)) {
          stop(paste("Error! Invalid data for `noteCount`. Must be an integer:", `noteCount`))
        }
        self$`noteCount` <- `noteCount`
      }
      if (!is.null(`flags`)) {
        stopifnot(is.vector(`flags`), length(`flags`) != 0)
        sapply(`flags`, function(x) stopifnot(R6::is.R6(x)))
        self$`flags` <- `flags`
      }
      if (!is.null(`flagCount`)) {
        if (!(is.numeric(`flagCount`) && length(`flagCount`) == 1)) {
          stop(paste("Error! Invalid data for `flagCount`. Must be an integer:", `flagCount`))
        }
        self$`flagCount` <- `flagCount`
      }
      if (!is.null(`flagThreshold`)) {
        stopifnot(R6::is.R6(`flagThreshold`))
        self$`flagThreshold` <- `flagThreshold`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
      }
      if (!is.null(`defaultThreshold`)) {
        if (!(is.numeric(`defaultThreshold`) && length(`defaultThreshold`) == 1)) {
          stop(paste("Error! Invalid data for `defaultThreshold`. Must be an integer:", `defaultThreshold`))
        }
        self$`defaultThreshold` <- `defaultThreshold`
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
    #' @return Note as a base R list.
    #' @examples
    #' # convert array of Note (x) to a data frame
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
    #' Convert Note to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NoteObject <- list()
      if (!is.null(self$`id`)) {
        NoteObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        NoteObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        NoteObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        NoteObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        NoteObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        NoteObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`owner`)) {
        NoteObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`notableType`)) {
        NoteObject[["notableType"]] <-
          self$`notableType`
      }
      if (!is.null(self$`notableId`)) {
        NoteObject[["notableId"]] <-
          self$`notableId`
      }
      if (!is.null(self$`noteTag`)) {
        NoteObject[["noteTag"]] <-
          self$`noteTag`
      }
      if (!is.null(self$`notes`)) {
        NoteObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`likes`)) {
        NoteObject[["likes"]] <-
          self$extractSimpleType(self$`likes`)
      }
      if (!is.null(self$`assets`)) {
        NoteObject[["assets"]] <-
          self$extractSimpleType(self$`assets`)
      }
      if (!is.null(self$`noteDescription`)) {
        NoteObject[["noteDescription"]] <-
          self$`noteDescription`
      }
      if (!is.null(self$`likeCount`)) {
        NoteObject[["likeCount"]] <-
          self$`likeCount`
      }
      if (!is.null(self$`dislikeCount`)) {
        NoteObject[["dislikeCount"]] <-
          self$`dislikeCount`
      }
      if (!is.null(self$`noteCount`)) {
        NoteObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`flags`)) {
        NoteObject[["flags"]] <-
          self$extractSimpleType(self$`flags`)
      }
      if (!is.null(self$`flagCount`)) {
        NoteObject[["flagCount"]] <-
          self$`flagCount`
      }
      if (!is.null(self$`flagThreshold`)) {
        NoteObject[["flagThreshold"]] <-
          self$extractSimpleType(self$`flagThreshold`)
      }
      if (!is.null(self$`contentName`)) {
        NoteObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`defaultThreshold`)) {
        NoteObject[["defaultThreshold"]] <-
          self$`defaultThreshold`
      }
      return(NoteObject)
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
    #' Deserialize JSON string into an instance of Note
    #'
    #' @param input_json the JSON input
    #' @return the instance of Note
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
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`locationDescription`)) {
        self$`locationDescription` <- this_object$`locationDescription`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`notableType`)) {
        self$`notableType` <- this_object$`notableType`
      }
      if (!is.null(this_object$`notableId`)) {
        self$`notableId` <- this_object$`notableId`
      }
      if (!is.null(this_object$`noteTag`)) {
        self$`noteTag` <- this_object$`noteTag`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`likes`)) {
        self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[YayOrNay]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`assets`)) {
        self$`assets` <- ApiClient$new()$deserializeObj(this_object$`assets`, "array[Asset]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`noteDescription`)) {
        self$`noteDescription` <- this_object$`noteDescription`
      }
      if (!is.null(this_object$`likeCount`)) {
        self$`likeCount` <- this_object$`likeCount`
      }
      if (!is.null(this_object$`dislikeCount`)) {
        self$`dislikeCount` <- this_object$`dislikeCount`
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
      }
      if (!is.null(this_object$`flags`)) {
        self$`flags` <- ApiClient$new()$deserializeObj(this_object$`flags`, "array[Flag]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`flagCount`)) {
        self$`flagCount` <- this_object$`flagCount`
      }
      if (!is.null(this_object$`flagThreshold`)) {
        `flagthreshold_object` <- FlagThreshold$new()
        `flagthreshold_object`$fromJSON(jsonlite::toJSON(this_object$`flagThreshold`, auto_unbox = TRUE, digits = NA))
        self$`flagThreshold` <- `flagthreshold_object`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      if (!is.null(this_object$`defaultThreshold`)) {
        self$`defaultThreshold` <- this_object$`defaultThreshold`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Note in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Note
    #'
    #' @param input_json the JSON input
    #' @return the instance of Note
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`notableType` <- this_object$`notableType`
      self$`notableId` <- this_object$`notableId`
      self$`noteTag` <- this_object$`noteTag`
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[YayOrNay]", loadNamespace("openapi"))
      self$`assets` <- ApiClient$new()$deserializeObj(this_object$`assets`, "array[Asset]", loadNamespace("openapi"))
      self$`noteDescription` <- this_object$`noteDescription`
      self$`likeCount` <- this_object$`likeCount`
      self$`dislikeCount` <- this_object$`dislikeCount`
      self$`noteCount` <- this_object$`noteCount`
      self$`flags` <- ApiClient$new()$deserializeObj(this_object$`flags`, "array[Flag]", loadNamespace("openapi"))
      self$`flagCount` <- this_object$`flagCount`
      self$`flagThreshold` <- FlagThreshold$new()$fromJSON(jsonlite::toJSON(this_object$`flagThreshold`, auto_unbox = TRUE, digits = NA))
      self$`contentName` <- this_object$`contentName`
      self$`defaultThreshold` <- this_object$`defaultThreshold`
      self
    },

    #' @description
    #' Validate JSON input with respect to Note and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Note
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
# Note$unlock()
#
## Below is an example to define the print function
# Note$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Note$lock()

