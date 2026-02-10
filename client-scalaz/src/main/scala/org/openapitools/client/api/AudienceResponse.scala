package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AudienceResponse._

case class AudienceResponse (
  id: Option[Long],
name: Option[String],
latitude: Option[Double],
longitude: Option[Double],
radius: Option[Double],
sendSuggestion: Option[Boolean],
description: Option[String],
active: Option[Boolean],
searchTags: Option[String],
ownerId: Option[Long],
gender: Option[String],
ageGroups: Option[List[AgeGroupResponse]],
categories: Option[List[CategoryResponse]],
applications: Option[List[ApplicationShortResponse]],
devices: Option[List[AudienceDeviceResponse]],
gameExperienceLevel: Option[String],
locations: Option[List[GeocodeLatLngResponse]],
associateType: Option[String],
associateId: Option[Long],
associateDescription: Option[String])

object AudienceResponse {
  import DateTimeCodecs._

  implicit val AudienceResponseCodecJson: CodecJson[AudienceResponse] = CodecJson.derive[AudienceResponse]
  implicit val AudienceResponseDecoder: EntityDecoder[AudienceResponse] = jsonOf[AudienceResponse]
  implicit val AudienceResponseEncoder: EntityEncoder[AudienceResponse] = jsonEncoderOf[AudienceResponse]
}
