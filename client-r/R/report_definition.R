#' Create a new ReportDefinition
#'
#' @description
#' ReportDefinition Class
#'
#' @docType class
#' @title ReportDefinition
#' @description ReportDefinition Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field query  character [optional]
#' @field queryName  character [optional]
#' @field displayName  character [optional]
#' @field columnNames  list(character) [optional]
#' @field nativeSql  character [optional]
#' @field display  character [optional]
#' @field dataSource  character [optional]
#' @field maxLimit  integer [optional]
#' @field maxDateRange  integer [optional]
#' @field displayParams  character [optional]
#' @field metaData  character [optional]
#' @field columnNamesRaw  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReportDefinition <- R6::R6Class(
  "ReportDefinition",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `query` = NULL,
    `queryName` = NULL,
    `displayName` = NULL,
    `columnNames` = NULL,
    `nativeSql` = NULL,
    `display` = NULL,
    `dataSource` = NULL,
    `maxLimit` = NULL,
    `maxDateRange` = NULL,
    `displayParams` = NULL,
    `metaData` = NULL,
    `columnNamesRaw` = NULL,

    #' @description
    #' Initialize a new ReportDefinition class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param query query
    #' @param queryName queryName
    #' @param displayName displayName
    #' @param columnNames columnNames
    #' @param nativeSql nativeSql
    #' @param display display
    #' @param dataSource dataSource
    #' @param maxLimit maxLimit
    #' @param maxDateRange maxDateRange
    #' @param displayParams displayParams
    #' @param metaData metaData
    #' @param columnNamesRaw columnNamesRaw
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `query` = NULL, `queryName` = NULL, `displayName` = NULL, `columnNames` = NULL, `nativeSql` = NULL, `display` = NULL, `dataSource` = NULL, `maxLimit` = NULL, `maxDateRange` = NULL, `displayParams` = NULL, `metaData` = NULL, `columnNamesRaw` = NULL, ...) {
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
      if (!is.null(`query`)) {
        if (!(is.character(`query`) && length(`query`) == 1)) {
          stop(paste("Error! Invalid data for `query`. Must be a string:", `query`))
        }
        self$`query` <- `query`
      }
      if (!is.null(`queryName`)) {
        if (!(is.character(`queryName`) && length(`queryName`) == 1)) {
          stop(paste("Error! Invalid data for `queryName`. Must be a string:", `queryName`))
        }
        self$`queryName` <- `queryName`
      }
      if (!is.null(`displayName`)) {
        if (!(is.character(`displayName`) && length(`displayName`) == 1)) {
          stop(paste("Error! Invalid data for `displayName`. Must be a string:", `displayName`))
        }
        self$`displayName` <- `displayName`
      }
      if (!is.null(`columnNames`)) {
        stopifnot(is.vector(`columnNames`), length(`columnNames`) != 0)
        sapply(`columnNames`, function(x) stopifnot(is.character(x)))
        self$`columnNames` <- `columnNames`
      }
      if (!is.null(`nativeSql`)) {
        if (!(is.logical(`nativeSql`) && length(`nativeSql`) == 1)) {
          stop(paste("Error! Invalid data for `nativeSql`. Must be a boolean:", `nativeSql`))
        }
        self$`nativeSql` <- `nativeSql`
      }
      if (!is.null(`display`)) {
        if (!(is.logical(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a boolean:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`dataSource`)) {
        if (!(`dataSource` %in% c("WRITE", "ANALYTIC", "READ1"))) {
          stop(paste("Error! \"", `dataSource`, "\" cannot be assigned to `dataSource`. Must be \"WRITE\", \"ANALYTIC\", \"READ1\".", sep = ""))
        }
        if (!(is.character(`dataSource`) && length(`dataSource`) == 1)) {
          stop(paste("Error! Invalid data for `dataSource`. Must be a string:", `dataSource`))
        }
        self$`dataSource` <- `dataSource`
      }
      if (!is.null(`maxLimit`)) {
        if (!(is.numeric(`maxLimit`) && length(`maxLimit`) == 1)) {
          stop(paste("Error! Invalid data for `maxLimit`. Must be an integer:", `maxLimit`))
        }
        self$`maxLimit` <- `maxLimit`
      }
      if (!is.null(`maxDateRange`)) {
        if (!(is.numeric(`maxDateRange`) && length(`maxDateRange`) == 1)) {
          stop(paste("Error! Invalid data for `maxDateRange`. Must be an integer:", `maxDateRange`))
        }
        self$`maxDateRange` <- `maxDateRange`
      }
      if (!is.null(`displayParams`)) {
        if (!(is.character(`displayParams`) && length(`displayParams`) == 1)) {
          stop(paste("Error! Invalid data for `displayParams`. Must be a string:", `displayParams`))
        }
        self$`displayParams` <- `displayParams`
      }
      if (!is.null(`metaData`)) {
        if (!(is.character(`metaData`) && length(`metaData`) == 1)) {
          stop(paste("Error! Invalid data for `metaData`. Must be a string:", `metaData`))
        }
        self$`metaData` <- `metaData`
      }
      if (!is.null(`columnNamesRaw`)) {
        if (!(is.character(`columnNamesRaw`) && length(`columnNamesRaw`) == 1)) {
          stop(paste("Error! Invalid data for `columnNamesRaw`. Must be a string:", `columnNamesRaw`))
        }
        self$`columnNamesRaw` <- `columnNamesRaw`
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
    #' @return ReportDefinition as a base R list.
    #' @examples
    #' # convert array of ReportDefinition (x) to a data frame
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
    #' Convert ReportDefinition to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReportDefinitionObject <- list()
      if (!is.null(self$`id`)) {
        ReportDefinitionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ReportDefinitionObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ReportDefinitionObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`query`)) {
        ReportDefinitionObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`queryName`)) {
        ReportDefinitionObject[["queryName"]] <-
          self$`queryName`
      }
      if (!is.null(self$`displayName`)) {
        ReportDefinitionObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`columnNames`)) {
        ReportDefinitionObject[["columnNames"]] <-
          self$`columnNames`
      }
      if (!is.null(self$`nativeSql`)) {
        ReportDefinitionObject[["nativeSql"]] <-
          self$`nativeSql`
      }
      if (!is.null(self$`display`)) {
        ReportDefinitionObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`dataSource`)) {
        ReportDefinitionObject[["dataSource"]] <-
          self$`dataSource`
      }
      if (!is.null(self$`maxLimit`)) {
        ReportDefinitionObject[["maxLimit"]] <-
          self$`maxLimit`
      }
      if (!is.null(self$`maxDateRange`)) {
        ReportDefinitionObject[["maxDateRange"]] <-
          self$`maxDateRange`
      }
      if (!is.null(self$`displayParams`)) {
        ReportDefinitionObject[["displayParams"]] <-
          self$`displayParams`
      }
      if (!is.null(self$`metaData`)) {
        ReportDefinitionObject[["metaData"]] <-
          self$`metaData`
      }
      if (!is.null(self$`columnNamesRaw`)) {
        ReportDefinitionObject[["columnNamesRaw"]] <-
          self$`columnNamesRaw`
      }
      return(ReportDefinitionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ReportDefinition
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportDefinition
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
      if (!is.null(this_object$`query`)) {
        self$`query` <- this_object$`query`
      }
      if (!is.null(this_object$`queryName`)) {
        self$`queryName` <- this_object$`queryName`
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`columnNames`)) {
        self$`columnNames` <- ApiClient$new()$deserializeObj(this_object$`columnNames`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`nativeSql`)) {
        self$`nativeSql` <- this_object$`nativeSql`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`dataSource`)) {
        if (!is.null(this_object$`dataSource`) && !(this_object$`dataSource` %in% c("WRITE", "ANALYTIC", "READ1"))) {
          stop(paste("Error! \"", this_object$`dataSource`, "\" cannot be assigned to `dataSource`. Must be \"WRITE\", \"ANALYTIC\", \"READ1\".", sep = ""))
        }
        self$`dataSource` <- this_object$`dataSource`
      }
      if (!is.null(this_object$`maxLimit`)) {
        self$`maxLimit` <- this_object$`maxLimit`
      }
      if (!is.null(this_object$`maxDateRange`)) {
        self$`maxDateRange` <- this_object$`maxDateRange`
      }
      if (!is.null(this_object$`displayParams`)) {
        self$`displayParams` <- this_object$`displayParams`
      }
      if (!is.null(this_object$`metaData`)) {
        self$`metaData` <- this_object$`metaData`
      }
      if (!is.null(this_object$`columnNamesRaw`)) {
        self$`columnNamesRaw` <- this_object$`columnNamesRaw`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReportDefinition in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReportDefinition
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportDefinition
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`query` <- this_object$`query`
      self$`queryName` <- this_object$`queryName`
      self$`displayName` <- this_object$`displayName`
      self$`columnNames` <- ApiClient$new()$deserializeObj(this_object$`columnNames`, "array[character]", loadNamespace("openapi"))
      self$`nativeSql` <- this_object$`nativeSql`
      self$`display` <- this_object$`display`
      if (!is.null(this_object$`dataSource`) && !(this_object$`dataSource` %in% c("WRITE", "ANALYTIC", "READ1"))) {
        stop(paste("Error! \"", this_object$`dataSource`, "\" cannot be assigned to `dataSource`. Must be \"WRITE\", \"ANALYTIC\", \"READ1\".", sep = ""))
      }
      self$`dataSource` <- this_object$`dataSource`
      self$`maxLimit` <- this_object$`maxLimit`
      self$`maxDateRange` <- this_object$`maxDateRange`
      self$`displayParams` <- this_object$`displayParams`
      self$`metaData` <- this_object$`metaData`
      self$`columnNamesRaw` <- this_object$`columnNamesRaw`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReportDefinition and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReportDefinition
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
# ReportDefinition$unlock()
#
## Below is an example to define the print function
# ReportDefinition$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReportDefinition$lock()

