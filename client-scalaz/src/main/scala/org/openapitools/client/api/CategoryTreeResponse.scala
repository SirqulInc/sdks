package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CategoryTreeResponse._

case class CategoryTreeResponse (
  categoryId: Option[Long],
name: Option[String],
display: Option[String],
subCategoryCount: Option[Long],
parentId: Option[Long],
parentName: Option[String],
description: Option[String],
active: Option[Boolean],
asset: Option[AssetShortResponse],
favoriteId: Option[Long],
favorite: Option[Boolean],
applicationId: Option[Long],
`type`: Option[String],
externalId: Option[String],
externalType: Option[String],
children: Option[List[CategoryTreeResponse]])

object CategoryTreeResponse {
  import DateTimeCodecs._

  implicit val CategoryTreeResponseCodecJson: CodecJson[CategoryTreeResponse] = CodecJson.derive[CategoryTreeResponse]
  implicit val CategoryTreeResponseDecoder: EntityDecoder[CategoryTreeResponse] = jsonOf[CategoryTreeResponse]
  implicit val CategoryTreeResponseEncoder: EntityEncoder[CategoryTreeResponse] = jsonEncoderOf[CategoryTreeResponse]
}
