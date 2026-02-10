package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import BiometricRequest._

case class BiometricRequest (
  face: Option[BiometricImage],
fingerprints: Option[List[FingerprintBiometricImage]])

object BiometricRequest {
  import DateTimeCodecs._

  implicit val BiometricRequestCodecJson: CodecJson[BiometricRequest] = CodecJson.derive[BiometricRequest]
  implicit val BiometricRequestDecoder: EntityDecoder[BiometricRequest] = jsonOf[BiometricRequest]
  implicit val BiometricRequestEncoder: EntityEncoder[BiometricRequest] = jsonEncoderOf[BiometricRequest]
}
