#' Create a new MissionInviteResponse
#'
#' @description
#' MissionInviteResponse Class
#'
#' @docType class
#' @title MissionInviteResponse
#' @description MissionInviteResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field status  character [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @field permissionableId  integer [optional]
#' @field permissionableType  character [optional]
#' @field ranked  character [optional]
#' @field rewarded  character [optional]
#' @field startDate  integer [optional]
#' @field endDate  integer [optional]
#' @field updated  integer [optional]
#' @field buyBackAvailable  character [optional]
#' @field inviteStatus  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MissionInviteResponse <- R6::R6Class(
  "MissionInviteResponse",
  public = list(
    `id` = NULL,
    `status` = NULL,
    `title` = NULL,
    `description` = NULL,
    `owner` = NULL,
    `permissionableId` = NULL,
    `permissionableType` = NULL,
    `ranked` = NULL,
    `rewarded` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `updated` = NULL,
    `buyBackAvailable` = NULL,
    `inviteStatus` = NULL,

    #' @description
    #' Initialize a new MissionInviteResponse class.
    #'
    #' @param id id
    #' @param status status
    #' @param title title
    #' @param description description
    #' @param owner owner
    #' @param permissionableId permissionableId
    #' @param permissionableType permissionableType
    #' @param ranked ranked
    #' @param rewarded rewarded
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param updated updated
    #' @param buyBackAvailable buyBackAvailable
    #' @param inviteStatus inviteStatus
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `status` = NULL, `title` = NULL, `description` = NULL, `owner` = NULL, `permissionableId` = NULL, `permissionableType` = NULL, `ranked` = NULL, `rewarded` = NULL, `startDate` = NULL, `endDate` = NULL, `updated` = NULL, `buyBackAvailable` = NULL, `inviteStatus` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"AVAILABLE\", \"PENDING\", \"UPDATED\", \"ACCEPTED\", \"ACTIVE\", \"BUY_BACK\", \"FAILED\", \"QUIT\", \"COMPLETED\", \"PENDING_REVIEW\", \"REJECTED\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
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
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`permissionableId`)) {
        if (!(is.numeric(`permissionableId`) && length(`permissionableId`) == 1)) {
          stop(paste("Error! Invalid data for `permissionableId`. Must be an integer:", `permissionableId`))
        }
        self$`permissionableId` <- `permissionableId`
      }
      if (!is.null(`permissionableType`)) {
        if (!(is.character(`permissionableType`) && length(`permissionableType`) == 1)) {
          stop(paste("Error! Invalid data for `permissionableType`. Must be a string:", `permissionableType`))
        }
        self$`permissionableType` <- `permissionableType`
      }
      if (!is.null(`ranked`)) {
        if (!(is.logical(`ranked`) && length(`ranked`) == 1)) {
          stop(paste("Error! Invalid data for `ranked`. Must be a boolean:", `ranked`))
        }
        self$`ranked` <- `ranked`
      }
      if (!is.null(`rewarded`)) {
        if (!(is.logical(`rewarded`) && length(`rewarded`) == 1)) {
          stop(paste("Error! Invalid data for `rewarded`. Must be a boolean:", `rewarded`))
        }
        self$`rewarded` <- `rewarded`
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
      if (!is.null(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`buyBackAvailable`)) {
        if (!(is.logical(`buyBackAvailable`) && length(`buyBackAvailable`) == 1)) {
          stop(paste("Error! Invalid data for `buyBackAvailable`. Must be a boolean:", `buyBackAvailable`))
        }
        self$`buyBackAvailable` <- `buyBackAvailable`
      }
      if (!is.null(`inviteStatus`)) {
        if (!(`inviteStatus` %in% c("AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED"))) {
          stop(paste("Error! \"", `inviteStatus`, "\" cannot be assigned to `inviteStatus`. Must be \"AVAILABLE\", \"PENDING\", \"UPDATED\", \"ACCEPTED\", \"ACTIVE\", \"BUY_BACK\", \"FAILED\", \"QUIT\", \"COMPLETED\", \"PENDING_REVIEW\", \"REJECTED\".", sep = ""))
        }
        if (!(is.character(`inviteStatus`) && length(`inviteStatus`) == 1)) {
          stop(paste("Error! Invalid data for `inviteStatus`. Must be a string:", `inviteStatus`))
        }
        self$`inviteStatus` <- `inviteStatus`
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
    #' @return MissionInviteResponse as a base R list.
    #' @examples
    #' # convert array of MissionInviteResponse (x) to a data frame
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
    #' Convert MissionInviteResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MissionInviteResponseObject <- list()
      if (!is.null(self$`id`)) {
        MissionInviteResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`status`)) {
        MissionInviteResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`title`)) {
        MissionInviteResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        MissionInviteResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`owner`)) {
        MissionInviteResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`permissionableId`)) {
        MissionInviteResponseObject[["permissionableId"]] <-
          self$`permissionableId`
      }
      if (!is.null(self$`permissionableType`)) {
        MissionInviteResponseObject[["permissionableType"]] <-
          self$`permissionableType`
      }
      if (!is.null(self$`ranked`)) {
        MissionInviteResponseObject[["ranked"]] <-
          self$`ranked`
      }
      if (!is.null(self$`rewarded`)) {
        MissionInviteResponseObject[["rewarded"]] <-
          self$`rewarded`
      }
      if (!is.null(self$`startDate`)) {
        MissionInviteResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        MissionInviteResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`updated`)) {
        MissionInviteResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`buyBackAvailable`)) {
        MissionInviteResponseObject[["buyBackAvailable"]] <-
          self$`buyBackAvailable`
      }
      if (!is.null(self$`inviteStatus`)) {
        MissionInviteResponseObject[["inviteStatus"]] <-
          self$`inviteStatus`
      }
      return(MissionInviteResponseObject)
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
    #' Deserialize JSON string into an instance of MissionInviteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MissionInviteResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"AVAILABLE\", \"PENDING\", \"UPDATED\", \"ACCEPTED\", \"ACTIVE\", \"BUY_BACK\", \"FAILED\", \"QUIT\", \"COMPLETED\", \"PENDING_REVIEW\", \"REJECTED\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- AccountShortResponse$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`permissionableId`)) {
        self$`permissionableId` <- this_object$`permissionableId`
      }
      if (!is.null(this_object$`permissionableType`)) {
        self$`permissionableType` <- this_object$`permissionableType`
      }
      if (!is.null(this_object$`ranked`)) {
        self$`ranked` <- this_object$`ranked`
      }
      if (!is.null(this_object$`rewarded`)) {
        self$`rewarded` <- this_object$`rewarded`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`buyBackAvailable`)) {
        self$`buyBackAvailable` <- this_object$`buyBackAvailable`
      }
      if (!is.null(this_object$`inviteStatus`)) {
        if (!is.null(this_object$`inviteStatus`) && !(this_object$`inviteStatus` %in% c("AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED"))) {
          stop(paste("Error! \"", this_object$`inviteStatus`, "\" cannot be assigned to `inviteStatus`. Must be \"AVAILABLE\", \"PENDING\", \"UPDATED\", \"ACCEPTED\", \"ACTIVE\", \"BUY_BACK\", \"FAILED\", \"QUIT\", \"COMPLETED\", \"PENDING_REVIEW\", \"REJECTED\".", sep = ""))
        }
        self$`inviteStatus` <- this_object$`inviteStatus`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MissionInviteResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MissionInviteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MissionInviteResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"AVAILABLE\", \"PENDING\", \"UPDATED\", \"ACCEPTED\", \"ACTIVE\", \"BUY_BACK\", \"FAILED\", \"QUIT\", \"COMPLETED\", \"PENDING_REVIEW\", \"REJECTED\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`permissionableId` <- this_object$`permissionableId`
      self$`permissionableType` <- this_object$`permissionableType`
      self$`ranked` <- this_object$`ranked`
      self$`rewarded` <- this_object$`rewarded`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`updated` <- this_object$`updated`
      self$`buyBackAvailable` <- this_object$`buyBackAvailable`
      if (!is.null(this_object$`inviteStatus`) && !(this_object$`inviteStatus` %in% c("AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED"))) {
        stop(paste("Error! \"", this_object$`inviteStatus`, "\" cannot be assigned to `inviteStatus`. Must be \"AVAILABLE\", \"PENDING\", \"UPDATED\", \"ACCEPTED\", \"ACTIVE\", \"BUY_BACK\", \"FAILED\", \"QUIT\", \"COMPLETED\", \"PENDING_REVIEW\", \"REJECTED\".", sep = ""))
      }
      self$`inviteStatus` <- this_object$`inviteStatus`
      self
    },

    #' @description
    #' Validate JSON input with respect to MissionInviteResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MissionInviteResponse
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
# MissionInviteResponse$unlock()
#
## Below is an example to define the print function
# MissionInviteResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MissionInviteResponse$lock()

