package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Location._

case class Location (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
name: Option[String],
territory: Option[Territory],
hub: Option[ServiceHub],
picture: Option[Asset],
notes: Option[List[Note]],
noteCount: Option[Long],
homePhone: Option[String],
cellPhone: Option[String],
cellCarrier: Option[CellCarrier],
businessPhone: Option[String],
businessPhoneExt: Option[String],
faxNumber: Option[String],
timeZone: Option[String],
utcOffset: Option[String],
code501c3: Option[String],
emailAddress: Option[String],
address: Option[Address],
web: Option[String],
program: Option[Program],
visibility: Option[Visibility],
groupingId: Option[String],
destination: Option[Boolean],
dockingTime: Option[Long],
usageCount: Option[Long],
timeFramesAllowed: Option[String],
likes: Option[List[YayOrNay]],
likeCount: Option[Long],
dislikeCount: Option[Long],
ownerDisplay: Option[String],
contentName: Option[String])

object Location {
  import DateTimeCodecs._
  sealed trait Visibility
  case object PUBLIC extends Visibility
  case object `PRIVATE` extends Visibility
  case object FRIENDS extends Visibility

  object Visibility {
    def toVisibility(s: String): Option[Visibility] = s match {
      case "PUBLIC" => Some(PUBLIC)
      case "`PRIVATE`" => Some(`PRIVATE`)
      case "FRIENDS" => Some(FRIENDS)
      case _ => None
    }

    def fromVisibility(x: Visibility): String = x match {
      case PUBLIC => "PUBLIC"
      case `PRIVATE` => "`PRIVATE`"
      case FRIENDS => "FRIENDS"
    }
  }

  implicit val VisibilityEnumEncoder: EncodeJson[Visibility] =
    EncodeJson[Visibility](is => StringEncodeJson(Visibility.fromVisibility(is)))

  implicit val VisibilityEnumDecoder: DecodeJson[Visibility] =
    DecodeJson.optionDecoder[Visibility](n => n.string.flatMap(jStr => Visibility.toVisibility(jStr)), "Visibility failed to de-serialize")

  implicit val LocationCodecJson: CodecJson[Location] = CodecJson.derive[Location]
  implicit val LocationDecoder: EntityDecoder[Location] = jsonOf[Location]
  implicit val LocationEncoder: EntityEncoder[Location] = jsonEncoderOf[Location]
}
