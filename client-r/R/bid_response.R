#' Create a new BidResponse
#'
#' @description
#' BidResponse Class
#'
#' @docType class
#' @title BidResponse
#' @description BidResponse Class
#' @format An \code{R6Class} generator object
#' @field bidId  integer [optional]
#' @field biddableType  character [optional]
#' @field biddableId  integer [optional]
#' @field amountPerView  numeric [optional]
#' @field amountPerAction  numeric [optional]
#' @field currentDailyBudget  numeric [optional]
#' @field currentBudget  numeric [optional]
#' @field currentBudgetExpiration  integer [optional]
#' @field currentBudgetStart  integer [optional]
#' @field budgetAmount  numeric [optional]
#' @field budgetSchedule  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BidResponse <- R6::R6Class(
  "BidResponse",
  public = list(
    `bidId` = NULL,
    `biddableType` = NULL,
    `biddableId` = NULL,
    `amountPerView` = NULL,
    `amountPerAction` = NULL,
    `currentDailyBudget` = NULL,
    `currentBudget` = NULL,
    `currentBudgetExpiration` = NULL,
    `currentBudgetStart` = NULL,
    `budgetAmount` = NULL,
    `budgetSchedule` = NULL,

    #' @description
    #' Initialize a new BidResponse class.
    #'
    #' @param bidId bidId
    #' @param biddableType biddableType
    #' @param biddableId biddableId
    #' @param amountPerView amountPerView
    #' @param amountPerAction amountPerAction
    #' @param currentDailyBudget currentDailyBudget
    #' @param currentBudget currentBudget
    #' @param currentBudgetExpiration currentBudgetExpiration
    #' @param currentBudgetStart currentBudgetStart
    #' @param budgetAmount budgetAmount
    #' @param budgetSchedule budgetSchedule
    #' @param ... Other optional arguments.
    initialize = function(`bidId` = NULL, `biddableType` = NULL, `biddableId` = NULL, `amountPerView` = NULL, `amountPerAction` = NULL, `currentDailyBudget` = NULL, `currentBudget` = NULL, `currentBudgetExpiration` = NULL, `currentBudgetStart` = NULL, `budgetAmount` = NULL, `budgetSchedule` = NULL, ...) {
      if (!is.null(`bidId`)) {
        if (!(is.numeric(`bidId`) && length(`bidId`) == 1)) {
          stop(paste("Error! Invalid data for `bidId`. Must be an integer:", `bidId`))
        }
        self$`bidId` <- `bidId`
      }
      if (!is.null(`biddableType`)) {
        if (!(is.character(`biddableType`) && length(`biddableType`) == 1)) {
          stop(paste("Error! Invalid data for `biddableType`. Must be a string:", `biddableType`))
        }
        self$`biddableType` <- `biddableType`
      }
      if (!is.null(`biddableId`)) {
        if (!(is.numeric(`biddableId`) && length(`biddableId`) == 1)) {
          stop(paste("Error! Invalid data for `biddableId`. Must be an integer:", `biddableId`))
        }
        self$`biddableId` <- `biddableId`
      }
      if (!is.null(`amountPerView`)) {
        if (!(is.numeric(`amountPerView`) && length(`amountPerView`) == 1)) {
          stop(paste("Error! Invalid data for `amountPerView`. Must be a number:", `amountPerView`))
        }
        self$`amountPerView` <- `amountPerView`
      }
      if (!is.null(`amountPerAction`)) {
        if (!(is.numeric(`amountPerAction`) && length(`amountPerAction`) == 1)) {
          stop(paste("Error! Invalid data for `amountPerAction`. Must be a number:", `amountPerAction`))
        }
        self$`amountPerAction` <- `amountPerAction`
      }
      if (!is.null(`currentDailyBudget`)) {
        if (!(is.numeric(`currentDailyBudget`) && length(`currentDailyBudget`) == 1)) {
          stop(paste("Error! Invalid data for `currentDailyBudget`. Must be a number:", `currentDailyBudget`))
        }
        self$`currentDailyBudget` <- `currentDailyBudget`
      }
      if (!is.null(`currentBudget`)) {
        if (!(is.numeric(`currentBudget`) && length(`currentBudget`) == 1)) {
          stop(paste("Error! Invalid data for `currentBudget`. Must be a number:", `currentBudget`))
        }
        self$`currentBudget` <- `currentBudget`
      }
      if (!is.null(`currentBudgetExpiration`)) {
        if (!(is.numeric(`currentBudgetExpiration`) && length(`currentBudgetExpiration`) == 1)) {
          stop(paste("Error! Invalid data for `currentBudgetExpiration`. Must be an integer:", `currentBudgetExpiration`))
        }
        self$`currentBudgetExpiration` <- `currentBudgetExpiration`
      }
      if (!is.null(`currentBudgetStart`)) {
        if (!(is.numeric(`currentBudgetStart`) && length(`currentBudgetStart`) == 1)) {
          stop(paste("Error! Invalid data for `currentBudgetStart`. Must be an integer:", `currentBudgetStart`))
        }
        self$`currentBudgetStart` <- `currentBudgetStart`
      }
      if (!is.null(`budgetAmount`)) {
        if (!(is.numeric(`budgetAmount`) && length(`budgetAmount`) == 1)) {
          stop(paste("Error! Invalid data for `budgetAmount`. Must be a number:", `budgetAmount`))
        }
        self$`budgetAmount` <- `budgetAmount`
      }
      if (!is.null(`budgetSchedule`)) {
        if (!(`budgetSchedule` %in% c("DAILY", "WEEKLY", "MONTHLY", "YEARLY"))) {
          stop(paste("Error! \"", `budgetSchedule`, "\" cannot be assigned to `budgetSchedule`. Must be \"DAILY\", \"WEEKLY\", \"MONTHLY\", \"YEARLY\".", sep = ""))
        }
        if (!(is.character(`budgetSchedule`) && length(`budgetSchedule`) == 1)) {
          stop(paste("Error! Invalid data for `budgetSchedule`. Must be a string:", `budgetSchedule`))
        }
        self$`budgetSchedule` <- `budgetSchedule`
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
    #' @return BidResponse as a base R list.
    #' @examples
    #' # convert array of BidResponse (x) to a data frame
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
    #' Convert BidResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BidResponseObject <- list()
      if (!is.null(self$`bidId`)) {
        BidResponseObject[["bidId"]] <-
          self$`bidId`
      }
      if (!is.null(self$`biddableType`)) {
        BidResponseObject[["biddableType"]] <-
          self$`biddableType`
      }
      if (!is.null(self$`biddableId`)) {
        BidResponseObject[["biddableId"]] <-
          self$`biddableId`
      }
      if (!is.null(self$`amountPerView`)) {
        BidResponseObject[["amountPerView"]] <-
          self$`amountPerView`
      }
      if (!is.null(self$`amountPerAction`)) {
        BidResponseObject[["amountPerAction"]] <-
          self$`amountPerAction`
      }
      if (!is.null(self$`currentDailyBudget`)) {
        BidResponseObject[["currentDailyBudget"]] <-
          self$`currentDailyBudget`
      }
      if (!is.null(self$`currentBudget`)) {
        BidResponseObject[["currentBudget"]] <-
          self$`currentBudget`
      }
      if (!is.null(self$`currentBudgetExpiration`)) {
        BidResponseObject[["currentBudgetExpiration"]] <-
          self$`currentBudgetExpiration`
      }
      if (!is.null(self$`currentBudgetStart`)) {
        BidResponseObject[["currentBudgetStart"]] <-
          self$`currentBudgetStart`
      }
      if (!is.null(self$`budgetAmount`)) {
        BidResponseObject[["budgetAmount"]] <-
          self$`budgetAmount`
      }
      if (!is.null(self$`budgetSchedule`)) {
        BidResponseObject[["budgetSchedule"]] <-
          self$`budgetSchedule`
      }
      return(BidResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BidResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BidResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bidId`)) {
        self$`bidId` <- this_object$`bidId`
      }
      if (!is.null(this_object$`biddableType`)) {
        self$`biddableType` <- this_object$`biddableType`
      }
      if (!is.null(this_object$`biddableId`)) {
        self$`biddableId` <- this_object$`biddableId`
      }
      if (!is.null(this_object$`amountPerView`)) {
        self$`amountPerView` <- this_object$`amountPerView`
      }
      if (!is.null(this_object$`amountPerAction`)) {
        self$`amountPerAction` <- this_object$`amountPerAction`
      }
      if (!is.null(this_object$`currentDailyBudget`)) {
        self$`currentDailyBudget` <- this_object$`currentDailyBudget`
      }
      if (!is.null(this_object$`currentBudget`)) {
        self$`currentBudget` <- this_object$`currentBudget`
      }
      if (!is.null(this_object$`currentBudgetExpiration`)) {
        self$`currentBudgetExpiration` <- this_object$`currentBudgetExpiration`
      }
      if (!is.null(this_object$`currentBudgetStart`)) {
        self$`currentBudgetStart` <- this_object$`currentBudgetStart`
      }
      if (!is.null(this_object$`budgetAmount`)) {
        self$`budgetAmount` <- this_object$`budgetAmount`
      }
      if (!is.null(this_object$`budgetSchedule`)) {
        if (!is.null(this_object$`budgetSchedule`) && !(this_object$`budgetSchedule` %in% c("DAILY", "WEEKLY", "MONTHLY", "YEARLY"))) {
          stop(paste("Error! \"", this_object$`budgetSchedule`, "\" cannot be assigned to `budgetSchedule`. Must be \"DAILY\", \"WEEKLY\", \"MONTHLY\", \"YEARLY\".", sep = ""))
        }
        self$`budgetSchedule` <- this_object$`budgetSchedule`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BidResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BidResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BidResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bidId` <- this_object$`bidId`
      self$`biddableType` <- this_object$`biddableType`
      self$`biddableId` <- this_object$`biddableId`
      self$`amountPerView` <- this_object$`amountPerView`
      self$`amountPerAction` <- this_object$`amountPerAction`
      self$`currentDailyBudget` <- this_object$`currentDailyBudget`
      self$`currentBudget` <- this_object$`currentBudget`
      self$`currentBudgetExpiration` <- this_object$`currentBudgetExpiration`
      self$`currentBudgetStart` <- this_object$`currentBudgetStart`
      self$`budgetAmount` <- this_object$`budgetAmount`
      if (!is.null(this_object$`budgetSchedule`) && !(this_object$`budgetSchedule` %in% c("DAILY", "WEEKLY", "MONTHLY", "YEARLY"))) {
        stop(paste("Error! \"", this_object$`budgetSchedule`, "\" cannot be assigned to `budgetSchedule`. Must be \"DAILY\", \"WEEKLY\", \"MONTHLY\", \"YEARLY\".", sep = ""))
      }
      self$`budgetSchedule` <- this_object$`budgetSchedule`
      self
    },

    #' @description
    #' Validate JSON input with respect to BidResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BidResponse
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
# BidResponse$unlock()
#
## Below is an example to define the print function
# BidResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BidResponse$lock()

