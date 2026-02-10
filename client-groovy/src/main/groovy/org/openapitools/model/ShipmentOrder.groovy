package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.OrderPackage;

@Canonical
class ShipmentOrder {
    
    Boolean valid
    
    Integer batchID
    
    Integer batchSize
    
    Double orderTrackingID
    
    String clientRefNo
    
    String clientRefNo2
    
    String hubCode
    
    String accountNo
    
    String companyName
    
    String vehicleTypeName
    
    String serviceTypeName
    
    String serviceCode
    
    Integer pieces
    
    Double weight
    
    Double cubicFeet
    
    String pickupCompany
    
    String pickupContact
    
    String pickupPhone
    
    String pickupStreet
    
    String pickupStreet2
    
    String pickupCity
    
    String pickupState
    
    String pickupZip
    
    Date pickupTargetFrom
    
    Date pickupTargetTo
    
    String deliveryCompany
    
    String deliveryContact
    
    String deliveryPhone
    
    String deliveryStreet
    
    String deliveryStreet2
    
    String deliveryCity
    
    String deliveryState
    
    String deliveryZip
    
    Date deliveryTargetFrom
    
    Date deliveryTargetTo
    
    List<OrderPackage> orderPackages = new ArrayList<>()
    
    Integer routeID
    
    Integer driverID
    
    Integer pickupSequenceNo
    
    Integer deliverySequenceNo
    
    String pickupETA
    
    String deliveryETA
}
