package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AppVersion._

case class AppVersion (
  minorVersion: Option[Integer],
majorVersion: Option[Integer],
versionIndex: Option[Integer])

object AppVersion {
  import DateTimeCodecs._

  implicit val AppVersionCodecJson: CodecJson[AppVersion] = CodecJson.derive[AppVersion]
  implicit val AppVersionDecoder: EntityDecoder[AppVersion] = jsonOf[AppVersion]
  implicit val AppVersionEncoder: EntityEncoder[AppVersion] = jsonEncoderOf[AppVersion]
}
