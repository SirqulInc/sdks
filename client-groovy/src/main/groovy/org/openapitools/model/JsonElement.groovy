package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.JsonArray;
import org.openapitools.model.JsonNull;
import org.openapitools.model.JsonObject;
import org.openapitools.model.JsonPrimitive;

@Canonical
class JsonElement {
    
    Integer asInt
    
    JsonObject asJsonObject
    
    Boolean jsonNull
    
    String asString
    
    Boolean asBoolean
    
    Boolean jsonArray
    
    Boolean jsonObject
    
    Boolean jsonPrimitive
    
    JsonArray asJsonArray
    
    JsonPrimitive asJsonPrimitive
    
    JsonNull asJsonNull
    
    Object asNumber
    
    Double asDouble
    
    Float asFloat
    
    Long asLong
    
    byte[] asByte
    
    String asCharacter
    
    BigDecimal asBigDecimal
    
    Integer asBigInteger
    
    Integer asShort
}
