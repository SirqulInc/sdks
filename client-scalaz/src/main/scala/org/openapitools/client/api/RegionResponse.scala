package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RegionResponse._

case class RegionResponse (
  id: Option[Long],
shortName: Option[String],
fullName: Option[String],
parent: Option[RegionResponse],
children: Option[List[RegionResponse]],
postalCodes: Option[List[PostalCodeResponse]],
latitude: Option[Double],
longitude: Option[Double],
active: Option[Boolean],
root: Option[Boolean],
regionClass: Option[String],
start: Option[Long],
end: Option[Long],
polygon: Option[String],
metaData: Option[String],
distance: Option[Double],
versionCode: Option[Integer])

object RegionResponse {
  import DateTimeCodecs._

  implicit val RegionResponseCodecJson: CodecJson[RegionResponse] = CodecJson.derive[RegionResponse]
  implicit val RegionResponseDecoder: EntityDecoder[RegionResponse] = jsonOf[RegionResponse]
  implicit val RegionResponseEncoder: EntityEncoder[RegionResponse] = jsonEncoderOf[RegionResponse]
}
