#' Create a new Game
#'
#' @description
#' Game Class
#'
#' @docType class
#' @title Game
#' @description Game Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field owner  \link{Account} [optional]
#' @field application  \link{Application} [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field startDate  character [optional]
#' @field endDate  character [optional]
#' @field packs  list(\link{Pack}) [optional]
#' @field sequenceType  character [optional]
#' @field authorOverride  character [optional]
#' @field icon  \link{Asset} [optional]
#' @field image  \link{Asset} [optional]
#' @field points  integer [optional]
#' @field ticketType  character [optional]
#' @field ticketCount  integer [optional]
#' @field allocateTickets  character [optional]
#' @field allGameLevels  list(\link{GameLevel}) [optional]
#' @field contentName  character [optional]
#' @field contentType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Game <- R6::R6Class(
  "Game",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `owner` = NULL,
    `application` = NULL,
    `title` = NULL,
    `description` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `packs` = NULL,
    `sequenceType` = NULL,
    `authorOverride` = NULL,
    `icon` = NULL,
    `image` = NULL,
    `points` = NULL,
    `ticketType` = NULL,
    `ticketCount` = NULL,
    `allocateTickets` = NULL,
    `allGameLevels` = NULL,
    `contentName` = NULL,
    `contentType` = NULL,

    #' @description
    #' Initialize a new Game class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param owner owner
    #' @param application application
    #' @param title title
    #' @param description description
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param packs packs
    #' @param sequenceType sequenceType
    #' @param authorOverride authorOverride
    #' @param icon icon
    #' @param image image
    #' @param points points
    #' @param ticketType ticketType
    #' @param ticketCount ticketCount
    #' @param allocateTickets allocateTickets
    #' @param allGameLevels allGameLevels
    #' @param contentName contentName
    #' @param contentType contentType
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `owner` = NULL, `application` = NULL, `title` = NULL, `description` = NULL, `startDate` = NULL, `endDate` = NULL, `packs` = NULL, `sequenceType` = NULL, `authorOverride` = NULL, `icon` = NULL, `image` = NULL, `points` = NULL, `ticketType` = NULL, `ticketCount` = NULL, `allocateTickets` = NULL, `allGameLevels` = NULL, `contentName` = NULL, `contentType` = NULL, ...) {
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
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`startDate`)) {
        if (!is.character(`startDate`)) {
          stop(paste("Error! Invalid data for `startDate`. Must be a string:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`endDate`)) {
        if (!is.character(`endDate`)) {
          stop(paste("Error! Invalid data for `endDate`. Must be a string:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`packs`)) {
        stopifnot(is.vector(`packs`), length(`packs`) != 0)
        sapply(`packs`, function(x) stopifnot(R6::is.R6(x)))
        self$`packs` <- `packs`
      }
      if (!is.null(`sequenceType`)) {
        if (!(`sequenceType` %in% c("FIRST_AVAILABLE", "ALL_AVAILABLE"))) {
          stop(paste("Error! \"", `sequenceType`, "\" cannot be assigned to `sequenceType`. Must be \"FIRST_AVAILABLE\", \"ALL_AVAILABLE\".", sep = ""))
        }
        if (!(is.character(`sequenceType`) && length(`sequenceType`) == 1)) {
          stop(paste("Error! Invalid data for `sequenceType`. Must be a string:", `sequenceType`))
        }
        self$`sequenceType` <- `sequenceType`
      }
      if (!is.null(`authorOverride`)) {
        if (!(is.character(`authorOverride`) && length(`authorOverride`) == 1)) {
          stop(paste("Error! Invalid data for `authorOverride`. Must be a string:", `authorOverride`))
        }
        self$`authorOverride` <- `authorOverride`
      }
      if (!is.null(`icon`)) {
        stopifnot(R6::is.R6(`icon`))
        self$`icon` <- `icon`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`points`)) {
        if (!(is.numeric(`points`) && length(`points`) == 1)) {
          stop(paste("Error! Invalid data for `points`. Must be an integer:", `points`))
        }
        self$`points` <- `points`
      }
      if (!is.null(`ticketType`)) {
        if (!(is.character(`ticketType`) && length(`ticketType`) == 1)) {
          stop(paste("Error! Invalid data for `ticketType`. Must be a string:", `ticketType`))
        }
        self$`ticketType` <- `ticketType`
      }
      if (!is.null(`ticketCount`)) {
        if (!(is.numeric(`ticketCount`) && length(`ticketCount`) == 1)) {
          stop(paste("Error! Invalid data for `ticketCount`. Must be an integer:", `ticketCount`))
        }
        self$`ticketCount` <- `ticketCount`
      }
      if (!is.null(`allocateTickets`)) {
        if (!(is.logical(`allocateTickets`) && length(`allocateTickets`) == 1)) {
          stop(paste("Error! Invalid data for `allocateTickets`. Must be a boolean:", `allocateTickets`))
        }
        self$`allocateTickets` <- `allocateTickets`
      }
      if (!is.null(`allGameLevels`)) {
        stopifnot(is.vector(`allGameLevels`), length(`allGameLevels`) != 0)
        sapply(`allGameLevels`, function(x) stopifnot(R6::is.R6(x)))
        self$`allGameLevels` <- `allGameLevels`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
      }
      if (!is.null(`contentType`)) {
        if (!(is.character(`contentType`) && length(`contentType`) == 1)) {
          stop(paste("Error! Invalid data for `contentType`. Must be a string:", `contentType`))
        }
        self$`contentType` <- `contentType`
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
    #' @return Game as a base R list.
    #' @examples
    #' # convert array of Game (x) to a data frame
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
    #' Convert Game to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GameObject <- list()
      if (!is.null(self$`id`)) {
        GameObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        GameObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        GameObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`owner`)) {
        GameObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`application`)) {
        GameObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`title`)) {
        GameObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        GameObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`startDate`)) {
        GameObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        GameObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`packs`)) {
        GameObject[["packs"]] <-
          self$extractSimpleType(self$`packs`)
      }
      if (!is.null(self$`sequenceType`)) {
        GameObject[["sequenceType"]] <-
          self$`sequenceType`
      }
      if (!is.null(self$`authorOverride`)) {
        GameObject[["authorOverride"]] <-
          self$`authorOverride`
      }
      if (!is.null(self$`icon`)) {
        GameObject[["icon"]] <-
          self$extractSimpleType(self$`icon`)
      }
      if (!is.null(self$`image`)) {
        GameObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`points`)) {
        GameObject[["points"]] <-
          self$`points`
      }
      if (!is.null(self$`ticketType`)) {
        GameObject[["ticketType"]] <-
          self$`ticketType`
      }
      if (!is.null(self$`ticketCount`)) {
        GameObject[["ticketCount"]] <-
          self$`ticketCount`
      }
      if (!is.null(self$`allocateTickets`)) {
        GameObject[["allocateTickets"]] <-
          self$`allocateTickets`
      }
      if (!is.null(self$`allGameLevels`)) {
        GameObject[["allGameLevels"]] <-
          self$extractSimpleType(self$`allGameLevels`)
      }
      if (!is.null(self$`contentName`)) {
        GameObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`contentType`)) {
        GameObject[["contentType"]] <-
          self$`contentType`
      }
      return(GameObject)
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
    #' Deserialize JSON string into an instance of Game
    #'
    #' @param input_json the JSON input
    #' @return the instance of Game
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
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`packs`)) {
        self$`packs` <- ApiClient$new()$deserializeObj(this_object$`packs`, "array[Pack]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`sequenceType`)) {
        if (!is.null(this_object$`sequenceType`) && !(this_object$`sequenceType` %in% c("FIRST_AVAILABLE", "ALL_AVAILABLE"))) {
          stop(paste("Error! \"", this_object$`sequenceType`, "\" cannot be assigned to `sequenceType`. Must be \"FIRST_AVAILABLE\", \"ALL_AVAILABLE\".", sep = ""))
        }
        self$`sequenceType` <- this_object$`sequenceType`
      }
      if (!is.null(this_object$`authorOverride`)) {
        self$`authorOverride` <- this_object$`authorOverride`
      }
      if (!is.null(this_object$`icon`)) {
        `icon_object` <- Asset$new()
        `icon_object`$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
        self$`icon` <- `icon_object`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- Asset$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`points`)) {
        self$`points` <- this_object$`points`
      }
      if (!is.null(this_object$`ticketType`)) {
        self$`ticketType` <- this_object$`ticketType`
      }
      if (!is.null(this_object$`ticketCount`)) {
        self$`ticketCount` <- this_object$`ticketCount`
      }
      if (!is.null(this_object$`allocateTickets`)) {
        self$`allocateTickets` <- this_object$`allocateTickets`
      }
      if (!is.null(this_object$`allGameLevels`)) {
        self$`allGameLevels` <- ApiClient$new()$deserializeObj(this_object$`allGameLevels`, "array[GameLevel]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      if (!is.null(this_object$`contentType`)) {
        self$`contentType` <- this_object$`contentType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Game in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Game
    #'
    #' @param input_json the JSON input
    #' @return the instance of Game
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`application` <- Application$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`packs` <- ApiClient$new()$deserializeObj(this_object$`packs`, "array[Pack]", loadNamespace("openapi"))
      if (!is.null(this_object$`sequenceType`) && !(this_object$`sequenceType` %in% c("FIRST_AVAILABLE", "ALL_AVAILABLE"))) {
        stop(paste("Error! \"", this_object$`sequenceType`, "\" cannot be assigned to `sequenceType`. Must be \"FIRST_AVAILABLE\", \"ALL_AVAILABLE\".", sep = ""))
      }
      self$`sequenceType` <- this_object$`sequenceType`
      self$`authorOverride` <- this_object$`authorOverride`
      self$`icon` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
      self$`image` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`points` <- this_object$`points`
      self$`ticketType` <- this_object$`ticketType`
      self$`ticketCount` <- this_object$`ticketCount`
      self$`allocateTickets` <- this_object$`allocateTickets`
      self$`allGameLevels` <- ApiClient$new()$deserializeObj(this_object$`allGameLevels`, "array[GameLevel]", loadNamespace("openapi"))
      self$`contentName` <- this_object$`contentName`
      self$`contentType` <- this_object$`contentType`
      self
    },

    #' @description
    #' Validate JSON input with respect to Game and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Game
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
# Game$unlock()
#
## Below is an example to define the print function
# Game$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Game$lock()

