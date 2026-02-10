package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BidResponse {
    
    Long bidId
    
    String biddableType
    
    Long biddableId
    
    Double amountPerView
    
    Double amountPerAction
    
    Double currentDailyBudget
    
    Double currentBudget
    
    Long currentBudgetExpiration
    
    Long currentBudgetStart
    
    Double budgetAmount

    enum BudgetScheduleEnum {
    
        DAILY("DAILY"),
        
        WEEKLY("WEEKLY"),
        
        MONTHLY("MONTHLY"),
        
        YEARLY("YEARLY")
    
        private final String value
    
        BudgetScheduleEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    BudgetScheduleEnum budgetSchedule
}
