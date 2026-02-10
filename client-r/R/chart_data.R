#' Create a new ChartData
#'
#' @description
#' ChartData Class
#'
#' @docType class
#' @title ChartData
#' @description ChartData Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field identifier  character [optional]
#' @field idAttribute  character [optional]
#' @field label  character [optional]
#' @field maxValue  integer [optional]
#' @field totalCount  integer [optional]
#' @field items  list(object) [optional]
#' @field aggregatedItems  list(object) [optional]
#' @field caption  character [optional]
#' @field showAnchor  character [optional]
#' @field anchorAlpha  character [optional]
#' @field getxAxisName  character [optional]
#' @field getyAxisMinValue  character [optional]
#' @field getyAxisName  character [optional]
#' @field decimalPrecision  character [optional]
#' @field formatNumberScale  character [optional]
#' @field numberPrefix  character [optional]
#' @field showNames  character [optional]
#' @field showValues  character [optional]
#' @field showAlternateHGridColor  character [optional]
#' @field alternateHGridColor  character [optional]
#' @field divLineColor  character [optional]
#' @field divLineAlpha  character [optional]
#' @field alternateHGridAlpha  character [optional]
#' @field rotateNames  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ChartData <- R6::R6Class(
  "ChartData",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `identifier` = NULL,
    `idAttribute` = NULL,
    `label` = NULL,
    `maxValue` = NULL,
    `totalCount` = NULL,
    `items` = NULL,
    `aggregatedItems` = NULL,
    `caption` = NULL,
    `showAnchor` = NULL,
    `anchorAlpha` = NULL,
    `getxAxisName` = NULL,
    `getyAxisMinValue` = NULL,
    `getyAxisName` = NULL,
    `decimalPrecision` = NULL,
    `formatNumberScale` = NULL,
    `numberPrefix` = NULL,
    `showNames` = NULL,
    `showValues` = NULL,
    `showAlternateHGridColor` = NULL,
    `alternateHGridColor` = NULL,
    `divLineColor` = NULL,
    `divLineAlpha` = NULL,
    `alternateHGridAlpha` = NULL,
    `rotateNames` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new ChartData class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param identifier identifier
    #' @param idAttribute idAttribute
    #' @param label label
    #' @param maxValue maxValue
    #' @param totalCount totalCount
    #' @param items items
    #' @param aggregatedItems aggregatedItems
    #' @param caption caption
    #' @param showAnchor showAnchor
    #' @param anchorAlpha anchorAlpha
    #' @param getxAxisName getxAxisName
    #' @param getyAxisMinValue getyAxisMinValue
    #' @param getyAxisName getyAxisName
    #' @param decimalPrecision decimalPrecision
    #' @param formatNumberScale formatNumberScale
    #' @param numberPrefix numberPrefix
    #' @param showNames showNames
    #' @param showValues showValues
    #' @param showAlternateHGridColor showAlternateHGridColor
    #' @param alternateHGridColor alternateHGridColor
    #' @param divLineColor divLineColor
    #' @param divLineAlpha divLineAlpha
    #' @param alternateHGridAlpha alternateHGridAlpha
    #' @param rotateNames rotateNames
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `identifier` = NULL, `idAttribute` = NULL, `label` = NULL, `maxValue` = NULL, `totalCount` = NULL, `items` = NULL, `aggregatedItems` = NULL, `caption` = NULL, `showAnchor` = NULL, `anchorAlpha` = NULL, `getxAxisName` = NULL, `getyAxisMinValue` = NULL, `getyAxisName` = NULL, `decimalPrecision` = NULL, `formatNumberScale` = NULL, `numberPrefix` = NULL, `showNames` = NULL, `showValues` = NULL, `showAlternateHGridColor` = NULL, `alternateHGridColor` = NULL, `divLineColor` = NULL, `divLineAlpha` = NULL, `alternateHGridAlpha` = NULL, `rotateNames` = NULL, `returning` = NULL, ...) {
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`version`)) {
        if (!(is.numeric(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a number:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`serializeNulls`)) {
        if (!(is.logical(`serializeNulls`) && length(`serializeNulls`) == 1)) {
          stop(paste("Error! Invalid data for `serializeNulls`. Must be a boolean:", `serializeNulls`))
        }
        self$`serializeNulls` <- `serializeNulls`
      }
      if (!is.null(`startTimeLog`)) {
        if (!(is.numeric(`startTimeLog`) && length(`startTimeLog`) == 1)) {
          stop(paste("Error! Invalid data for `startTimeLog`. Must be an integer:", `startTimeLog`))
        }
        self$`startTimeLog` <- `startTimeLog`
      }
      if (!is.null(`errorCode`)) {
        if (!(is.character(`errorCode`) && length(`errorCode`) == 1)) {
          stop(paste("Error! Invalid data for `errorCode`. Must be a string:", `errorCode`))
        }
        self$`errorCode` <- `errorCode`
      }
      if (!is.null(`request`)) {
        stopifnot(is.vector(`request`), length(`request`) != 0)
        sapply(`request`, function(x) stopifnot(R6::is.R6(x)))
        self$`request` <- `request`
      }
      if (!is.null(`identifier`)) {
        if (!(is.character(`identifier`) && length(`identifier`) == 1)) {
          stop(paste("Error! Invalid data for `identifier`. Must be a string:", `identifier`))
        }
        self$`identifier` <- `identifier`
      }
      if (!is.null(`idAttribute`)) {
        if (!(is.character(`idAttribute`) && length(`idAttribute`) == 1)) {
          stop(paste("Error! Invalid data for `idAttribute`. Must be a string:", `idAttribute`))
        }
        self$`idAttribute` <- `idAttribute`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`maxValue`)) {
        if (!(is.numeric(`maxValue`) && length(`maxValue`) == 1)) {
          stop(paste("Error! Invalid data for `maxValue`. Must be an integer:", `maxValue`))
        }
        self$`maxValue` <- `maxValue`
      }
      if (!is.null(`totalCount`)) {
        if (!(is.numeric(`totalCount`) && length(`totalCount`) == 1)) {
          stop(paste("Error! Invalid data for `totalCount`. Must be an integer:", `totalCount`))
        }
        self$`totalCount` <- `totalCount`
      }
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(is.character(x)))
        self$`items` <- `items`
      }
      if (!is.null(`aggregatedItems`)) {
        stopifnot(is.vector(`aggregatedItems`), length(`aggregatedItems`) != 0)
        sapply(`aggregatedItems`, function(x) stopifnot(is.character(x)))
        self$`aggregatedItems` <- `aggregatedItems`
      }
      if (!is.null(`caption`)) {
        if (!(is.character(`caption`) && length(`caption`) == 1)) {
          stop(paste("Error! Invalid data for `caption`. Must be a string:", `caption`))
        }
        self$`caption` <- `caption`
      }
      if (!is.null(`showAnchor`)) {
        if (!(is.character(`showAnchor`) && length(`showAnchor`) == 1)) {
          stop(paste("Error! Invalid data for `showAnchor`. Must be a string:", `showAnchor`))
        }
        self$`showAnchor` <- `showAnchor`
      }
      if (!is.null(`anchorAlpha`)) {
        if (!(is.character(`anchorAlpha`) && length(`anchorAlpha`) == 1)) {
          stop(paste("Error! Invalid data for `anchorAlpha`. Must be a string:", `anchorAlpha`))
        }
        self$`anchorAlpha` <- `anchorAlpha`
      }
      if (!is.null(`getxAxisName`)) {
        if (!(is.character(`getxAxisName`) && length(`getxAxisName`) == 1)) {
          stop(paste("Error! Invalid data for `getxAxisName`. Must be a string:", `getxAxisName`))
        }
        self$`getxAxisName` <- `getxAxisName`
      }
      if (!is.null(`getyAxisMinValue`)) {
        if (!(is.character(`getyAxisMinValue`) && length(`getyAxisMinValue`) == 1)) {
          stop(paste("Error! Invalid data for `getyAxisMinValue`. Must be a string:", `getyAxisMinValue`))
        }
        self$`getyAxisMinValue` <- `getyAxisMinValue`
      }
      if (!is.null(`getyAxisName`)) {
        if (!(is.character(`getyAxisName`) && length(`getyAxisName`) == 1)) {
          stop(paste("Error! Invalid data for `getyAxisName`. Must be a string:", `getyAxisName`))
        }
        self$`getyAxisName` <- `getyAxisName`
      }
      if (!is.null(`decimalPrecision`)) {
        if (!(is.character(`decimalPrecision`) && length(`decimalPrecision`) == 1)) {
          stop(paste("Error! Invalid data for `decimalPrecision`. Must be a string:", `decimalPrecision`))
        }
        self$`decimalPrecision` <- `decimalPrecision`
      }
      if (!is.null(`formatNumberScale`)) {
        if (!(is.character(`formatNumberScale`) && length(`formatNumberScale`) == 1)) {
          stop(paste("Error! Invalid data for `formatNumberScale`. Must be a string:", `formatNumberScale`))
        }
        self$`formatNumberScale` <- `formatNumberScale`
      }
      if (!is.null(`numberPrefix`)) {
        if (!(is.character(`numberPrefix`) && length(`numberPrefix`) == 1)) {
          stop(paste("Error! Invalid data for `numberPrefix`. Must be a string:", `numberPrefix`))
        }
        self$`numberPrefix` <- `numberPrefix`
      }
      if (!is.null(`showNames`)) {
        if (!(is.character(`showNames`) && length(`showNames`) == 1)) {
          stop(paste("Error! Invalid data for `showNames`. Must be a string:", `showNames`))
        }
        self$`showNames` <- `showNames`
      }
      if (!is.null(`showValues`)) {
        if (!(is.character(`showValues`) && length(`showValues`) == 1)) {
          stop(paste("Error! Invalid data for `showValues`. Must be a string:", `showValues`))
        }
        self$`showValues` <- `showValues`
      }
      if (!is.null(`showAlternateHGridColor`)) {
        if (!(is.character(`showAlternateHGridColor`) && length(`showAlternateHGridColor`) == 1)) {
          stop(paste("Error! Invalid data for `showAlternateHGridColor`. Must be a string:", `showAlternateHGridColor`))
        }
        self$`showAlternateHGridColor` <- `showAlternateHGridColor`
      }
      if (!is.null(`alternateHGridColor`)) {
        if (!(is.character(`alternateHGridColor`) && length(`alternateHGridColor`) == 1)) {
          stop(paste("Error! Invalid data for `alternateHGridColor`. Must be a string:", `alternateHGridColor`))
        }
        self$`alternateHGridColor` <- `alternateHGridColor`
      }
      if (!is.null(`divLineColor`)) {
        if (!(is.character(`divLineColor`) && length(`divLineColor`) == 1)) {
          stop(paste("Error! Invalid data for `divLineColor`. Must be a string:", `divLineColor`))
        }
        self$`divLineColor` <- `divLineColor`
      }
      if (!is.null(`divLineAlpha`)) {
        if (!(is.character(`divLineAlpha`) && length(`divLineAlpha`) == 1)) {
          stop(paste("Error! Invalid data for `divLineAlpha`. Must be a string:", `divLineAlpha`))
        }
        self$`divLineAlpha` <- `divLineAlpha`
      }
      if (!is.null(`alternateHGridAlpha`)) {
        if (!(is.character(`alternateHGridAlpha`) && length(`alternateHGridAlpha`) == 1)) {
          stop(paste("Error! Invalid data for `alternateHGridAlpha`. Must be a string:", `alternateHGridAlpha`))
        }
        self$`alternateHGridAlpha` <- `alternateHGridAlpha`
      }
      if (!is.null(`rotateNames`)) {
        if (!(is.character(`rotateNames`) && length(`rotateNames`) == 1)) {
          stop(paste("Error! Invalid data for `rotateNames`. Must be a string:", `rotateNames`))
        }
        self$`rotateNames` <- `rotateNames`
      }
      if (!is.null(`returning`)) {
        if (!(is.character(`returning`) && length(`returning`) == 1)) {
          stop(paste("Error! Invalid data for `returning`. Must be a string:", `returning`))
        }
        self$`returning` <- `returning`
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
    #' @return ChartData as a base R list.
    #' @examples
    #' # convert array of ChartData (x) to a data frame
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
    #' Convert ChartData to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ChartDataObject <- list()
      if (!is.null(self$`valid`)) {
        ChartDataObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        ChartDataObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        ChartDataObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        ChartDataObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        ChartDataObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        ChartDataObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        ChartDataObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`identifier`)) {
        ChartDataObject[["identifier"]] <-
          self$`identifier`
      }
      if (!is.null(self$`idAttribute`)) {
        ChartDataObject[["idAttribute"]] <-
          self$`idAttribute`
      }
      if (!is.null(self$`label`)) {
        ChartDataObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`maxValue`)) {
        ChartDataObject[["maxValue"]] <-
          self$`maxValue`
      }
      if (!is.null(self$`totalCount`)) {
        ChartDataObject[["totalCount"]] <-
          self$`totalCount`
      }
      if (!is.null(self$`items`)) {
        ChartDataObject[["items"]] <-
          self$`items`
      }
      if (!is.null(self$`aggregatedItems`)) {
        ChartDataObject[["aggregatedItems"]] <-
          self$`aggregatedItems`
      }
      if (!is.null(self$`caption`)) {
        ChartDataObject[["caption"]] <-
          self$`caption`
      }
      if (!is.null(self$`showAnchor`)) {
        ChartDataObject[["showAnchor"]] <-
          self$`showAnchor`
      }
      if (!is.null(self$`anchorAlpha`)) {
        ChartDataObject[["anchorAlpha"]] <-
          self$`anchorAlpha`
      }
      if (!is.null(self$`getxAxisName`)) {
        ChartDataObject[["getxAxisName"]] <-
          self$`getxAxisName`
      }
      if (!is.null(self$`getyAxisMinValue`)) {
        ChartDataObject[["getyAxisMinValue"]] <-
          self$`getyAxisMinValue`
      }
      if (!is.null(self$`getyAxisName`)) {
        ChartDataObject[["getyAxisName"]] <-
          self$`getyAxisName`
      }
      if (!is.null(self$`decimalPrecision`)) {
        ChartDataObject[["decimalPrecision"]] <-
          self$`decimalPrecision`
      }
      if (!is.null(self$`formatNumberScale`)) {
        ChartDataObject[["formatNumberScale"]] <-
          self$`formatNumberScale`
      }
      if (!is.null(self$`numberPrefix`)) {
        ChartDataObject[["numberPrefix"]] <-
          self$`numberPrefix`
      }
      if (!is.null(self$`showNames`)) {
        ChartDataObject[["showNames"]] <-
          self$`showNames`
      }
      if (!is.null(self$`showValues`)) {
        ChartDataObject[["showValues"]] <-
          self$`showValues`
      }
      if (!is.null(self$`showAlternateHGridColor`)) {
        ChartDataObject[["showAlternateHGridColor"]] <-
          self$`showAlternateHGridColor`
      }
      if (!is.null(self$`alternateHGridColor`)) {
        ChartDataObject[["alternateHGridColor"]] <-
          self$`alternateHGridColor`
      }
      if (!is.null(self$`divLineColor`)) {
        ChartDataObject[["divLineColor"]] <-
          self$`divLineColor`
      }
      if (!is.null(self$`divLineAlpha`)) {
        ChartDataObject[["divLineAlpha"]] <-
          self$`divLineAlpha`
      }
      if (!is.null(self$`alternateHGridAlpha`)) {
        ChartDataObject[["alternateHGridAlpha"]] <-
          self$`alternateHGridAlpha`
      }
      if (!is.null(self$`rotateNames`)) {
        ChartDataObject[["rotateNames"]] <-
          self$`rotateNames`
      }
      if (!is.null(self$`returning`)) {
        ChartDataObject[["returning"]] <-
          self$`returning`
      }
      return(ChartDataObject)
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
    #' Deserialize JSON string into an instance of ChartData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ChartData
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`serializeNulls`)) {
        self$`serializeNulls` <- this_object$`serializeNulls`
      }
      if (!is.null(this_object$`startTimeLog`)) {
        self$`startTimeLog` <- this_object$`startTimeLog`
      }
      if (!is.null(this_object$`errorCode`)) {
        self$`errorCode` <- this_object$`errorCode`
      }
      if (!is.null(this_object$`request`)) {
        self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`identifier`)) {
        self$`identifier` <- this_object$`identifier`
      }
      if (!is.null(this_object$`idAttribute`)) {
        self$`idAttribute` <- this_object$`idAttribute`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`maxValue`)) {
        self$`maxValue` <- this_object$`maxValue`
      }
      if (!is.null(this_object$`totalCount`)) {
        self$`totalCount` <- this_object$`totalCount`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[object]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`aggregatedItems`)) {
        self$`aggregatedItems` <- ApiClient$new()$deserializeObj(this_object$`aggregatedItems`, "array[object]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`caption`)) {
        self$`caption` <- this_object$`caption`
      }
      if (!is.null(this_object$`showAnchor`)) {
        self$`showAnchor` <- this_object$`showAnchor`
      }
      if (!is.null(this_object$`anchorAlpha`)) {
        self$`anchorAlpha` <- this_object$`anchorAlpha`
      }
      if (!is.null(this_object$`getxAxisName`)) {
        self$`getxAxisName` <- this_object$`getxAxisName`
      }
      if (!is.null(this_object$`getyAxisMinValue`)) {
        self$`getyAxisMinValue` <- this_object$`getyAxisMinValue`
      }
      if (!is.null(this_object$`getyAxisName`)) {
        self$`getyAxisName` <- this_object$`getyAxisName`
      }
      if (!is.null(this_object$`decimalPrecision`)) {
        self$`decimalPrecision` <- this_object$`decimalPrecision`
      }
      if (!is.null(this_object$`formatNumberScale`)) {
        self$`formatNumberScale` <- this_object$`formatNumberScale`
      }
      if (!is.null(this_object$`numberPrefix`)) {
        self$`numberPrefix` <- this_object$`numberPrefix`
      }
      if (!is.null(this_object$`showNames`)) {
        self$`showNames` <- this_object$`showNames`
      }
      if (!is.null(this_object$`showValues`)) {
        self$`showValues` <- this_object$`showValues`
      }
      if (!is.null(this_object$`showAlternateHGridColor`)) {
        self$`showAlternateHGridColor` <- this_object$`showAlternateHGridColor`
      }
      if (!is.null(this_object$`alternateHGridColor`)) {
        self$`alternateHGridColor` <- this_object$`alternateHGridColor`
      }
      if (!is.null(this_object$`divLineColor`)) {
        self$`divLineColor` <- this_object$`divLineColor`
      }
      if (!is.null(this_object$`divLineAlpha`)) {
        self$`divLineAlpha` <- this_object$`divLineAlpha`
      }
      if (!is.null(this_object$`alternateHGridAlpha`)) {
        self$`alternateHGridAlpha` <- this_object$`alternateHGridAlpha`
      }
      if (!is.null(this_object$`rotateNames`)) {
        self$`rotateNames` <- this_object$`rotateNames`
      }
      if (!is.null(this_object$`returning`)) {
        self$`returning` <- this_object$`returning`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ChartData in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ChartData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ChartData
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`identifier` <- this_object$`identifier`
      self$`idAttribute` <- this_object$`idAttribute`
      self$`label` <- this_object$`label`
      self$`maxValue` <- this_object$`maxValue`
      self$`totalCount` <- this_object$`totalCount`
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[object]", loadNamespace("openapi"))
      self$`aggregatedItems` <- ApiClient$new()$deserializeObj(this_object$`aggregatedItems`, "array[object]", loadNamespace("openapi"))
      self$`caption` <- this_object$`caption`
      self$`showAnchor` <- this_object$`showAnchor`
      self$`anchorAlpha` <- this_object$`anchorAlpha`
      self$`getxAxisName` <- this_object$`getxAxisName`
      self$`getyAxisMinValue` <- this_object$`getyAxisMinValue`
      self$`getyAxisName` <- this_object$`getyAxisName`
      self$`decimalPrecision` <- this_object$`decimalPrecision`
      self$`formatNumberScale` <- this_object$`formatNumberScale`
      self$`numberPrefix` <- this_object$`numberPrefix`
      self$`showNames` <- this_object$`showNames`
      self$`showValues` <- this_object$`showValues`
      self$`showAlternateHGridColor` <- this_object$`showAlternateHGridColor`
      self$`alternateHGridColor` <- this_object$`alternateHGridColor`
      self$`divLineColor` <- this_object$`divLineColor`
      self$`divLineAlpha` <- this_object$`divLineAlpha`
      self$`alternateHGridAlpha` <- this_object$`alternateHGridAlpha`
      self$`rotateNames` <- this_object$`rotateNames`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to ChartData and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ChartData
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
# ChartData$unlock()
#
## Below is an example to define the print function
# ChartData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ChartData$lock()

