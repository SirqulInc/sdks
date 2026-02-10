#' Create a new CategoryTreeResponse
#'
#' @description
#' CategoryTreeResponse Class
#'
#' @docType class
#' @title CategoryTreeResponse
#' @description CategoryTreeResponse Class
#' @format An \code{R6Class} generator object
#' @field categoryId  integer [optional]
#' @field name  character [optional]
#' @field display  character [optional]
#' @field subCategoryCount  integer [optional]
#' @field parentId  integer [optional]
#' @field parentName  character [optional]
#' @field description  character [optional]
#' @field active  character [optional]
#' @field asset  \link{AssetShortResponse} [optional]
#' @field favoriteId  integer [optional]
#' @field favorite  character [optional]
#' @field applicationId  integer [optional]
#' @field type  character [optional]
#' @field externalId  character [optional]
#' @field externalType  character [optional]
#' @field children  list(\link{CategoryTreeResponse}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CategoryTreeResponse <- R6::R6Class(
  "CategoryTreeResponse",
  public = list(
    `categoryId` = NULL,
    `name` = NULL,
    `display` = NULL,
    `subCategoryCount` = NULL,
    `parentId` = NULL,
    `parentName` = NULL,
    `description` = NULL,
    `active` = NULL,
    `asset` = NULL,
    `favoriteId` = NULL,
    `favorite` = NULL,
    `applicationId` = NULL,
    `type` = NULL,
    `externalId` = NULL,
    `externalType` = NULL,
    `children` = NULL,

    #' @description
    #' Initialize a new CategoryTreeResponse class.
    #'
    #' @param categoryId categoryId
    #' @param name name
    #' @param display display
    #' @param subCategoryCount subCategoryCount
    #' @param parentId parentId
    #' @param parentName parentName
    #' @param description description
    #' @param active active
    #' @param asset asset
    #' @param favoriteId favoriteId
    #' @param favorite favorite
    #' @param applicationId applicationId
    #' @param type type
    #' @param externalId externalId
    #' @param externalType externalType
    #' @param children children
    #' @param ... Other optional arguments.
    initialize = function(`categoryId` = NULL, `name` = NULL, `display` = NULL, `subCategoryCount` = NULL, `parentId` = NULL, `parentName` = NULL, `description` = NULL, `active` = NULL, `asset` = NULL, `favoriteId` = NULL, `favorite` = NULL, `applicationId` = NULL, `type` = NULL, `externalId` = NULL, `externalType` = NULL, `children` = NULL, ...) {
      if (!is.null(`categoryId`)) {
        if (!(is.numeric(`categoryId`) && length(`categoryId`) == 1)) {
          stop(paste("Error! Invalid data for `categoryId`. Must be an integer:", `categoryId`))
        }
        self$`categoryId` <- `categoryId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`subCategoryCount`)) {
        if (!(is.numeric(`subCategoryCount`) && length(`subCategoryCount`) == 1)) {
          stop(paste("Error! Invalid data for `subCategoryCount`. Must be an integer:", `subCategoryCount`))
        }
        self$`subCategoryCount` <- `subCategoryCount`
      }
      if (!is.null(`parentId`)) {
        if (!(is.numeric(`parentId`) && length(`parentId`) == 1)) {
          stop(paste("Error! Invalid data for `parentId`. Must be an integer:", `parentId`))
        }
        self$`parentId` <- `parentId`
      }
      if (!is.null(`parentName`)) {
        if (!(is.character(`parentName`) && length(`parentName`) == 1)) {
          stop(paste("Error! Invalid data for `parentName`. Must be a string:", `parentName`))
        }
        self$`parentName` <- `parentName`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`asset`)) {
        stopifnot(R6::is.R6(`asset`))
        self$`asset` <- `asset`
      }
      if (!is.null(`favoriteId`)) {
        if (!(is.numeric(`favoriteId`) && length(`favoriteId`) == 1)) {
          stop(paste("Error! Invalid data for `favoriteId`. Must be an integer:", `favoriteId`))
        }
        self$`favoriteId` <- `favoriteId`
      }
      if (!is.null(`favorite`)) {
        if (!(is.logical(`favorite`) && length(`favorite`) == 1)) {
          stop(paste("Error! Invalid data for `favorite`. Must be a boolean:", `favorite`))
        }
        self$`favorite` <- `favorite`
      }
      if (!is.null(`applicationId`)) {
        if (!(is.numeric(`applicationId`) && length(`applicationId`) == 1)) {
          stop(paste("Error! Invalid data for `applicationId`. Must be an integer:", `applicationId`))
        }
        self$`applicationId` <- `applicationId`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`externalType`)) {
        if (!(is.character(`externalType`) && length(`externalType`) == 1)) {
          stop(paste("Error! Invalid data for `externalType`. Must be a string:", `externalType`))
        }
        self$`externalType` <- `externalType`
      }
      if (!is.null(`children`)) {
        stopifnot(is.vector(`children`), length(`children`) != 0)
        sapply(`children`, function(x) stopifnot(R6::is.R6(x)))
        self$`children` <- `children`
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
    #' @return CategoryTreeResponse as a base R list.
    #' @examples
    #' # convert array of CategoryTreeResponse (x) to a data frame
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
    #' Convert CategoryTreeResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CategoryTreeResponseObject <- list()
      if (!is.null(self$`categoryId`)) {
        CategoryTreeResponseObject[["categoryId"]] <-
          self$`categoryId`
      }
      if (!is.null(self$`name`)) {
        CategoryTreeResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`display`)) {
        CategoryTreeResponseObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`subCategoryCount`)) {
        CategoryTreeResponseObject[["subCategoryCount"]] <-
          self$`subCategoryCount`
      }
      if (!is.null(self$`parentId`)) {
        CategoryTreeResponseObject[["parentId"]] <-
          self$`parentId`
      }
      if (!is.null(self$`parentName`)) {
        CategoryTreeResponseObject[["parentName"]] <-
          self$`parentName`
      }
      if (!is.null(self$`description`)) {
        CategoryTreeResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`active`)) {
        CategoryTreeResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`asset`)) {
        CategoryTreeResponseObject[["asset"]] <-
          self$extractSimpleType(self$`asset`)
      }
      if (!is.null(self$`favoriteId`)) {
        CategoryTreeResponseObject[["favoriteId"]] <-
          self$`favoriteId`
      }
      if (!is.null(self$`favorite`)) {
        CategoryTreeResponseObject[["favorite"]] <-
          self$`favorite`
      }
      if (!is.null(self$`applicationId`)) {
        CategoryTreeResponseObject[["applicationId"]] <-
          self$`applicationId`
      }
      if (!is.null(self$`type`)) {
        CategoryTreeResponseObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`externalId`)) {
        CategoryTreeResponseObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`externalType`)) {
        CategoryTreeResponseObject[["externalType"]] <-
          self$`externalType`
      }
      if (!is.null(self$`children`)) {
        CategoryTreeResponseObject[["children"]] <-
          self$extractSimpleType(self$`children`)
      }
      return(CategoryTreeResponseObject)
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
    #' Deserialize JSON string into an instance of CategoryTreeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CategoryTreeResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`categoryId`)) {
        self$`categoryId` <- this_object$`categoryId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`subCategoryCount`)) {
        self$`subCategoryCount` <- this_object$`subCategoryCount`
      }
      if (!is.null(this_object$`parentId`)) {
        self$`parentId` <- this_object$`parentId`
      }
      if (!is.null(this_object$`parentName`)) {
        self$`parentName` <- this_object$`parentName`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`asset`)) {
        `asset_object` <- AssetShortResponse$new()
        `asset_object`$fromJSON(jsonlite::toJSON(this_object$`asset`, auto_unbox = TRUE, digits = NA))
        self$`asset` <- `asset_object`
      }
      if (!is.null(this_object$`favoriteId`)) {
        self$`favoriteId` <- this_object$`favoriteId`
      }
      if (!is.null(this_object$`favorite`)) {
        self$`favorite` <- this_object$`favorite`
      }
      if (!is.null(this_object$`applicationId`)) {
        self$`applicationId` <- this_object$`applicationId`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`externalType`)) {
        self$`externalType` <- this_object$`externalType`
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[CategoryTreeResponse]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CategoryTreeResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CategoryTreeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CategoryTreeResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`categoryId` <- this_object$`categoryId`
      self$`name` <- this_object$`name`
      self$`display` <- this_object$`display`
      self$`subCategoryCount` <- this_object$`subCategoryCount`
      self$`parentId` <- this_object$`parentId`
      self$`parentName` <- this_object$`parentName`
      self$`description` <- this_object$`description`
      self$`active` <- this_object$`active`
      self$`asset` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`asset`, auto_unbox = TRUE, digits = NA))
      self$`favoriteId` <- this_object$`favoriteId`
      self$`favorite` <- this_object$`favorite`
      self$`applicationId` <- this_object$`applicationId`
      self$`type` <- this_object$`type`
      self$`externalId` <- this_object$`externalId`
      self$`externalType` <- this_object$`externalType`
      self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[CategoryTreeResponse]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CategoryTreeResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CategoryTreeResponse
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
# CategoryTreeResponse$unlock()
#
## Below is an example to define the print function
# CategoryTreeResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CategoryTreeResponse$lock()

