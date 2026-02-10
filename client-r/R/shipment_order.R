#' Create a new ShipmentOrder
#'
#' @description
#' ShipmentOrder Class
#'
#' @docType class
#' @title ShipmentOrder
#' @description ShipmentOrder Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field BatchID  integer [optional]
#' @field BatchSize  integer [optional]
#' @field OrderTrackingID  numeric [optional]
#' @field ClientRefNo  character [optional]
#' @field ClientRefNo2  character [optional]
#' @field HubCode  character [optional]
#' @field AccountNo  character [optional]
#' @field CompanyName  character [optional]
#' @field VehicleTypeName  character [optional]
#' @field ServiceTypeName  character [optional]
#' @field ServiceCode  character [optional]
#' @field Pieces  integer [optional]
#' @field Weight  numeric [optional]
#' @field CubicFeet  numeric [optional]
#' @field PickupCompany  character [optional]
#' @field PickupContact  character [optional]
#' @field PickupPhone  character [optional]
#' @field PickupStreet  character [optional]
#' @field PickupStreet2  character [optional]
#' @field PickupCity  character [optional]
#' @field PickupState  character [optional]
#' @field PickupZip  character [optional]
#' @field PickupTargetFrom  character [optional]
#' @field PickupTargetTo  character [optional]
#' @field DeliveryCompany  character [optional]
#' @field DeliveryContact  character [optional]
#' @field DeliveryPhone  character [optional]
#' @field DeliveryStreet  character [optional]
#' @field DeliveryStreet2  character [optional]
#' @field DeliveryCity  character [optional]
#' @field DeliveryState  character [optional]
#' @field DeliveryZip  character [optional]
#' @field DeliveryTargetFrom  character [optional]
#' @field DeliveryTargetTo  character [optional]
#' @field OrderPackages  list(\link{OrderPackage}) [optional]
#' @field RouteID  integer [optional]
#' @field DriverID  integer [optional]
#' @field PickupSequenceNo  integer [optional]
#' @field DeliverySequenceNo  integer [optional]
#' @field PickupETA  character [optional]
#' @field DeliveryETA  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ShipmentOrder <- R6::R6Class(
  "ShipmentOrder",
  public = list(
    `valid` = NULL,
    `BatchID` = NULL,
    `BatchSize` = NULL,
    `OrderTrackingID` = NULL,
    `ClientRefNo` = NULL,
    `ClientRefNo2` = NULL,
    `HubCode` = NULL,
    `AccountNo` = NULL,
    `CompanyName` = NULL,
    `VehicleTypeName` = NULL,
    `ServiceTypeName` = NULL,
    `ServiceCode` = NULL,
    `Pieces` = NULL,
    `Weight` = NULL,
    `CubicFeet` = NULL,
    `PickupCompany` = NULL,
    `PickupContact` = NULL,
    `PickupPhone` = NULL,
    `PickupStreet` = NULL,
    `PickupStreet2` = NULL,
    `PickupCity` = NULL,
    `PickupState` = NULL,
    `PickupZip` = NULL,
    `PickupTargetFrom` = NULL,
    `PickupTargetTo` = NULL,
    `DeliveryCompany` = NULL,
    `DeliveryContact` = NULL,
    `DeliveryPhone` = NULL,
    `DeliveryStreet` = NULL,
    `DeliveryStreet2` = NULL,
    `DeliveryCity` = NULL,
    `DeliveryState` = NULL,
    `DeliveryZip` = NULL,
    `DeliveryTargetFrom` = NULL,
    `DeliveryTargetTo` = NULL,
    `OrderPackages` = NULL,
    `RouteID` = NULL,
    `DriverID` = NULL,
    `PickupSequenceNo` = NULL,
    `DeliverySequenceNo` = NULL,
    `PickupETA` = NULL,
    `DeliveryETA` = NULL,

    #' @description
    #' Initialize a new ShipmentOrder class.
    #'
    #' @param valid valid
    #' @param BatchID BatchID
    #' @param BatchSize BatchSize
    #' @param OrderTrackingID OrderTrackingID
    #' @param ClientRefNo ClientRefNo
    #' @param ClientRefNo2 ClientRefNo2
    #' @param HubCode HubCode
    #' @param AccountNo AccountNo
    #' @param CompanyName CompanyName
    #' @param VehicleTypeName VehicleTypeName
    #' @param ServiceTypeName ServiceTypeName
    #' @param ServiceCode ServiceCode
    #' @param Pieces Pieces
    #' @param Weight Weight
    #' @param CubicFeet CubicFeet
    #' @param PickupCompany PickupCompany
    #' @param PickupContact PickupContact
    #' @param PickupPhone PickupPhone
    #' @param PickupStreet PickupStreet
    #' @param PickupStreet2 PickupStreet2
    #' @param PickupCity PickupCity
    #' @param PickupState PickupState
    #' @param PickupZip PickupZip
    #' @param PickupTargetFrom PickupTargetFrom
    #' @param PickupTargetTo PickupTargetTo
    #' @param DeliveryCompany DeliveryCompany
    #' @param DeliveryContact DeliveryContact
    #' @param DeliveryPhone DeliveryPhone
    #' @param DeliveryStreet DeliveryStreet
    #' @param DeliveryStreet2 DeliveryStreet2
    #' @param DeliveryCity DeliveryCity
    #' @param DeliveryState DeliveryState
    #' @param DeliveryZip DeliveryZip
    #' @param DeliveryTargetFrom DeliveryTargetFrom
    #' @param DeliveryTargetTo DeliveryTargetTo
    #' @param OrderPackages OrderPackages
    #' @param RouteID RouteID
    #' @param DriverID DriverID
    #' @param PickupSequenceNo PickupSequenceNo
    #' @param DeliverySequenceNo DeliverySequenceNo
    #' @param PickupETA PickupETA
    #' @param DeliveryETA DeliveryETA
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `BatchID` = NULL, `BatchSize` = NULL, `OrderTrackingID` = NULL, `ClientRefNo` = NULL, `ClientRefNo2` = NULL, `HubCode` = NULL, `AccountNo` = NULL, `CompanyName` = NULL, `VehicleTypeName` = NULL, `ServiceTypeName` = NULL, `ServiceCode` = NULL, `Pieces` = NULL, `Weight` = NULL, `CubicFeet` = NULL, `PickupCompany` = NULL, `PickupContact` = NULL, `PickupPhone` = NULL, `PickupStreet` = NULL, `PickupStreet2` = NULL, `PickupCity` = NULL, `PickupState` = NULL, `PickupZip` = NULL, `PickupTargetFrom` = NULL, `PickupTargetTo` = NULL, `DeliveryCompany` = NULL, `DeliveryContact` = NULL, `DeliveryPhone` = NULL, `DeliveryStreet` = NULL, `DeliveryStreet2` = NULL, `DeliveryCity` = NULL, `DeliveryState` = NULL, `DeliveryZip` = NULL, `DeliveryTargetFrom` = NULL, `DeliveryTargetTo` = NULL, `OrderPackages` = NULL, `RouteID` = NULL, `DriverID` = NULL, `PickupSequenceNo` = NULL, `DeliverySequenceNo` = NULL, `PickupETA` = NULL, `DeliveryETA` = NULL, ...) {
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`BatchID`)) {
        if (!(is.numeric(`BatchID`) && length(`BatchID`) == 1)) {
          stop(paste("Error! Invalid data for `BatchID`. Must be an integer:", `BatchID`))
        }
        self$`BatchID` <- `BatchID`
      }
      if (!is.null(`BatchSize`)) {
        if (!(is.numeric(`BatchSize`) && length(`BatchSize`) == 1)) {
          stop(paste("Error! Invalid data for `BatchSize`. Must be an integer:", `BatchSize`))
        }
        self$`BatchSize` <- `BatchSize`
      }
      if (!is.null(`OrderTrackingID`)) {
        if (!(is.numeric(`OrderTrackingID`) && length(`OrderTrackingID`) == 1)) {
          stop(paste("Error! Invalid data for `OrderTrackingID`. Must be a number:", `OrderTrackingID`))
        }
        self$`OrderTrackingID` <- `OrderTrackingID`
      }
      if (!is.null(`ClientRefNo`)) {
        if (!(is.character(`ClientRefNo`) && length(`ClientRefNo`) == 1)) {
          stop(paste("Error! Invalid data for `ClientRefNo`. Must be a string:", `ClientRefNo`))
        }
        self$`ClientRefNo` <- `ClientRefNo`
      }
      if (!is.null(`ClientRefNo2`)) {
        if (!(is.character(`ClientRefNo2`) && length(`ClientRefNo2`) == 1)) {
          stop(paste("Error! Invalid data for `ClientRefNo2`. Must be a string:", `ClientRefNo2`))
        }
        self$`ClientRefNo2` <- `ClientRefNo2`
      }
      if (!is.null(`HubCode`)) {
        if (!(is.character(`HubCode`) && length(`HubCode`) == 1)) {
          stop(paste("Error! Invalid data for `HubCode`. Must be a string:", `HubCode`))
        }
        self$`HubCode` <- `HubCode`
      }
      if (!is.null(`AccountNo`)) {
        if (!(is.character(`AccountNo`) && length(`AccountNo`) == 1)) {
          stop(paste("Error! Invalid data for `AccountNo`. Must be a string:", `AccountNo`))
        }
        self$`AccountNo` <- `AccountNo`
      }
      if (!is.null(`CompanyName`)) {
        if (!(is.character(`CompanyName`) && length(`CompanyName`) == 1)) {
          stop(paste("Error! Invalid data for `CompanyName`. Must be a string:", `CompanyName`))
        }
        self$`CompanyName` <- `CompanyName`
      }
      if (!is.null(`VehicleTypeName`)) {
        if (!(is.character(`VehicleTypeName`) && length(`VehicleTypeName`) == 1)) {
          stop(paste("Error! Invalid data for `VehicleTypeName`. Must be a string:", `VehicleTypeName`))
        }
        self$`VehicleTypeName` <- `VehicleTypeName`
      }
      if (!is.null(`ServiceTypeName`)) {
        if (!(is.character(`ServiceTypeName`) && length(`ServiceTypeName`) == 1)) {
          stop(paste("Error! Invalid data for `ServiceTypeName`. Must be a string:", `ServiceTypeName`))
        }
        self$`ServiceTypeName` <- `ServiceTypeName`
      }
      if (!is.null(`ServiceCode`)) {
        if (!(is.character(`ServiceCode`) && length(`ServiceCode`) == 1)) {
          stop(paste("Error! Invalid data for `ServiceCode`. Must be a string:", `ServiceCode`))
        }
        self$`ServiceCode` <- `ServiceCode`
      }
      if (!is.null(`Pieces`)) {
        if (!(is.numeric(`Pieces`) && length(`Pieces`) == 1)) {
          stop(paste("Error! Invalid data for `Pieces`. Must be an integer:", `Pieces`))
        }
        self$`Pieces` <- `Pieces`
      }
      if (!is.null(`Weight`)) {
        if (!(is.numeric(`Weight`) && length(`Weight`) == 1)) {
          stop(paste("Error! Invalid data for `Weight`. Must be a number:", `Weight`))
        }
        self$`Weight` <- `Weight`
      }
      if (!is.null(`CubicFeet`)) {
        if (!(is.numeric(`CubicFeet`) && length(`CubicFeet`) == 1)) {
          stop(paste("Error! Invalid data for `CubicFeet`. Must be a number:", `CubicFeet`))
        }
        self$`CubicFeet` <- `CubicFeet`
      }
      if (!is.null(`PickupCompany`)) {
        if (!(is.character(`PickupCompany`) && length(`PickupCompany`) == 1)) {
          stop(paste("Error! Invalid data for `PickupCompany`. Must be a string:", `PickupCompany`))
        }
        self$`PickupCompany` <- `PickupCompany`
      }
      if (!is.null(`PickupContact`)) {
        if (!(is.character(`PickupContact`) && length(`PickupContact`) == 1)) {
          stop(paste("Error! Invalid data for `PickupContact`. Must be a string:", `PickupContact`))
        }
        self$`PickupContact` <- `PickupContact`
      }
      if (!is.null(`PickupPhone`)) {
        if (!(is.character(`PickupPhone`) && length(`PickupPhone`) == 1)) {
          stop(paste("Error! Invalid data for `PickupPhone`. Must be a string:", `PickupPhone`))
        }
        self$`PickupPhone` <- `PickupPhone`
      }
      if (!is.null(`PickupStreet`)) {
        if (!(is.character(`PickupStreet`) && length(`PickupStreet`) == 1)) {
          stop(paste("Error! Invalid data for `PickupStreet`. Must be a string:", `PickupStreet`))
        }
        self$`PickupStreet` <- `PickupStreet`
      }
      if (!is.null(`PickupStreet2`)) {
        if (!(is.character(`PickupStreet2`) && length(`PickupStreet2`) == 1)) {
          stop(paste("Error! Invalid data for `PickupStreet2`. Must be a string:", `PickupStreet2`))
        }
        self$`PickupStreet2` <- `PickupStreet2`
      }
      if (!is.null(`PickupCity`)) {
        if (!(is.character(`PickupCity`) && length(`PickupCity`) == 1)) {
          stop(paste("Error! Invalid data for `PickupCity`. Must be a string:", `PickupCity`))
        }
        self$`PickupCity` <- `PickupCity`
      }
      if (!is.null(`PickupState`)) {
        if (!(is.character(`PickupState`) && length(`PickupState`) == 1)) {
          stop(paste("Error! Invalid data for `PickupState`. Must be a string:", `PickupState`))
        }
        self$`PickupState` <- `PickupState`
      }
      if (!is.null(`PickupZip`)) {
        if (!(is.character(`PickupZip`) && length(`PickupZip`) == 1)) {
          stop(paste("Error! Invalid data for `PickupZip`. Must be a string:", `PickupZip`))
        }
        self$`PickupZip` <- `PickupZip`
      }
      if (!is.null(`PickupTargetFrom`)) {
        if (!is.character(`PickupTargetFrom`)) {
          stop(paste("Error! Invalid data for `PickupTargetFrom`. Must be a string:", `PickupTargetFrom`))
        }
        self$`PickupTargetFrom` <- `PickupTargetFrom`
      }
      if (!is.null(`PickupTargetTo`)) {
        if (!is.character(`PickupTargetTo`)) {
          stop(paste("Error! Invalid data for `PickupTargetTo`. Must be a string:", `PickupTargetTo`))
        }
        self$`PickupTargetTo` <- `PickupTargetTo`
      }
      if (!is.null(`DeliveryCompany`)) {
        if (!(is.character(`DeliveryCompany`) && length(`DeliveryCompany`) == 1)) {
          stop(paste("Error! Invalid data for `DeliveryCompany`. Must be a string:", `DeliveryCompany`))
        }
        self$`DeliveryCompany` <- `DeliveryCompany`
      }
      if (!is.null(`DeliveryContact`)) {
        if (!(is.character(`DeliveryContact`) && length(`DeliveryContact`) == 1)) {
          stop(paste("Error! Invalid data for `DeliveryContact`. Must be a string:", `DeliveryContact`))
        }
        self$`DeliveryContact` <- `DeliveryContact`
      }
      if (!is.null(`DeliveryPhone`)) {
        if (!(is.character(`DeliveryPhone`) && length(`DeliveryPhone`) == 1)) {
          stop(paste("Error! Invalid data for `DeliveryPhone`. Must be a string:", `DeliveryPhone`))
        }
        self$`DeliveryPhone` <- `DeliveryPhone`
      }
      if (!is.null(`DeliveryStreet`)) {
        if (!(is.character(`DeliveryStreet`) && length(`DeliveryStreet`) == 1)) {
          stop(paste("Error! Invalid data for `DeliveryStreet`. Must be a string:", `DeliveryStreet`))
        }
        self$`DeliveryStreet` <- `DeliveryStreet`
      }
      if (!is.null(`DeliveryStreet2`)) {
        if (!(is.character(`DeliveryStreet2`) && length(`DeliveryStreet2`) == 1)) {
          stop(paste("Error! Invalid data for `DeliveryStreet2`. Must be a string:", `DeliveryStreet2`))
        }
        self$`DeliveryStreet2` <- `DeliveryStreet2`
      }
      if (!is.null(`DeliveryCity`)) {
        if (!(is.character(`DeliveryCity`) && length(`DeliveryCity`) == 1)) {
          stop(paste("Error! Invalid data for `DeliveryCity`. Must be a string:", `DeliveryCity`))
        }
        self$`DeliveryCity` <- `DeliveryCity`
      }
      if (!is.null(`DeliveryState`)) {
        if (!(is.character(`DeliveryState`) && length(`DeliveryState`) == 1)) {
          stop(paste("Error! Invalid data for `DeliveryState`. Must be a string:", `DeliveryState`))
        }
        self$`DeliveryState` <- `DeliveryState`
      }
      if (!is.null(`DeliveryZip`)) {
        if (!(is.character(`DeliveryZip`) && length(`DeliveryZip`) == 1)) {
          stop(paste("Error! Invalid data for `DeliveryZip`. Must be a string:", `DeliveryZip`))
        }
        self$`DeliveryZip` <- `DeliveryZip`
      }
      if (!is.null(`DeliveryTargetFrom`)) {
        if (!is.character(`DeliveryTargetFrom`)) {
          stop(paste("Error! Invalid data for `DeliveryTargetFrom`. Must be a string:", `DeliveryTargetFrom`))
        }
        self$`DeliveryTargetFrom` <- `DeliveryTargetFrom`
      }
      if (!is.null(`DeliveryTargetTo`)) {
        if (!is.character(`DeliveryTargetTo`)) {
          stop(paste("Error! Invalid data for `DeliveryTargetTo`. Must be a string:", `DeliveryTargetTo`))
        }
        self$`DeliveryTargetTo` <- `DeliveryTargetTo`
      }
      if (!is.null(`OrderPackages`)) {
        stopifnot(is.vector(`OrderPackages`), length(`OrderPackages`) != 0)
        sapply(`OrderPackages`, function(x) stopifnot(R6::is.R6(x)))
        self$`OrderPackages` <- `OrderPackages`
      }
      if (!is.null(`RouteID`)) {
        if (!(is.numeric(`RouteID`) && length(`RouteID`) == 1)) {
          stop(paste("Error! Invalid data for `RouteID`. Must be an integer:", `RouteID`))
        }
        self$`RouteID` <- `RouteID`
      }
      if (!is.null(`DriverID`)) {
        if (!(is.numeric(`DriverID`) && length(`DriverID`) == 1)) {
          stop(paste("Error! Invalid data for `DriverID`. Must be an integer:", `DriverID`))
        }
        self$`DriverID` <- `DriverID`
      }
      if (!is.null(`PickupSequenceNo`)) {
        if (!(is.numeric(`PickupSequenceNo`) && length(`PickupSequenceNo`) == 1)) {
          stop(paste("Error! Invalid data for `PickupSequenceNo`. Must be an integer:", `PickupSequenceNo`))
        }
        self$`PickupSequenceNo` <- `PickupSequenceNo`
      }
      if (!is.null(`DeliverySequenceNo`)) {
        if (!(is.numeric(`DeliverySequenceNo`) && length(`DeliverySequenceNo`) == 1)) {
          stop(paste("Error! Invalid data for `DeliverySequenceNo`. Must be an integer:", `DeliverySequenceNo`))
        }
        self$`DeliverySequenceNo` <- `DeliverySequenceNo`
      }
      if (!is.null(`PickupETA`)) {
        if (!(is.character(`PickupETA`) && length(`PickupETA`) == 1)) {
          stop(paste("Error! Invalid data for `PickupETA`. Must be a string:", `PickupETA`))
        }
        self$`PickupETA` <- `PickupETA`
      }
      if (!is.null(`DeliveryETA`)) {
        if (!(is.character(`DeliveryETA`) && length(`DeliveryETA`) == 1)) {
          stop(paste("Error! Invalid data for `DeliveryETA`. Must be a string:", `DeliveryETA`))
        }
        self$`DeliveryETA` <- `DeliveryETA`
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
    #' @return ShipmentOrder as a base R list.
    #' @examples
    #' # convert array of ShipmentOrder (x) to a data frame
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
    #' Convert ShipmentOrder to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShipmentOrderObject <- list()
      if (!is.null(self$`valid`)) {
        ShipmentOrderObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`BatchID`)) {
        ShipmentOrderObject[["BatchID"]] <-
          self$`BatchID`
      }
      if (!is.null(self$`BatchSize`)) {
        ShipmentOrderObject[["BatchSize"]] <-
          self$`BatchSize`
      }
      if (!is.null(self$`OrderTrackingID`)) {
        ShipmentOrderObject[["OrderTrackingID"]] <-
          self$`OrderTrackingID`
      }
      if (!is.null(self$`ClientRefNo`)) {
        ShipmentOrderObject[["ClientRefNo"]] <-
          self$`ClientRefNo`
      }
      if (!is.null(self$`ClientRefNo2`)) {
        ShipmentOrderObject[["ClientRefNo2"]] <-
          self$`ClientRefNo2`
      }
      if (!is.null(self$`HubCode`)) {
        ShipmentOrderObject[["HubCode"]] <-
          self$`HubCode`
      }
      if (!is.null(self$`AccountNo`)) {
        ShipmentOrderObject[["AccountNo"]] <-
          self$`AccountNo`
      }
      if (!is.null(self$`CompanyName`)) {
        ShipmentOrderObject[["CompanyName"]] <-
          self$`CompanyName`
      }
      if (!is.null(self$`VehicleTypeName`)) {
        ShipmentOrderObject[["VehicleTypeName"]] <-
          self$`VehicleTypeName`
      }
      if (!is.null(self$`ServiceTypeName`)) {
        ShipmentOrderObject[["ServiceTypeName"]] <-
          self$`ServiceTypeName`
      }
      if (!is.null(self$`ServiceCode`)) {
        ShipmentOrderObject[["ServiceCode"]] <-
          self$`ServiceCode`
      }
      if (!is.null(self$`Pieces`)) {
        ShipmentOrderObject[["Pieces"]] <-
          self$`Pieces`
      }
      if (!is.null(self$`Weight`)) {
        ShipmentOrderObject[["Weight"]] <-
          self$`Weight`
      }
      if (!is.null(self$`CubicFeet`)) {
        ShipmentOrderObject[["CubicFeet"]] <-
          self$`CubicFeet`
      }
      if (!is.null(self$`PickupCompany`)) {
        ShipmentOrderObject[["PickupCompany"]] <-
          self$`PickupCompany`
      }
      if (!is.null(self$`PickupContact`)) {
        ShipmentOrderObject[["PickupContact"]] <-
          self$`PickupContact`
      }
      if (!is.null(self$`PickupPhone`)) {
        ShipmentOrderObject[["PickupPhone"]] <-
          self$`PickupPhone`
      }
      if (!is.null(self$`PickupStreet`)) {
        ShipmentOrderObject[["PickupStreet"]] <-
          self$`PickupStreet`
      }
      if (!is.null(self$`PickupStreet2`)) {
        ShipmentOrderObject[["PickupStreet2"]] <-
          self$`PickupStreet2`
      }
      if (!is.null(self$`PickupCity`)) {
        ShipmentOrderObject[["PickupCity"]] <-
          self$`PickupCity`
      }
      if (!is.null(self$`PickupState`)) {
        ShipmentOrderObject[["PickupState"]] <-
          self$`PickupState`
      }
      if (!is.null(self$`PickupZip`)) {
        ShipmentOrderObject[["PickupZip"]] <-
          self$`PickupZip`
      }
      if (!is.null(self$`PickupTargetFrom`)) {
        ShipmentOrderObject[["PickupTargetFrom"]] <-
          self$`PickupTargetFrom`
      }
      if (!is.null(self$`PickupTargetTo`)) {
        ShipmentOrderObject[["PickupTargetTo"]] <-
          self$`PickupTargetTo`
      }
      if (!is.null(self$`DeliveryCompany`)) {
        ShipmentOrderObject[["DeliveryCompany"]] <-
          self$`DeliveryCompany`
      }
      if (!is.null(self$`DeliveryContact`)) {
        ShipmentOrderObject[["DeliveryContact"]] <-
          self$`DeliveryContact`
      }
      if (!is.null(self$`DeliveryPhone`)) {
        ShipmentOrderObject[["DeliveryPhone"]] <-
          self$`DeliveryPhone`
      }
      if (!is.null(self$`DeliveryStreet`)) {
        ShipmentOrderObject[["DeliveryStreet"]] <-
          self$`DeliveryStreet`
      }
      if (!is.null(self$`DeliveryStreet2`)) {
        ShipmentOrderObject[["DeliveryStreet2"]] <-
          self$`DeliveryStreet2`
      }
      if (!is.null(self$`DeliveryCity`)) {
        ShipmentOrderObject[["DeliveryCity"]] <-
          self$`DeliveryCity`
      }
      if (!is.null(self$`DeliveryState`)) {
        ShipmentOrderObject[["DeliveryState"]] <-
          self$`DeliveryState`
      }
      if (!is.null(self$`DeliveryZip`)) {
        ShipmentOrderObject[["DeliveryZip"]] <-
          self$`DeliveryZip`
      }
      if (!is.null(self$`DeliveryTargetFrom`)) {
        ShipmentOrderObject[["DeliveryTargetFrom"]] <-
          self$`DeliveryTargetFrom`
      }
      if (!is.null(self$`DeliveryTargetTo`)) {
        ShipmentOrderObject[["DeliveryTargetTo"]] <-
          self$`DeliveryTargetTo`
      }
      if (!is.null(self$`OrderPackages`)) {
        ShipmentOrderObject[["OrderPackages"]] <-
          self$extractSimpleType(self$`OrderPackages`)
      }
      if (!is.null(self$`RouteID`)) {
        ShipmentOrderObject[["RouteID"]] <-
          self$`RouteID`
      }
      if (!is.null(self$`DriverID`)) {
        ShipmentOrderObject[["DriverID"]] <-
          self$`DriverID`
      }
      if (!is.null(self$`PickupSequenceNo`)) {
        ShipmentOrderObject[["PickupSequenceNo"]] <-
          self$`PickupSequenceNo`
      }
      if (!is.null(self$`DeliverySequenceNo`)) {
        ShipmentOrderObject[["DeliverySequenceNo"]] <-
          self$`DeliverySequenceNo`
      }
      if (!is.null(self$`PickupETA`)) {
        ShipmentOrderObject[["PickupETA"]] <-
          self$`PickupETA`
      }
      if (!is.null(self$`DeliveryETA`)) {
        ShipmentOrderObject[["DeliveryETA"]] <-
          self$`DeliveryETA`
      }
      return(ShipmentOrderObject)
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
    #' Deserialize JSON string into an instance of ShipmentOrder
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShipmentOrder
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`BatchID`)) {
        self$`BatchID` <- this_object$`BatchID`
      }
      if (!is.null(this_object$`BatchSize`)) {
        self$`BatchSize` <- this_object$`BatchSize`
      }
      if (!is.null(this_object$`OrderTrackingID`)) {
        self$`OrderTrackingID` <- this_object$`OrderTrackingID`
      }
      if (!is.null(this_object$`ClientRefNo`)) {
        self$`ClientRefNo` <- this_object$`ClientRefNo`
      }
      if (!is.null(this_object$`ClientRefNo2`)) {
        self$`ClientRefNo2` <- this_object$`ClientRefNo2`
      }
      if (!is.null(this_object$`HubCode`)) {
        self$`HubCode` <- this_object$`HubCode`
      }
      if (!is.null(this_object$`AccountNo`)) {
        self$`AccountNo` <- this_object$`AccountNo`
      }
      if (!is.null(this_object$`CompanyName`)) {
        self$`CompanyName` <- this_object$`CompanyName`
      }
      if (!is.null(this_object$`VehicleTypeName`)) {
        self$`VehicleTypeName` <- this_object$`VehicleTypeName`
      }
      if (!is.null(this_object$`ServiceTypeName`)) {
        self$`ServiceTypeName` <- this_object$`ServiceTypeName`
      }
      if (!is.null(this_object$`ServiceCode`)) {
        self$`ServiceCode` <- this_object$`ServiceCode`
      }
      if (!is.null(this_object$`Pieces`)) {
        self$`Pieces` <- this_object$`Pieces`
      }
      if (!is.null(this_object$`Weight`)) {
        self$`Weight` <- this_object$`Weight`
      }
      if (!is.null(this_object$`CubicFeet`)) {
        self$`CubicFeet` <- this_object$`CubicFeet`
      }
      if (!is.null(this_object$`PickupCompany`)) {
        self$`PickupCompany` <- this_object$`PickupCompany`
      }
      if (!is.null(this_object$`PickupContact`)) {
        self$`PickupContact` <- this_object$`PickupContact`
      }
      if (!is.null(this_object$`PickupPhone`)) {
        self$`PickupPhone` <- this_object$`PickupPhone`
      }
      if (!is.null(this_object$`PickupStreet`)) {
        self$`PickupStreet` <- this_object$`PickupStreet`
      }
      if (!is.null(this_object$`PickupStreet2`)) {
        self$`PickupStreet2` <- this_object$`PickupStreet2`
      }
      if (!is.null(this_object$`PickupCity`)) {
        self$`PickupCity` <- this_object$`PickupCity`
      }
      if (!is.null(this_object$`PickupState`)) {
        self$`PickupState` <- this_object$`PickupState`
      }
      if (!is.null(this_object$`PickupZip`)) {
        self$`PickupZip` <- this_object$`PickupZip`
      }
      if (!is.null(this_object$`PickupTargetFrom`)) {
        self$`PickupTargetFrom` <- this_object$`PickupTargetFrom`
      }
      if (!is.null(this_object$`PickupTargetTo`)) {
        self$`PickupTargetTo` <- this_object$`PickupTargetTo`
      }
      if (!is.null(this_object$`DeliveryCompany`)) {
        self$`DeliveryCompany` <- this_object$`DeliveryCompany`
      }
      if (!is.null(this_object$`DeliveryContact`)) {
        self$`DeliveryContact` <- this_object$`DeliveryContact`
      }
      if (!is.null(this_object$`DeliveryPhone`)) {
        self$`DeliveryPhone` <- this_object$`DeliveryPhone`
      }
      if (!is.null(this_object$`DeliveryStreet`)) {
        self$`DeliveryStreet` <- this_object$`DeliveryStreet`
      }
      if (!is.null(this_object$`DeliveryStreet2`)) {
        self$`DeliveryStreet2` <- this_object$`DeliveryStreet2`
      }
      if (!is.null(this_object$`DeliveryCity`)) {
        self$`DeliveryCity` <- this_object$`DeliveryCity`
      }
      if (!is.null(this_object$`DeliveryState`)) {
        self$`DeliveryState` <- this_object$`DeliveryState`
      }
      if (!is.null(this_object$`DeliveryZip`)) {
        self$`DeliveryZip` <- this_object$`DeliveryZip`
      }
      if (!is.null(this_object$`DeliveryTargetFrom`)) {
        self$`DeliveryTargetFrom` <- this_object$`DeliveryTargetFrom`
      }
      if (!is.null(this_object$`DeliveryTargetTo`)) {
        self$`DeliveryTargetTo` <- this_object$`DeliveryTargetTo`
      }
      if (!is.null(this_object$`OrderPackages`)) {
        self$`OrderPackages` <- ApiClient$new()$deserializeObj(this_object$`OrderPackages`, "array[OrderPackage]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`RouteID`)) {
        self$`RouteID` <- this_object$`RouteID`
      }
      if (!is.null(this_object$`DriverID`)) {
        self$`DriverID` <- this_object$`DriverID`
      }
      if (!is.null(this_object$`PickupSequenceNo`)) {
        self$`PickupSequenceNo` <- this_object$`PickupSequenceNo`
      }
      if (!is.null(this_object$`DeliverySequenceNo`)) {
        self$`DeliverySequenceNo` <- this_object$`DeliverySequenceNo`
      }
      if (!is.null(this_object$`PickupETA`)) {
        self$`PickupETA` <- this_object$`PickupETA`
      }
      if (!is.null(this_object$`DeliveryETA`)) {
        self$`DeliveryETA` <- this_object$`DeliveryETA`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ShipmentOrder in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ShipmentOrder
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShipmentOrder
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`BatchID` <- this_object$`BatchID`
      self$`BatchSize` <- this_object$`BatchSize`
      self$`OrderTrackingID` <- this_object$`OrderTrackingID`
      self$`ClientRefNo` <- this_object$`ClientRefNo`
      self$`ClientRefNo2` <- this_object$`ClientRefNo2`
      self$`HubCode` <- this_object$`HubCode`
      self$`AccountNo` <- this_object$`AccountNo`
      self$`CompanyName` <- this_object$`CompanyName`
      self$`VehicleTypeName` <- this_object$`VehicleTypeName`
      self$`ServiceTypeName` <- this_object$`ServiceTypeName`
      self$`ServiceCode` <- this_object$`ServiceCode`
      self$`Pieces` <- this_object$`Pieces`
      self$`Weight` <- this_object$`Weight`
      self$`CubicFeet` <- this_object$`CubicFeet`
      self$`PickupCompany` <- this_object$`PickupCompany`
      self$`PickupContact` <- this_object$`PickupContact`
      self$`PickupPhone` <- this_object$`PickupPhone`
      self$`PickupStreet` <- this_object$`PickupStreet`
      self$`PickupStreet2` <- this_object$`PickupStreet2`
      self$`PickupCity` <- this_object$`PickupCity`
      self$`PickupState` <- this_object$`PickupState`
      self$`PickupZip` <- this_object$`PickupZip`
      self$`PickupTargetFrom` <- this_object$`PickupTargetFrom`
      self$`PickupTargetTo` <- this_object$`PickupTargetTo`
      self$`DeliveryCompany` <- this_object$`DeliveryCompany`
      self$`DeliveryContact` <- this_object$`DeliveryContact`
      self$`DeliveryPhone` <- this_object$`DeliveryPhone`
      self$`DeliveryStreet` <- this_object$`DeliveryStreet`
      self$`DeliveryStreet2` <- this_object$`DeliveryStreet2`
      self$`DeliveryCity` <- this_object$`DeliveryCity`
      self$`DeliveryState` <- this_object$`DeliveryState`
      self$`DeliveryZip` <- this_object$`DeliveryZip`
      self$`DeliveryTargetFrom` <- this_object$`DeliveryTargetFrom`
      self$`DeliveryTargetTo` <- this_object$`DeliveryTargetTo`
      self$`OrderPackages` <- ApiClient$new()$deserializeObj(this_object$`OrderPackages`, "array[OrderPackage]", loadNamespace("openapi"))
      self$`RouteID` <- this_object$`RouteID`
      self$`DriverID` <- this_object$`DriverID`
      self$`PickupSequenceNo` <- this_object$`PickupSequenceNo`
      self$`DeliverySequenceNo` <- this_object$`DeliverySequenceNo`
      self$`PickupETA` <- this_object$`PickupETA`
      self$`DeliveryETA` <- this_object$`DeliveryETA`
      self
    },

    #' @description
    #' Validate JSON input with respect to ShipmentOrder and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ShipmentOrder
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
# ShipmentOrder$unlock()
#
## Below is an example to define the print function
# ShipmentOrder$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ShipmentOrder$lock()

