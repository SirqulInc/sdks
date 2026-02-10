#' Create a new PaymentTypesResponse
#'
#' @description
#' PaymentTypesResponse Class
#'
#' @docType class
#' @title PaymentTypesResponse
#' @description PaymentTypesResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field creditCardOnFile  character [optional]
#' @field creditCardNumber  character [optional]
#' @field creditCardExpirationMonth  character [optional]
#' @field creditCardExpirationYear  character [optional]
#' @field pointsOnFile  character [optional]
#' @field pointsAmount  numeric [optional]
#' @field account  \link{AccountShortResponse} [optional]
#' @field firstName  character [optional]
#' @field lastName  character [optional]
#' @field address  character [optional]
#' @field city  character [optional]
#' @field state  character [optional]
#' @field postalCode  character [optional]
#' @field phone  character [optional]
#' @field provider  character [optional]
#' @field paymentMethodId  integer [optional]
#' @field validated  character [optional]
#' @field accountNumber  character [optional]
#' @field bankName  character [optional]
#' @field routingNumber  character [optional]
#' @field isDefaultPaymentMethod  character [optional]
#' @field accountName  character [optional]
#' @field paymentMethodNickname  character [optional]
#' @field taxId  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaymentTypesResponse <- R6::R6Class(
  "PaymentTypesResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `creditCardOnFile` = NULL,
    `creditCardNumber` = NULL,
    `creditCardExpirationMonth` = NULL,
    `creditCardExpirationYear` = NULL,
    `pointsOnFile` = NULL,
    `pointsAmount` = NULL,
    `account` = NULL,
    `firstName` = NULL,
    `lastName` = NULL,
    `address` = NULL,
    `city` = NULL,
    `state` = NULL,
    `postalCode` = NULL,
    `phone` = NULL,
    `provider` = NULL,
    `paymentMethodId` = NULL,
    `validated` = NULL,
    `accountNumber` = NULL,
    `bankName` = NULL,
    `routingNumber` = NULL,
    `isDefaultPaymentMethod` = NULL,
    `accountName` = NULL,
    `paymentMethodNickname` = NULL,
    `taxId` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new PaymentTypesResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param creditCardOnFile creditCardOnFile
    #' @param creditCardNumber creditCardNumber
    #' @param creditCardExpirationMonth creditCardExpirationMonth
    #' @param creditCardExpirationYear creditCardExpirationYear
    #' @param pointsOnFile pointsOnFile
    #' @param pointsAmount pointsAmount
    #' @param account account
    #' @param firstName firstName
    #' @param lastName lastName
    #' @param address address
    #' @param city city
    #' @param state state
    #' @param postalCode postalCode
    #' @param phone phone
    #' @param provider provider
    #' @param paymentMethodId paymentMethodId
    #' @param validated validated
    #' @param accountNumber accountNumber
    #' @param bankName bankName
    #' @param routingNumber routingNumber
    #' @param isDefaultPaymentMethod isDefaultPaymentMethod
    #' @param accountName accountName
    #' @param paymentMethodNickname paymentMethodNickname
    #' @param taxId taxId
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `creditCardOnFile` = NULL, `creditCardNumber` = NULL, `creditCardExpirationMonth` = NULL, `creditCardExpirationYear` = NULL, `pointsOnFile` = NULL, `pointsAmount` = NULL, `account` = NULL, `firstName` = NULL, `lastName` = NULL, `address` = NULL, `city` = NULL, `state` = NULL, `postalCode` = NULL, `phone` = NULL, `provider` = NULL, `paymentMethodId` = NULL, `validated` = NULL, `accountNumber` = NULL, `bankName` = NULL, `routingNumber` = NULL, `isDefaultPaymentMethod` = NULL, `accountName` = NULL, `paymentMethodNickname` = NULL, `taxId` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`creditCardOnFile`)) {
        if (!(is.logical(`creditCardOnFile`) && length(`creditCardOnFile`) == 1)) {
          stop(paste("Error! Invalid data for `creditCardOnFile`. Must be a boolean:", `creditCardOnFile`))
        }
        self$`creditCardOnFile` <- `creditCardOnFile`
      }
      if (!is.null(`creditCardNumber`)) {
        if (!(is.character(`creditCardNumber`) && length(`creditCardNumber`) == 1)) {
          stop(paste("Error! Invalid data for `creditCardNumber`. Must be a string:", `creditCardNumber`))
        }
        self$`creditCardNumber` <- `creditCardNumber`
      }
      if (!is.null(`creditCardExpirationMonth`)) {
        if (!(is.character(`creditCardExpirationMonth`) && length(`creditCardExpirationMonth`) == 1)) {
          stop(paste("Error! Invalid data for `creditCardExpirationMonth`. Must be a string:", `creditCardExpirationMonth`))
        }
        self$`creditCardExpirationMonth` <- `creditCardExpirationMonth`
      }
      if (!is.null(`creditCardExpirationYear`)) {
        if (!(is.character(`creditCardExpirationYear`) && length(`creditCardExpirationYear`) == 1)) {
          stop(paste("Error! Invalid data for `creditCardExpirationYear`. Must be a string:", `creditCardExpirationYear`))
        }
        self$`creditCardExpirationYear` <- `creditCardExpirationYear`
      }
      if (!is.null(`pointsOnFile`)) {
        if (!(is.logical(`pointsOnFile`) && length(`pointsOnFile`) == 1)) {
          stop(paste("Error! Invalid data for `pointsOnFile`. Must be a boolean:", `pointsOnFile`))
        }
        self$`pointsOnFile` <- `pointsOnFile`
      }
      if (!is.null(`pointsAmount`)) {
        if (!(is.numeric(`pointsAmount`) && length(`pointsAmount`) == 1)) {
          stop(paste("Error! Invalid data for `pointsAmount`. Must be a number:", `pointsAmount`))
        }
        self$`pointsAmount` <- `pointsAmount`
      }
      if (!is.null(`account`)) {
        stopifnot(R6::is.R6(`account`))
        self$`account` <- `account`
      }
      if (!is.null(`firstName`)) {
        if (!(is.character(`firstName`) && length(`firstName`) == 1)) {
          stop(paste("Error! Invalid data for `firstName`. Must be a string:", `firstName`))
        }
        self$`firstName` <- `firstName`
      }
      if (!is.null(`lastName`)) {
        if (!(is.character(`lastName`) && length(`lastName`) == 1)) {
          stop(paste("Error! Invalid data for `lastName`. Must be a string:", `lastName`))
        }
        self$`lastName` <- `lastName`
      }
      if (!is.null(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
      }
      if (!is.null(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!is.null(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!is.null(`postalCode`)) {
        if (!(is.character(`postalCode`) && length(`postalCode`) == 1)) {
          stop(paste("Error! Invalid data for `postalCode`. Must be a string:", `postalCode`))
        }
        self$`postalCode` <- `postalCode`
      }
      if (!is.null(`phone`)) {
        if (!(is.character(`phone`) && length(`phone`) == 1)) {
          stop(paste("Error! Invalid data for `phone`. Must be a string:", `phone`))
        }
        self$`phone` <- `phone`
      }
      if (!is.null(`provider`)) {
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
      }
      if (!is.null(`paymentMethodId`)) {
        if (!(is.numeric(`paymentMethodId`) && length(`paymentMethodId`) == 1)) {
          stop(paste("Error! Invalid data for `paymentMethodId`. Must be an integer:", `paymentMethodId`))
        }
        self$`paymentMethodId` <- `paymentMethodId`
      }
      if (!is.null(`validated`)) {
        if (!(is.logical(`validated`) && length(`validated`) == 1)) {
          stop(paste("Error! Invalid data for `validated`. Must be a boolean:", `validated`))
        }
        self$`validated` <- `validated`
      }
      if (!is.null(`accountNumber`)) {
        if (!(is.character(`accountNumber`) && length(`accountNumber`) == 1)) {
          stop(paste("Error! Invalid data for `accountNumber`. Must be a string:", `accountNumber`))
        }
        self$`accountNumber` <- `accountNumber`
      }
      if (!is.null(`bankName`)) {
        if (!(is.character(`bankName`) && length(`bankName`) == 1)) {
          stop(paste("Error! Invalid data for `bankName`. Must be a string:", `bankName`))
        }
        self$`bankName` <- `bankName`
      }
      if (!is.null(`routingNumber`)) {
        if (!(is.character(`routingNumber`) && length(`routingNumber`) == 1)) {
          stop(paste("Error! Invalid data for `routingNumber`. Must be a string:", `routingNumber`))
        }
        self$`routingNumber` <- `routingNumber`
      }
      if (!is.null(`isDefaultPaymentMethod`)) {
        if (!(is.logical(`isDefaultPaymentMethod`) && length(`isDefaultPaymentMethod`) == 1)) {
          stop(paste("Error! Invalid data for `isDefaultPaymentMethod`. Must be a boolean:", `isDefaultPaymentMethod`))
        }
        self$`isDefaultPaymentMethod` <- `isDefaultPaymentMethod`
      }
      if (!is.null(`accountName`)) {
        if (!(is.character(`accountName`) && length(`accountName`) == 1)) {
          stop(paste("Error! Invalid data for `accountName`. Must be a string:", `accountName`))
        }
        self$`accountName` <- `accountName`
      }
      if (!is.null(`paymentMethodNickname`)) {
        if (!(is.character(`paymentMethodNickname`) && length(`paymentMethodNickname`) == 1)) {
          stop(paste("Error! Invalid data for `paymentMethodNickname`. Must be a string:", `paymentMethodNickname`))
        }
        self$`paymentMethodNickname` <- `paymentMethodNickname`
      }
      if (!is.null(`taxId`)) {
        if (!(is.character(`taxId`) && length(`taxId`) == 1)) {
          stop(paste("Error! Invalid data for `taxId`. Must be a string:", `taxId`))
        }
        self$`taxId` <- `taxId`
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
    #' @return PaymentTypesResponse as a base R list.
    #' @examples
    #' # convert array of PaymentTypesResponse (x) to a data frame
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
    #' Convert PaymentTypesResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PaymentTypesResponseObject <- list()
      if (!is.null(self$`valid`)) {
        PaymentTypesResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        PaymentTypesResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        PaymentTypesResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        PaymentTypesResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        PaymentTypesResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        PaymentTypesResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        PaymentTypesResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`creditCardOnFile`)) {
        PaymentTypesResponseObject[["creditCardOnFile"]] <-
          self$`creditCardOnFile`
      }
      if (!is.null(self$`creditCardNumber`)) {
        PaymentTypesResponseObject[["creditCardNumber"]] <-
          self$`creditCardNumber`
      }
      if (!is.null(self$`creditCardExpirationMonth`)) {
        PaymentTypesResponseObject[["creditCardExpirationMonth"]] <-
          self$`creditCardExpirationMonth`
      }
      if (!is.null(self$`creditCardExpirationYear`)) {
        PaymentTypesResponseObject[["creditCardExpirationYear"]] <-
          self$`creditCardExpirationYear`
      }
      if (!is.null(self$`pointsOnFile`)) {
        PaymentTypesResponseObject[["pointsOnFile"]] <-
          self$`pointsOnFile`
      }
      if (!is.null(self$`pointsAmount`)) {
        PaymentTypesResponseObject[["pointsAmount"]] <-
          self$`pointsAmount`
      }
      if (!is.null(self$`account`)) {
        PaymentTypesResponseObject[["account"]] <-
          self$extractSimpleType(self$`account`)
      }
      if (!is.null(self$`firstName`)) {
        PaymentTypesResponseObject[["firstName"]] <-
          self$`firstName`
      }
      if (!is.null(self$`lastName`)) {
        PaymentTypesResponseObject[["lastName"]] <-
          self$`lastName`
      }
      if (!is.null(self$`address`)) {
        PaymentTypesResponseObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`city`)) {
        PaymentTypesResponseObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`state`)) {
        PaymentTypesResponseObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`postalCode`)) {
        PaymentTypesResponseObject[["postalCode"]] <-
          self$`postalCode`
      }
      if (!is.null(self$`phone`)) {
        PaymentTypesResponseObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`provider`)) {
        PaymentTypesResponseObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`paymentMethodId`)) {
        PaymentTypesResponseObject[["paymentMethodId"]] <-
          self$`paymentMethodId`
      }
      if (!is.null(self$`validated`)) {
        PaymentTypesResponseObject[["validated"]] <-
          self$`validated`
      }
      if (!is.null(self$`accountNumber`)) {
        PaymentTypesResponseObject[["accountNumber"]] <-
          self$`accountNumber`
      }
      if (!is.null(self$`bankName`)) {
        PaymentTypesResponseObject[["bankName"]] <-
          self$`bankName`
      }
      if (!is.null(self$`routingNumber`)) {
        PaymentTypesResponseObject[["routingNumber"]] <-
          self$`routingNumber`
      }
      if (!is.null(self$`isDefaultPaymentMethod`)) {
        PaymentTypesResponseObject[["isDefaultPaymentMethod"]] <-
          self$`isDefaultPaymentMethod`
      }
      if (!is.null(self$`accountName`)) {
        PaymentTypesResponseObject[["accountName"]] <-
          self$`accountName`
      }
      if (!is.null(self$`paymentMethodNickname`)) {
        PaymentTypesResponseObject[["paymentMethodNickname"]] <-
          self$`paymentMethodNickname`
      }
      if (!is.null(self$`taxId`)) {
        PaymentTypesResponseObject[["taxId"]] <-
          self$`taxId`
      }
      if (!is.null(self$`returning`)) {
        PaymentTypesResponseObject[["returning"]] <-
          self$`returning`
      }
      return(PaymentTypesResponseObject)
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
    #' Deserialize JSON string into an instance of PaymentTypesResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentTypesResponse
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
      if (!is.null(this_object$`creditCardOnFile`)) {
        self$`creditCardOnFile` <- this_object$`creditCardOnFile`
      }
      if (!is.null(this_object$`creditCardNumber`)) {
        self$`creditCardNumber` <- this_object$`creditCardNumber`
      }
      if (!is.null(this_object$`creditCardExpirationMonth`)) {
        self$`creditCardExpirationMonth` <- this_object$`creditCardExpirationMonth`
      }
      if (!is.null(this_object$`creditCardExpirationYear`)) {
        self$`creditCardExpirationYear` <- this_object$`creditCardExpirationYear`
      }
      if (!is.null(this_object$`pointsOnFile`)) {
        self$`pointsOnFile` <- this_object$`pointsOnFile`
      }
      if (!is.null(this_object$`pointsAmount`)) {
        self$`pointsAmount` <- this_object$`pointsAmount`
      }
      if (!is.null(this_object$`account`)) {
        `account_object` <- AccountShortResponse$new()
        `account_object`$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
        self$`account` <- `account_object`
      }
      if (!is.null(this_object$`firstName`)) {
        self$`firstName` <- this_object$`firstName`
      }
      if (!is.null(this_object$`lastName`)) {
        self$`lastName` <- this_object$`lastName`
      }
      if (!is.null(this_object$`address`)) {
        self$`address` <- this_object$`address`
      }
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`postalCode`)) {
        self$`postalCode` <- this_object$`postalCode`
      }
      if (!is.null(this_object$`phone`)) {
        self$`phone` <- this_object$`phone`
      }
      if (!is.null(this_object$`provider`)) {
        self$`provider` <- this_object$`provider`
      }
      if (!is.null(this_object$`paymentMethodId`)) {
        self$`paymentMethodId` <- this_object$`paymentMethodId`
      }
      if (!is.null(this_object$`validated`)) {
        self$`validated` <- this_object$`validated`
      }
      if (!is.null(this_object$`accountNumber`)) {
        self$`accountNumber` <- this_object$`accountNumber`
      }
      if (!is.null(this_object$`bankName`)) {
        self$`bankName` <- this_object$`bankName`
      }
      if (!is.null(this_object$`routingNumber`)) {
        self$`routingNumber` <- this_object$`routingNumber`
      }
      if (!is.null(this_object$`isDefaultPaymentMethod`)) {
        self$`isDefaultPaymentMethod` <- this_object$`isDefaultPaymentMethod`
      }
      if (!is.null(this_object$`accountName`)) {
        self$`accountName` <- this_object$`accountName`
      }
      if (!is.null(this_object$`paymentMethodNickname`)) {
        self$`paymentMethodNickname` <- this_object$`paymentMethodNickname`
      }
      if (!is.null(this_object$`taxId`)) {
        self$`taxId` <- this_object$`taxId`
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
    #' @return PaymentTypesResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PaymentTypesResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentTypesResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`creditCardOnFile` <- this_object$`creditCardOnFile`
      self$`creditCardNumber` <- this_object$`creditCardNumber`
      self$`creditCardExpirationMonth` <- this_object$`creditCardExpirationMonth`
      self$`creditCardExpirationYear` <- this_object$`creditCardExpirationYear`
      self$`pointsOnFile` <- this_object$`pointsOnFile`
      self$`pointsAmount` <- this_object$`pointsAmount`
      self$`account` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
      self$`firstName` <- this_object$`firstName`
      self$`lastName` <- this_object$`lastName`
      self$`address` <- this_object$`address`
      self$`city` <- this_object$`city`
      self$`state` <- this_object$`state`
      self$`postalCode` <- this_object$`postalCode`
      self$`phone` <- this_object$`phone`
      self$`provider` <- this_object$`provider`
      self$`paymentMethodId` <- this_object$`paymentMethodId`
      self$`validated` <- this_object$`validated`
      self$`accountNumber` <- this_object$`accountNumber`
      self$`bankName` <- this_object$`bankName`
      self$`routingNumber` <- this_object$`routingNumber`
      self$`isDefaultPaymentMethod` <- this_object$`isDefaultPaymentMethod`
      self$`accountName` <- this_object$`accountName`
      self$`paymentMethodNickname` <- this_object$`paymentMethodNickname`
      self$`taxId` <- this_object$`taxId`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to PaymentTypesResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PaymentTypesResponse
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
# PaymentTypesResponse$unlock()
#
## Below is an example to define the print function
# PaymentTypesResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PaymentTypesResponse$lock()

