package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ServiceHub._

case class ServiceHub (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
name: Option[String],
externalId: Option[String],
business: Option[Retailer],
location: Option[Location],
timeZone: Option[String])

object ServiceHub {
  import DateTimeCodecs._

  implicit val ServiceHubCodecJson: CodecJson[ServiceHub] = CodecJson.derive[ServiceHub]
  implicit val ServiceHubDecoder: EntityDecoder[ServiceHub] = jsonOf[ServiceHub]
  implicit val ServiceHubEncoder: EntityEncoder[ServiceHub] = jsonEncoderOf[ServiceHub]
}
