#' Create a new QuestionResponse
#'
#' @description
#' QuestionResponse Class
#'
#' @docType class
#' @title QuestionResponse
#' @description QuestionResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field question  character [optional]
#' @field image  \link{AssetShortResponse} [optional]
#' @field videoURL  character [optional]
#' @field active  character [optional]
#' @field answers  list(\link{AnswerResponse}) [optional]
#' @field scores  \link{ScoreListResponse} [optional]
#' @field tickets  \link{TicketListResponse} [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @field icon  \link{AssetShortResponse} [optional]
#' @field authorOverride  character [optional]
#' @field updatedDate  integer [optional]
#' @field startDate  integer [optional]
#' @field endDate  integer [optional]
#' @field createdDate  integer [optional]
#' @field tags  character [optional]
#' @field allocateTickets  character [optional]
#' @field ticketType  character [optional]
#' @field ticketCount  integer [optional]
#' @field points  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QuestionResponse <- R6::R6Class(
  "QuestionResponse",
  public = list(
    `id` = NULL,
    `question` = NULL,
    `image` = NULL,
    `videoURL` = NULL,
    `active` = NULL,
    `answers` = NULL,
    `scores` = NULL,
    `tickets` = NULL,
    `owner` = NULL,
    `icon` = NULL,
    `authorOverride` = NULL,
    `updatedDate` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `createdDate` = NULL,
    `tags` = NULL,
    `allocateTickets` = NULL,
    `ticketType` = NULL,
    `ticketCount` = NULL,
    `points` = NULL,

    #' @description
    #' Initialize a new QuestionResponse class.
    #'
    #' @param id id
    #' @param question question
    #' @param image image
    #' @param videoURL videoURL
    #' @param active active
    #' @param answers answers
    #' @param scores scores
    #' @param tickets tickets
    #' @param owner owner
    #' @param icon icon
    #' @param authorOverride authorOverride
    #' @param updatedDate updatedDate
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param createdDate createdDate
    #' @param tags tags
    #' @param allocateTickets allocateTickets
    #' @param ticketType ticketType
    #' @param ticketCount ticketCount
    #' @param points points
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `question` = NULL, `image` = NULL, `videoURL` = NULL, `active` = NULL, `answers` = NULL, `scores` = NULL, `tickets` = NULL, `owner` = NULL, `icon` = NULL, `authorOverride` = NULL, `updatedDate` = NULL, `startDate` = NULL, `endDate` = NULL, `createdDate` = NULL, `tags` = NULL, `allocateTickets` = NULL, `ticketType` = NULL, `ticketCount` = NULL, `points` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`question`)) {
        if (!(is.character(`question`) && length(`question`) == 1)) {
          stop(paste("Error! Invalid data for `question`. Must be a string:", `question`))
        }
        self$`question` <- `question`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`videoURL`)) {
        if (!(is.character(`videoURL`) && length(`videoURL`) == 1)) {
          stop(paste("Error! Invalid data for `videoURL`. Must be a string:", `videoURL`))
        }
        self$`videoURL` <- `videoURL`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`answers`)) {
        stopifnot(is.vector(`answers`), length(`answers`) != 0)
        sapply(`answers`, function(x) stopifnot(R6::is.R6(x)))
        self$`answers` <- `answers`
      }
      if (!is.null(`scores`)) {
        stopifnot(R6::is.R6(`scores`))
        self$`scores` <- `scores`
      }
      if (!is.null(`tickets`)) {
        stopifnot(R6::is.R6(`tickets`))
        self$`tickets` <- `tickets`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`icon`)) {
        stopifnot(R6::is.R6(`icon`))
        self$`icon` <- `icon`
      }
      if (!is.null(`authorOverride`)) {
        if (!(is.character(`authorOverride`) && length(`authorOverride`) == 1)) {
          stop(paste("Error! Invalid data for `authorOverride`. Must be a string:", `authorOverride`))
        }
        self$`authorOverride` <- `authorOverride`
      }
      if (!is.null(`updatedDate`)) {
        if (!(is.numeric(`updatedDate`) && length(`updatedDate`) == 1)) {
          stop(paste("Error! Invalid data for `updatedDate`. Must be an integer:", `updatedDate`))
        }
        self$`updatedDate` <- `updatedDate`
      }
      if (!is.null(`startDate`)) {
        if (!(is.numeric(`startDate`) && length(`startDate`) == 1)) {
          stop(paste("Error! Invalid data for `startDate`. Must be an integer:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`endDate`)) {
        if (!(is.numeric(`endDate`) && length(`endDate`) == 1)) {
          stop(paste("Error! Invalid data for `endDate`. Must be an integer:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`createdDate`)) {
        if (!(is.numeric(`createdDate`) && length(`createdDate`) == 1)) {
          stop(paste("Error! Invalid data for `createdDate`. Must be an integer:", `createdDate`))
        }
        self$`createdDate` <- `createdDate`
      }
      if (!is.null(`tags`)) {
        if (!(is.character(`tags`) && length(`tags`) == 1)) {
          stop(paste("Error! Invalid data for `tags`. Must be a string:", `tags`))
        }
        self$`tags` <- `tags`
      }
      if (!is.null(`allocateTickets`)) {
        if (!(is.logical(`allocateTickets`) && length(`allocateTickets`) == 1)) {
          stop(paste("Error! Invalid data for `allocateTickets`. Must be a boolean:", `allocateTickets`))
        }
        self$`allocateTickets` <- `allocateTickets`
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
      if (!is.null(`points`)) {
        if (!(is.numeric(`points`) && length(`points`) == 1)) {
          stop(paste("Error! Invalid data for `points`. Must be an integer:", `points`))
        }
        self$`points` <- `points`
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
    #' @return QuestionResponse as a base R list.
    #' @examples
    #' # convert array of QuestionResponse (x) to a data frame
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
    #' Convert QuestionResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QuestionResponseObject <- list()
      if (!is.null(self$`id`)) {
        QuestionResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`question`)) {
        QuestionResponseObject[["question"]] <-
          self$`question`
      }
      if (!is.null(self$`image`)) {
        QuestionResponseObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`videoURL`)) {
        QuestionResponseObject[["videoURL"]] <-
          self$`videoURL`
      }
      if (!is.null(self$`active`)) {
        QuestionResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`answers`)) {
        QuestionResponseObject[["answers"]] <-
          self$extractSimpleType(self$`answers`)
      }
      if (!is.null(self$`scores`)) {
        QuestionResponseObject[["scores"]] <-
          self$extractSimpleType(self$`scores`)
      }
      if (!is.null(self$`tickets`)) {
        QuestionResponseObject[["tickets"]] <-
          self$extractSimpleType(self$`tickets`)
      }
      if (!is.null(self$`owner`)) {
        QuestionResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`icon`)) {
        QuestionResponseObject[["icon"]] <-
          self$extractSimpleType(self$`icon`)
      }
      if (!is.null(self$`authorOverride`)) {
        QuestionResponseObject[["authorOverride"]] <-
          self$`authorOverride`
      }
      if (!is.null(self$`updatedDate`)) {
        QuestionResponseObject[["updatedDate"]] <-
          self$`updatedDate`
      }
      if (!is.null(self$`startDate`)) {
        QuestionResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        QuestionResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`createdDate`)) {
        QuestionResponseObject[["createdDate"]] <-
          self$`createdDate`
      }
      if (!is.null(self$`tags`)) {
        QuestionResponseObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`allocateTickets`)) {
        QuestionResponseObject[["allocateTickets"]] <-
          self$`allocateTickets`
      }
      if (!is.null(self$`ticketType`)) {
        QuestionResponseObject[["ticketType"]] <-
          self$`ticketType`
      }
      if (!is.null(self$`ticketCount`)) {
        QuestionResponseObject[["ticketCount"]] <-
          self$`ticketCount`
      }
      if (!is.null(self$`points`)) {
        QuestionResponseObject[["points"]] <-
          self$`points`
      }
      return(QuestionResponseObject)
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
    #' Deserialize JSON string into an instance of QuestionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuestionResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`question`)) {
        self$`question` <- this_object$`question`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- AssetShortResponse$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`videoURL`)) {
        self$`videoURL` <- this_object$`videoURL`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`answers`)) {
        self$`answers` <- ApiClient$new()$deserializeObj(this_object$`answers`, "array[AnswerResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`scores`)) {
        `scores_object` <- ScoreListResponse$new()
        `scores_object`$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
        self$`scores` <- `scores_object`
      }
      if (!is.null(this_object$`tickets`)) {
        `tickets_object` <- TicketListResponse$new()
        `tickets_object`$fromJSON(jsonlite::toJSON(this_object$`tickets`, auto_unbox = TRUE, digits = NA))
        self$`tickets` <- `tickets_object`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- AccountShortResponse$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`icon`)) {
        `icon_object` <- AssetShortResponse$new()
        `icon_object`$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
        self$`icon` <- `icon_object`
      }
      if (!is.null(this_object$`authorOverride`)) {
        self$`authorOverride` <- this_object$`authorOverride`
      }
      if (!is.null(this_object$`updatedDate`)) {
        self$`updatedDate` <- this_object$`updatedDate`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`createdDate`)) {
        self$`createdDate` <- this_object$`createdDate`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- this_object$`tags`
      }
      if (!is.null(this_object$`allocateTickets`)) {
        self$`allocateTickets` <- this_object$`allocateTickets`
      }
      if (!is.null(this_object$`ticketType`)) {
        self$`ticketType` <- this_object$`ticketType`
      }
      if (!is.null(this_object$`ticketCount`)) {
        self$`ticketCount` <- this_object$`ticketCount`
      }
      if (!is.null(this_object$`points`)) {
        self$`points` <- this_object$`points`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QuestionResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QuestionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuestionResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`question` <- this_object$`question`
      self$`image` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`videoURL` <- this_object$`videoURL`
      self$`active` <- this_object$`active`
      self$`answers` <- ApiClient$new()$deserializeObj(this_object$`answers`, "array[AnswerResponse]", loadNamespace("openapi"))
      self$`scores` <- ScoreListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
      self$`tickets` <- TicketListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`tickets`, auto_unbox = TRUE, digits = NA))
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`icon` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
      self$`authorOverride` <- this_object$`authorOverride`
      self$`updatedDate` <- this_object$`updatedDate`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`createdDate` <- this_object$`createdDate`
      self$`tags` <- this_object$`tags`
      self$`allocateTickets` <- this_object$`allocateTickets`
      self$`ticketType` <- this_object$`ticketType`
      self$`ticketCount` <- this_object$`ticketCount`
      self$`points` <- this_object$`points`
      self
    },

    #' @description
    #' Validate JSON input with respect to QuestionResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QuestionResponse
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
# QuestionResponse$unlock()
#
## Below is an example to define the print function
# QuestionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QuestionResponse$lock()

