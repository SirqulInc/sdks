package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Application;

@Canonical
class BlobFile {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Account owner
    
    Application application
    
    String folderUri
    
    String fileName
    
    List<byte[]> _file = new ArrayList<>()
}
