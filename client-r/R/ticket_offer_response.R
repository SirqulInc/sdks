#' Create a new TicketOfferResponse
#'
#' @description
#' TicketOfferResponse Class
#'
#' @docType class
#' @title TicketOfferResponse
#' @description TicketOfferResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field imageURL  character [optional]
#' @field retailer  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TicketOfferResponse <- R6::R6Class(
  "TicketOfferResponse",
  public = list(
    `id` = NULL,
    `title` = NULL,
    `description` = NULL,
    `imageURL` = NULL,
    `retailer` = NULL,

    #' @description
    #' Initialize a new TicketOfferResponse class.
    #'
    #' @param id id
    #' @param title title
    #' @param description description
    #' @param imageURL imageURL
    #' @param retailer retailer
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `title` = NULL, `description` = NULL, `imageURL` = NULL, `retailer` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
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
      if (!is.null(`imageURL`)) {
        if (!(is.character(`imageURL`) && length(`imageURL`) == 1)) {
          stop(paste("Error! Invalid data for `imageURL`. Must be a string:", `imageURL`))
        }
        self$`imageURL` <- `imageURL`
      }
      if (!is.null(`retailer`)) {
        if (!(is.character(`retailer`) && length(`retailer`) == 1)) {
          stop(paste("Error! Invalid data for `retailer`. Must be a string:", `retailer`))
        }
        self$`retailer` <- `retailer`
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
    #' @return TicketOfferResponse as a base R list.
    #' @examples
    #' # convert array of TicketOfferResponse (x) to a data frame
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
    #' Convert TicketOfferResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TicketOfferResponseObject <- list()
      if (!is.null(self$`id`)) {
        TicketOfferResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`title`)) {
        TicketOfferResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        TicketOfferResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`imageURL`)) {
        TicketOfferResponseObject[["imageURL"]] <-
          self$`imageURL`
      }
      if (!is.null(self$`retailer`)) {
        TicketOfferResponseObject[["retailer"]] <-
          self$`retailer`
      }
      return(TicketOfferResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TicketOfferResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TicketOfferResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`imageURL`)) {
        self$`imageURL` <- this_object$`imageURL`
      }
      if (!is.null(this_object$`retailer`)) {
        self$`retailer` <- this_object$`retailer`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TicketOfferResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TicketOfferResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TicketOfferResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`imageURL` <- this_object$`imageURL`
      self$`retailer` <- this_object$`retailer`
      self
    },

    #' @description
    #' Validate JSON input with respect to TicketOfferResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TicketOfferResponse
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
# TicketOfferResponse$unlock()
#
## Below is an example to define the print function
# TicketOfferResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TicketOfferResponse$lock()

