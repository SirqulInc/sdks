package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CategoryResponse._

case class CategoryResponse (
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
externalType: Option[String])

object CategoryResponse {
  import DateTimeCodecs._

  implicit val CategoryResponseCodecJson: CodecJson[CategoryResponse] = CodecJson.derive[CategoryResponse]
  implicit val CategoryResponseDecoder: EntityDecoder[CategoryResponse] = jsonOf[CategoryResponse]
  implicit val CategoryResponseEncoder: EntityEncoder[CategoryResponse] = jsonEncoderOf[CategoryResponse]
}
