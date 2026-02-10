package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.JsonArray;
import org.openapitools.model.JsonNull;
import org.openapitools.model.JsonObject;

@Canonical
class JsonPrimitive {
    
    Integer asInt
    
    Boolean number
    
    Boolean _boolean
    
    String asString
    
    Boolean asBoolean
    
    Object asNumber
    
    Double asDouble
    
    Float asFloat
    
    Long asLong
    
    byte[] asByte
    
    String asCharacter
    
    BigDecimal asBigDecimal
    
    Integer asBigInteger
    
    Integer asShort
    
    Boolean string
    
    JsonObject asJsonObject
    
    Boolean jsonNull
    
    Boolean jsonArray
    
    Boolean jsonObject
    
    Boolean jsonPrimitive
    
    JsonArray asJsonArray
    
    JsonPrimitive asJsonPrimitive
    
    JsonNull asJsonNull
}
