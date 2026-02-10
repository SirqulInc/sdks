package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.net.URI

import Asset._

case class Asset (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
premigrationId: Option[Long],
newOwnerId: Option[Long],
folderUri: Option[String],
fileName: Option[String],
mediaType: Option[String],
mimeType: Option[String],
metaData: Option[String],
caption: Option[String],
versionCode: Option[Integer],
versionName: Option[String],
likeCount: Option[Long],
dislikeCount: Option[Long],
noteCount: Option[Long],
owner: Option[Account],
notes: Option[List[Note]],
likes: Option[List[YayOrNay]],
attachedAssetId: Option[Long],
flags: Option[List[Flag]],
flagCount: Option[Long],
flagThreshold: Option[FlagThreshold],
defaultAlbumType: Option[DefaultAlbumType],
album: Option[Album],
assignment: Option[Assignment],
application: Option[Application],
display: Option[String],
appKey: Option[String],
billableId: Option[Long],
subType: Option[String],
contentName: Option[String],
urifolder: Option[URI],
defaultThreshold: Option[Long])

object Asset {
  import DateTimeCodecs._
  sealed trait DefaultAlbumType
  case object PROFILE extends DefaultAlbumType
  case object DEFAULTPROFILEAVATAR extends DefaultAlbumType
  case object DEFAULTAPPICON extends DefaultAlbumType
  case object DEFAULTAPPLOGO extends DefaultAlbumType

  object DefaultAlbumType {
    def toDefaultAlbumType(s: String): Option[DefaultAlbumType] = s match {
      case "PROFILE" => Some(PROFILE)
      case "DEFAULTPROFILEAVATAR" => Some(DEFAULTPROFILEAVATAR)
      case "DEFAULTAPPICON" => Some(DEFAULTAPPICON)
      case "DEFAULTAPPLOGO" => Some(DEFAULTAPPLOGO)
      case _ => None
    }

    def fromDefaultAlbumType(x: DefaultAlbumType): String = x match {
      case PROFILE => "PROFILE"
      case DEFAULTPROFILEAVATAR => "DEFAULTPROFILEAVATAR"
      case DEFAULTAPPICON => "DEFAULTAPPICON"
      case DEFAULTAPPLOGO => "DEFAULTAPPLOGO"
    }
  }

  implicit val DefaultAlbumTypeEnumEncoder: EncodeJson[DefaultAlbumType] =
    EncodeJson[DefaultAlbumType](is => StringEncodeJson(DefaultAlbumType.fromDefaultAlbumType(is)))

  implicit val DefaultAlbumTypeEnumDecoder: DecodeJson[DefaultAlbumType] =
    DecodeJson.optionDecoder[DefaultAlbumType](n => n.string.flatMap(jStr => DefaultAlbumType.toDefaultAlbumType(jStr)), "DefaultAlbumType failed to de-serialize")

  implicit val AssetCodecJson: CodecJson[Asset] = CodecJson.derive[Asset]
  implicit val AssetDecoder: EntityDecoder[Asset] = jsonOf[Asset]
  implicit val AssetEncoder: EntityEncoder[Asset] = jsonEncoderOf[Asset]
}
