#' Create a new Region
#'
#' @description
#' Region Class
#'
#' @docType class
#' @title Region
#' @description Region Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field owner  \link{Account} [optional]
#' @field shortName  character [optional]
#' @field fullName  character [optional]
#' @field bounds  \link{GeoBox} [optional]
#' @field start  character [optional]
#' @field end  character [optional]
#' @field polygon  character [optional]
#' @field metaData  character [optional]
#' @field children  list(\link{Region}) [optional]
#' @field parents  list(\link{Region}) [optional]
#' @field postalCodes  list(\link{PostalCode}) [optional]
#' @field regionClass  character [optional]
#' @field root  character [optional]
#' @field webActive  character [optional]
#' @field adminActive  character [optional]
#' @field visibility  character [optional]
#' @field categories  list(\link{Category}) [optional]
#' @field filters  list(\link{Filter}) [optional]
#' @field truncatedLatitude  numeric [optional]
#' @field truncatedLongitude  numeric [optional]
#' @field versionCode  integer [optional]
#' @field display  character [optional]
#' @field contentName  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Region <- R6::R6Class(
  "Region",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `owner` = NULL,
    `shortName` = NULL,
    `fullName` = NULL,
    `bounds` = NULL,
    `start` = NULL,
    `end` = NULL,
    `polygon` = NULL,
    `metaData` = NULL,
    `children` = NULL,
    `parents` = NULL,
    `postalCodes` = NULL,
    `regionClass` = NULL,
    `root` = NULL,
    `webActive` = NULL,
    `adminActive` = NULL,
    `visibility` = NULL,
    `categories` = NULL,
    `filters` = NULL,
    `truncatedLatitude` = NULL,
    `truncatedLongitude` = NULL,
    `versionCode` = NULL,
    `display` = NULL,
    `contentName` = NULL,

    #' @description
    #' Initialize a new Region class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param owner owner
    #' @param shortName shortName
    #' @param fullName fullName
    #' @param bounds bounds
    #' @param start start
    #' @param end end
    #' @param polygon polygon
    #' @param metaData metaData
    #' @param children children
    #' @param parents parents
    #' @param postalCodes postalCodes
    #' @param regionClass regionClass
    #' @param root root
    #' @param webActive webActive
    #' @param adminActive adminActive
    #' @param visibility visibility
    #' @param categories categories
    #' @param filters filters
    #' @param truncatedLatitude truncatedLatitude
    #' @param truncatedLongitude truncatedLongitude
    #' @param versionCode versionCode
    #' @param display display
    #' @param contentName contentName
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `owner` = NULL, `shortName` = NULL, `fullName` = NULL, `bounds` = NULL, `start` = NULL, `end` = NULL, `polygon` = NULL, `metaData` = NULL, `children` = NULL, `parents` = NULL, `postalCodes` = NULL, `regionClass` = NULL, `root` = NULL, `webActive` = NULL, `adminActive` = NULL, `visibility` = NULL, `categories` = NULL, `filters` = NULL, `truncatedLatitude` = NULL, `truncatedLongitude` = NULL, `versionCode` = NULL, `display` = NULL, `contentName` = NULL, ...) {
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
      if (!is.null(`shortName`)) {
        if (!(is.character(`shortName`) && length(`shortName`) == 1)) {
          stop(paste("Error! Invalid data for `shortName`. Must be a string:", `shortName`))
        }
        self$`shortName` <- `shortName`
      }
      if (!is.null(`fullName`)) {
        if (!(is.character(`fullName`) && length(`fullName`) == 1)) {
          stop(paste("Error! Invalid data for `fullName`. Must be a string:", `fullName`))
        }
        self$`fullName` <- `fullName`
      }
      if (!is.null(`bounds`)) {
        stopifnot(R6::is.R6(`bounds`))
        self$`bounds` <- `bounds`
      }
      if (!is.null(`start`)) {
        if (!is.character(`start`)) {
          stop(paste("Error! Invalid data for `start`. Must be a string:", `start`))
        }
        self$`start` <- `start`
      }
      if (!is.null(`end`)) {
        if (!is.character(`end`)) {
          stop(paste("Error! Invalid data for `end`. Must be a string:", `end`))
        }
        self$`end` <- `end`
      }
      if (!is.null(`polygon`)) {
        if (!(is.character(`polygon`) && length(`polygon`) == 1)) {
          stop(paste("Error! Invalid data for `polygon`. Must be a string:", `polygon`))
        }
        self$`polygon` <- `polygon`
      }
      if (!is.null(`metaData`)) {
        if (!(is.character(`metaData`) && length(`metaData`) == 1)) {
          stop(paste("Error! Invalid data for `metaData`. Must be a string:", `metaData`))
        }
        self$`metaData` <- `metaData`
      }
      if (!is.null(`children`)) {
        stopifnot(is.vector(`children`), length(`children`) != 0)
        sapply(`children`, function(x) stopifnot(R6::is.R6(x)))
        if (!identical(`children`, unique(`children`))) {
          stop("Error! Items in `children` are not unique.")
        }
        self$`children` <- `children`
      }
      if (!is.null(`parents`)) {
        stopifnot(is.vector(`parents`), length(`parents`) != 0)
        sapply(`parents`, function(x) stopifnot(R6::is.R6(x)))
        if (!identical(`parents`, unique(`parents`))) {
          stop("Error! Items in `parents` are not unique.")
        }
        self$`parents` <- `parents`
      }
      if (!is.null(`postalCodes`)) {
        stopifnot(is.vector(`postalCodes`), length(`postalCodes`) != 0)
        sapply(`postalCodes`, function(x) stopifnot(R6::is.R6(x)))
        if (!identical(`postalCodes`, unique(`postalCodes`))) {
          stop("Error! Items in `postalCodes` are not unique.")
        }
        self$`postalCodes` <- `postalCodes`
      }
      if (!is.null(`regionClass`)) {
        if (!(`regionClass` %in% c("NATIONAL", "STATE", "COUNTY", "METRO_AREA", "CITY", "NEIGHBORHOOD", "TERRITORY", "CUSTOM", "ZONE"))) {
          stop(paste("Error! \"", `regionClass`, "\" cannot be assigned to `regionClass`. Must be \"NATIONAL\", \"STATE\", \"COUNTY\", \"METRO_AREA\", \"CITY\", \"NEIGHBORHOOD\", \"TERRITORY\", \"CUSTOM\", \"ZONE\".", sep = ""))
        }
        if (!(is.character(`regionClass`) && length(`regionClass`) == 1)) {
          stop(paste("Error! Invalid data for `regionClass`. Must be a string:", `regionClass`))
        }
        self$`regionClass` <- `regionClass`
      }
      if (!is.null(`root`)) {
        if (!(is.logical(`root`) && length(`root`) == 1)) {
          stop(paste("Error! Invalid data for `root`. Must be a boolean:", `root`))
        }
        self$`root` <- `root`
      }
      if (!is.null(`webActive`)) {
        if (!(is.logical(`webActive`) && length(`webActive`) == 1)) {
          stop(paste("Error! Invalid data for `webActive`. Must be a boolean:", `webActive`))
        }
        self$`webActive` <- `webActive`
      }
      if (!is.null(`adminActive`)) {
        if (!(is.logical(`adminActive`) && length(`adminActive`) == 1)) {
          stop(paste("Error! Invalid data for `adminActive`. Must be a boolean:", `adminActive`))
        }
        self$`adminActive` <- `adminActive`
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
      if (!is.null(`categories`)) {
        stopifnot(is.vector(`categories`), length(`categories`) != 0)
        sapply(`categories`, function(x) stopifnot(R6::is.R6(x)))
        self$`categories` <- `categories`
      }
      if (!is.null(`filters`)) {
        stopifnot(is.vector(`filters`), length(`filters`) != 0)
        sapply(`filters`, function(x) stopifnot(R6::is.R6(x)))
        self$`filters` <- `filters`
      }
      if (!is.null(`truncatedLatitude`)) {
        if (!(is.numeric(`truncatedLatitude`) && length(`truncatedLatitude`) == 1)) {
          stop(paste("Error! Invalid data for `truncatedLatitude`. Must be a number:", `truncatedLatitude`))
        }
        self$`truncatedLatitude` <- `truncatedLatitude`
      }
      if (!is.null(`truncatedLongitude`)) {
        if (!(is.numeric(`truncatedLongitude`) && length(`truncatedLongitude`) == 1)) {
          stop(paste("Error! Invalid data for `truncatedLongitude`. Must be a number:", `truncatedLongitude`))
        }
        self$`truncatedLongitude` <- `truncatedLongitude`
      }
      if (!is.null(`versionCode`)) {
        if (!(is.numeric(`versionCode`) && length(`versionCode`) == 1)) {
          stop(paste("Error! Invalid data for `versionCode`. Must be an integer:", `versionCode`))
        }
        self$`versionCode` <- `versionCode`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
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
    #' @return Region as a base R list.
    #' @examples
    #' # convert array of Region (x) to a data frame
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
    #' Convert Region to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RegionObject <- list()
      if (!is.null(self$`id`)) {
        RegionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        RegionObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        RegionObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        RegionObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        RegionObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        RegionObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`owner`)) {
        RegionObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`shortName`)) {
        RegionObject[["shortName"]] <-
          self$`shortName`
      }
      if (!is.null(self$`fullName`)) {
        RegionObject[["fullName"]] <-
          self$`fullName`
      }
      if (!is.null(self$`bounds`)) {
        RegionObject[["bounds"]] <-
          self$extractSimpleType(self$`bounds`)
      }
      if (!is.null(self$`start`)) {
        RegionObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        RegionObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`polygon`)) {
        RegionObject[["polygon"]] <-
          self$`polygon`
      }
      if (!is.null(self$`metaData`)) {
        RegionObject[["metaData"]] <-
          self$`metaData`
      }
      if (!is.null(self$`children`)) {
        RegionObject[["children"]] <-
          self$extractSimpleType(self$`children`)
      }
      if (!is.null(self$`parents`)) {
        RegionObject[["parents"]] <-
          self$extractSimpleType(self$`parents`)
      }
      if (!is.null(self$`postalCodes`)) {
        RegionObject[["postalCodes"]] <-
          self$extractSimpleType(self$`postalCodes`)
      }
      if (!is.null(self$`regionClass`)) {
        RegionObject[["regionClass"]] <-
          self$`regionClass`
      }
      if (!is.null(self$`root`)) {
        RegionObject[["root"]] <-
          self$`root`
      }
      if (!is.null(self$`webActive`)) {
        RegionObject[["webActive"]] <-
          self$`webActive`
      }
      if (!is.null(self$`adminActive`)) {
        RegionObject[["adminActive"]] <-
          self$`adminActive`
      }
      if (!is.null(self$`visibility`)) {
        RegionObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`categories`)) {
        RegionObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`filters`)) {
        RegionObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`truncatedLatitude`)) {
        RegionObject[["truncatedLatitude"]] <-
          self$`truncatedLatitude`
      }
      if (!is.null(self$`truncatedLongitude`)) {
        RegionObject[["truncatedLongitude"]] <-
          self$`truncatedLongitude`
      }
      if (!is.null(self$`versionCode`)) {
        RegionObject[["versionCode"]] <-
          self$`versionCode`
      }
      if (!is.null(self$`display`)) {
        RegionObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`contentName`)) {
        RegionObject[["contentName"]] <-
          self$`contentName`
      }
      return(RegionObject)
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
    #' Deserialize JSON string into an instance of Region
    #'
    #' @param input_json the JSON input
    #' @return the instance of Region
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
      if (!is.null(this_object$`shortName`)) {
        self$`shortName` <- this_object$`shortName`
      }
      if (!is.null(this_object$`fullName`)) {
        self$`fullName` <- this_object$`fullName`
      }
      if (!is.null(this_object$`bounds`)) {
        `bounds_object` <- GeoBox$new()
        `bounds_object`$fromJSON(jsonlite::toJSON(this_object$`bounds`, auto_unbox = TRUE, digits = NA))
        self$`bounds` <- `bounds_object`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`polygon`)) {
        self$`polygon` <- this_object$`polygon`
      }
      if (!is.null(this_object$`metaData`)) {
        self$`metaData` <- this_object$`metaData`
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "set[Region]", loadNamespace("openapi"))
        if (!identical(self$`children`, unique(self$`children`))) {
          stop("Error! Items in `children` are not unique.")
        }
      }
      if (!is.null(this_object$`parents`)) {
        self$`parents` <- ApiClient$new()$deserializeObj(this_object$`parents`, "set[Region]", loadNamespace("openapi"))
        if (!identical(self$`parents`, unique(self$`parents`))) {
          stop("Error! Items in `parents` are not unique.")
        }
      }
      if (!is.null(this_object$`postalCodes`)) {
        self$`postalCodes` <- ApiClient$new()$deserializeObj(this_object$`postalCodes`, "set[PostalCode]", loadNamespace("openapi"))
        if (!identical(self$`postalCodes`, unique(self$`postalCodes`))) {
          stop("Error! Items in `postalCodes` are not unique.")
        }
      }
      if (!is.null(this_object$`regionClass`)) {
        if (!is.null(this_object$`regionClass`) && !(this_object$`regionClass` %in% c("NATIONAL", "STATE", "COUNTY", "METRO_AREA", "CITY", "NEIGHBORHOOD", "TERRITORY", "CUSTOM", "ZONE"))) {
          stop(paste("Error! \"", this_object$`regionClass`, "\" cannot be assigned to `regionClass`. Must be \"NATIONAL\", \"STATE\", \"COUNTY\", \"METRO_AREA\", \"CITY\", \"NEIGHBORHOOD\", \"TERRITORY\", \"CUSTOM\", \"ZONE\".", sep = ""))
        }
        self$`regionClass` <- this_object$`regionClass`
      }
      if (!is.null(this_object$`root`)) {
        self$`root` <- this_object$`root`
      }
      if (!is.null(this_object$`webActive`)) {
        self$`webActive` <- this_object$`webActive`
      }
      if (!is.null(this_object$`adminActive`)) {
        self$`adminActive` <- this_object$`adminActive`
      }
      if (!is.null(this_object$`visibility`)) {
        if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        self$`visibility` <- this_object$`visibility`
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`filters`)) {
        self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[Filter]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`truncatedLatitude`)) {
        self$`truncatedLatitude` <- this_object$`truncatedLatitude`
      }
      if (!is.null(this_object$`truncatedLongitude`)) {
        self$`truncatedLongitude` <- this_object$`truncatedLongitude`
      }
      if (!is.null(this_object$`versionCode`)) {
        self$`versionCode` <- this_object$`versionCode`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Region in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Region
    #'
    #' @param input_json the JSON input
    #' @return the instance of Region
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`shortName` <- this_object$`shortName`
      self$`fullName` <- this_object$`fullName`
      self$`bounds` <- GeoBox$new()$fromJSON(jsonlite::toJSON(this_object$`bounds`, auto_unbox = TRUE, digits = NA))
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`polygon` <- this_object$`polygon`
      self$`metaData` <- this_object$`metaData`
      self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "set[Region]", loadNamespace("openapi"))
      if (!identical(self$`children`, unique(self$`children`))) {
        stop("Error! Items in `children` are not unique.")
      }
      self$`parents` <- ApiClient$new()$deserializeObj(this_object$`parents`, "set[Region]", loadNamespace("openapi"))
      if (!identical(self$`parents`, unique(self$`parents`))) {
        stop("Error! Items in `parents` are not unique.")
      }
      self$`postalCodes` <- ApiClient$new()$deserializeObj(this_object$`postalCodes`, "set[PostalCode]", loadNamespace("openapi"))
      if (!identical(self$`postalCodes`, unique(self$`postalCodes`))) {
        stop("Error! Items in `postalCodes` are not unique.")
      }
      if (!is.null(this_object$`regionClass`) && !(this_object$`regionClass` %in% c("NATIONAL", "STATE", "COUNTY", "METRO_AREA", "CITY", "NEIGHBORHOOD", "TERRITORY", "CUSTOM", "ZONE"))) {
        stop(paste("Error! \"", this_object$`regionClass`, "\" cannot be assigned to `regionClass`. Must be \"NATIONAL\", \"STATE\", \"COUNTY\", \"METRO_AREA\", \"CITY\", \"NEIGHBORHOOD\", \"TERRITORY\", \"CUSTOM\", \"ZONE\".", sep = ""))
      }
      self$`regionClass` <- this_object$`regionClass`
      self$`root` <- this_object$`root`
      self$`webActive` <- this_object$`webActive`
      self$`adminActive` <- this_object$`adminActive`
      if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
        stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
      }
      self$`visibility` <- this_object$`visibility`
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[Filter]", loadNamespace("openapi"))
      self$`truncatedLatitude` <- this_object$`truncatedLatitude`
      self$`truncatedLongitude` <- this_object$`truncatedLongitude`
      self$`versionCode` <- this_object$`versionCode`
      self$`display` <- this_object$`display`
      self$`contentName` <- this_object$`contentName`
      self
    },

    #' @description
    #' Validate JSON input with respect to Region and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Region
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
# Region$unlock()
#
## Below is an example to define the print function
# Region$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Region$lock()

