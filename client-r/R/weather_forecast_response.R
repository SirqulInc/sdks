#' Create a new WeatherForecastResponse
#'
#' @description
#' WeatherForecastResponse Class
#'
#' @docType class
#' @title WeatherForecastResponse
#' @description WeatherForecastResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field forecastDate  integer [optional]
#' @field precipMM  numeric [optional]
#' @field tempMaxC  integer [optional]
#' @field tempMaxF  integer [optional]
#' @field tempMinC  integer [optional]
#' @field tempMinF  integer [optional]
#' @field weatherCode  integer [optional]
#' @field weatherDesc  character [optional]
#' @field weatherIconUrl  character [optional]
#' @field winddir16Point  character [optional]
#' @field winddirDegree  integer [optional]
#' @field winddirection  character [optional]
#' @field windspeedKmph  integer [optional]
#' @field windspeedMiles  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WeatherForecastResponse <- R6::R6Class(
  "WeatherForecastResponse",
  public = list(
    `id` = NULL,
    `forecastDate` = NULL,
    `precipMM` = NULL,
    `tempMaxC` = NULL,
    `tempMaxF` = NULL,
    `tempMinC` = NULL,
    `tempMinF` = NULL,
    `weatherCode` = NULL,
    `weatherDesc` = NULL,
    `weatherIconUrl` = NULL,
    `winddir16Point` = NULL,
    `winddirDegree` = NULL,
    `winddirection` = NULL,
    `windspeedKmph` = NULL,
    `windspeedMiles` = NULL,

    #' @description
    #' Initialize a new WeatherForecastResponse class.
    #'
    #' @param id id
    #' @param forecastDate forecastDate
    #' @param precipMM precipMM
    #' @param tempMaxC tempMaxC
    #' @param tempMaxF tempMaxF
    #' @param tempMinC tempMinC
    #' @param tempMinF tempMinF
    #' @param weatherCode weatherCode
    #' @param weatherDesc weatherDesc
    #' @param weatherIconUrl weatherIconUrl
    #' @param winddir16Point winddir16Point
    #' @param winddirDegree winddirDegree
    #' @param winddirection winddirection
    #' @param windspeedKmph windspeedKmph
    #' @param windspeedMiles windspeedMiles
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `forecastDate` = NULL, `precipMM` = NULL, `tempMaxC` = NULL, `tempMaxF` = NULL, `tempMinC` = NULL, `tempMinF` = NULL, `weatherCode` = NULL, `weatherDesc` = NULL, `weatherIconUrl` = NULL, `winddir16Point` = NULL, `winddirDegree` = NULL, `winddirection` = NULL, `windspeedKmph` = NULL, `windspeedMiles` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`forecastDate`)) {
        if (!(is.numeric(`forecastDate`) && length(`forecastDate`) == 1)) {
          stop(paste("Error! Invalid data for `forecastDate`. Must be an integer:", `forecastDate`))
        }
        self$`forecastDate` <- `forecastDate`
      }
      if (!is.null(`precipMM`)) {
        if (!(is.numeric(`precipMM`) && length(`precipMM`) == 1)) {
          stop(paste("Error! Invalid data for `precipMM`. Must be a number:", `precipMM`))
        }
        self$`precipMM` <- `precipMM`
      }
      if (!is.null(`tempMaxC`)) {
        if (!(is.numeric(`tempMaxC`) && length(`tempMaxC`) == 1)) {
          stop(paste("Error! Invalid data for `tempMaxC`. Must be an integer:", `tempMaxC`))
        }
        self$`tempMaxC` <- `tempMaxC`
      }
      if (!is.null(`tempMaxF`)) {
        if (!(is.numeric(`tempMaxF`) && length(`tempMaxF`) == 1)) {
          stop(paste("Error! Invalid data for `tempMaxF`. Must be an integer:", `tempMaxF`))
        }
        self$`tempMaxF` <- `tempMaxF`
      }
      if (!is.null(`tempMinC`)) {
        if (!(is.numeric(`tempMinC`) && length(`tempMinC`) == 1)) {
          stop(paste("Error! Invalid data for `tempMinC`. Must be an integer:", `tempMinC`))
        }
        self$`tempMinC` <- `tempMinC`
      }
      if (!is.null(`tempMinF`)) {
        if (!(is.numeric(`tempMinF`) && length(`tempMinF`) == 1)) {
          stop(paste("Error! Invalid data for `tempMinF`. Must be an integer:", `tempMinF`))
        }
        self$`tempMinF` <- `tempMinF`
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
      if (!is.null(`winddirection`)) {
        if (!(is.character(`winddirection`) && length(`winddirection`) == 1)) {
          stop(paste("Error! Invalid data for `winddirection`. Must be a string:", `winddirection`))
        }
        self$`winddirection` <- `winddirection`
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
    #' @return WeatherForecastResponse as a base R list.
    #' @examples
    #' # convert array of WeatherForecastResponse (x) to a data frame
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
    #' Convert WeatherForecastResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WeatherForecastResponseObject <- list()
      if (!is.null(self$`id`)) {
        WeatherForecastResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`forecastDate`)) {
        WeatherForecastResponseObject[["forecastDate"]] <-
          self$`forecastDate`
      }
      if (!is.null(self$`precipMM`)) {
        WeatherForecastResponseObject[["precipMM"]] <-
          self$`precipMM`
      }
      if (!is.null(self$`tempMaxC`)) {
        WeatherForecastResponseObject[["tempMaxC"]] <-
          self$`tempMaxC`
      }
      if (!is.null(self$`tempMaxF`)) {
        WeatherForecastResponseObject[["tempMaxF"]] <-
          self$`tempMaxF`
      }
      if (!is.null(self$`tempMinC`)) {
        WeatherForecastResponseObject[["tempMinC"]] <-
          self$`tempMinC`
      }
      if (!is.null(self$`tempMinF`)) {
        WeatherForecastResponseObject[["tempMinF"]] <-
          self$`tempMinF`
      }
      if (!is.null(self$`weatherCode`)) {
        WeatherForecastResponseObject[["weatherCode"]] <-
          self$`weatherCode`
      }
      if (!is.null(self$`weatherDesc`)) {
        WeatherForecastResponseObject[["weatherDesc"]] <-
          self$`weatherDesc`
      }
      if (!is.null(self$`weatherIconUrl`)) {
        WeatherForecastResponseObject[["weatherIconUrl"]] <-
          self$`weatherIconUrl`
      }
      if (!is.null(self$`winddir16Point`)) {
        WeatherForecastResponseObject[["winddir16Point"]] <-
          self$`winddir16Point`
      }
      if (!is.null(self$`winddirDegree`)) {
        WeatherForecastResponseObject[["winddirDegree"]] <-
          self$`winddirDegree`
      }
      if (!is.null(self$`winddirection`)) {
        WeatherForecastResponseObject[["winddirection"]] <-
          self$`winddirection`
      }
      if (!is.null(self$`windspeedKmph`)) {
        WeatherForecastResponseObject[["windspeedKmph"]] <-
          self$`windspeedKmph`
      }
      if (!is.null(self$`windspeedMiles`)) {
        WeatherForecastResponseObject[["windspeedMiles"]] <-
          self$`windspeedMiles`
      }
      return(WeatherForecastResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of WeatherForecastResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of WeatherForecastResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`forecastDate`)) {
        self$`forecastDate` <- this_object$`forecastDate`
      }
      if (!is.null(this_object$`precipMM`)) {
        self$`precipMM` <- this_object$`precipMM`
      }
      if (!is.null(this_object$`tempMaxC`)) {
        self$`tempMaxC` <- this_object$`tempMaxC`
      }
      if (!is.null(this_object$`tempMaxF`)) {
        self$`tempMaxF` <- this_object$`tempMaxF`
      }
      if (!is.null(this_object$`tempMinC`)) {
        self$`tempMinC` <- this_object$`tempMinC`
      }
      if (!is.null(this_object$`tempMinF`)) {
        self$`tempMinF` <- this_object$`tempMinF`
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
      if (!is.null(this_object$`winddirection`)) {
        self$`winddirection` <- this_object$`winddirection`
      }
      if (!is.null(this_object$`windspeedKmph`)) {
        self$`windspeedKmph` <- this_object$`windspeedKmph`
      }
      if (!is.null(this_object$`windspeedMiles`)) {
        self$`windspeedMiles` <- this_object$`windspeedMiles`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return WeatherForecastResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WeatherForecastResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of WeatherForecastResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`forecastDate` <- this_object$`forecastDate`
      self$`precipMM` <- this_object$`precipMM`
      self$`tempMaxC` <- this_object$`tempMaxC`
      self$`tempMaxF` <- this_object$`tempMaxF`
      self$`tempMinC` <- this_object$`tempMinC`
      self$`tempMinF` <- this_object$`tempMinF`
      self$`weatherCode` <- this_object$`weatherCode`
      self$`weatherDesc` <- this_object$`weatherDesc`
      self$`weatherIconUrl` <- this_object$`weatherIconUrl`
      self$`winddir16Point` <- this_object$`winddir16Point`
      self$`winddirDegree` <- this_object$`winddirDegree`
      self$`winddirection` <- this_object$`winddirection`
      self$`windspeedKmph` <- this_object$`windspeedKmph`
      self$`windspeedMiles` <- this_object$`windspeedMiles`
      self
    },

    #' @description
    #' Validate JSON input with respect to WeatherForecastResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WeatherForecastResponse
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
# WeatherForecastResponse$unlock()
#
## Below is an example to define the print function
# WeatherForecastResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WeatherForecastResponse$lock()

