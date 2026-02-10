package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TrilatCacheRequest._

case class TrilatCacheRequest (
  udid: Option[String],
sourceTime: Option[Long],
minimumSampleSize: Option[Integer],
samples: Option[List[TrilatCacheSample]])

object TrilatCacheRequest {
  import DateTimeCodecs._

  implicit val TrilatCacheRequestCodecJson: CodecJson[TrilatCacheRequest] = CodecJson.derive[TrilatCacheRequest]
  implicit val TrilatCacheRequestDecoder: EntityDecoder[TrilatCacheRequest] = jsonOf[TrilatCacheRequest]
  implicit val TrilatCacheRequestEncoder: EntityEncoder[TrilatCacheRequest] = jsonEncoderOf[TrilatCacheRequest]
}
