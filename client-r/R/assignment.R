#' Create a new Assignment
#'
#' @description
#' Assignment Class
#'
#' @docType class
#' @title Assignment
#' @description Assignment Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field assignee  \link{Account} [optional]
#' @field retailerLocation  \link{RetailerLocation} [optional]
#' @field creator  \link{Account} [optional]
#' @field lastUpdatedBy  \link{Account} [optional]
#' @field currentStatus  \link{AssignmentStatus} [optional]
#' @field currentStatusType  character [optional]
#' @field assets  list(\link{Asset}) [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field publicPermissions  \link{Permissions} [optional]
#' @field userPermissions  list(\link{UserPermissions}) [optional]
#' @field visibility  character [optional]
#' @field statuses  list(\link{AssignmentStatus}) [optional]
#' @field application  \link{Application} [optional]
#' @field approvalStatus  character [optional]
#' @field contentName  character [optional]
#' @field contentAsset  \link{Asset} [optional]
#' @field owner  \link{Account} [optional]
#' @field noteCount  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Assignment <- R6::R6Class(
  "Assignment",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `name` = NULL,
    `description` = NULL,
    `assignee` = NULL,
    `retailerLocation` = NULL,
    `creator` = NULL,
    `lastUpdatedBy` = NULL,
    `currentStatus` = NULL,
    `currentStatusType` = NULL,
    `assets` = NULL,
    `notes` = NULL,
    `publicPermissions` = NULL,
    `userPermissions` = NULL,
    `visibility` = NULL,
    `statuses` = NULL,
    `application` = NULL,
    `approvalStatus` = NULL,
    `contentName` = NULL,
    `contentAsset` = NULL,
    `owner` = NULL,
    `noteCount` = NULL,

    #' @description
    #' Initialize a new Assignment class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param name name
    #' @param description description
    #' @param assignee assignee
    #' @param retailerLocation retailerLocation
    #' @param creator creator
    #' @param lastUpdatedBy lastUpdatedBy
    #' @param currentStatus currentStatus
    #' @param currentStatusType currentStatusType
    #' @param assets assets
    #' @param notes notes
    #' @param publicPermissions publicPermissions
    #' @param userPermissions userPermissions
    #' @param visibility visibility
    #' @param statuses statuses
    #' @param application application
    #' @param approvalStatus approvalStatus
    #' @param contentName contentName
    #' @param contentAsset contentAsset
    #' @param owner owner
    #' @param noteCount noteCount
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `name` = NULL, `description` = NULL, `assignee` = NULL, `retailerLocation` = NULL, `creator` = NULL, `lastUpdatedBy` = NULL, `currentStatus` = NULL, `currentStatusType` = NULL, `assets` = NULL, `notes` = NULL, `publicPermissions` = NULL, `userPermissions` = NULL, `visibility` = NULL, `statuses` = NULL, `application` = NULL, `approvalStatus` = NULL, `contentName` = NULL, `contentAsset` = NULL, `owner` = NULL, `noteCount` = NULL, ...) {
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
      if (!is.null(`assignee`)) {
        stopifnot(R6::is.R6(`assignee`))
        self$`assignee` <- `assignee`
      }
      if (!is.null(`retailerLocation`)) {
        stopifnot(R6::is.R6(`retailerLocation`))
        self$`retailerLocation` <- `retailerLocation`
      }
      if (!is.null(`creator`)) {
        stopifnot(R6::is.R6(`creator`))
        self$`creator` <- `creator`
      }
      if (!is.null(`lastUpdatedBy`)) {
        stopifnot(R6::is.R6(`lastUpdatedBy`))
        self$`lastUpdatedBy` <- `lastUpdatedBy`
      }
      if (!is.null(`currentStatus`)) {
        stopifnot(R6::is.R6(`currentStatus`))
        self$`currentStatus` <- `currentStatus`
      }
      if (!is.null(`currentStatusType`)) {
        if (!(`currentStatusType` %in% c("NEW", "IN_PROGRESS", "SUBSCRIBED", "ARCHIVED"))) {
          stop(paste("Error! \"", `currentStatusType`, "\" cannot be assigned to `currentStatusType`. Must be \"NEW\", \"IN_PROGRESS\", \"SUBSCRIBED\", \"ARCHIVED\".", sep = ""))
        }
        if (!(is.character(`currentStatusType`) && length(`currentStatusType`) == 1)) {
          stop(paste("Error! Invalid data for `currentStatusType`. Must be a string:", `currentStatusType`))
        }
        self$`currentStatusType` <- `currentStatusType`
      }
      if (!is.null(`assets`)) {
        stopifnot(is.vector(`assets`), length(`assets`) != 0)
        sapply(`assets`, function(x) stopifnot(R6::is.R6(x)))
        self$`assets` <- `assets`
      }
      if (!is.null(`notes`)) {
        stopifnot(is.vector(`notes`), length(`notes`) != 0)
        sapply(`notes`, function(x) stopifnot(R6::is.R6(x)))
        self$`notes` <- `notes`
      }
      if (!is.null(`publicPermissions`)) {
        stopifnot(R6::is.R6(`publicPermissions`))
        self$`publicPermissions` <- `publicPermissions`
      }
      if (!is.null(`userPermissions`)) {
        stopifnot(is.vector(`userPermissions`), length(`userPermissions`) != 0)
        sapply(`userPermissions`, function(x) stopifnot(R6::is.R6(x)))
        self$`userPermissions` <- `userPermissions`
      }
      if (!is.null(`visibility`)) {
        if (!(`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", `visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        if (!(is.character(`visibility`) && length(`visibility`) == 1)) {
          stop(paste("Error! Invalid data for `visibility`. Must be a string:", `visibility`))
        }
        self$`visibility` <- `visibility`
      }
      if (!is.null(`statuses`)) {
        stopifnot(is.vector(`statuses`), length(`statuses`) != 0)
        sapply(`statuses`, function(x) stopifnot(R6::is.R6(x)))
        self$`statuses` <- `statuses`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
      }
      if (!is.null(`approvalStatus`)) {
        if (!(`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
          stop(paste("Error! \"", `approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
        }
        if (!(is.character(`approvalStatus`) && length(`approvalStatus`) == 1)) {
          stop(paste("Error! Invalid data for `approvalStatus`. Must be a string:", `approvalStatus`))
        }
        self$`approvalStatus` <- `approvalStatus`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
      }
      if (!is.null(`contentAsset`)) {
        stopifnot(R6::is.R6(`contentAsset`))
        self$`contentAsset` <- `contentAsset`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`noteCount`)) {
        if (!(is.numeric(`noteCount`) && length(`noteCount`) == 1)) {
          stop(paste("Error! Invalid data for `noteCount`. Must be an integer:", `noteCount`))
        }
        self$`noteCount` <- `noteCount`
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
    #' @return Assignment as a base R list.
    #' @examples
    #' # convert array of Assignment (x) to a data frame
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
    #' Convert Assignment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AssignmentObject <- list()
      if (!is.null(self$`id`)) {
        AssignmentObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        AssignmentObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        AssignmentObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`name`)) {
        AssignmentObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        AssignmentObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`assignee`)) {
        AssignmentObject[["assignee"]] <-
          self$extractSimpleType(self$`assignee`)
      }
      if (!is.null(self$`retailerLocation`)) {
        AssignmentObject[["retailerLocation"]] <-
          self$extractSimpleType(self$`retailerLocation`)
      }
      if (!is.null(self$`creator`)) {
        AssignmentObject[["creator"]] <-
          self$extractSimpleType(self$`creator`)
      }
      if (!is.null(self$`lastUpdatedBy`)) {
        AssignmentObject[["lastUpdatedBy"]] <-
          self$extractSimpleType(self$`lastUpdatedBy`)
      }
      if (!is.null(self$`currentStatus`)) {
        AssignmentObject[["currentStatus"]] <-
          self$extractSimpleType(self$`currentStatus`)
      }
      if (!is.null(self$`currentStatusType`)) {
        AssignmentObject[["currentStatusType"]] <-
          self$`currentStatusType`
      }
      if (!is.null(self$`assets`)) {
        AssignmentObject[["assets"]] <-
          self$extractSimpleType(self$`assets`)
      }
      if (!is.null(self$`notes`)) {
        AssignmentObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`publicPermissions`)) {
        AssignmentObject[["publicPermissions"]] <-
          self$extractSimpleType(self$`publicPermissions`)
      }
      if (!is.null(self$`userPermissions`)) {
        AssignmentObject[["userPermissions"]] <-
          self$extractSimpleType(self$`userPermissions`)
      }
      if (!is.null(self$`visibility`)) {
        AssignmentObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`statuses`)) {
        AssignmentObject[["statuses"]] <-
          self$extractSimpleType(self$`statuses`)
      }
      if (!is.null(self$`application`)) {
        AssignmentObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`approvalStatus`)) {
        AssignmentObject[["approvalStatus"]] <-
          self$`approvalStatus`
      }
      if (!is.null(self$`contentName`)) {
        AssignmentObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`contentAsset`)) {
        AssignmentObject[["contentAsset"]] <-
          self$extractSimpleType(self$`contentAsset`)
      }
      if (!is.null(self$`owner`)) {
        AssignmentObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`noteCount`)) {
        AssignmentObject[["noteCount"]] <-
          self$`noteCount`
      }
      return(AssignmentObject)
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
    #' Deserialize JSON string into an instance of Assignment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Assignment
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`assignee`)) {
        `assignee_object` <- Account$new()
        `assignee_object`$fromJSON(jsonlite::toJSON(this_object$`assignee`, auto_unbox = TRUE, digits = NA))
        self$`assignee` <- `assignee_object`
      }
      if (!is.null(this_object$`retailerLocation`)) {
        `retailerlocation_object` <- RetailerLocation$new()
        `retailerlocation_object`$fromJSON(jsonlite::toJSON(this_object$`retailerLocation`, auto_unbox = TRUE, digits = NA))
        self$`retailerLocation` <- `retailerlocation_object`
      }
      if (!is.null(this_object$`creator`)) {
        `creator_object` <- Account$new()
        `creator_object`$fromJSON(jsonlite::toJSON(this_object$`creator`, auto_unbox = TRUE, digits = NA))
        self$`creator` <- `creator_object`
      }
      if (!is.null(this_object$`lastUpdatedBy`)) {
        `lastupdatedby_object` <- Account$new()
        `lastupdatedby_object`$fromJSON(jsonlite::toJSON(this_object$`lastUpdatedBy`, auto_unbox = TRUE, digits = NA))
        self$`lastUpdatedBy` <- `lastupdatedby_object`
      }
      if (!is.null(this_object$`currentStatus`)) {
        `currentstatus_object` <- AssignmentStatus$new()
        `currentstatus_object`$fromJSON(jsonlite::toJSON(this_object$`currentStatus`, auto_unbox = TRUE, digits = NA))
        self$`currentStatus` <- `currentstatus_object`
      }
      if (!is.null(this_object$`currentStatusType`)) {
        if (!is.null(this_object$`currentStatusType`) && !(this_object$`currentStatusType` %in% c("NEW", "IN_PROGRESS", "SUBSCRIBED", "ARCHIVED"))) {
          stop(paste("Error! \"", this_object$`currentStatusType`, "\" cannot be assigned to `currentStatusType`. Must be \"NEW\", \"IN_PROGRESS\", \"SUBSCRIBED\", \"ARCHIVED\".", sep = ""))
        }
        self$`currentStatusType` <- this_object$`currentStatusType`
      }
      if (!is.null(this_object$`assets`)) {
        self$`assets` <- ApiClient$new()$deserializeObj(this_object$`assets`, "array[Asset]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`publicPermissions`)) {
        `publicpermissions_object` <- Permissions$new()
        `publicpermissions_object`$fromJSON(jsonlite::toJSON(this_object$`publicPermissions`, auto_unbox = TRUE, digits = NA))
        self$`publicPermissions` <- `publicpermissions_object`
      }
      if (!is.null(this_object$`userPermissions`)) {
        self$`userPermissions` <- ApiClient$new()$deserializeObj(this_object$`userPermissions`, "array[UserPermissions]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`visibility`)) {
        if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        self$`visibility` <- this_object$`visibility`
      }
      if (!is.null(this_object$`statuses`)) {
        self$`statuses` <- ApiClient$new()$deserializeObj(this_object$`statuses`, "array[AssignmentStatus]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- Application$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`approvalStatus`)) {
        if (!is.null(this_object$`approvalStatus`) && !(this_object$`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
          stop(paste("Error! \"", this_object$`approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
        }
        self$`approvalStatus` <- this_object$`approvalStatus`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      if (!is.null(this_object$`contentAsset`)) {
        `contentasset_object` <- Asset$new()
        `contentasset_object`$fromJSON(jsonlite::toJSON(this_object$`contentAsset`, auto_unbox = TRUE, digits = NA))
        self$`contentAsset` <- `contentasset_object`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Assignment in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Assignment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Assignment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`assignee` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`assignee`, auto_unbox = TRUE, digits = NA))
      self$`retailerLocation` <- RetailerLocation$new()$fromJSON(jsonlite::toJSON(this_object$`retailerLocation`, auto_unbox = TRUE, digits = NA))
      self$`creator` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`creator`, auto_unbox = TRUE, digits = NA))
      self$`lastUpdatedBy` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`lastUpdatedBy`, auto_unbox = TRUE, digits = NA))
      self$`currentStatus` <- AssignmentStatus$new()$fromJSON(jsonlite::toJSON(this_object$`currentStatus`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`currentStatusType`) && !(this_object$`currentStatusType` %in% c("NEW", "IN_PROGRESS", "SUBSCRIBED", "ARCHIVED"))) {
        stop(paste("Error! \"", this_object$`currentStatusType`, "\" cannot be assigned to `currentStatusType`. Must be \"NEW\", \"IN_PROGRESS\", \"SUBSCRIBED\", \"ARCHIVED\".", sep = ""))
      }
      self$`currentStatusType` <- this_object$`currentStatusType`
      self$`assets` <- ApiClient$new()$deserializeObj(this_object$`assets`, "array[Asset]", loadNamespace("openapi"))
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`publicPermissions` <- Permissions$new()$fromJSON(jsonlite::toJSON(this_object$`publicPermissions`, auto_unbox = TRUE, digits = NA))
      self$`userPermissions` <- ApiClient$new()$deserializeObj(this_object$`userPermissions`, "array[UserPermissions]", loadNamespace("openapi"))
      if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
        stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
      }
      self$`visibility` <- this_object$`visibility`
      self$`statuses` <- ApiClient$new()$deserializeObj(this_object$`statuses`, "array[AssignmentStatus]", loadNamespace("openapi"))
      self$`application` <- Application$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`approvalStatus`) && !(this_object$`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
        stop(paste("Error! \"", this_object$`approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
      }
      self$`approvalStatus` <- this_object$`approvalStatus`
      self$`contentName` <- this_object$`contentName`
      self$`contentAsset` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`contentAsset`, auto_unbox = TRUE, digits = NA))
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`noteCount` <- this_object$`noteCount`
      self
    },

    #' @description
    #' Validate JSON input with respect to Assignment and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Assignment
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
# Assignment$unlock()
#
## Below is an example to define the print function
# Assignment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Assignment$lock()

