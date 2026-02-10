#' Create a new AppInfoResponse
#'
#' @description
#' AppInfoResponse Class
#'
#' @docType class
#' @title AppInfoResponse
#' @description AppInfoResponse Class
#' @format An \code{R6Class} generator object
#' @field points  integer [optional]
#' @field ticketsAvailable  integer [optional]
#' @field ticketsEarned  integer [optional]
#' @field ticketsPurchased  integer [optional]
#' @field ticketsUsed  integer [optional]
#' @field rank  character [optional]
#' @field maxPoints  integer [optional]
#' @field maxTickets  integer [optional]
#' @field pointToTicketModifier  numeric [optional]
#' @field scoringType  character [optional]
#' @field purchaseItemListResponse  \link{PurchaseItemListResponse} [optional]
#' @field termsAcceptedDate  integer [optional]
#' @field requiresTermsAcceptance  character [optional]
#' @field completedAchievements  list(\link{AchievementProgressResponse}) [optional]
#' @field wipAchievements  list(\link{AchievementProgressResponse}) [optional]
#' @field appBlob  character [optional]
#' @field enablePush  character [optional]
#' @field enableSMS  character [optional]
#' @field enableEmail  character [optional]
#' @field ticketCounts  list(\link{TicketCountResponse}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AppInfoResponse <- R6::R6Class(
  "AppInfoResponse",
  public = list(
    `points` = NULL,
    `ticketsAvailable` = NULL,
    `ticketsEarned` = NULL,
    `ticketsPurchased` = NULL,
    `ticketsUsed` = NULL,
    `rank` = NULL,
    `maxPoints` = NULL,
    `maxTickets` = NULL,
    `pointToTicketModifier` = NULL,
    `scoringType` = NULL,
    `purchaseItemListResponse` = NULL,
    `termsAcceptedDate` = NULL,
    `requiresTermsAcceptance` = NULL,
    `completedAchievements` = NULL,
    `wipAchievements` = NULL,
    `appBlob` = NULL,
    `enablePush` = NULL,
    `enableSMS` = NULL,
    `enableEmail` = NULL,
    `ticketCounts` = NULL,

    #' @description
    #' Initialize a new AppInfoResponse class.
    #'
    #' @param points points
    #' @param ticketsAvailable ticketsAvailable
    #' @param ticketsEarned ticketsEarned
    #' @param ticketsPurchased ticketsPurchased
    #' @param ticketsUsed ticketsUsed
    #' @param rank rank
    #' @param maxPoints maxPoints
    #' @param maxTickets maxTickets
    #' @param pointToTicketModifier pointToTicketModifier
    #' @param scoringType scoringType
    #' @param purchaseItemListResponse purchaseItemListResponse
    #' @param termsAcceptedDate termsAcceptedDate
    #' @param requiresTermsAcceptance requiresTermsAcceptance
    #' @param completedAchievements completedAchievements
    #' @param wipAchievements wipAchievements
    #' @param appBlob appBlob
    #' @param enablePush enablePush
    #' @param enableSMS enableSMS
    #' @param enableEmail enableEmail
    #' @param ticketCounts ticketCounts
    #' @param ... Other optional arguments.
    initialize = function(`points` = NULL, `ticketsAvailable` = NULL, `ticketsEarned` = NULL, `ticketsPurchased` = NULL, `ticketsUsed` = NULL, `rank` = NULL, `maxPoints` = NULL, `maxTickets` = NULL, `pointToTicketModifier` = NULL, `scoringType` = NULL, `purchaseItemListResponse` = NULL, `termsAcceptedDate` = NULL, `requiresTermsAcceptance` = NULL, `completedAchievements` = NULL, `wipAchievements` = NULL, `appBlob` = NULL, `enablePush` = NULL, `enableSMS` = NULL, `enableEmail` = NULL, `ticketCounts` = NULL, ...) {
      if (!is.null(`points`)) {
        if (!(is.numeric(`points`) && length(`points`) == 1)) {
          stop(paste("Error! Invalid data for `points`. Must be an integer:", `points`))
        }
        self$`points` <- `points`
      }
      if (!is.null(`ticketsAvailable`)) {
        if (!(is.numeric(`ticketsAvailable`) && length(`ticketsAvailable`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsAvailable`. Must be an integer:", `ticketsAvailable`))
        }
        self$`ticketsAvailable` <- `ticketsAvailable`
      }
      if (!is.null(`ticketsEarned`)) {
        if (!(is.numeric(`ticketsEarned`) && length(`ticketsEarned`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsEarned`. Must be an integer:", `ticketsEarned`))
        }
        self$`ticketsEarned` <- `ticketsEarned`
      }
      if (!is.null(`ticketsPurchased`)) {
        if (!(is.numeric(`ticketsPurchased`) && length(`ticketsPurchased`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsPurchased`. Must be an integer:", `ticketsPurchased`))
        }
        self$`ticketsPurchased` <- `ticketsPurchased`
      }
      if (!is.null(`ticketsUsed`)) {
        if (!(is.numeric(`ticketsUsed`) && length(`ticketsUsed`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsUsed`. Must be an integer:", `ticketsUsed`))
        }
        self$`ticketsUsed` <- `ticketsUsed`
      }
      if (!is.null(`rank`)) {
        if (!(is.character(`rank`) && length(`rank`) == 1)) {
          stop(paste("Error! Invalid data for `rank`. Must be a string:", `rank`))
        }
        self$`rank` <- `rank`
      }
      if (!is.null(`maxPoints`)) {
        if (!(is.numeric(`maxPoints`) && length(`maxPoints`) == 1)) {
          stop(paste("Error! Invalid data for `maxPoints`. Must be an integer:", `maxPoints`))
        }
        self$`maxPoints` <- `maxPoints`
      }
      if (!is.null(`maxTickets`)) {
        if (!(is.numeric(`maxTickets`) && length(`maxTickets`) == 1)) {
          stop(paste("Error! Invalid data for `maxTickets`. Must be an integer:", `maxTickets`))
        }
        self$`maxTickets` <- `maxTickets`
      }
      if (!is.null(`pointToTicketModifier`)) {
        if (!(is.numeric(`pointToTicketModifier`) && length(`pointToTicketModifier`) == 1)) {
          stop(paste("Error! Invalid data for `pointToTicketModifier`. Must be a number:", `pointToTicketModifier`))
        }
        self$`pointToTicketModifier` <- `pointToTicketModifier`
      }
      if (!is.null(`scoringType`)) {
        if (!(`scoringType` %in% c("GAME_LEVEL", "GAME_OBJECT"))) {
          stop(paste("Error! \"", `scoringType`, "\" cannot be assigned to `scoringType`. Must be \"GAME_LEVEL\", \"GAME_OBJECT\".", sep = ""))
        }
        if (!(is.character(`scoringType`) && length(`scoringType`) == 1)) {
          stop(paste("Error! Invalid data for `scoringType`. Must be a string:", `scoringType`))
        }
        self$`scoringType` <- `scoringType`
      }
      if (!is.null(`purchaseItemListResponse`)) {
        stopifnot(R6::is.R6(`purchaseItemListResponse`))
        self$`purchaseItemListResponse` <- `purchaseItemListResponse`
      }
      if (!is.null(`termsAcceptedDate`)) {
        if (!(is.numeric(`termsAcceptedDate`) && length(`termsAcceptedDate`) == 1)) {
          stop(paste("Error! Invalid data for `termsAcceptedDate`. Must be an integer:", `termsAcceptedDate`))
        }
        self$`termsAcceptedDate` <- `termsAcceptedDate`
      }
      if (!is.null(`requiresTermsAcceptance`)) {
        if (!(is.logical(`requiresTermsAcceptance`) && length(`requiresTermsAcceptance`) == 1)) {
          stop(paste("Error! Invalid data for `requiresTermsAcceptance`. Must be a boolean:", `requiresTermsAcceptance`))
        }
        self$`requiresTermsAcceptance` <- `requiresTermsAcceptance`
      }
      if (!is.null(`completedAchievements`)) {
        stopifnot(is.vector(`completedAchievements`), length(`completedAchievements`) != 0)
        sapply(`completedAchievements`, function(x) stopifnot(R6::is.R6(x)))
        self$`completedAchievements` <- `completedAchievements`
      }
      if (!is.null(`wipAchievements`)) {
        stopifnot(is.vector(`wipAchievements`), length(`wipAchievements`) != 0)
        sapply(`wipAchievements`, function(x) stopifnot(R6::is.R6(x)))
        self$`wipAchievements` <- `wipAchievements`
      }
      if (!is.null(`appBlob`)) {
        if (!(is.character(`appBlob`) && length(`appBlob`) == 1)) {
          stop(paste("Error! Invalid data for `appBlob`. Must be a string:", `appBlob`))
        }
        self$`appBlob` <- `appBlob`
      }
      if (!is.null(`enablePush`)) {
        if (!(is.logical(`enablePush`) && length(`enablePush`) == 1)) {
          stop(paste("Error! Invalid data for `enablePush`. Must be a boolean:", `enablePush`))
        }
        self$`enablePush` <- `enablePush`
      }
      if (!is.null(`enableSMS`)) {
        if (!(is.logical(`enableSMS`) && length(`enableSMS`) == 1)) {
          stop(paste("Error! Invalid data for `enableSMS`. Must be a boolean:", `enableSMS`))
        }
        self$`enableSMS` <- `enableSMS`
      }
      if (!is.null(`enableEmail`)) {
        if (!(is.logical(`enableEmail`) && length(`enableEmail`) == 1)) {
          stop(paste("Error! Invalid data for `enableEmail`. Must be a boolean:", `enableEmail`))
        }
        self$`enableEmail` <- `enableEmail`
      }
      if (!is.null(`ticketCounts`)) {
        stopifnot(is.vector(`ticketCounts`), length(`ticketCounts`) != 0)
        sapply(`ticketCounts`, function(x) stopifnot(R6::is.R6(x)))
        self$`ticketCounts` <- `ticketCounts`
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
    #' @return AppInfoResponse as a base R list.
    #' @examples
    #' # convert array of AppInfoResponse (x) to a data frame
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
    #' Convert AppInfoResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AppInfoResponseObject <- list()
      if (!is.null(self$`points`)) {
        AppInfoResponseObject[["points"]] <-
          self$`points`
      }
      if (!is.null(self$`ticketsAvailable`)) {
        AppInfoResponseObject[["ticketsAvailable"]] <-
          self$`ticketsAvailable`
      }
      if (!is.null(self$`ticketsEarned`)) {
        AppInfoResponseObject[["ticketsEarned"]] <-
          self$`ticketsEarned`
      }
      if (!is.null(self$`ticketsPurchased`)) {
        AppInfoResponseObject[["ticketsPurchased"]] <-
          self$`ticketsPurchased`
      }
      if (!is.null(self$`ticketsUsed`)) {
        AppInfoResponseObject[["ticketsUsed"]] <-
          self$`ticketsUsed`
      }
      if (!is.null(self$`rank`)) {
        AppInfoResponseObject[["rank"]] <-
          self$`rank`
      }
      if (!is.null(self$`maxPoints`)) {
        AppInfoResponseObject[["maxPoints"]] <-
          self$`maxPoints`
      }
      if (!is.null(self$`maxTickets`)) {
        AppInfoResponseObject[["maxTickets"]] <-
          self$`maxTickets`
      }
      if (!is.null(self$`pointToTicketModifier`)) {
        AppInfoResponseObject[["pointToTicketModifier"]] <-
          self$`pointToTicketModifier`
      }
      if (!is.null(self$`scoringType`)) {
        AppInfoResponseObject[["scoringType"]] <-
          self$`scoringType`
      }
      if (!is.null(self$`purchaseItemListResponse`)) {
        AppInfoResponseObject[["purchaseItemListResponse"]] <-
          self$extractSimpleType(self$`purchaseItemListResponse`)
      }
      if (!is.null(self$`termsAcceptedDate`)) {
        AppInfoResponseObject[["termsAcceptedDate"]] <-
          self$`termsAcceptedDate`
      }
      if (!is.null(self$`requiresTermsAcceptance`)) {
        AppInfoResponseObject[["requiresTermsAcceptance"]] <-
          self$`requiresTermsAcceptance`
      }
      if (!is.null(self$`completedAchievements`)) {
        AppInfoResponseObject[["completedAchievements"]] <-
          self$extractSimpleType(self$`completedAchievements`)
      }
      if (!is.null(self$`wipAchievements`)) {
        AppInfoResponseObject[["wipAchievements"]] <-
          self$extractSimpleType(self$`wipAchievements`)
      }
      if (!is.null(self$`appBlob`)) {
        AppInfoResponseObject[["appBlob"]] <-
          self$`appBlob`
      }
      if (!is.null(self$`enablePush`)) {
        AppInfoResponseObject[["enablePush"]] <-
          self$`enablePush`
      }
      if (!is.null(self$`enableSMS`)) {
        AppInfoResponseObject[["enableSMS"]] <-
          self$`enableSMS`
      }
      if (!is.null(self$`enableEmail`)) {
        AppInfoResponseObject[["enableEmail"]] <-
          self$`enableEmail`
      }
      if (!is.null(self$`ticketCounts`)) {
        AppInfoResponseObject[["ticketCounts"]] <-
          self$extractSimpleType(self$`ticketCounts`)
      }
      return(AppInfoResponseObject)
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
    #' Deserialize JSON string into an instance of AppInfoResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AppInfoResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`points`)) {
        self$`points` <- this_object$`points`
      }
      if (!is.null(this_object$`ticketsAvailable`)) {
        self$`ticketsAvailable` <- this_object$`ticketsAvailable`
      }
      if (!is.null(this_object$`ticketsEarned`)) {
        self$`ticketsEarned` <- this_object$`ticketsEarned`
      }
      if (!is.null(this_object$`ticketsPurchased`)) {
        self$`ticketsPurchased` <- this_object$`ticketsPurchased`
      }
      if (!is.null(this_object$`ticketsUsed`)) {
        self$`ticketsUsed` <- this_object$`ticketsUsed`
      }
      if (!is.null(this_object$`rank`)) {
        self$`rank` <- this_object$`rank`
      }
      if (!is.null(this_object$`maxPoints`)) {
        self$`maxPoints` <- this_object$`maxPoints`
      }
      if (!is.null(this_object$`maxTickets`)) {
        self$`maxTickets` <- this_object$`maxTickets`
      }
      if (!is.null(this_object$`pointToTicketModifier`)) {
        self$`pointToTicketModifier` <- this_object$`pointToTicketModifier`
      }
      if (!is.null(this_object$`scoringType`)) {
        if (!is.null(this_object$`scoringType`) && !(this_object$`scoringType` %in% c("GAME_LEVEL", "GAME_OBJECT"))) {
          stop(paste("Error! \"", this_object$`scoringType`, "\" cannot be assigned to `scoringType`. Must be \"GAME_LEVEL\", \"GAME_OBJECT\".", sep = ""))
        }
        self$`scoringType` <- this_object$`scoringType`
      }
      if (!is.null(this_object$`purchaseItemListResponse`)) {
        `purchaseitemlistresponse_object` <- PurchaseItemListResponse$new()
        `purchaseitemlistresponse_object`$fromJSON(jsonlite::toJSON(this_object$`purchaseItemListResponse`, auto_unbox = TRUE, digits = NA))
        self$`purchaseItemListResponse` <- `purchaseitemlistresponse_object`
      }
      if (!is.null(this_object$`termsAcceptedDate`)) {
        self$`termsAcceptedDate` <- this_object$`termsAcceptedDate`
      }
      if (!is.null(this_object$`requiresTermsAcceptance`)) {
        self$`requiresTermsAcceptance` <- this_object$`requiresTermsAcceptance`
      }
      if (!is.null(this_object$`completedAchievements`)) {
        self$`completedAchievements` <- ApiClient$new()$deserializeObj(this_object$`completedAchievements`, "array[AchievementProgressResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`wipAchievements`)) {
        self$`wipAchievements` <- ApiClient$new()$deserializeObj(this_object$`wipAchievements`, "array[AchievementProgressResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`appBlob`)) {
        self$`appBlob` <- this_object$`appBlob`
      }
      if (!is.null(this_object$`enablePush`)) {
        self$`enablePush` <- this_object$`enablePush`
      }
      if (!is.null(this_object$`enableSMS`)) {
        self$`enableSMS` <- this_object$`enableSMS`
      }
      if (!is.null(this_object$`enableEmail`)) {
        self$`enableEmail` <- this_object$`enableEmail`
      }
      if (!is.null(this_object$`ticketCounts`)) {
        self$`ticketCounts` <- ApiClient$new()$deserializeObj(this_object$`ticketCounts`, "array[TicketCountResponse]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AppInfoResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AppInfoResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AppInfoResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`points` <- this_object$`points`
      self$`ticketsAvailable` <- this_object$`ticketsAvailable`
      self$`ticketsEarned` <- this_object$`ticketsEarned`
      self$`ticketsPurchased` <- this_object$`ticketsPurchased`
      self$`ticketsUsed` <- this_object$`ticketsUsed`
      self$`rank` <- this_object$`rank`
      self$`maxPoints` <- this_object$`maxPoints`
      self$`maxTickets` <- this_object$`maxTickets`
      self$`pointToTicketModifier` <- this_object$`pointToTicketModifier`
      if (!is.null(this_object$`scoringType`) && !(this_object$`scoringType` %in% c("GAME_LEVEL", "GAME_OBJECT"))) {
        stop(paste("Error! \"", this_object$`scoringType`, "\" cannot be assigned to `scoringType`. Must be \"GAME_LEVEL\", \"GAME_OBJECT\".", sep = ""))
      }
      self$`scoringType` <- this_object$`scoringType`
      self$`purchaseItemListResponse` <- PurchaseItemListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`purchaseItemListResponse`, auto_unbox = TRUE, digits = NA))
      self$`termsAcceptedDate` <- this_object$`termsAcceptedDate`
      self$`requiresTermsAcceptance` <- this_object$`requiresTermsAcceptance`
      self$`completedAchievements` <- ApiClient$new()$deserializeObj(this_object$`completedAchievements`, "array[AchievementProgressResponse]", loadNamespace("openapi"))
      self$`wipAchievements` <- ApiClient$new()$deserializeObj(this_object$`wipAchievements`, "array[AchievementProgressResponse]", loadNamespace("openapi"))
      self$`appBlob` <- this_object$`appBlob`
      self$`enablePush` <- this_object$`enablePush`
      self$`enableSMS` <- this_object$`enableSMS`
      self$`enableEmail` <- this_object$`enableEmail`
      self$`ticketCounts` <- ApiClient$new()$deserializeObj(this_object$`ticketCounts`, "array[TicketCountResponse]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AppInfoResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AppInfoResponse
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
# AppInfoResponse$unlock()
#
## Below is an example to define the print function
# AppInfoResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AppInfoResponse$lock()

