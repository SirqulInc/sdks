package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ThirdPartyCredentialResponse._

case class ThirdPartyCredentialResponse (
  thirdPartyCredentialId: Option[Long],
thirdPartyId: Option[String],
thirdPartyName: Option[String],
network: Option[ThirdPartyNetworkShortResponse],
updated: Option[Long],
created: Option[Long])

object ThirdPartyCredentialResponse {
  import DateTimeCodecs._

  implicit val ThirdPartyCredentialResponseCodecJson: CodecJson[ThirdPartyCredentialResponse] = CodecJson.derive[ThirdPartyCredentialResponse]
  implicit val ThirdPartyCredentialResponseDecoder: EntityDecoder[ThirdPartyCredentialResponse] = jsonOf[ThirdPartyCredentialResponse]
  implicit val ThirdPartyCredentialResponseEncoder: EntityEncoder[ThirdPartyCredentialResponse] = jsonEncoderOf[ThirdPartyCredentialResponse]
}
