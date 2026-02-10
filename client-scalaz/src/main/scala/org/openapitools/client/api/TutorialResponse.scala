package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TutorialResponse._

case class TutorialResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
id: Option[Long],
name: Option[String],
description: Option[String],
alignment: Option[String],
image: Option[AssetShortResponse],
orderIndex: Option[Long],
objectType: Option[String],
returning: Option[String])

object TutorialResponse {
  import DateTimeCodecs._

  implicit val TutorialResponseCodecJson: CodecJson[TutorialResponse] = CodecJson.derive[TutorialResponse]
  implicit val TutorialResponseDecoder: EntityDecoder[TutorialResponse] = jsonOf[TutorialResponse]
  implicit val TutorialResponseEncoder: EntityEncoder[TutorialResponse] = jsonEncoderOf[TutorialResponse]
}
