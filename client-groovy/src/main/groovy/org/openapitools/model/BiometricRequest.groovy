package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.BiometricImage;
import org.openapitools.model.FingerprintBiometricImage;

@Canonical
class BiometricRequest {
    
    BiometricImage face
    
    List<FingerprintBiometricImage> fingerprints = new ArrayList<>()
}
