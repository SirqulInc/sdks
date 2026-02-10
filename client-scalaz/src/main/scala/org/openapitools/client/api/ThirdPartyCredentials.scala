package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ThirdPartyCredentials._

case class ThirdPartyCredentials (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
account: Option[Account],
thirdPartyNetwork: Option[ThirdPartyNetwork],
thirdPartyUID: Option[Long],
thirdPartyId: Option[String],
thirdPartyToken: Option[String],
thirdPartySecret: Option[String],
thirdPartyName: Option[String],
thirdPartyUnencryptedToken: Option[String])

object ThirdPartyCredentials {
  import DateTimeCodecs._

  implicit val ThirdPartyCredentialsCodecJson: CodecJson[ThirdPartyCredentials] = CodecJson.derive[ThirdPartyCredentials]
  implicit val ThirdPartyCredentialsDecoder: EntityDecoder[ThirdPartyCredentials] = jsonOf[ThirdPartyCredentials]
  implicit val ThirdPartyCredentialsEncoder: EntityEncoder[ThirdPartyCredentials] = jsonEncoderOf[ThirdPartyCredentials]
}
