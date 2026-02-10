package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Category._

case class Category (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
shortName: Option[String],
description: Option[String],
`type`: Option[String],
application: Option[Application],
parent: Option[Category],
children: Option[List[Category]],
childrenCount: Option[Long],
display: Option[String],
sqootSlug: Option[String],
asset: Option[Asset],
externalId: Option[String],
externalType: Option[String],
favoriteCount: Option[Long],
root: Option[Category],
tree: Option[String],
parentName: Option[String],
parentId: Option[Long],
applicationId: Option[Long],
secondaryType: Option[String])

object Category {
  import DateTimeCodecs._

  implicit val CategoryCodecJson: CodecJson[Category] = CodecJson.derive[Category]
  implicit val CategoryDecoder: EntityDecoder[Category] = jsonOf[Category]
  implicit val CategoryEncoder: EntityEncoder[Category] = jsonEncoderOf[Category]
}
