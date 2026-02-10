#' Create a new Pack
#'
#' @description
#' Pack Class
#'
#' @docType class
#' @title Pack
#' @description Pack Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field newOwnerId  integer [optional]
#' @field owner  \link{Account} [optional]
#' @field application  \link{Application} [optional]
#' @field sequenceType  character [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field startDate  character [optional]
#' @field endDate  character [optional]
#' @field packType  character [optional]
#' @field image  \link{Asset} [optional]
#' @field background  \link{Asset} [optional]
#' @field imageURL  character [optional]
#' @field gameLevels  list(\link{GameLevel}) [optional]
#' @field hasMoreItems  character [optional]
#' @field totalCount  integer [optional]
#' @field downloaded  character [optional]
#' @field authorOverride  character [optional]
#' @field packOrder  integer [optional]
#' @field inGame  character [optional]
#' @field highest  character [optional]
#' @field notificationCount  integer [optional]
#' @field points  integer [optional]
#' @field ticketType  character [optional]
#' @field ticketCount  integer [optional]
#' @field priceType  character [optional]
#' @field price  integer [optional]
#' @field allocateTickets  character [optional]
#' @field applicationTitle  character [optional]
#' @field levelNumberMap  named list(\link{GameLevel}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Pack <- R6::R6Class(
  "Pack",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `newOwnerId` = NULL,
    `owner` = NULL,
    `application` = NULL,
    `sequenceType` = NULL,
    `title` = NULL,
    `description` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `packType` = NULL,
    `image` = NULL,
    `background` = NULL,
    `imageURL` = NULL,
    `gameLevels` = NULL,
    `hasMoreItems` = NULL,
    `totalCount` = NULL,
    `downloaded` = NULL,
    `authorOverride` = NULL,
    `packOrder` = NULL,
    `inGame` = NULL,
    `highest` = NULL,
    `notificationCount` = NULL,
    `points` = NULL,
    `ticketType` = NULL,
    `ticketCount` = NULL,
    `priceType` = NULL,
    `price` = NULL,
    `allocateTickets` = NULL,
    `applicationTitle` = NULL,
    `levelNumberMap` = NULL,

    #' @description
    #' Initialize a new Pack class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param newOwnerId newOwnerId
    #' @param owner owner
    #' @param application application
    #' @param sequenceType sequenceType
    #' @param title title
    #' @param description description
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param packType packType
    #' @param image image
    #' @param background background
    #' @param imageURL imageURL
    #' @param gameLevels gameLevels
    #' @param hasMoreItems hasMoreItems
    #' @param totalCount totalCount
    #' @param downloaded downloaded
    #' @param authorOverride authorOverride
    #' @param packOrder packOrder
    #' @param inGame inGame
    #' @param highest highest
    #' @param notificationCount notificationCount
    #' @param points points
    #' @param ticketType ticketType
    #' @param ticketCount ticketCount
    #' @param priceType priceType
    #' @param price price
    #' @param allocateTickets allocateTickets
    #' @param applicationTitle applicationTitle
    #' @param levelNumberMap levelNumberMap
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `newOwnerId` = NULL, `owner` = NULL, `application` = NULL, `sequenceType` = NULL, `title` = NULL, `description` = NULL, `startDate` = NULL, `endDate` = NULL, `packType` = NULL, `image` = NULL, `background` = NULL, `imageURL` = NULL, `gameLevels` = NULL, `hasMoreItems` = NULL, `totalCount` = NULL, `downloaded` = NULL, `authorOverride` = NULL, `packOrder` = NULL, `inGame` = NULL, `highest` = NULL, `notificationCount` = NULL, `points` = NULL, `ticketType` = NULL, `ticketCount` = NULL, `priceType` = NULL, `price` = NULL, `allocateTickets` = NULL, `applicationTitle` = NULL, `levelNumberMap` = NULL, ...) {
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
      if (!is.null(`newOwnerId`)) {
        if (!(is.numeric(`newOwnerId`) && length(`newOwnerId`) == 1)) {
          stop(paste("Error! Invalid data for `newOwnerId`. Must be an integer:", `newOwnerId`))
        }
        self$`newOwnerId` <- `newOwnerId`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
      }
      if (!is.null(`sequenceType`)) {
        if (!(`sequenceType` %in% c("FIRST_AVAILABLE", "ALL_AVAILABLE"))) {
          stop(paste("Error! \"", `sequenceType`, "\" cannot be assigned to `sequenceType`. Must be \"FIRST_AVAILABLE\", \"ALL_AVAILABLE\".", sep = ""))
        }
        if (!(is.character(`sequenceType`) && length(`sequenceType`) == 1)) {
          stop(paste("Error! Invalid data for `sequenceType`. Must be a string:", `sequenceType`))
        }
        self$`sequenceType` <- `sequenceType`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`startDate`)) {
        if (!is.character(`startDate`)) {
          stop(paste("Error! Invalid data for `startDate`. Must be a string:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`endDate`)) {
        if (!is.character(`endDate`)) {
          stop(paste("Error! Invalid data for `endDate`. Must be a string:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`packType`)) {
        if (!(`packType` %in% c("TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT"))) {
          stop(paste("Error! \"", `packType`, "\" cannot be assigned to `packType`. Must be \"TUTORIAL\", \"BUILTIN\", \"DOWNLOAD\", \"THRESHOLD\", \"THEME\", \"TOURNAMENT\".", sep = ""))
        }
        if (!(is.character(`packType`) && length(`packType`) == 1)) {
          stop(paste("Error! Invalid data for `packType`. Must be a string:", `packType`))
        }
        self$`packType` <- `packType`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`background`)) {
        stopifnot(R6::is.R6(`background`))
        self$`background` <- `background`
      }
      if (!is.null(`imageURL`)) {
        if (!(is.character(`imageURL`) && length(`imageURL`) == 1)) {
          stop(paste("Error! Invalid data for `imageURL`. Must be a string:", `imageURL`))
        }
        self$`imageURL` <- `imageURL`
      }
      if (!is.null(`gameLevels`)) {
        stopifnot(is.vector(`gameLevels`), length(`gameLevels`) != 0)
        sapply(`gameLevels`, function(x) stopifnot(R6::is.R6(x)))
        self$`gameLevels` <- `gameLevels`
      }
      if (!is.null(`hasMoreItems`)) {
        if (!(is.logical(`hasMoreItems`) && length(`hasMoreItems`) == 1)) {
          stop(paste("Error! Invalid data for `hasMoreItems`. Must be a boolean:", `hasMoreItems`))
        }
        self$`hasMoreItems` <- `hasMoreItems`
      }
      if (!is.null(`totalCount`)) {
        if (!(is.numeric(`totalCount`) && length(`totalCount`) == 1)) {
          stop(paste("Error! Invalid data for `totalCount`. Must be an integer:", `totalCount`))
        }
        self$`totalCount` <- `totalCount`
      }
      if (!is.null(`downloaded`)) {
        if (!(is.logical(`downloaded`) && length(`downloaded`) == 1)) {
          stop(paste("Error! Invalid data for `downloaded`. Must be a boolean:", `downloaded`))
        }
        self$`downloaded` <- `downloaded`
      }
      if (!is.null(`authorOverride`)) {
        if (!(is.character(`authorOverride`) && length(`authorOverride`) == 1)) {
          stop(paste("Error! Invalid data for `authorOverride`. Must be a string:", `authorOverride`))
        }
        self$`authorOverride` <- `authorOverride`
      }
      if (!is.null(`packOrder`)) {
        if (!(is.numeric(`packOrder`) && length(`packOrder`) == 1)) {
          stop(paste("Error! Invalid data for `packOrder`. Must be an integer:", `packOrder`))
        }
        self$`packOrder` <- `packOrder`
      }
      if (!is.null(`inGame`)) {
        if (!(is.logical(`inGame`) && length(`inGame`) == 1)) {
          stop(paste("Error! Invalid data for `inGame`. Must be a boolean:", `inGame`))
        }
        self$`inGame` <- `inGame`
      }
      if (!is.null(`highest`)) {
        if (!(is.logical(`highest`) && length(`highest`) == 1)) {
          stop(paste("Error! Invalid data for `highest`. Must be a boolean:", `highest`))
        }
        self$`highest` <- `highest`
      }
      if (!is.null(`notificationCount`)) {
        if (!(is.numeric(`notificationCount`) && length(`notificationCount`) == 1)) {
          stop(paste("Error! Invalid data for `notificationCount`. Must be an integer:", `notificationCount`))
        }
        self$`notificationCount` <- `notificationCount`
      }
      if (!is.null(`points`)) {
        if (!(is.numeric(`points`) && length(`points`) == 1)) {
          stop(paste("Error! Invalid data for `points`. Must be an integer:", `points`))
        }
        self$`points` <- `points`
      }
      if (!is.null(`ticketType`)) {
        if (!(is.character(`ticketType`) && length(`ticketType`) == 1)) {
          stop(paste("Error! Invalid data for `ticketType`. Must be a string:", `ticketType`))
        }
        self$`ticketType` <- `ticketType`
      }
      if (!is.null(`ticketCount`)) {
        if (!(is.numeric(`ticketCount`) && length(`ticketCount`) == 1)) {
          stop(paste("Error! Invalid data for `ticketCount`. Must be an integer:", `ticketCount`))
        }
        self$`ticketCount` <- `ticketCount`
      }
      if (!is.null(`priceType`)) {
        if (!(is.character(`priceType`) && length(`priceType`) == 1)) {
          stop(paste("Error! Invalid data for `priceType`. Must be a string:", `priceType`))
        }
        self$`priceType` <- `priceType`
      }
      if (!is.null(`price`)) {
        if (!(is.numeric(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be an integer:", `price`))
        }
        self$`price` <- `price`
      }
      if (!is.null(`allocateTickets`)) {
        if (!(is.logical(`allocateTickets`) && length(`allocateTickets`) == 1)) {
          stop(paste("Error! Invalid data for `allocateTickets`. Must be a boolean:", `allocateTickets`))
        }
        self$`allocateTickets` <- `allocateTickets`
      }
      if (!is.null(`applicationTitle`)) {
        if (!(is.character(`applicationTitle`) && length(`applicationTitle`) == 1)) {
          stop(paste("Error! Invalid data for `applicationTitle`. Must be a string:", `applicationTitle`))
        }
        self$`applicationTitle` <- `applicationTitle`
      }
      if (!is.null(`levelNumberMap`)) {
        stopifnot(is.vector(`levelNumberMap`), length(`levelNumberMap`) != 0)
        sapply(`levelNumberMap`, function(x) stopifnot(R6::is.R6(x)))
        self$`levelNumberMap` <- `levelNumberMap`
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
    #' @return Pack as a base R list.
    #' @examples
    #' # convert array of Pack (x) to a data frame
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
    #' Convert Pack to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PackObject <- list()
      if (!is.null(self$`id`)) {
        PackObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        PackObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        PackObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`newOwnerId`)) {
        PackObject[["newOwnerId"]] <-
          self$`newOwnerId`
      }
      if (!is.null(self$`owner`)) {
        PackObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`application`)) {
        PackObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`sequenceType`)) {
        PackObject[["sequenceType"]] <-
          self$`sequenceType`
      }
      if (!is.null(self$`title`)) {
        PackObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        PackObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`startDate`)) {
        PackObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        PackObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`packType`)) {
        PackObject[["packType"]] <-
          self$`packType`
      }
      if (!is.null(self$`image`)) {
        PackObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`background`)) {
        PackObject[["background"]] <-
          self$extractSimpleType(self$`background`)
      }
      if (!is.null(self$`imageURL`)) {
        PackObject[["imageURL"]] <-
          self$`imageURL`
      }
      if (!is.null(self$`gameLevels`)) {
        PackObject[["gameLevels"]] <-
          self$extractSimpleType(self$`gameLevels`)
      }
      if (!is.null(self$`hasMoreItems`)) {
        PackObject[["hasMoreItems"]] <-
          self$`hasMoreItems`
      }
      if (!is.null(self$`totalCount`)) {
        PackObject[["totalCount"]] <-
          self$`totalCount`
      }
      if (!is.null(self$`downloaded`)) {
        PackObject[["downloaded"]] <-
          self$`downloaded`
      }
      if (!is.null(self$`authorOverride`)) {
        PackObject[["authorOverride"]] <-
          self$`authorOverride`
      }
      if (!is.null(self$`packOrder`)) {
        PackObject[["packOrder"]] <-
          self$`packOrder`
      }
      if (!is.null(self$`inGame`)) {
        PackObject[["inGame"]] <-
          self$`inGame`
      }
      if (!is.null(self$`highest`)) {
        PackObject[["highest"]] <-
          self$`highest`
      }
      if (!is.null(self$`notificationCount`)) {
        PackObject[["notificationCount"]] <-
          self$`notificationCount`
      }
      if (!is.null(self$`points`)) {
        PackObject[["points"]] <-
          self$`points`
      }
      if (!is.null(self$`ticketType`)) {
        PackObject[["ticketType"]] <-
          self$`ticketType`
      }
      if (!is.null(self$`ticketCount`)) {
        PackObject[["ticketCount"]] <-
          self$`ticketCount`
      }
      if (!is.null(self$`priceType`)) {
        PackObject[["priceType"]] <-
          self$`priceType`
      }
      if (!is.null(self$`price`)) {
        PackObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`allocateTickets`)) {
        PackObject[["allocateTickets"]] <-
          self$`allocateTickets`
      }
      if (!is.null(self$`applicationTitle`)) {
        PackObject[["applicationTitle"]] <-
          self$`applicationTitle`
      }
      if (!is.null(self$`levelNumberMap`)) {
        PackObject[["levelNumberMap"]] <-
          self$extractSimpleType(self$`levelNumberMap`)
      }
      return(PackObject)
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
    #' Deserialize JSON string into an instance of Pack
    #'
    #' @param input_json the JSON input
    #' @return the instance of Pack
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
      if (!is.null(this_object$`newOwnerId`)) {
        self$`newOwnerId` <- this_object$`newOwnerId`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- Application$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`sequenceType`)) {
        if (!is.null(this_object$`sequenceType`) && !(this_object$`sequenceType` %in% c("FIRST_AVAILABLE", "ALL_AVAILABLE"))) {
          stop(paste("Error! \"", this_object$`sequenceType`, "\" cannot be assigned to `sequenceType`. Must be \"FIRST_AVAILABLE\", \"ALL_AVAILABLE\".", sep = ""))
        }
        self$`sequenceType` <- this_object$`sequenceType`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`packType`)) {
        if (!is.null(this_object$`packType`) && !(this_object$`packType` %in% c("TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT"))) {
          stop(paste("Error! \"", this_object$`packType`, "\" cannot be assigned to `packType`. Must be \"TUTORIAL\", \"BUILTIN\", \"DOWNLOAD\", \"THRESHOLD\", \"THEME\", \"TOURNAMENT\".", sep = ""))
        }
        self$`packType` <- this_object$`packType`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- Asset$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`background`)) {
        `background_object` <- Asset$new()
        `background_object`$fromJSON(jsonlite::toJSON(this_object$`background`, auto_unbox = TRUE, digits = NA))
        self$`background` <- `background_object`
      }
      if (!is.null(this_object$`imageURL`)) {
        self$`imageURL` <- this_object$`imageURL`
      }
      if (!is.null(this_object$`gameLevels`)) {
        self$`gameLevels` <- ApiClient$new()$deserializeObj(this_object$`gameLevels`, "array[GameLevel]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`hasMoreItems`)) {
        self$`hasMoreItems` <- this_object$`hasMoreItems`
      }
      if (!is.null(this_object$`totalCount`)) {
        self$`totalCount` <- this_object$`totalCount`
      }
      if (!is.null(this_object$`downloaded`)) {
        self$`downloaded` <- this_object$`downloaded`
      }
      if (!is.null(this_object$`authorOverride`)) {
        self$`authorOverride` <- this_object$`authorOverride`
      }
      if (!is.null(this_object$`packOrder`)) {
        self$`packOrder` <- this_object$`packOrder`
      }
      if (!is.null(this_object$`inGame`)) {
        self$`inGame` <- this_object$`inGame`
      }
      if (!is.null(this_object$`highest`)) {
        self$`highest` <- this_object$`highest`
      }
      if (!is.null(this_object$`notificationCount`)) {
        self$`notificationCount` <- this_object$`notificationCount`
      }
      if (!is.null(this_object$`points`)) {
        self$`points` <- this_object$`points`
      }
      if (!is.null(this_object$`ticketType`)) {
        self$`ticketType` <- this_object$`ticketType`
      }
      if (!is.null(this_object$`ticketCount`)) {
        self$`ticketCount` <- this_object$`ticketCount`
      }
      if (!is.null(this_object$`priceType`)) {
        self$`priceType` <- this_object$`priceType`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`allocateTickets`)) {
        self$`allocateTickets` <- this_object$`allocateTickets`
      }
      if (!is.null(this_object$`applicationTitle`)) {
        self$`applicationTitle` <- this_object$`applicationTitle`
      }
      if (!is.null(this_object$`levelNumberMap`)) {
        self$`levelNumberMap` <- ApiClient$new()$deserializeObj(this_object$`levelNumberMap`, "map(GameLevel)", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Pack in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Pack
    #'
    #' @param input_json the JSON input
    #' @return the instance of Pack
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`newOwnerId` <- this_object$`newOwnerId`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`application` <- Application$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`sequenceType`) && !(this_object$`sequenceType` %in% c("FIRST_AVAILABLE", "ALL_AVAILABLE"))) {
        stop(paste("Error! \"", this_object$`sequenceType`, "\" cannot be assigned to `sequenceType`. Must be \"FIRST_AVAILABLE\", \"ALL_AVAILABLE\".", sep = ""))
      }
      self$`sequenceType` <- this_object$`sequenceType`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      if (!is.null(this_object$`packType`) && !(this_object$`packType` %in% c("TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT"))) {
        stop(paste("Error! \"", this_object$`packType`, "\" cannot be assigned to `packType`. Must be \"TUTORIAL\", \"BUILTIN\", \"DOWNLOAD\", \"THRESHOLD\", \"THEME\", \"TOURNAMENT\".", sep = ""))
      }
      self$`packType` <- this_object$`packType`
      self$`image` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`background` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`background`, auto_unbox = TRUE, digits = NA))
      self$`imageURL` <- this_object$`imageURL`
      self$`gameLevels` <- ApiClient$new()$deserializeObj(this_object$`gameLevels`, "array[GameLevel]", loadNamespace("openapi"))
      self$`hasMoreItems` <- this_object$`hasMoreItems`
      self$`totalCount` <- this_object$`totalCount`
      self$`downloaded` <- this_object$`downloaded`
      self$`authorOverride` <- this_object$`authorOverride`
      self$`packOrder` <- this_object$`packOrder`
      self$`inGame` <- this_object$`inGame`
      self$`highest` <- this_object$`highest`
      self$`notificationCount` <- this_object$`notificationCount`
      self$`points` <- this_object$`points`
      self$`ticketType` <- this_object$`ticketType`
      self$`ticketCount` <- this_object$`ticketCount`
      self$`priceType` <- this_object$`priceType`
      self$`price` <- this_object$`price`
      self$`allocateTickets` <- this_object$`allocateTickets`
      self$`applicationTitle` <- this_object$`applicationTitle`
      self$`levelNumberMap` <- ApiClient$new()$deserializeObj(this_object$`levelNumberMap`, "map(GameLevel)", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Pack and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Pack
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
# Pack$unlock()
#
## Below is an example to define the print function
# Pack$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Pack$lock()

