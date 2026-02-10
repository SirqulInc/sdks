#' Create a new WeatherResponse
#'
#' @description
#' WeatherResponse Class
#'
#' @docType class
#' @title WeatherResponse
#' @description WeatherResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field cloudcover  integer [optional]
#' @field humidity  integer [optional]
#' @field observationTime  integer [optional]
#' @field precipMM  numeric [optional]
#' @field pressure  integer [optional]
#' @field temp_C  integer [optional]
#' @field temp_F  integer [optional]
#' @field visibility  integer [optional]
#' @field weatherCode  integer [optional]
#' @field weatherDesc  character [optional]
#' @field weatherIconUrl  character [optional]
#' @field winddir16Point  character [optional]
#' @field winddirDegree  integer [optional]
#' @field windspeedKmph  integer [optional]
#' @field windspeedMiles  integer [optional]
#' @field forecasts  list(\link{WeatherForecastResponse}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WeatherResponse <- R6::R6Class(
  "WeatherResponse",
  public = list(
    `id` = NULL,
    `cloudcover` = NULL,
    `humidity` = NULL,
    `observationTime` = NULL,
    `precipMM` = NULL,
    `pressure` = NULL,
    `temp_C` = NULL,
    `temp_F` = NULL,
    `visibility` = NULL,
    `weatherCode` = NULL,
    `weatherDesc` = NULL,
    `weatherIconUrl` = NULL,
    `winddir16Point` = NULL,
    `winddirDegree` = NULL,
    `windspeedKmph` = NULL,
    `windspeedMiles` = NULL,
    `forecasts` = NULL,

    #' @description
    #' Initialize a new WeatherResponse class.
    #'
    #' @param id id
    #' @param cloudcover cloudcover
    #' @param humidity humidity
    #' @param observationTime observationTime
    #' @param precipMM precipMM
    #' @param pressure pressure
    #' @param temp_C temp_C
    #' @param temp_F temp_F
    #' @param visibility visibility
    #' @param weatherCode weatherCode
    #' @param weatherDesc weatherDesc
    #' @param weatherIconUrl weatherIconUrl
    #' @param winddir16Point winddir16Point
    #' @param winddirDegree winddirDegree
    #' @param windspeedKmph windspeedKmph
    #' @param windspeedMiles windspeedMiles
    #' @param forecasts forecasts
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `cloudcover` = NULL, `humidity` = NULL, `observationTime` = NULL, `precipMM` = NULL, `pressure` = NULL, `temp_C` = NULL, `temp_F` = NULL, `visibility` = NULL, `weatherCode` = NULL, `weatherDesc` = NULL, `weatherIconUrl` = NULL, `winddir16Point` = NULL, `winddirDegree` = NULL, `windspeedKmph` = NULL, `windspeedMiles` = NULL, `forecasts` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`cloudcover`)) {
        if (!(is.numeric(`cloudcover`) && length(`cloudcover`) == 1)) {
          stop(paste("Error! Invalid data for `cloudcover`. Must be an integer:", `cloudcover`))
        }
        self$`cloudcover` <- `cloudcover`
      }
      if (!is.null(`humidity`)) {
        if (!(is.numeric(`humidity`) && length(`humidity`) == 1)) {
          stop(paste("Error! Invalid data for `humidity`. Must be an integer:", `humidity`))
        }
        self$`humidity` <- `humidity`
      }
      if (!is.null(`observationTime`)) {
        if (!(is.numeric(`observationTime`) && length(`observationTime`) == 1)) {
          stop(paste("Error! Invalid data for `observationTime`. Must be an integer:", `observationTime`))
        }
        self$`observationTime` <- `observationTime`
      }
      if (!is.null(`precipMM`)) {
        if (!(is.numeric(`precipMM`) && length(`precipMM`) == 1)) {
          stop(paste("Error! Invalid data for `precipMM`. Must be a number:", `precipMM`))
        }
        self$`precipMM` <- `precipMM`
      }
      if (!is.null(`pressure`)) {
        if (!(is.numeric(`pressure`) && length(`pressure`) == 1)) {
          stop(paste("Error! Invalid data for `pressure`. Must be an integer:", `pressure`))
        }
        self$`pressure` <- `pressure`
      }
      if (!is.null(`temp_C`)) {
        if (!(is.numeric(`temp_C`) && length(`temp_C`) == 1)) {
          stop(paste("Error! Invalid data for `temp_C`. Must be an integer:", `temp_C`))
        }
        self$`temp_C` <- `temp_C`
      }
      if (!is.null(`temp_F`)) {
        if (!(is.numeric(`temp_F`) && length(`temp_F`) == 1)) {
          stop(paste("Error! Invalid data for `temp_F`. Must be an integer:", `temp_F`))
        }
        self$`temp_F` <- `temp_F`
      }
      if (!is.null(`visibility`)) {
        if (!(is.numeric(`visibility`) && length(`visibility`) == 1)) {
          stop(paste("Error! Invalid data for `visibility`. Must be an integer:", `visibility`))
        }
        self$`visibility` <- `visibility`
      }
      if (!is.null(`weatherCode`)) {
        if (!(is.numeric(`weatherCode`) && length(`weatherCode`) == 1)) {
          stop(paste("Error! Invalid data for `weatherCode`. Must be an integer:", `weatherCode`))
        }
        self$`weatherCode` <- `weatherCode`
      }
      if (!is.null(`weatherDesc`)) {
        if (!(is.character(`weatherDesc`) && length(`weatherDesc`) == 1)) {
          stop(paste("Error! Invalid data for `weatherDesc`. Must be a string:", `weatherDesc`))
        }
        self$`weatherDesc` <- `weatherDesc`
      }
      if (!is.null(`weatherIconUrl`)) {
        if (!(is.character(`weatherIconUrl`) && length(`weatherIconUrl`) == 1)) {
          stop(paste("Error! Invalid data for `weatherIconUrl`. Must be a string:", `weatherIconUrl`))
        }
        self$`weatherIconUrl` <- `weatherIconUrl`
      }
      if (!is.null(`winddir16Point`)) {
        if (!(is.character(`winddir16Point`) && length(`winddir16Point`) == 1)) {
          stop(paste("Error! Invalid data for `winddir16Point`. Must be a string:", `winddir16Point`))
        }
        self$`winddir16Point` <- `winddir16Point`
      }
      if (!is.null(`winddirDegree`)) {
        if (!(is.numeric(`winddirDegree`) && length(`winddirDegree`) == 1)) {
          stop(paste("Error! Invalid data for `winddirDegree`. Must be an integer:", `winddirDegree`))
        }
        self$`winddirDegree` <- `winddirDegree`
      }
      if (!is.null(`windspeedKmph`)) {
        if (!(is.numeric(`windspeedKmph`) && length(`windspeedKmph`) == 1)) {
          stop(paste("Error! Invalid data for `windspeedKmph`. Must be an integer:", `windspeedKmph`))
        }
        self$`windspeedKmph` <- `windspeedKmph`
      }
      if (!is.null(`windspeedMiles`)) {
        if (!(is.numeric(`windspeedMiles`) && length(`windspeedMiles`) == 1)) {
          stop(paste("Error! Invalid data for `windspeedMiles`. Must be an integer:", `windspeedMiles`))
        }
        self$`windspeedMiles` <- `windspeedMiles`
      }
      if (!is.null(`forecasts`)) {
        stopifnot(is.vector(`forecasts`), length(`forecasts`) != 0)
        sapply(`forecasts`, function(x) stopifnot(R6::is.R6(x)))
        self$`forecasts` <- `forecasts`
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
    #' @return WeatherResponse as a base R list.
    #' @examples
    #' # convert array of WeatherResponse (x) to a data frame
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
    #' Convert WeatherResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WeatherResponseObject <- list()
      if (!is.null(self$`id`)) {
        WeatherResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`cloudcover`)) {
        WeatherResponseObject[["cloudcover"]] <-
          self$`cloudcover`
      }
      if (!is.null(self$`humidity`)) {
        WeatherResponseObject[["humidity"]] <-
          self$`humidity`
      }
      if (!is.null(self$`observationTime`)) {
        WeatherResponseObject[["observationTime"]] <-
          self$`observationTime`
      }
      if (!is.null(self$`precipMM`)) {
        WeatherResponseObject[["precipMM"]] <-
          self$`precipMM`
      }
      if (!is.null(self$`pressure`)) {
        WeatherResponseObject[["pressure"]] <-
          self$`pressure`
      }
      if (!is.null(self$`temp_C`)) {
        WeatherResponseObject[["temp_C"]] <-
          self$`temp_C`
      }
      if (!is.null(self$`temp_F`)) {
        WeatherResponseObject[["temp_F"]] <-
          self$`temp_F`
      }
      if (!is.null(self$`visibility`)) {
        WeatherResponseObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`weatherCode`)) {
        WeatherResponseObject[["weatherCode"]] <-
          self$`weatherCode`
      }
      if (!is.null(self$`weatherDesc`)) {
        WeatherResponseObject[["weatherDesc"]] <-
          self$`weatherDesc`
      }
      if (!is.null(self$`weatherIconUrl`)) {
        WeatherResponseObject[["weatherIconUrl"]] <-
          self$`weatherIconUrl`
      }
      if (!is.null(self$`winddir16Point`)) {
        WeatherResponseObject[["winddir16Point"]] <-
          self$`winddir16Point`
      }
      if (!is.null(self$`winddirDegree`)) {
        WeatherResponseObject[["winddirDegree"]] <-
          self$`winddirDegree`
      }
      if (!is.null(self$`windspeedKmph`)) {
        WeatherResponseObject[["windspeedKmph"]] <-
          self$`windspeedKmph`
      }
      if (!is.null(self$`windspeedMiles`)) {
        WeatherResponseObject[["windspeedMiles"]] <-
          self$`windspeedMiles`
      }
      if (!is.null(self$`forecasts`)) {
        WeatherResponseObject[["forecasts"]] <-
          self$extractSimpleType(self$`forecasts`)
      }
      return(WeatherResponseObject)
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
    #' Deserialize JSON string into an instance of WeatherResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of WeatherResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`cloudcover`)) {
        self$`cloudcover` <- this_object$`cloudcover`
      }
      if (!is.null(this_object$`humidity`)) {
        self$`humidity` <- this_object$`humidity`
      }
      if (!is.null(this_object$`observationTime`)) {
        self$`observationTime` <- this_object$`observationTime`
      }
      if (!is.null(this_object$`precipMM`)) {
        self$`precipMM` <- this_object$`precipMM`
      }
      if (!is.null(this_object$`pressure`)) {
        self$`pressure` <- this_object$`pressure`
      }
      if (!is.null(this_object$`temp_C`)) {
        self$`temp_C` <- this_object$`temp_C`
      }
      if (!is.null(this_object$`temp_F`)) {
        self$`temp_F` <- this_object$`temp_F`
      }
      if (!is.null(this_object$`visibility`)) {
        self$`visibility` <- this_object$`visibility`
      }
      if (!is.null(this_object$`weatherCode`)) {
        self$`weatherCode` <- this_object$`weatherCode`
      }
      if (!is.null(this_object$`weatherDesc`)) {
        self$`weatherDesc` <- this_object$`weatherDesc`
      }
      if (!is.null(this_object$`weatherIconUrl`)) {
        self$`weatherIconUrl` <- this_object$`weatherIconUrl`
      }
      if (!is.null(this_object$`winddir16Point`)) {
        self$`winddir16Point` <- this_object$`winddir16Point`
      }
      if (!is.null(this_object$`winddirDegree`)) {
        self$`winddirDegree` <- this_object$`winddirDegree`
      }
      if (!is.null(this_object$`windspeedKmph`)) {
        self$`windspeedKmph` <- this_object$`windspeedKmph`
      }
      if (!is.null(this_object$`windspeedMiles`)) {
        self$`windspeedMiles` <- this_object$`windspeedMiles`
      }
      if (!is.null(this_object$`forecasts`)) {
        self$`forecasts` <- ApiClient$new()$deserializeObj(this_object$`forecasts`, "array[WeatherForecastResponse]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return WeatherResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WeatherResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of WeatherResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`cloudcover` <- this_object$`cloudcover`
      self$`humidity` <- this_object$`humidity`
      self$`observationTime` <- this_object$`observationTime`
      self$`precipMM` <- this_object$`precipMM`
      self$`pressure` <- this_object$`pressure`
      self$`temp_C` <- this_object$`temp_C`
      self$`temp_F` <- this_object$`temp_F`
      self$`visibility` <- this_object$`visibility`
      self$`weatherCode` <- this_object$`weatherCode`
      self$`weatherDesc` <- this_object$`weatherDesc`
      self$`weatherIconUrl` <- this_object$`weatherIconUrl`
      self$`winddir16Point` <- this_object$`winddir16Point`
      self$`winddirDegree` <- this_object$`winddirDegree`
      self$`windspeedKmph` <- this_object$`windspeedKmph`
      self$`windspeedMiles` <- this_object$`windspeedMiles`
      self$`forecasts` <- ApiClient$new()$deserializeObj(this_object$`forecasts`, "array[WeatherForecastResponse]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to WeatherResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WeatherResponse
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
# WeatherResponse$unlock()
#
## Below is an example to define the print function
# WeatherResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WeatherResponse$lock()

