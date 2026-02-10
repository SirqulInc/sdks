package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountMiniResponse;

@Canonical
class PreviewPersonaResponse {
    
    Long personaId
    
    String title
    
    List<AccountMiniResponse> previewAccounts = new ArrayList<>()
    
    Boolean active
    
    Long date
    
    Integer age
    
    String gender
    
    String gameExperienceLevel
    
    Double latitude
    
    Double longitude
}
