package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ListCountResponse._

case class ListCountResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
locationOffersCount: Option[Long],
instantOffersCount: Option[Long],
allOffersCount: Option[Long],
returning: Option[String])

object ListCountResponse {
  import DateTimeCodecs._

  implicit val ListCountResponseCodecJson: CodecJson[ListCountResponse] = CodecJson.derive[ListCountResponse]
  implicit val ListCountResponseDecoder: EntityDecoder[ListCountResponse] = jsonOf[ListCountResponse]
  implicit val ListCountResponseEncoder: EntityEncoder[ListCountResponse] = jsonEncoderOf[ListCountResponse]
}
