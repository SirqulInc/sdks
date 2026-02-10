#' Create a new Category
#'
#' @description
#' Category Class
#'
#' @docType class
#' @title Category
#' @description Category Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field name  character [optional]
#' @field shortName  character [optional]
#' @field description  character [optional]
#' @field type  character [optional]
#' @field application  \link{Application} [optional]
#' @field parent  \link{Category} [optional]
#' @field children  list(\link{Category}) [optional]
#' @field childrenCount  integer [optional]
#' @field display  character [optional]
#' @field sqootSlug  character [optional]
#' @field asset  \link{Asset} [optional]
#' @field externalId  character [optional]
#' @field externalType  character [optional]
#' @field favoriteCount  integer [optional]
#' @field root  \link{Category} [optional]
#' @field tree  character [optional]
#' @field parentName  character [optional]
#' @field parentId  integer [optional]
#' @field applicationId  integer [optional]
#' @field secondaryType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Category <- R6::R6Class(
  "Category",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `name` = NULL,
    `shortName` = NULL,
    `description` = NULL,
    `type` = NULL,
    `application` = NULL,
    `parent` = NULL,
    `children` = NULL,
    `childrenCount` = NULL,
    `display` = NULL,
    `sqootSlug` = NULL,
    `asset` = NULL,
    `externalId` = NULL,
    `externalType` = NULL,
    `favoriteCount` = NULL,
    `root` = NULL,
    `tree` = NULL,
    `parentName` = NULL,
    `parentId` = NULL,
    `applicationId` = NULL,
    `secondaryType` = NULL,

    #' @description
    #' Initialize a new Category class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param name name
    #' @param shortName shortName
    #' @param description description
    #' @param type type
    #' @param application application
    #' @param parent parent
    #' @param children children
    #' @param childrenCount childrenCount
    #' @param display display
    #' @param sqootSlug sqootSlug
    #' @param asset asset
    #' @param externalId externalId
    #' @param externalType externalType
    #' @param favoriteCount favoriteCount
    #' @param root root
    #' @param tree tree
    #' @param parentName parentName
    #' @param parentId parentId
    #' @param applicationId applicationId
    #' @param secondaryType secondaryType
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `name` = NULL, `shortName` = NULL, `description` = NULL, `type` = NULL, `application` = NULL, `parent` = NULL, `children` = NULL, `childrenCount` = NULL, `display` = NULL, `sqootSlug` = NULL, `asset` = NULL, `externalId` = NULL, `externalType` = NULL, `favoriteCount` = NULL, `root` = NULL, `tree` = NULL, `parentName` = NULL, `parentId` = NULL, `applicationId` = NULL, `secondaryType` = NULL, ...) {
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
      if (!is.null(`shortName`)) {
        if (!(is.character(`shortName`) && length(`shortName`) == 1)) {
          stop(paste("Error! Invalid data for `shortName`. Must be a string:", `shortName`))
        }
        self$`shortName` <- `shortName`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
      }
      if (!is.null(`parent`)) {
        stopifnot(R6::is.R6(`parent`))
        self$`parent` <- `parent`
      }
      if (!is.null(`children`)) {
        stopifnot(is.vector(`children`), length(`children`) != 0)
        sapply(`children`, function(x) stopifnot(R6::is.R6(x)))
        self$`children` <- `children`
      }
      if (!is.null(`childrenCount`)) {
        if (!(is.numeric(`childrenCount`) && length(`childrenCount`) == 1)) {
          stop(paste("Error! Invalid data for `childrenCount`. Must be an integer:", `childrenCount`))
        }
        self$`childrenCount` <- `childrenCount`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`sqootSlug`)) {
        if (!(is.character(`sqootSlug`) && length(`sqootSlug`) == 1)) {
          stop(paste("Error! Invalid data for `sqootSlug`. Must be a string:", `sqootSlug`))
        }
        self$`sqootSlug` <- `sqootSlug`
      }
      if (!is.null(`asset`)) {
        stopifnot(R6::is.R6(`asset`))
        self$`asset` <- `asset`
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
      if (!is.null(`favoriteCount`)) {
        if (!(is.numeric(`favoriteCount`) && length(`favoriteCount`) == 1)) {
          stop(paste("Error! Invalid data for `favoriteCount`. Must be an integer:", `favoriteCount`))
        }
        self$`favoriteCount` <- `favoriteCount`
      }
      if (!is.null(`root`)) {
        stopifnot(R6::is.R6(`root`))
        self$`root` <- `root`
      }
      if (!is.null(`tree`)) {
        if (!(is.character(`tree`) && length(`tree`) == 1)) {
          stop(paste("Error! Invalid data for `tree`. Must be a string:", `tree`))
        }
        self$`tree` <- `tree`
      }
      if (!is.null(`parentName`)) {
        if (!(is.character(`parentName`) && length(`parentName`) == 1)) {
          stop(paste("Error! Invalid data for `parentName`. Must be a string:", `parentName`))
        }
        self$`parentName` <- `parentName`
      }
      if (!is.null(`parentId`)) {
        if (!(is.numeric(`parentId`) && length(`parentId`) == 1)) {
          stop(paste("Error! Invalid data for `parentId`. Must be an integer:", `parentId`))
        }
        self$`parentId` <- `parentId`
      }
      if (!is.null(`applicationId`)) {
        if (!(is.numeric(`applicationId`) && length(`applicationId`) == 1)) {
          stop(paste("Error! Invalid data for `applicationId`. Must be an integer:", `applicationId`))
        }
        self$`applicationId` <- `applicationId`
      }
      if (!is.null(`secondaryType`)) {
        if (!(is.character(`secondaryType`) && length(`secondaryType`) == 1)) {
          stop(paste("Error! Invalid data for `secondaryType`. Must be a string:", `secondaryType`))
        }
        self$`secondaryType` <- `secondaryType`
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
    #' @return Category as a base R list.
    #' @examples
    #' # convert array of Category (x) to a data frame
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
    #' Convert Category to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CategoryObject <- list()
      if (!is.null(self$`id`)) {
        CategoryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        CategoryObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        CategoryObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`name`)) {
        CategoryObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`shortName`)) {
        CategoryObject[["shortName"]] <-
          self$`shortName`
      }
      if (!is.null(self$`description`)) {
        CategoryObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`type`)) {
        CategoryObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`application`)) {
        CategoryObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`parent`)) {
        CategoryObject[["parent"]] <-
          self$extractSimpleType(self$`parent`)
      }
      if (!is.null(self$`children`)) {
        CategoryObject[["children"]] <-
          self$extractSimpleType(self$`children`)
      }
      if (!is.null(self$`childrenCount`)) {
        CategoryObject[["childrenCount"]] <-
          self$`childrenCount`
      }
      if (!is.null(self$`display`)) {
        CategoryObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`sqootSlug`)) {
        CategoryObject[["sqootSlug"]] <-
          self$`sqootSlug`
      }
      if (!is.null(self$`asset`)) {
        CategoryObject[["asset"]] <-
          self$extractSimpleType(self$`asset`)
      }
      if (!is.null(self$`externalId`)) {
        CategoryObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`externalType`)) {
        CategoryObject[["externalType"]] <-
          self$`externalType`
      }
      if (!is.null(self$`favoriteCount`)) {
        CategoryObject[["favoriteCount"]] <-
          self$`favoriteCount`
      }
      if (!is.null(self$`root`)) {
        CategoryObject[["root"]] <-
          self$extractSimpleType(self$`root`)
      }
      if (!is.null(self$`tree`)) {
        CategoryObject[["tree"]] <-
          self$`tree`
      }
      if (!is.null(self$`parentName`)) {
        CategoryObject[["parentName"]] <-
          self$`parentName`
      }
      if (!is.null(self$`parentId`)) {
        CategoryObject[["parentId"]] <-
          self$`parentId`
      }
      if (!is.null(self$`applicationId`)) {
        CategoryObject[["applicationId"]] <-
          self$`applicationId`
      }
      if (!is.null(self$`secondaryType`)) {
        CategoryObject[["secondaryType"]] <-
          self$`secondaryType`
      }
      return(CategoryObject)
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
    #' Deserialize JSON string into an instance of Category
    #'
    #' @param input_json the JSON input
    #' @return the instance of Category
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
      if (!is.null(this_object$`shortName`)) {
        self$`shortName` <- this_object$`shortName`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- Application$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`parent`)) {
        `parent_object` <- Category$new()
        `parent_object`$fromJSON(jsonlite::toJSON(this_object$`parent`, auto_unbox = TRUE, digits = NA))
        self$`parent` <- `parent_object`
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[Category]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`childrenCount`)) {
        self$`childrenCount` <- this_object$`childrenCount`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`sqootSlug`)) {
        self$`sqootSlug` <- this_object$`sqootSlug`
      }
      if (!is.null(this_object$`asset`)) {
        `asset_object` <- Asset$new()
        `asset_object`$fromJSON(jsonlite::toJSON(this_object$`asset`, auto_unbox = TRUE, digits = NA))
        self$`asset` <- `asset_object`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`externalType`)) {
        self$`externalType` <- this_object$`externalType`
      }
      if (!is.null(this_object$`favoriteCount`)) {
        self$`favoriteCount` <- this_object$`favoriteCount`
      }
      if (!is.null(this_object$`root`)) {
        `root_object` <- Category$new()
        `root_object`$fromJSON(jsonlite::toJSON(this_object$`root`, auto_unbox = TRUE, digits = NA))
        self$`root` <- `root_object`
      }
      if (!is.null(this_object$`tree`)) {
        self$`tree` <- this_object$`tree`
      }
      if (!is.null(this_object$`parentName`)) {
        self$`parentName` <- this_object$`parentName`
      }
      if (!is.null(this_object$`parentId`)) {
        self$`parentId` <- this_object$`parentId`
      }
      if (!is.null(this_object$`applicationId`)) {
        self$`applicationId` <- this_object$`applicationId`
      }
      if (!is.null(this_object$`secondaryType`)) {
        self$`secondaryType` <- this_object$`secondaryType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Category in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Category
    #'
    #' @param input_json the JSON input
    #' @return the instance of Category
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`name` <- this_object$`name`
      self$`shortName` <- this_object$`shortName`
      self$`description` <- this_object$`description`
      self$`type` <- this_object$`type`
      self$`application` <- Application$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`parent` <- Category$new()$fromJSON(jsonlite::toJSON(this_object$`parent`, auto_unbox = TRUE, digits = NA))
      self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[Category]", loadNamespace("openapi"))
      self$`childrenCount` <- this_object$`childrenCount`
      self$`display` <- this_object$`display`
      self$`sqootSlug` <- this_object$`sqootSlug`
      self$`asset` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`asset`, auto_unbox = TRUE, digits = NA))
      self$`externalId` <- this_object$`externalId`
      self$`externalType` <- this_object$`externalType`
      self$`favoriteCount` <- this_object$`favoriteCount`
      self$`root` <- Category$new()$fromJSON(jsonlite::toJSON(this_object$`root`, auto_unbox = TRUE, digits = NA))
      self$`tree` <- this_object$`tree`
      self$`parentName` <- this_object$`parentName`
      self$`parentId` <- this_object$`parentId`
      self$`applicationId` <- this_object$`applicationId`
      self$`secondaryType` <- this_object$`secondaryType`
      self
    },

    #' @description
    #' Validate JSON input with respect to Category and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Category
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
# Category$unlock()
#
## Below is an example to define the print function
# Category$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Category$lock()

