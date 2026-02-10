package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AccountListResponse._

case class AccountListResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
items: Option[List[AccountResponse]],
count: Option[Integer],
hasMoreResults: Option[Boolean],
start: Option[Integer],
limit: Option[Integer],
countTotal: Option[Long],
returning: Option[String])

object AccountListResponse {
  import DateTimeCodecs._

  implicit val AccountListResponseCodecJson: CodecJson[AccountListResponse] = CodecJson.derive[AccountListResponse]
  implicit val AccountListResponseDecoder: EntityDecoder[AccountListResponse] = jsonOf[AccountListResponse]
  implicit val AccountListResponseEncoder: EntityEncoder[AccountListResponse] = jsonEncoderOf[AccountListResponse]
}
