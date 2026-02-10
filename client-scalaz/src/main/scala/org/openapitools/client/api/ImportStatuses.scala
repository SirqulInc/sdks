package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ImportStatuses._

case class ImportStatuses (
  statuses: Option[List[ShipmentImportStatus]])

object ImportStatuses {
  import DateTimeCodecs._

  implicit val ImportStatusesCodecJson: CodecJson[ImportStatuses] = CodecJson.derive[ImportStatuses]
  implicit val ImportStatusesDecoder: EntityDecoder[ImportStatuses] = jsonOf[ImportStatuses]
  implicit val ImportStatusesEncoder: EntityEncoder[ImportStatuses] = jsonEncoderOf[ImportStatuses]
}
