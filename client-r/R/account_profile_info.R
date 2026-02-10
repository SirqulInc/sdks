#' Create a new AccountProfileInfo
#'
#' @description
#' AccountProfileInfo Class
#'
#' @docType class
#' @title AccountProfileInfo
#' @description AccountProfileInfo Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field created  character [optional]
#' @field updated  character [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field account  \link{Account} [optional]
#' @field gender  character [optional]
#' @field birthday  character [optional]
#' @field ageGroup  character [optional]
#' @field preferredMinAge  integer [optional]
#' @field preferredMaxAge  integer [optional]
#' @field preferredMinHeight  integer [optional]
#' @field preferredMaxHeight  integer [optional]
#' @field preferredGender  character [optional]
#' @field preferredEducation  character [optional]
#' @field preferredEducationIndex  integer [optional]
#' @field preferredBodyType  character [optional]
#' @field preferredEthnicity  character [optional]
#' @field preferredLocation  character [optional]
#' @field preferredLocationRange  numeric [optional]
#' @field height  character [optional]
#' @field heightIndex  integer [optional]
#' @field ethnicity  character [optional]
#' @field bodyType  character [optional]
#' @field maritalStatus  character [optional]
#' @field children  character [optional]
#' @field religion  character [optional]
#' @field education  character [optional]
#' @field educationIndex  integer [optional]
#' @field smoke  character [optional]
#' @field drink  character [optional]
#' @field companionship  character [optional]
#' @field companionshipIndex  integer [optional]
#' @field developmentPlatforms  list(character) [optional]
#' @field matchToken  integer [optional]
#' @field matchString  character [optional]
#' @field noneZeroMatchToken  integer [optional]
#' @field preferredMaxBirthday  character [optional]
#' @field preferredMinBirthday  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountProfileInfo <- R6::R6Class(
  "AccountProfileInfo",
  public = list(
    `id` = NULL,
    `created` = NULL,
    `updated` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `account` = NULL,
    `gender` = NULL,
    `birthday` = NULL,
    `ageGroup` = NULL,
    `preferredMinAge` = NULL,
    `preferredMaxAge` = NULL,
    `preferredMinHeight` = NULL,
    `preferredMaxHeight` = NULL,
    `preferredGender` = NULL,
    `preferredEducation` = NULL,
    `preferredEducationIndex` = NULL,
    `preferredBodyType` = NULL,
    `preferredEthnicity` = NULL,
    `preferredLocation` = NULL,
    `preferredLocationRange` = NULL,
    `height` = NULL,
    `heightIndex` = NULL,
    `ethnicity` = NULL,
    `bodyType` = NULL,
    `maritalStatus` = NULL,
    `children` = NULL,
    `religion` = NULL,
    `education` = NULL,
    `educationIndex` = NULL,
    `smoke` = NULL,
    `drink` = NULL,
    `companionship` = NULL,
    `companionshipIndex` = NULL,
    `developmentPlatforms` = NULL,
    `matchToken` = NULL,
    `matchString` = NULL,
    `noneZeroMatchToken` = NULL,
    `preferredMaxBirthday` = NULL,
    `preferredMinBirthday` = NULL,

    #' @description
    #' Initialize a new AccountProfileInfo class.
    #'
    #' @param id id
    #' @param created created
    #' @param updated updated
    #' @param active active
    #' @param valid valid
    #' @param account account
    #' @param gender gender
    #' @param birthday birthday
    #' @param ageGroup ageGroup
    #' @param preferredMinAge preferredMinAge
    #' @param preferredMaxAge preferredMaxAge
    #' @param preferredMinHeight preferredMinHeight
    #' @param preferredMaxHeight preferredMaxHeight
    #' @param preferredGender preferredGender
    #' @param preferredEducation preferredEducation
    #' @param preferredEducationIndex preferredEducationIndex
    #' @param preferredBodyType preferredBodyType
    #' @param preferredEthnicity preferredEthnicity
    #' @param preferredLocation preferredLocation
    #' @param preferredLocationRange preferredLocationRange
    #' @param height height
    #' @param heightIndex heightIndex
    #' @param ethnicity ethnicity
    #' @param bodyType bodyType
    #' @param maritalStatus maritalStatus
    #' @param children children
    #' @param religion religion
    #' @param education education
    #' @param educationIndex educationIndex
    #' @param smoke smoke
    #' @param drink drink
    #' @param companionship companionship
    #' @param companionshipIndex companionshipIndex
    #' @param developmentPlatforms developmentPlatforms
    #' @param matchToken matchToken
    #' @param matchString matchString
    #' @param noneZeroMatchToken noneZeroMatchToken
    #' @param preferredMaxBirthday preferredMaxBirthday
    #' @param preferredMinBirthday preferredMinBirthday
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `created` = NULL, `updated` = NULL, `active` = NULL, `valid` = NULL, `account` = NULL, `gender` = NULL, `birthday` = NULL, `ageGroup` = NULL, `preferredMinAge` = NULL, `preferredMaxAge` = NULL, `preferredMinHeight` = NULL, `preferredMaxHeight` = NULL, `preferredGender` = NULL, `preferredEducation` = NULL, `preferredEducationIndex` = NULL, `preferredBodyType` = NULL, `preferredEthnicity` = NULL, `preferredLocation` = NULL, `preferredLocationRange` = NULL, `height` = NULL, `heightIndex` = NULL, `ethnicity` = NULL, `bodyType` = NULL, `maritalStatus` = NULL, `children` = NULL, `religion` = NULL, `education` = NULL, `educationIndex` = NULL, `smoke` = NULL, `drink` = NULL, `companionship` = NULL, `companionshipIndex` = NULL, `developmentPlatforms` = NULL, `matchToken` = NULL, `matchString` = NULL, `noneZeroMatchToken` = NULL, `preferredMaxBirthday` = NULL, `preferredMinBirthday` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`created`)) {
        if (!is.character(`created`)) {
          stop(paste("Error! Invalid data for `created`. Must be a string:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`updated`)) {
        if (!is.character(`updated`)) {
          stop(paste("Error! Invalid data for `updated`. Must be a string:", `updated`))
        }
        self$`updated` <- `updated`
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
      if (!is.null(`account`)) {
        stopifnot(R6::is.R6(`account`))
        self$`account` <- `account`
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
      if (!is.null(`birthday`)) {
        if (!is.character(`birthday`)) {
          stop(paste("Error! Invalid data for `birthday`. Must be a string:", `birthday`))
        }
        self$`birthday` <- `birthday`
      }
      if (!is.null(`ageGroup`)) {
        if (!(`ageGroup` %in% c("AGE_0_13", "AGE_14_17", "AGE_18_22", "AGE_23_30", "AGE_31_54", "AGE_55_PLUS"))) {
          stop(paste("Error! \"", `ageGroup`, "\" cannot be assigned to `ageGroup`. Must be \"AGE_0_13\", \"AGE_14_17\", \"AGE_18_22\", \"AGE_23_30\", \"AGE_31_54\", \"AGE_55_PLUS\".", sep = ""))
        }
        if (!(is.character(`ageGroup`) && length(`ageGroup`) == 1)) {
          stop(paste("Error! Invalid data for `ageGroup`. Must be a string:", `ageGroup`))
        }
        self$`ageGroup` <- `ageGroup`
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
      if (!is.null(`preferredGender`)) {
        if (!(`preferredGender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", `preferredGender`, "\" cannot be assigned to `preferredGender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        if (!(is.character(`preferredGender`) && length(`preferredGender`) == 1)) {
          stop(paste("Error! Invalid data for `preferredGender`. Must be a string:", `preferredGender`))
        }
        self$`preferredGender` <- `preferredGender`
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
      if (!is.null(`preferredEthnicity`)) {
        if (!(is.character(`preferredEthnicity`) && length(`preferredEthnicity`) == 1)) {
          stop(paste("Error! Invalid data for `preferredEthnicity`. Must be a string:", `preferredEthnicity`))
        }
        self$`preferredEthnicity` <- `preferredEthnicity`
      }
      if (!is.null(`preferredLocation`)) {
        if (!(is.character(`preferredLocation`) && length(`preferredLocation`) == 1)) {
          stop(paste("Error! Invalid data for `preferredLocation`. Must be a string:", `preferredLocation`))
        }
        self$`preferredLocation` <- `preferredLocation`
      }
      if (!is.null(`preferredLocationRange`)) {
        if (!(is.numeric(`preferredLocationRange`) && length(`preferredLocationRange`) == 1)) {
          stop(paste("Error! Invalid data for `preferredLocationRange`. Must be a number:", `preferredLocationRange`))
        }
        self$`preferredLocationRange` <- `preferredLocationRange`
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
      if (!is.null(`maritalStatus`)) {
        if (!(is.character(`maritalStatus`) && length(`maritalStatus`) == 1)) {
          stop(paste("Error! Invalid data for `maritalStatus`. Must be a string:", `maritalStatus`))
        }
        self$`maritalStatus` <- `maritalStatus`
      }
      if (!is.null(`children`)) {
        if (!(is.character(`children`) && length(`children`) == 1)) {
          stop(paste("Error! Invalid data for `children`. Must be a string:", `children`))
        }
        self$`children` <- `children`
      }
      if (!is.null(`religion`)) {
        if (!(is.character(`religion`) && length(`religion`) == 1)) {
          stop(paste("Error! Invalid data for `religion`. Must be a string:", `religion`))
        }
        self$`religion` <- `religion`
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
      if (!is.null(`smoke`)) {
        if (!(is.character(`smoke`) && length(`smoke`) == 1)) {
          stop(paste("Error! Invalid data for `smoke`. Must be a string:", `smoke`))
        }
        self$`smoke` <- `smoke`
      }
      if (!is.null(`drink`)) {
        if (!(is.character(`drink`) && length(`drink`) == 1)) {
          stop(paste("Error! Invalid data for `drink`. Must be a string:", `drink`))
        }
        self$`drink` <- `drink`
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
      if (!is.null(`developmentPlatforms`)) {
        stopifnot(is.vector(`developmentPlatforms`), length(`developmentPlatforms`) != 0)
        sapply(`developmentPlatforms`, function(x) stopifnot(is.character(x)))
        self$`developmentPlatforms` <- `developmentPlatforms`
      }
      if (!is.null(`matchToken`)) {
        if (!(is.numeric(`matchToken`) && length(`matchToken`) == 1)) {
          stop(paste("Error! Invalid data for `matchToken`. Must be an integer:", `matchToken`))
        }
        self$`matchToken` <- `matchToken`
      }
      if (!is.null(`matchString`)) {
        if (!(is.character(`matchString`) && length(`matchString`) == 1)) {
          stop(paste("Error! Invalid data for `matchString`. Must be a string:", `matchString`))
        }
        self$`matchString` <- `matchString`
      }
      if (!is.null(`noneZeroMatchToken`)) {
        if (!(is.numeric(`noneZeroMatchToken`) && length(`noneZeroMatchToken`) == 1)) {
          stop(paste("Error! Invalid data for `noneZeroMatchToken`. Must be an integer:", `noneZeroMatchToken`))
        }
        self$`noneZeroMatchToken` <- `noneZeroMatchToken`
      }
      if (!is.null(`preferredMaxBirthday`)) {
        if (!is.character(`preferredMaxBirthday`)) {
          stop(paste("Error! Invalid data for `preferredMaxBirthday`. Must be a string:", `preferredMaxBirthday`))
        }
        self$`preferredMaxBirthday` <- `preferredMaxBirthday`
      }
      if (!is.null(`preferredMinBirthday`)) {
        if (!is.character(`preferredMinBirthday`)) {
          stop(paste("Error! Invalid data for `preferredMinBirthday`. Must be a string:", `preferredMinBirthday`))
        }
        self$`preferredMinBirthday` <- `preferredMinBirthday`
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
    #' @return AccountProfileInfo as a base R list.
    #' @examples
    #' # convert array of AccountProfileInfo (x) to a data frame
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
    #' Convert AccountProfileInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccountProfileInfoObject <- list()
      if (!is.null(self$`id`)) {
        AccountProfileInfoObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`created`)) {
        AccountProfileInfoObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`updated`)) {
        AccountProfileInfoObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`active`)) {
        AccountProfileInfoObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        AccountProfileInfoObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`account`)) {
        AccountProfileInfoObject[["account"]] <-
          self$extractSimpleType(self$`account`)
      }
      if (!is.null(self$`gender`)) {
        AccountProfileInfoObject[["gender"]] <-
          self$`gender`
      }
      if (!is.null(self$`birthday`)) {
        AccountProfileInfoObject[["birthday"]] <-
          self$`birthday`
      }
      if (!is.null(self$`ageGroup`)) {
        AccountProfileInfoObject[["ageGroup"]] <-
          self$`ageGroup`
      }
      if (!is.null(self$`preferredMinAge`)) {
        AccountProfileInfoObject[["preferredMinAge"]] <-
          self$`preferredMinAge`
      }
      if (!is.null(self$`preferredMaxAge`)) {
        AccountProfileInfoObject[["preferredMaxAge"]] <-
          self$`preferredMaxAge`
      }
      if (!is.null(self$`preferredMinHeight`)) {
        AccountProfileInfoObject[["preferredMinHeight"]] <-
          self$`preferredMinHeight`
      }
      if (!is.null(self$`preferredMaxHeight`)) {
        AccountProfileInfoObject[["preferredMaxHeight"]] <-
          self$`preferredMaxHeight`
      }
      if (!is.null(self$`preferredGender`)) {
        AccountProfileInfoObject[["preferredGender"]] <-
          self$`preferredGender`
      }
      if (!is.null(self$`preferredEducation`)) {
        AccountProfileInfoObject[["preferredEducation"]] <-
          self$`preferredEducation`
      }
      if (!is.null(self$`preferredEducationIndex`)) {
        AccountProfileInfoObject[["preferredEducationIndex"]] <-
          self$`preferredEducationIndex`
      }
      if (!is.null(self$`preferredBodyType`)) {
        AccountProfileInfoObject[["preferredBodyType"]] <-
          self$`preferredBodyType`
      }
      if (!is.null(self$`preferredEthnicity`)) {
        AccountProfileInfoObject[["preferredEthnicity"]] <-
          self$`preferredEthnicity`
      }
      if (!is.null(self$`preferredLocation`)) {
        AccountProfileInfoObject[["preferredLocation"]] <-
          self$`preferredLocation`
      }
      if (!is.null(self$`preferredLocationRange`)) {
        AccountProfileInfoObject[["preferredLocationRange"]] <-
          self$`preferredLocationRange`
      }
      if (!is.null(self$`height`)) {
        AccountProfileInfoObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`heightIndex`)) {
        AccountProfileInfoObject[["heightIndex"]] <-
          self$`heightIndex`
      }
      if (!is.null(self$`ethnicity`)) {
        AccountProfileInfoObject[["ethnicity"]] <-
          self$`ethnicity`
      }
      if (!is.null(self$`bodyType`)) {
        AccountProfileInfoObject[["bodyType"]] <-
          self$`bodyType`
      }
      if (!is.null(self$`maritalStatus`)) {
        AccountProfileInfoObject[["maritalStatus"]] <-
          self$`maritalStatus`
      }
      if (!is.null(self$`children`)) {
        AccountProfileInfoObject[["children"]] <-
          self$`children`
      }
      if (!is.null(self$`religion`)) {
        AccountProfileInfoObject[["religion"]] <-
          self$`religion`
      }
      if (!is.null(self$`education`)) {
        AccountProfileInfoObject[["education"]] <-
          self$`education`
      }
      if (!is.null(self$`educationIndex`)) {
        AccountProfileInfoObject[["educationIndex"]] <-
          self$`educationIndex`
      }
      if (!is.null(self$`smoke`)) {
        AccountProfileInfoObject[["smoke"]] <-
          self$`smoke`
      }
      if (!is.null(self$`drink`)) {
        AccountProfileInfoObject[["drink"]] <-
          self$`drink`
      }
      if (!is.null(self$`companionship`)) {
        AccountProfileInfoObject[["companionship"]] <-
          self$`companionship`
      }
      if (!is.null(self$`companionshipIndex`)) {
        AccountProfileInfoObject[["companionshipIndex"]] <-
          self$`companionshipIndex`
      }
      if (!is.null(self$`developmentPlatforms`)) {
        AccountProfileInfoObject[["developmentPlatforms"]] <-
          self$`developmentPlatforms`
      }
      if (!is.null(self$`matchToken`)) {
        AccountProfileInfoObject[["matchToken"]] <-
          self$`matchToken`
      }
      if (!is.null(self$`matchString`)) {
        AccountProfileInfoObject[["matchString"]] <-
          self$`matchString`
      }
      if (!is.null(self$`noneZeroMatchToken`)) {
        AccountProfileInfoObject[["noneZeroMatchToken"]] <-
          self$`noneZeroMatchToken`
      }
      if (!is.null(self$`preferredMaxBirthday`)) {
        AccountProfileInfoObject[["preferredMaxBirthday"]] <-
          self$`preferredMaxBirthday`
      }
      if (!is.null(self$`preferredMinBirthday`)) {
        AccountProfileInfoObject[["preferredMinBirthday"]] <-
          self$`preferredMinBirthday`
      }
      return(AccountProfileInfoObject)
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
    #' Deserialize JSON string into an instance of AccountProfileInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountProfileInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`account`)) {
        `account_object` <- Account$new()
        `account_object`$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
        self$`account` <- `account_object`
      }
      if (!is.null(this_object$`gender`)) {
        if (!is.null(this_object$`gender`) && !(this_object$`gender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", this_object$`gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        self$`gender` <- this_object$`gender`
      }
      if (!is.null(this_object$`birthday`)) {
        self$`birthday` <- this_object$`birthday`
      }
      if (!is.null(this_object$`ageGroup`)) {
        if (!is.null(this_object$`ageGroup`) && !(this_object$`ageGroup` %in% c("AGE_0_13", "AGE_14_17", "AGE_18_22", "AGE_23_30", "AGE_31_54", "AGE_55_PLUS"))) {
          stop(paste("Error! \"", this_object$`ageGroup`, "\" cannot be assigned to `ageGroup`. Must be \"AGE_0_13\", \"AGE_14_17\", \"AGE_18_22\", \"AGE_23_30\", \"AGE_31_54\", \"AGE_55_PLUS\".", sep = ""))
        }
        self$`ageGroup` <- this_object$`ageGroup`
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
      if (!is.null(this_object$`preferredGender`)) {
        if (!is.null(this_object$`preferredGender`) && !(this_object$`preferredGender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", this_object$`preferredGender`, "\" cannot be assigned to `preferredGender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        self$`preferredGender` <- this_object$`preferredGender`
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
      if (!is.null(this_object$`preferredEthnicity`)) {
        self$`preferredEthnicity` <- this_object$`preferredEthnicity`
      }
      if (!is.null(this_object$`preferredLocation`)) {
        self$`preferredLocation` <- this_object$`preferredLocation`
      }
      if (!is.null(this_object$`preferredLocationRange`)) {
        self$`preferredLocationRange` <- this_object$`preferredLocationRange`
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
      if (!is.null(this_object$`maritalStatus`)) {
        self$`maritalStatus` <- this_object$`maritalStatus`
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- this_object$`children`
      }
      if (!is.null(this_object$`religion`)) {
        self$`religion` <- this_object$`religion`
      }
      if (!is.null(this_object$`education`)) {
        self$`education` <- this_object$`education`
      }
      if (!is.null(this_object$`educationIndex`)) {
        self$`educationIndex` <- this_object$`educationIndex`
      }
      if (!is.null(this_object$`smoke`)) {
        self$`smoke` <- this_object$`smoke`
      }
      if (!is.null(this_object$`drink`)) {
        self$`drink` <- this_object$`drink`
      }
      if (!is.null(this_object$`companionship`)) {
        self$`companionship` <- this_object$`companionship`
      }
      if (!is.null(this_object$`companionshipIndex`)) {
        self$`companionshipIndex` <- this_object$`companionshipIndex`
      }
      if (!is.null(this_object$`developmentPlatforms`)) {
        self$`developmentPlatforms` <- ApiClient$new()$deserializeObj(this_object$`developmentPlatforms`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`matchToken`)) {
        self$`matchToken` <- this_object$`matchToken`
      }
      if (!is.null(this_object$`matchString`)) {
        self$`matchString` <- this_object$`matchString`
      }
      if (!is.null(this_object$`noneZeroMatchToken`)) {
        self$`noneZeroMatchToken` <- this_object$`noneZeroMatchToken`
      }
      if (!is.null(this_object$`preferredMaxBirthday`)) {
        self$`preferredMaxBirthday` <- this_object$`preferredMaxBirthday`
      }
      if (!is.null(this_object$`preferredMinBirthday`)) {
        self$`preferredMinBirthday` <- this_object$`preferredMinBirthday`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccountProfileInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountProfileInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountProfileInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`created` <- this_object$`created`
      self$`updated` <- this_object$`updated`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`account` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`gender`) && !(this_object$`gender` %in% c("MALE", "FEMALE", "ANY"))) {
        stop(paste("Error! \"", this_object$`gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
      }
      self$`gender` <- this_object$`gender`
      self$`birthday` <- this_object$`birthday`
      if (!is.null(this_object$`ageGroup`) && !(this_object$`ageGroup` %in% c("AGE_0_13", "AGE_14_17", "AGE_18_22", "AGE_23_30", "AGE_31_54", "AGE_55_PLUS"))) {
        stop(paste("Error! \"", this_object$`ageGroup`, "\" cannot be assigned to `ageGroup`. Must be \"AGE_0_13\", \"AGE_14_17\", \"AGE_18_22\", \"AGE_23_30\", \"AGE_31_54\", \"AGE_55_PLUS\".", sep = ""))
      }
      self$`ageGroup` <- this_object$`ageGroup`
      self$`preferredMinAge` <- this_object$`preferredMinAge`
      self$`preferredMaxAge` <- this_object$`preferredMaxAge`
      self$`preferredMinHeight` <- this_object$`preferredMinHeight`
      self$`preferredMaxHeight` <- this_object$`preferredMaxHeight`
      if (!is.null(this_object$`preferredGender`) && !(this_object$`preferredGender` %in% c("MALE", "FEMALE", "ANY"))) {
        stop(paste("Error! \"", this_object$`preferredGender`, "\" cannot be assigned to `preferredGender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
      }
      self$`preferredGender` <- this_object$`preferredGender`
      self$`preferredEducation` <- this_object$`preferredEducation`
      self$`preferredEducationIndex` <- this_object$`preferredEducationIndex`
      self$`preferredBodyType` <- this_object$`preferredBodyType`
      self$`preferredEthnicity` <- this_object$`preferredEthnicity`
      self$`preferredLocation` <- this_object$`preferredLocation`
      self$`preferredLocationRange` <- this_object$`preferredLocationRange`
      self$`height` <- this_object$`height`
      self$`heightIndex` <- this_object$`heightIndex`
      self$`ethnicity` <- this_object$`ethnicity`
      self$`bodyType` <- this_object$`bodyType`
      self$`maritalStatus` <- this_object$`maritalStatus`
      self$`children` <- this_object$`children`
      self$`religion` <- this_object$`religion`
      self$`education` <- this_object$`education`
      self$`educationIndex` <- this_object$`educationIndex`
      self$`smoke` <- this_object$`smoke`
      self$`drink` <- this_object$`drink`
      self$`companionship` <- this_object$`companionship`
      self$`companionshipIndex` <- this_object$`companionshipIndex`
      self$`developmentPlatforms` <- ApiClient$new()$deserializeObj(this_object$`developmentPlatforms`, "array[character]", loadNamespace("openapi"))
      self$`matchToken` <- this_object$`matchToken`
      self$`matchString` <- this_object$`matchString`
      self$`noneZeroMatchToken` <- this_object$`noneZeroMatchToken`
      self$`preferredMaxBirthday` <- this_object$`preferredMaxBirthday`
      self$`preferredMinBirthday` <- this_object$`preferredMinBirthday`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccountProfileInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccountProfileInfo
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
# AccountProfileInfo$unlock()
#
## Below is an example to define the print function
# AccountProfileInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountProfileInfo$lock()

