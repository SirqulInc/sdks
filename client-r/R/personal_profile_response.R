#' Create a new PersonalProfileResponse
#'
#' @description
#' PersonalProfileResponse Class
#'
#' @docType class
#' @title PersonalProfileResponse
#' @description PersonalProfileResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field preferredGender  character [optional]
#' @field preferredEthnicity  character [optional]
#' @field preferredEducation  character [optional]
#' @field preferredEducationIndex  integer [optional]
#' @field preferredBodyType  character [optional]
#' @field preferredMinAge  integer [optional]
#' @field preferredMaxAge  integer [optional]
#' @field preferredMinHeight  integer [optional]
#' @field preferredMaxHeight  integer [optional]
#' @field preferredLocationRange  numeric [optional]
#' @field gender  character [optional]
#' @field hometown  character [optional]
#' @field height  character [optional]
#' @field heightIndex  integer [optional]
#' @field ethnicity  character [optional]
#' @field bodyType  character [optional]
#' @field children  character [optional]
#' @field companionship  character [optional]
#' @field companionshipIndex  integer [optional]
#' @field drink  character [optional]
#' @field education  character [optional]
#' @field educationIndex  integer [optional]
#' @field maritalStatus  character [optional]
#' @field smoke  character [optional]
#' @field religion  character [optional]
#' @field birthday  integer [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PersonalProfileResponse <- R6::R6Class(
  "PersonalProfileResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `preferredGender` = NULL,
    `preferredEthnicity` = NULL,
    `preferredEducation` = NULL,
    `preferredEducationIndex` = NULL,
    `preferredBodyType` = NULL,
    `preferredMinAge` = NULL,
    `preferredMaxAge` = NULL,
    `preferredMinHeight` = NULL,
    `preferredMaxHeight` = NULL,
    `preferredLocationRange` = NULL,
    `gender` = NULL,
    `hometown` = NULL,
    `height` = NULL,
    `heightIndex` = NULL,
    `ethnicity` = NULL,
    `bodyType` = NULL,
    `children` = NULL,
    `companionship` = NULL,
    `companionshipIndex` = NULL,
    `drink` = NULL,
    `education` = NULL,
    `educationIndex` = NULL,
    `maritalStatus` = NULL,
    `smoke` = NULL,
    `religion` = NULL,
    `birthday` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new PersonalProfileResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param preferredGender preferredGender
    #' @param preferredEthnicity preferredEthnicity
    #' @param preferredEducation preferredEducation
    #' @param preferredEducationIndex preferredEducationIndex
    #' @param preferredBodyType preferredBodyType
    #' @param preferredMinAge preferredMinAge
    #' @param preferredMaxAge preferredMaxAge
    #' @param preferredMinHeight preferredMinHeight
    #' @param preferredMaxHeight preferredMaxHeight
    #' @param preferredLocationRange preferredLocationRange
    #' @param gender gender
    #' @param hometown hometown
    #' @param height height
    #' @param heightIndex heightIndex
    #' @param ethnicity ethnicity
    #' @param bodyType bodyType
    #' @param children children
    #' @param companionship companionship
    #' @param companionshipIndex companionshipIndex
    #' @param drink drink
    #' @param education education
    #' @param educationIndex educationIndex
    #' @param maritalStatus maritalStatus
    #' @param smoke smoke
    #' @param religion religion
    #' @param birthday birthday
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `preferredGender` = NULL, `preferredEthnicity` = NULL, `preferredEducation` = NULL, `preferredEducationIndex` = NULL, `preferredBodyType` = NULL, `preferredMinAge` = NULL, `preferredMaxAge` = NULL, `preferredMinHeight` = NULL, `preferredMaxHeight` = NULL, `preferredLocationRange` = NULL, `gender` = NULL, `hometown` = NULL, `height` = NULL, `heightIndex` = NULL, `ethnicity` = NULL, `bodyType` = NULL, `children` = NULL, `companionship` = NULL, `companionshipIndex` = NULL, `drink` = NULL, `education` = NULL, `educationIndex` = NULL, `maritalStatus` = NULL, `smoke` = NULL, `religion` = NULL, `birthday` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`preferredGender`)) {
        if (!(`preferredGender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", `preferredGender`, "\" cannot be assigned to `preferredGender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        if (!(is.character(`preferredGender`) && length(`preferredGender`) == 1)) {
          stop(paste("Error! Invalid data for `preferredGender`. Must be a string:", `preferredGender`))
        }
        self$`preferredGender` <- `preferredGender`
      }
      if (!is.null(`preferredEthnicity`)) {
        if (!(is.character(`preferredEthnicity`) && length(`preferredEthnicity`) == 1)) {
          stop(paste("Error! Invalid data for `preferredEthnicity`. Must be a string:", `preferredEthnicity`))
        }
        self$`preferredEthnicity` <- `preferredEthnicity`
      }
      if (!is.null(`preferredEducation`)) {
        if (!(is.character(`preferredEducation`) && length(`preferredEducation`) == 1)) {
          stop(paste("Error! Invalid data for `preferredEducation`. Must be a string:", `preferredEducation`))
        }
        self$`preferredEducation` <- `preferredEducation`
      }
      if (!is.null(`preferredEducationIndex`)) {
        if (!(is.numeric(`preferredEducationIndex`) && length(`preferredEducationIndex`) == 1)) {
          stop(paste("Error! Invalid data for `preferredEducationIndex`. Must be an integer:", `preferredEducationIndex`))
        }
        self$`preferredEducationIndex` <- `preferredEducationIndex`
      }
      if (!is.null(`preferredBodyType`)) {
        if (!(is.character(`preferredBodyType`) && length(`preferredBodyType`) == 1)) {
          stop(paste("Error! Invalid data for `preferredBodyType`. Must be a string:", `preferredBodyType`))
        }
        self$`preferredBodyType` <- `preferredBodyType`
      }
      if (!is.null(`preferredMinAge`)) {
        if (!(is.numeric(`preferredMinAge`) && length(`preferredMinAge`) == 1)) {
          stop(paste("Error! Invalid data for `preferredMinAge`. Must be an integer:", `preferredMinAge`))
        }
        self$`preferredMinAge` <- `preferredMinAge`
      }
      if (!is.null(`preferredMaxAge`)) {
        if (!(is.numeric(`preferredMaxAge`) && length(`preferredMaxAge`) == 1)) {
          stop(paste("Error! Invalid data for `preferredMaxAge`. Must be an integer:", `preferredMaxAge`))
        }
        self$`preferredMaxAge` <- `preferredMaxAge`
      }
      if (!is.null(`preferredMinHeight`)) {
        if (!(is.numeric(`preferredMinHeight`) && length(`preferredMinHeight`) == 1)) {
          stop(paste("Error! Invalid data for `preferredMinHeight`. Must be an integer:", `preferredMinHeight`))
        }
        self$`preferredMinHeight` <- `preferredMinHeight`
      }
      if (!is.null(`preferredMaxHeight`)) {
        if (!(is.numeric(`preferredMaxHeight`) && length(`preferredMaxHeight`) == 1)) {
          stop(paste("Error! Invalid data for `preferredMaxHeight`. Must be an integer:", `preferredMaxHeight`))
        }
        self$`preferredMaxHeight` <- `preferredMaxHeight`
      }
      if (!is.null(`preferredLocationRange`)) {
        if (!(is.numeric(`preferredLocationRange`) && length(`preferredLocationRange`) == 1)) {
          stop(paste("Error! Invalid data for `preferredLocationRange`. Must be a number:", `preferredLocationRange`))
        }
        self$`preferredLocationRange` <- `preferredLocationRange`
      }
      if (!is.null(`gender`)) {
        if (!(`gender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", `gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        if (!(is.character(`gender`) && length(`gender`) == 1)) {
          stop(paste("Error! Invalid data for `gender`. Must be a string:", `gender`))
        }
        self$`gender` <- `gender`
      }
      if (!is.null(`hometown`)) {
        if (!(is.character(`hometown`) && length(`hometown`) == 1)) {
          stop(paste("Error! Invalid data for `hometown`. Must be a string:", `hometown`))
        }
        self$`hometown` <- `hometown`
      }
      if (!is.null(`height`)) {
        if (!(is.character(`height`) && length(`height`) == 1)) {
          stop(paste("Error! Invalid data for `height`. Must be a string:", `height`))
        }
        self$`height` <- `height`
      }
      if (!is.null(`heightIndex`)) {
        if (!(is.numeric(`heightIndex`) && length(`heightIndex`) == 1)) {
          stop(paste("Error! Invalid data for `heightIndex`. Must be an integer:", `heightIndex`))
        }
        self$`heightIndex` <- `heightIndex`
      }
      if (!is.null(`ethnicity`)) {
        if (!(is.character(`ethnicity`) && length(`ethnicity`) == 1)) {
          stop(paste("Error! Invalid data for `ethnicity`. Must be a string:", `ethnicity`))
        }
        self$`ethnicity` <- `ethnicity`
      }
      if (!is.null(`bodyType`)) {
        if (!(is.character(`bodyType`) && length(`bodyType`) == 1)) {
          stop(paste("Error! Invalid data for `bodyType`. Must be a string:", `bodyType`))
        }
        self$`bodyType` <- `bodyType`
      }
      if (!is.null(`children`)) {
        if (!(is.character(`children`) && length(`children`) == 1)) {
          stop(paste("Error! Invalid data for `children`. Must be a string:", `children`))
        }
        self$`children` <- `children`
      }
      if (!is.null(`companionship`)) {
        if (!(is.character(`companionship`) && length(`companionship`) == 1)) {
          stop(paste("Error! Invalid data for `companionship`. Must be a string:", `companionship`))
        }
        self$`companionship` <- `companionship`
      }
      if (!is.null(`companionshipIndex`)) {
        if (!(is.numeric(`companionshipIndex`) && length(`companionshipIndex`) == 1)) {
          stop(paste("Error! Invalid data for `companionshipIndex`. Must be an integer:", `companionshipIndex`))
        }
        self$`companionshipIndex` <- `companionshipIndex`
      }
      if (!is.null(`drink`)) {
        if (!(is.character(`drink`) && length(`drink`) == 1)) {
          stop(paste("Error! Invalid data for `drink`. Must be a string:", `drink`))
        }
        self$`drink` <- `drink`
      }
      if (!is.null(`education`)) {
        if (!(is.character(`education`) && length(`education`) == 1)) {
          stop(paste("Error! Invalid data for `education`. Must be a string:", `education`))
        }
        self$`education` <- `education`
      }
      if (!is.null(`educationIndex`)) {
        if (!(is.numeric(`educationIndex`) && length(`educationIndex`) == 1)) {
          stop(paste("Error! Invalid data for `educationIndex`. Must be an integer:", `educationIndex`))
        }
        self$`educationIndex` <- `educationIndex`
      }
      if (!is.null(`maritalStatus`)) {
        if (!(is.character(`maritalStatus`) && length(`maritalStatus`) == 1)) {
          stop(paste("Error! Invalid data for `maritalStatus`. Must be a string:", `maritalStatus`))
        }
        self$`maritalStatus` <- `maritalStatus`
      }
      if (!is.null(`smoke`)) {
        if (!(is.character(`smoke`) && length(`smoke`) == 1)) {
          stop(paste("Error! Invalid data for `smoke`. Must be a string:", `smoke`))
        }
        self$`smoke` <- `smoke`
      }
      if (!is.null(`religion`)) {
        if (!(is.character(`religion`) && length(`religion`) == 1)) {
          stop(paste("Error! Invalid data for `religion`. Must be a string:", `religion`))
        }
        self$`religion` <- `religion`
      }
      if (!is.null(`birthday`)) {
        if (!(is.numeric(`birthday`) && length(`birthday`) == 1)) {
          stop(paste("Error! Invalid data for `birthday`. Must be an integer:", `birthday`))
        }
        self$`birthday` <- `birthday`
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
    #' @return PersonalProfileResponse as a base R list.
    #' @examples
    #' # convert array of PersonalProfileResponse (x) to a data frame
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
    #' Convert PersonalProfileResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PersonalProfileResponseObject <- list()
      if (!is.null(self$`valid`)) {
        PersonalProfileResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        PersonalProfileResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        PersonalProfileResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        PersonalProfileResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        PersonalProfileResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        PersonalProfileResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        PersonalProfileResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`preferredGender`)) {
        PersonalProfileResponseObject[["preferredGender"]] <-
          self$`preferredGender`
      }
      if (!is.null(self$`preferredEthnicity`)) {
        PersonalProfileResponseObject[["preferredEthnicity"]] <-
          self$`preferredEthnicity`
      }
      if (!is.null(self$`preferredEducation`)) {
        PersonalProfileResponseObject[["preferredEducation"]] <-
          self$`preferredEducation`
      }
      if (!is.null(self$`preferredEducationIndex`)) {
        PersonalProfileResponseObject[["preferredEducationIndex"]] <-
          self$`preferredEducationIndex`
      }
      if (!is.null(self$`preferredBodyType`)) {
        PersonalProfileResponseObject[["preferredBodyType"]] <-
          self$`preferredBodyType`
      }
      if (!is.null(self$`preferredMinAge`)) {
        PersonalProfileResponseObject[["preferredMinAge"]] <-
          self$`preferredMinAge`
      }
      if (!is.null(self$`preferredMaxAge`)) {
        PersonalProfileResponseObject[["preferredMaxAge"]] <-
          self$`preferredMaxAge`
      }
      if (!is.null(self$`preferredMinHeight`)) {
        PersonalProfileResponseObject[["preferredMinHeight"]] <-
          self$`preferredMinHeight`
      }
      if (!is.null(self$`preferredMaxHeight`)) {
        PersonalProfileResponseObject[["preferredMaxHeight"]] <-
          self$`preferredMaxHeight`
      }
      if (!is.null(self$`preferredLocationRange`)) {
        PersonalProfileResponseObject[["preferredLocationRange"]] <-
          self$`preferredLocationRange`
      }
      if (!is.null(self$`gender`)) {
        PersonalProfileResponseObject[["gender"]] <-
          self$`gender`
      }
      if (!is.null(self$`hometown`)) {
        PersonalProfileResponseObject[["hometown"]] <-
          self$`hometown`
      }
      if (!is.null(self$`height`)) {
        PersonalProfileResponseObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`heightIndex`)) {
        PersonalProfileResponseObject[["heightIndex"]] <-
          self$`heightIndex`
      }
      if (!is.null(self$`ethnicity`)) {
        PersonalProfileResponseObject[["ethnicity"]] <-
          self$`ethnicity`
      }
      if (!is.null(self$`bodyType`)) {
        PersonalProfileResponseObject[["bodyType"]] <-
          self$`bodyType`
      }
      if (!is.null(self$`children`)) {
        PersonalProfileResponseObject[["children"]] <-
          self$`children`
      }
      if (!is.null(self$`companionship`)) {
        PersonalProfileResponseObject[["companionship"]] <-
          self$`companionship`
      }
      if (!is.null(self$`companionshipIndex`)) {
        PersonalProfileResponseObject[["companionshipIndex"]] <-
          self$`companionshipIndex`
      }
      if (!is.null(self$`drink`)) {
        PersonalProfileResponseObject[["drink"]] <-
          self$`drink`
      }
      if (!is.null(self$`education`)) {
        PersonalProfileResponseObject[["education"]] <-
          self$`education`
      }
      if (!is.null(self$`educationIndex`)) {
        PersonalProfileResponseObject[["educationIndex"]] <-
          self$`educationIndex`
      }
      if (!is.null(self$`maritalStatus`)) {
        PersonalProfileResponseObject[["maritalStatus"]] <-
          self$`maritalStatus`
      }
      if (!is.null(self$`smoke`)) {
        PersonalProfileResponseObject[["smoke"]] <-
          self$`smoke`
      }
      if (!is.null(self$`religion`)) {
        PersonalProfileResponseObject[["religion"]] <-
          self$`religion`
      }
      if (!is.null(self$`birthday`)) {
        PersonalProfileResponseObject[["birthday"]] <-
          self$`birthday`
      }
      if (!is.null(self$`returning`)) {
        PersonalProfileResponseObject[["returning"]] <-
          self$`returning`
      }
      return(PersonalProfileResponseObject)
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
    #' Deserialize JSON string into an instance of PersonalProfileResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PersonalProfileResponse
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
      if (!is.null(this_object$`preferredGender`)) {
        if (!is.null(this_object$`preferredGender`) && !(this_object$`preferredGender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", this_object$`preferredGender`, "\" cannot be assigned to `preferredGender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        self$`preferredGender` <- this_object$`preferredGender`
      }
      if (!is.null(this_object$`preferredEthnicity`)) {
        self$`preferredEthnicity` <- this_object$`preferredEthnicity`
      }
      if (!is.null(this_object$`preferredEducation`)) {
        self$`preferredEducation` <- this_object$`preferredEducation`
      }
      if (!is.null(this_object$`preferredEducationIndex`)) {
        self$`preferredEducationIndex` <- this_object$`preferredEducationIndex`
      }
      if (!is.null(this_object$`preferredBodyType`)) {
        self$`preferredBodyType` <- this_object$`preferredBodyType`
      }
      if (!is.null(this_object$`preferredMinAge`)) {
        self$`preferredMinAge` <- this_object$`preferredMinAge`
      }
      if (!is.null(this_object$`preferredMaxAge`)) {
        self$`preferredMaxAge` <- this_object$`preferredMaxAge`
      }
      if (!is.null(this_object$`preferredMinHeight`)) {
        self$`preferredMinHeight` <- this_object$`preferredMinHeight`
      }
      if (!is.null(this_object$`preferredMaxHeight`)) {
        self$`preferredMaxHeight` <- this_object$`preferredMaxHeight`
      }
      if (!is.null(this_object$`preferredLocationRange`)) {
        self$`preferredLocationRange` <- this_object$`preferredLocationRange`
      }
      if (!is.null(this_object$`gender`)) {
        if (!is.null(this_object$`gender`) && !(this_object$`gender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", this_object$`gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        self$`gender` <- this_object$`gender`
      }
      if (!is.null(this_object$`hometown`)) {
        self$`hometown` <- this_object$`hometown`
      }
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`heightIndex`)) {
        self$`heightIndex` <- this_object$`heightIndex`
      }
      if (!is.null(this_object$`ethnicity`)) {
        self$`ethnicity` <- this_object$`ethnicity`
      }
      if (!is.null(this_object$`bodyType`)) {
        self$`bodyType` <- this_object$`bodyType`
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- this_object$`children`
      }
      if (!is.null(this_object$`companionship`)) {
        self$`companionship` <- this_object$`companionship`
      }
      if (!is.null(this_object$`companionshipIndex`)) {
        self$`companionshipIndex` <- this_object$`companionshipIndex`
      }
      if (!is.null(this_object$`drink`)) {
        self$`drink` <- this_object$`drink`
      }
      if (!is.null(this_object$`education`)) {
        self$`education` <- this_object$`education`
      }
      if (!is.null(this_object$`educationIndex`)) {
        self$`educationIndex` <- this_object$`educationIndex`
      }
      if (!is.null(this_object$`maritalStatus`)) {
        self$`maritalStatus` <- this_object$`maritalStatus`
      }
      if (!is.null(this_object$`smoke`)) {
        self$`smoke` <- this_object$`smoke`
      }
      if (!is.null(this_object$`religion`)) {
        self$`religion` <- this_object$`religion`
      }
      if (!is.null(this_object$`birthday`)) {
        self$`birthday` <- this_object$`birthday`
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
    #' @return PersonalProfileResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PersonalProfileResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PersonalProfileResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      if (!is.null(this_object$`preferredGender`) && !(this_object$`preferredGender` %in% c("MALE", "FEMALE", "ANY"))) {
        stop(paste("Error! \"", this_object$`preferredGender`, "\" cannot be assigned to `preferredGender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
      }
      self$`preferredGender` <- this_object$`preferredGender`
      self$`preferredEthnicity` <- this_object$`preferredEthnicity`
      self$`preferredEducation` <- this_object$`preferredEducation`
      self$`preferredEducationIndex` <- this_object$`preferredEducationIndex`
      self$`preferredBodyType` <- this_object$`preferredBodyType`
      self$`preferredMinAge` <- this_object$`preferredMinAge`
      self$`preferredMaxAge` <- this_object$`preferredMaxAge`
      self$`preferredMinHeight` <- this_object$`preferredMinHeight`
      self$`preferredMaxHeight` <- this_object$`preferredMaxHeight`
      self$`preferredLocationRange` <- this_object$`preferredLocationRange`
      if (!is.null(this_object$`gender`) && !(this_object$`gender` %in% c("MALE", "FEMALE", "ANY"))) {
        stop(paste("Error! \"", this_object$`gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
      }
      self$`gender` <- this_object$`gender`
      self$`hometown` <- this_object$`hometown`
      self$`height` <- this_object$`height`
      self$`heightIndex` <- this_object$`heightIndex`
      self$`ethnicity` <- this_object$`ethnicity`
      self$`bodyType` <- this_object$`bodyType`
      self$`children` <- this_object$`children`
      self$`companionship` <- this_object$`companionship`
      self$`companionshipIndex` <- this_object$`companionshipIndex`
      self$`drink` <- this_object$`drink`
      self$`education` <- this_object$`education`
      self$`educationIndex` <- this_object$`educationIndex`
      self$`maritalStatus` <- this_object$`maritalStatus`
      self$`smoke` <- this_object$`smoke`
      self$`religion` <- this_object$`religion`
      self$`birthday` <- this_object$`birthday`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to PersonalProfileResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PersonalProfileResponse
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
# PersonalProfileResponse$unlock()
#
## Below is an example to define the print function
# PersonalProfileResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PersonalProfileResponse$lock()

