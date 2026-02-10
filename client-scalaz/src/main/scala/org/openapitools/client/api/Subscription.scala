package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Subscription._

case class Subscription (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
subscriptionPlan: Option[SubscriptionPlan],
remoteSubscriptionId: Option[String],
promoCode: Option[String],
failed: Option[Boolean],
message: Option[Message])

object Subscription {
  import DateTimeCodecs._
  sealed trait Message
  case object `400` extends Message
  case object `403` extends Message
  case object `500` extends Message
  case object `600` extends Message
  case object `1000` extends Message
  case object `1001` extends Message
  case object `1002` extends Message
  case object `1003` extends Message
  case object `1004` extends Message
  case object `1005` extends Message
  case object `1006` extends Message
  case object `1007` extends Message
  case object `1008` extends Message
  case object `1009` extends Message
  case object `1010` extends Message
  case object `1011` extends Message
  case object `1012` extends Message
  case object `1013` extends Message
  case object `1014` extends Message
  case object `1015` extends Message
  case object `1016` extends Message
  case object `1017` extends Message
  case object `1018` extends Message
  case object `1019` extends Message
  case object `1020` extends Message
  case object `1021` extends Message
  case object `1022` extends Message
  case object `1023` extends Message
  case object `1024` extends Message
  case object `1025` extends Message
  case object `1026` extends Message
  case object `1027` extends Message
  case object `1028` extends Message
  case object `1029` extends Message
  case object `1030` extends Message
  case object `1031` extends Message
  case object `1032` extends Message
  case object `1033` extends Message
  case object `1034` extends Message
  case object `1035` extends Message
  case object `1036` extends Message
  case object `1037` extends Message
  case object `1038` extends Message
  case object `1100` extends Message
  case object `1101` extends Message
  case object `1102` extends Message
  case object `1103` extends Message
  case object `1104` extends Message
  case object `1105` extends Message
  case object `1106` extends Message
  case object `1107` extends Message
  case object `1108` extends Message
  case object `1109` extends Message
  case object `1110` extends Message
  case object `2000` extends Message
  case object `2001` extends Message
  case object `2002` extends Message
  case object `2003` extends Message
  case object `2004` extends Message
  case object `2005` extends Message
  case object `2006` extends Message
  case object `2007` extends Message
  case object `2008` extends Message
  case object `2009` extends Message
  case object `2010` extends Message
  case object `2011` extends Message
  case object `2012` extends Message
  case object `2013` extends Message
  case object `2100` extends Message
  case object `2101` extends Message
  case object `2102` extends Message
  case object `2103` extends Message
  case object `2200` extends Message
  case object `2201` extends Message
  case object `2202` extends Message
  case object `2203` extends Message
  case object `2204` extends Message
  case object `2205` extends Message
  case object `2206` extends Message
  case object `2207` extends Message
  case object `2208` extends Message
  case object `2209` extends Message
  case object `2210` extends Message
  case object `2211` extends Message
  case object `2212` extends Message
  case object `2300` extends Message
  case object `2301` extends Message
  case object `2302` extends Message
  case object `2303` extends Message
  case object `2400` extends Message
  case object `2401` extends Message
  case object `2402` extends Message
  case object `2500` extends Message
  case object `2501` extends Message
  case object `2502` extends Message
  case object `2503` extends Message
  case object `2504` extends Message
  case object `2505` extends Message
  case object `2506` extends Message
  case object `2507` extends Message
  case object `2508` extends Message
  case object `2509` extends Message
  case object `2510` extends Message
  case object `2511` extends Message
  case object `2512` extends Message
  case object `2513` extends Message
  case object `2514` extends Message
  case object `2515` extends Message
  case object `2600` extends Message
  case object `2601` extends Message
  case object `2602` extends Message
  case object `2603` extends Message
  case object `2604` extends Message
  case object `2700` extends Message
  case object `2701` extends Message
  case object `2702` extends Message
  case object `2703` extends Message
  case object `2704` extends Message
  case object `2705` extends Message
  case object `2800` extends Message
  case object `2801` extends Message
  case object `2900` extends Message
  case object `2901` extends Message
  case object `2902` extends Message
  case object `2903` extends Message
  case object `2904` extends Message
  case object `2905` extends Message
  case object `2906` extends Message
  case object `3000` extends Message
  case object `3001` extends Message
  case object `3002` extends Message
  case object `3100` extends Message
  case object `3101` extends Message
  case object `3102` extends Message
  case object `3103` extends Message
  case object `3104` extends Message
  case object `3200` extends Message
  case object `3201` extends Message
  case object `3300` extends Message
  case object `3301` extends Message
  case object `3302` extends Message
  case object `3303` extends Message
  case object `3304` extends Message
  case object `3305` extends Message
  case object `3306` extends Message
  case object `3307` extends Message
  case object `3308` extends Message
  case object `3309` extends Message
  case object `3310` extends Message
  case object `3311` extends Message
  case object `3312` extends Message
  case object `3313` extends Message
  case object `3314` extends Message
  case object `3315` extends Message
  case object `3316` extends Message
  case object `3400` extends Message
  case object `3401` extends Message
  case object `3500` extends Message
  case object `3501` extends Message
  case object `3502` extends Message
  case object `3503` extends Message
  case object `3504` extends Message
  case object `3505` extends Message
  case object `3506` extends Message
  case object `3507` extends Message
  case object `3508` extends Message
  case object `3600` extends Message
  case object `3601` extends Message
  case object `3602` extends Message
  case object `3603` extends Message
  case object `3700` extends Message
  case object `3701` extends Message
  case object `3702` extends Message
  case object `3703` extends Message
  case object `3800` extends Message
  case object `3801` extends Message
  case object `3802` extends Message
  case object `3803` extends Message
  case object `3804` extends Message
  case object `3805` extends Message
  case object `3806` extends Message
  case object `3807` extends Message
  case object `3900` extends Message
  case object `3901` extends Message
  case object `3902` extends Message
  case object `3903` extends Message
  case object `3904` extends Message
  case object `3905` extends Message
  case object `4000` extends Message
  case object `4001` extends Message
  case object `4002` extends Message
  case object `4100` extends Message
  case object `4101` extends Message
  case object `4102` extends Message
  case object `4103` extends Message
  case object `4200` extends Message
  case object `4201` extends Message
  case object `4202` extends Message
  case object `4203` extends Message
  case object `4204` extends Message
  case object `4205` extends Message
  case object `4300` extends Message
  case object `4301` extends Message
  case object `4302` extends Message
  case object `4303` extends Message
  case object `4304` extends Message
  case object `4400` extends Message
  case object `4401` extends Message
  case object `4500` extends Message
  case object `4501` extends Message
  case object `4502` extends Message
  case object `4503` extends Message
  case object `4504` extends Message
  case object `4505` extends Message
  case object `4600` extends Message
  case object `4700` extends Message
  case object `4701` extends Message
  case object `4702` extends Message
  case object `4800` extends Message
  case object `4801` extends Message
  case object `4900` extends Message
  case object `4901` extends Message
  case object `4902` extends Message
  case object `4903` extends Message
  case object `4904` extends Message
  case object `4905` extends Message
  case object `4906` extends Message
  case object `5000` extends Message
  case object `5001` extends Message
  case object `5002` extends Message
  case object `5003` extends Message
  case object `5100` extends Message
  case object `5101` extends Message
  case object `5102` extends Message
  case object `5103` extends Message
  case object `5104` extends Message
  case object `5200` extends Message
  case object `5300` extends Message
  case object `5301` extends Message
  case object `5302` extends Message
  case object `5303` extends Message
  case object `5400` extends Message
  case object `5500` extends Message
  case object `5501` extends Message
  case object `5600` extends Message
  case object `5601` extends Message
  case object `5602` extends Message
  case object `5603` extends Message
  case object `5604` extends Message
  case object `5606` extends Message
  case object `5607` extends Message
  case object `5608` extends Message
  case object `5609` extends Message
  case object `5700` extends Message
  case object `5701` extends Message
  case object `5702` extends Message
  case object `5703` extends Message
  case object `5704` extends Message
  case object `5705` extends Message
  case object `5800` extends Message
  case object `5801` extends Message
  case object `5802` extends Message
  case object `5803` extends Message
  case object `5804` extends Message
  case object `5805` extends Message
  case object `5806` extends Message
  case object `5807` extends Message
  case object `5900` extends Message
  case object `5901` extends Message
  case object `5902` extends Message
  case object `5903` extends Message
  case object `5904` extends Message
  case object `5905` extends Message
  case object `5906` extends Message
  case object `5907` extends Message
  case object `5908` extends Message
  case object `5909` extends Message
  case object `5910` extends Message
  case object `5911` extends Message
  case object `5912` extends Message
  case object `5913` extends Message
  case object `5914` extends Message
  case object `5915` extends Message
  case object `5916` extends Message
  case object `6000` extends Message
  case object `6001` extends Message
  case object `6100` extends Message
  case object `6101` extends Message
  case object `6102` extends Message
  case object `6103` extends Message
  case object `6200` extends Message
  case object `6201` extends Message
  case object `6202` extends Message
  case object `6300` extends Message
  case object `6301` extends Message
  case object `6302` extends Message
  case object `6303` extends Message
  case object `6304` extends Message
  case object `6305` extends Message
  case object `6306` extends Message
  case object `6307` extends Message
  case object `6308` extends Message
  case object `6309` extends Message
  case object `6310` extends Message
  case object `6311` extends Message
  case object `6312` extends Message
  case object `6400` extends Message
  case object `6401` extends Message
  case object `6402` extends Message
  case object `6403` extends Message
  case object `6404` extends Message
  case object `6500` extends Message
  case object `6501` extends Message
  case object `6502` extends Message
  case object `6600` extends Message
  case object `6601` extends Message
  case object `6602` extends Message
  case object `6603` extends Message
  case object `6700` extends Message
  case object `6701` extends Message
  case object `6702` extends Message
  case object `6703` extends Message
  case object `6704` extends Message
  case object `6705` extends Message
  case object `6706` extends Message
  case object `6707` extends Message
  case object `6708` extends Message
  case object `6709` extends Message
  case object `6800` extends Message
  case object `6801` extends Message
  case object `6802` extends Message
  case object `6803` extends Message
  case object `6900` extends Message
  case object `6901` extends Message
  case object `6902` extends Message
  case object `6903` extends Message
  case object `7000` extends Message
  case object `7100` extends Message
  case object `7101` extends Message
  case object `7102` extends Message
  case object `7200` extends Message
  case object `7201` extends Message
  case object `7300` extends Message
  case object `7301` extends Message
  case object `7302` extends Message
  case object `7303` extends Message
  case object `7400` extends Message
  case object `7401` extends Message
  case object `7402` extends Message
  case object `7403` extends Message
  case object `7404` extends Message
  case object `7405` extends Message
  case object `7500` extends Message
  case object `7501` extends Message
  case object `7600` extends Message
  case object `7601` extends Message
  case object `7602` extends Message
  case object `7603` extends Message
  case object `7604` extends Message
  case object `7605` extends Message
  case object `7606` extends Message
  case object `7700` extends Message
  case object `7701` extends Message
  case object `7702` extends Message
  case object `7703` extends Message
  case object `7704` extends Message
  case object `7705` extends Message
  case object `7706` extends Message
  case object `7707` extends Message
  case object `7800` extends Message
  case object `7801` extends Message
  case object `7802` extends Message
  case object `7803` extends Message
  case object `7804` extends Message
  case object `7805` extends Message
  case object `7806` extends Message
  case object `7807` extends Message
  case object `7808` extends Message
  case object `7809` extends Message
  case object `7810` extends Message
  case object `7811` extends Message
  case object `7812` extends Message
  case object `7813` extends Message
  case object `7814` extends Message
  case object `7815` extends Message
  case object `7817` extends Message
  case object `7818` extends Message
  case object `7819` extends Message
  case object `7900` extends Message
  case object `7901` extends Message
  case object `7902` extends Message
  case object `7903` extends Message
  case object `7904` extends Message
  case object `7905` extends Message
  case object `7906` extends Message
  case object `8000` extends Message
  case object `8001` extends Message
  case object `8100` extends Message
  case object `8101` extends Message
  case object `8102` extends Message
  case object `8103` extends Message
  case object `8104` extends Message
  case object `8105` extends Message
  case object `8107` extends Message
  case object `8108` extends Message
  case object `8200` extends Message
  case object `8201` extends Message
  case object `10000` extends Message
  case object `10001` extends Message
  case object `10002` extends Message
  case object `10003` extends Message
  case object `10004` extends Message
  case object `10005` extends Message
  case object `10006` extends Message
  case object `10020` extends Message
  case object `10021` extends Message
  case object `10022` extends Message
  case object `10040` extends Message
  case object `10041` extends Message
  case object `10042` extends Message
  case object `10043` extends Message
  case object `11000` extends Message
  case object `11001` extends Message
  case object `11002` extends Message
  case object `11003` extends Message
  case object `11004` extends Message
  case object `11005` extends Message
  case object `12000` extends Message
  case object `12001` extends Message
  case object `12002` extends Message
  case object `12003` extends Message
  case object `12004` extends Message
  case object `12005` extends Message
  case object `13000` extends Message
  case object `13001` extends Message
  case object `13002` extends Message
  case object `14000` extends Message
  case object `14001` extends Message
  case object `14002` extends Message
  case object `14003` extends Message
  case object `14004` extends Message
  case object `14005` extends Message
  case object `14006` extends Message
  case object `14007` extends Message
  case object `14008` extends Message
  case object `14009` extends Message
  case object `14010` extends Message
  case object `14011` extends Message
  case object `14012` extends Message

  object Message {
    def toMessage(s: String): Option[Message] = s match {
      case "`400`" => Some(`400`)
      case "`403`" => Some(`403`)
      case "`500`" => Some(`500`)
      case "`600`" => Some(`600`)
      case "`1000`" => Some(`1000`)
      case "`1001`" => Some(`1001`)
      case "`1002`" => Some(`1002`)
      case "`1003`" => Some(`1003`)
      case "`1004`" => Some(`1004`)
      case "`1005`" => Some(`1005`)
      case "`1006`" => Some(`1006`)
      case "`1007`" => Some(`1007`)
      case "`1008`" => Some(`1008`)
      case "`1009`" => Some(`1009`)
      case "`1010`" => Some(`1010`)
      case "`1011`" => Some(`1011`)
      case "`1012`" => Some(`1012`)
      case "`1013`" => Some(`1013`)
      case "`1014`" => Some(`1014`)
      case "`1015`" => Some(`1015`)
      case "`1016`" => Some(`1016`)
      case "`1017`" => Some(`1017`)
      case "`1018`" => Some(`1018`)
      case "`1019`" => Some(`1019`)
      case "`1020`" => Some(`1020`)
      case "`1021`" => Some(`1021`)
      case "`1022`" => Some(`1022`)
      case "`1023`" => Some(`1023`)
      case "`1024`" => Some(`1024`)
      case "`1025`" => Some(`1025`)
      case "`1026`" => Some(`1026`)
      case "`1027`" => Some(`1027`)
      case "`1028`" => Some(`1028`)
      case "`1029`" => Some(`1029`)
      case "`1030`" => Some(`1030`)
      case "`1031`" => Some(`1031`)
      case "`1032`" => Some(`1032`)
      case "`1033`" => Some(`1033`)
      case "`1034`" => Some(`1034`)
      case "`1035`" => Some(`1035`)
      case "`1036`" => Some(`1036`)
      case "`1037`" => Some(`1037`)
      case "`1038`" => Some(`1038`)
      case "`1100`" => Some(`1100`)
      case "`1101`" => Some(`1101`)
      case "`1102`" => Some(`1102`)
      case "`1103`" => Some(`1103`)
      case "`1104`" => Some(`1104`)
      case "`1105`" => Some(`1105`)
      case "`1106`" => Some(`1106`)
      case "`1107`" => Some(`1107`)
      case "`1108`" => Some(`1108`)
      case "`1109`" => Some(`1109`)
      case "`1110`" => Some(`1110`)
      case "`2000`" => Some(`2000`)
      case "`2001`" => Some(`2001`)
      case "`2002`" => Some(`2002`)
      case "`2003`" => Some(`2003`)
      case "`2004`" => Some(`2004`)
      case "`2005`" => Some(`2005`)
      case "`2006`" => Some(`2006`)
      case "`2007`" => Some(`2007`)
      case "`2008`" => Some(`2008`)
      case "`2009`" => Some(`2009`)
      case "`2010`" => Some(`2010`)
      case "`2011`" => Some(`2011`)
      case "`2012`" => Some(`2012`)
      case "`2013`" => Some(`2013`)
      case "`2100`" => Some(`2100`)
      case "`2101`" => Some(`2101`)
      case "`2102`" => Some(`2102`)
      case "`2103`" => Some(`2103`)
      case "`2200`" => Some(`2200`)
      case "`2201`" => Some(`2201`)
      case "`2202`" => Some(`2202`)
      case "`2203`" => Some(`2203`)
      case "`2204`" => Some(`2204`)
      case "`2205`" => Some(`2205`)
      case "`2206`" => Some(`2206`)
      case "`2207`" => Some(`2207`)
      case "`2208`" => Some(`2208`)
      case "`2209`" => Some(`2209`)
      case "`2210`" => Some(`2210`)
      case "`2211`" => Some(`2211`)
      case "`2212`" => Some(`2212`)
      case "`2300`" => Some(`2300`)
      case "`2301`" => Some(`2301`)
      case "`2302`" => Some(`2302`)
      case "`2303`" => Some(`2303`)
      case "`2400`" => Some(`2400`)
      case "`2401`" => Some(`2401`)
      case "`2402`" => Some(`2402`)
      case "`2500`" => Some(`2500`)
      case "`2501`" => Some(`2501`)
      case "`2502`" => Some(`2502`)
      case "`2503`" => Some(`2503`)
      case "`2504`" => Some(`2504`)
      case "`2505`" => Some(`2505`)
      case "`2506`" => Some(`2506`)
      case "`2507`" => Some(`2507`)
      case "`2508`" => Some(`2508`)
      case "`2509`" => Some(`2509`)
      case "`2510`" => Some(`2510`)
      case "`2511`" => Some(`2511`)
      case "`2512`" => Some(`2512`)
      case "`2513`" => Some(`2513`)
      case "`2514`" => Some(`2514`)
      case "`2515`" => Some(`2515`)
      case "`2600`" => Some(`2600`)
      case "`2601`" => Some(`2601`)
      case "`2602`" => Some(`2602`)
      case "`2603`" => Some(`2603`)
      case "`2604`" => Some(`2604`)
      case "`2700`" => Some(`2700`)
      case "`2701`" => Some(`2701`)
      case "`2702`" => Some(`2702`)
      case "`2703`" => Some(`2703`)
      case "`2704`" => Some(`2704`)
      case "`2705`" => Some(`2705`)
      case "`2800`" => Some(`2800`)
      case "`2801`" => Some(`2801`)
      case "`2900`" => Some(`2900`)
      case "`2901`" => Some(`2901`)
      case "`2902`" => Some(`2902`)
      case "`2903`" => Some(`2903`)
      case "`2904`" => Some(`2904`)
      case "`2905`" => Some(`2905`)
      case "`2906`" => Some(`2906`)
      case "`3000`" => Some(`3000`)
      case "`3001`" => Some(`3001`)
      case "`3002`" => Some(`3002`)
      case "`3100`" => Some(`3100`)
      case "`3101`" => Some(`3101`)
      case "`3102`" => Some(`3102`)
      case "`3103`" => Some(`3103`)
      case "`3104`" => Some(`3104`)
      case "`3200`" => Some(`3200`)
      case "`3201`" => Some(`3201`)
      case "`3300`" => Some(`3300`)
      case "`3301`" => Some(`3301`)
      case "`3302`" => Some(`3302`)
      case "`3303`" => Some(`3303`)
      case "`3304`" => Some(`3304`)
      case "`3305`" => Some(`3305`)
      case "`3306`" => Some(`3306`)
      case "`3307`" => Some(`3307`)
      case "`3308`" => Some(`3308`)
      case "`3309`" => Some(`3309`)
      case "`3310`" => Some(`3310`)
      case "`3311`" => Some(`3311`)
      case "`3312`" => Some(`3312`)
      case "`3313`" => Some(`3313`)
      case "`3314`" => Some(`3314`)
      case "`3315`" => Some(`3315`)
      case "`3316`" => Some(`3316`)
      case "`3400`" => Some(`3400`)
      case "`3401`" => Some(`3401`)
      case "`3500`" => Some(`3500`)
      case "`3501`" => Some(`3501`)
      case "`3502`" => Some(`3502`)
      case "`3503`" => Some(`3503`)
      case "`3504`" => Some(`3504`)
      case "`3505`" => Some(`3505`)
      case "`3506`" => Some(`3506`)
      case "`3507`" => Some(`3507`)
      case "`3508`" => Some(`3508`)
      case "`3600`" => Some(`3600`)
      case "`3601`" => Some(`3601`)
      case "`3602`" => Some(`3602`)
      case "`3603`" => Some(`3603`)
      case "`3700`" => Some(`3700`)
      case "`3701`" => Some(`3701`)
      case "`3702`" => Some(`3702`)
      case "`3703`" => Some(`3703`)
      case "`3800`" => Some(`3800`)
      case "`3801`" => Some(`3801`)
      case "`3802`" => Some(`3802`)
      case "`3803`" => Some(`3803`)
      case "`3804`" => Some(`3804`)
      case "`3805`" => Some(`3805`)
      case "`3806`" => Some(`3806`)
      case "`3807`" => Some(`3807`)
      case "`3900`" => Some(`3900`)
      case "`3901`" => Some(`3901`)
      case "`3902`" => Some(`3902`)
      case "`3903`" => Some(`3903`)
      case "`3904`" => Some(`3904`)
      case "`3905`" => Some(`3905`)
      case "`4000`" => Some(`4000`)
      case "`4001`" => Some(`4001`)
      case "`4002`" => Some(`4002`)
      case "`4100`" => Some(`4100`)
      case "`4101`" => Some(`4101`)
      case "`4102`" => Some(`4102`)
      case "`4103`" => Some(`4103`)
      case "`4200`" => Some(`4200`)
      case "`4201`" => Some(`4201`)
      case "`4202`" => Some(`4202`)
      case "`4203`" => Some(`4203`)
      case "`4204`" => Some(`4204`)
      case "`4205`" => Some(`4205`)
      case "`4300`" => Some(`4300`)
      case "`4301`" => Some(`4301`)
      case "`4302`" => Some(`4302`)
      case "`4303`" => Some(`4303`)
      case "`4304`" => Some(`4304`)
      case "`4400`" => Some(`4400`)
      case "`4401`" => Some(`4401`)
      case "`4500`" => Some(`4500`)
      case "`4501`" => Some(`4501`)
      case "`4502`" => Some(`4502`)
      case "`4503`" => Some(`4503`)
      case "`4504`" => Some(`4504`)
      case "`4505`" => Some(`4505`)
      case "`4600`" => Some(`4600`)
      case "`4700`" => Some(`4700`)
      case "`4701`" => Some(`4701`)
      case "`4702`" => Some(`4702`)
      case "`4800`" => Some(`4800`)
      case "`4801`" => Some(`4801`)
      case "`4900`" => Some(`4900`)
      case "`4901`" => Some(`4901`)
      case "`4902`" => Some(`4902`)
      case "`4903`" => Some(`4903`)
      case "`4904`" => Some(`4904`)
      case "`4905`" => Some(`4905`)
      case "`4906`" => Some(`4906`)
      case "`5000`" => Some(`5000`)
      case "`5001`" => Some(`5001`)
      case "`5002`" => Some(`5002`)
      case "`5003`" => Some(`5003`)
      case "`5100`" => Some(`5100`)
      case "`5101`" => Some(`5101`)
      case "`5102`" => Some(`5102`)
      case "`5103`" => Some(`5103`)
      case "`5104`" => Some(`5104`)
      case "`5200`" => Some(`5200`)
      case "`5300`" => Some(`5300`)
      case "`5301`" => Some(`5301`)
      case "`5302`" => Some(`5302`)
      case "`5303`" => Some(`5303`)
      case "`5400`" => Some(`5400`)
      case "`5500`" => Some(`5500`)
      case "`5501`" => Some(`5501`)
      case "`5600`" => Some(`5600`)
      case "`5601`" => Some(`5601`)
      case "`5602`" => Some(`5602`)
      case "`5603`" => Some(`5603`)
      case "`5604`" => Some(`5604`)
      case "`5606`" => Some(`5606`)
      case "`5607`" => Some(`5607`)
      case "`5608`" => Some(`5608`)
      case "`5609`" => Some(`5609`)
      case "`5700`" => Some(`5700`)
      case "`5701`" => Some(`5701`)
      case "`5702`" => Some(`5702`)
      case "`5703`" => Some(`5703`)
      case "`5704`" => Some(`5704`)
      case "`5705`" => Some(`5705`)
      case "`5800`" => Some(`5800`)
      case "`5801`" => Some(`5801`)
      case "`5802`" => Some(`5802`)
      case "`5803`" => Some(`5803`)
      case "`5804`" => Some(`5804`)
      case "`5805`" => Some(`5805`)
      case "`5806`" => Some(`5806`)
      case "`5807`" => Some(`5807`)
      case "`5900`" => Some(`5900`)
      case "`5901`" => Some(`5901`)
      case "`5902`" => Some(`5902`)
      case "`5903`" => Some(`5903`)
      case "`5904`" => Some(`5904`)
      case "`5905`" => Some(`5905`)
      case "`5906`" => Some(`5906`)
      case "`5907`" => Some(`5907`)
      case "`5908`" => Some(`5908`)
      case "`5909`" => Some(`5909`)
      case "`5910`" => Some(`5910`)
      case "`5911`" => Some(`5911`)
      case "`5912`" => Some(`5912`)
      case "`5913`" => Some(`5913`)
      case "`5914`" => Some(`5914`)
      case "`5915`" => Some(`5915`)
      case "`5916`" => Some(`5916`)
      case "`6000`" => Some(`6000`)
      case "`6001`" => Some(`6001`)
      case "`6100`" => Some(`6100`)
      case "`6101`" => Some(`6101`)
      case "`6102`" => Some(`6102`)
      case "`6103`" => Some(`6103`)
      case "`6200`" => Some(`6200`)
      case "`6201`" => Some(`6201`)
      case "`6202`" => Some(`6202`)
      case "`6300`" => Some(`6300`)
      case "`6301`" => Some(`6301`)
      case "`6302`" => Some(`6302`)
      case "`6303`" => Some(`6303`)
      case "`6304`" => Some(`6304`)
      case "`6305`" => Some(`6305`)
      case "`6306`" => Some(`6306`)
      case "`6307`" => Some(`6307`)
      case "`6308`" => Some(`6308`)
      case "`6309`" => Some(`6309`)
      case "`6310`" => Some(`6310`)
      case "`6311`" => Some(`6311`)
      case "`6312`" => Some(`6312`)
      case "`6400`" => Some(`6400`)
      case "`6401`" => Some(`6401`)
      case "`6402`" => Some(`6402`)
      case "`6403`" => Some(`6403`)
      case "`6404`" => Some(`6404`)
      case "`6500`" => Some(`6500`)
      case "`6501`" => Some(`6501`)
      case "`6502`" => Some(`6502`)
      case "`6600`" => Some(`6600`)
      case "`6601`" => Some(`6601`)
      case "`6602`" => Some(`6602`)
      case "`6603`" => Some(`6603`)
      case "`6700`" => Some(`6700`)
      case "`6701`" => Some(`6701`)
      case "`6702`" => Some(`6702`)
      case "`6703`" => Some(`6703`)
      case "`6704`" => Some(`6704`)
      case "`6705`" => Some(`6705`)
      case "`6706`" => Some(`6706`)
      case "`6707`" => Some(`6707`)
      case "`6708`" => Some(`6708`)
      case "`6709`" => Some(`6709`)
      case "`6800`" => Some(`6800`)
      case "`6801`" => Some(`6801`)
      case "`6802`" => Some(`6802`)
      case "`6803`" => Some(`6803`)
      case "`6900`" => Some(`6900`)
      case "`6901`" => Some(`6901`)
      case "`6902`" => Some(`6902`)
      case "`6903`" => Some(`6903`)
      case "`7000`" => Some(`7000`)
      case "`7100`" => Some(`7100`)
      case "`7101`" => Some(`7101`)
      case "`7102`" => Some(`7102`)
      case "`7200`" => Some(`7200`)
      case "`7201`" => Some(`7201`)
      case "`7300`" => Some(`7300`)
      case "`7301`" => Some(`7301`)
      case "`7302`" => Some(`7302`)
      case "`7303`" => Some(`7303`)
      case "`7400`" => Some(`7400`)
      case "`7401`" => Some(`7401`)
      case "`7402`" => Some(`7402`)
      case "`7403`" => Some(`7403`)
      case "`7404`" => Some(`7404`)
      case "`7405`" => Some(`7405`)
      case "`7500`" => Some(`7500`)
      case "`7501`" => Some(`7501`)
      case "`7600`" => Some(`7600`)
      case "`7601`" => Some(`7601`)
      case "`7602`" => Some(`7602`)
      case "`7603`" => Some(`7603`)
      case "`7604`" => Some(`7604`)
      case "`7605`" => Some(`7605`)
      case "`7606`" => Some(`7606`)
      case "`7700`" => Some(`7700`)
      case "`7701`" => Some(`7701`)
      case "`7702`" => Some(`7702`)
      case "`7703`" => Some(`7703`)
      case "`7704`" => Some(`7704`)
      case "`7705`" => Some(`7705`)
      case "`7706`" => Some(`7706`)
      case "`7707`" => Some(`7707`)
      case "`7800`" => Some(`7800`)
      case "`7801`" => Some(`7801`)
      case "`7802`" => Some(`7802`)
      case "`7803`" => Some(`7803`)
      case "`7804`" => Some(`7804`)
      case "`7805`" => Some(`7805`)
      case "`7806`" => Some(`7806`)
      case "`7807`" => Some(`7807`)
      case "`7808`" => Some(`7808`)
      case "`7809`" => Some(`7809`)
      case "`7810`" => Some(`7810`)
      case "`7811`" => Some(`7811`)
      case "`7812`" => Some(`7812`)
      case "`7813`" => Some(`7813`)
      case "`7814`" => Some(`7814`)
      case "`7815`" => Some(`7815`)
      case "`7817`" => Some(`7817`)
      case "`7818`" => Some(`7818`)
      case "`7819`" => Some(`7819`)
      case "`7900`" => Some(`7900`)
      case "`7901`" => Some(`7901`)
      case "`7902`" => Some(`7902`)
      case "`7903`" => Some(`7903`)
      case "`7904`" => Some(`7904`)
      case "`7905`" => Some(`7905`)
      case "`7906`" => Some(`7906`)
      case "`8000`" => Some(`8000`)
      case "`8001`" => Some(`8001`)
      case "`8100`" => Some(`8100`)
      case "`8101`" => Some(`8101`)
      case "`8102`" => Some(`8102`)
      case "`8103`" => Some(`8103`)
      case "`8104`" => Some(`8104`)
      case "`8105`" => Some(`8105`)
      case "`8107`" => Some(`8107`)
      case "`8108`" => Some(`8108`)
      case "`8200`" => Some(`8200`)
      case "`8201`" => Some(`8201`)
      case "`10000`" => Some(`10000`)
      case "`10001`" => Some(`10001`)
      case "`10002`" => Some(`10002`)
      case "`10003`" => Some(`10003`)
      case "`10004`" => Some(`10004`)
      case "`10005`" => Some(`10005`)
      case "`10006`" => Some(`10006`)
      case "`10020`" => Some(`10020`)
      case "`10021`" => Some(`10021`)
      case "`10022`" => Some(`10022`)
      case "`10040`" => Some(`10040`)
      case "`10041`" => Some(`10041`)
      case "`10042`" => Some(`10042`)
      case "`10043`" => Some(`10043`)
      case "`11000`" => Some(`11000`)
      case "`11001`" => Some(`11001`)
      case "`11002`" => Some(`11002`)
      case "`11003`" => Some(`11003`)
      case "`11004`" => Some(`11004`)
      case "`11005`" => Some(`11005`)
      case "`12000`" => Some(`12000`)
      case "`12001`" => Some(`12001`)
      case "`12002`" => Some(`12002`)
      case "`12003`" => Some(`12003`)
      case "`12004`" => Some(`12004`)
      case "`12005`" => Some(`12005`)
      case "`13000`" => Some(`13000`)
      case "`13001`" => Some(`13001`)
      case "`13002`" => Some(`13002`)
      case "`14000`" => Some(`14000`)
      case "`14001`" => Some(`14001`)
      case "`14002`" => Some(`14002`)
      case "`14003`" => Some(`14003`)
      case "`14004`" => Some(`14004`)
      case "`14005`" => Some(`14005`)
      case "`14006`" => Some(`14006`)
      case "`14007`" => Some(`14007`)
      case "`14008`" => Some(`14008`)
      case "`14009`" => Some(`14009`)
      case "`14010`" => Some(`14010`)
      case "`14011`" => Some(`14011`)
      case "`14012`" => Some(`14012`)
      case _ => None
    }

    def fromMessage(x: Message): String = x match {
      case `400` => "`400`"
      case `403` => "`403`"
      case `500` => "`500`"
      case `600` => "`600`"
      case `1000` => "`1000`"
      case `1001` => "`1001`"
      case `1002` => "`1002`"
      case `1003` => "`1003`"
      case `1004` => "`1004`"
      case `1005` => "`1005`"
      case `1006` => "`1006`"
      case `1007` => "`1007`"
      case `1008` => "`1008`"
      case `1009` => "`1009`"
      case `1010` => "`1010`"
      case `1011` => "`1011`"
      case `1012` => "`1012`"
      case `1013` => "`1013`"
      case `1014` => "`1014`"
      case `1015` => "`1015`"
      case `1016` => "`1016`"
      case `1017` => "`1017`"
      case `1018` => "`1018`"
      case `1019` => "`1019`"
      case `1020` => "`1020`"
      case `1021` => "`1021`"
      case `1022` => "`1022`"
      case `1023` => "`1023`"
      case `1024` => "`1024`"
      case `1025` => "`1025`"
      case `1026` => "`1026`"
      case `1027` => "`1027`"
      case `1028` => "`1028`"
      case `1029` => "`1029`"
      case `1030` => "`1030`"
      case `1031` => "`1031`"
      case `1032` => "`1032`"
      case `1033` => "`1033`"
      case `1034` => "`1034`"
      case `1035` => "`1035`"
      case `1036` => "`1036`"
      case `1037` => "`1037`"
      case `1038` => "`1038`"
      case `1100` => "`1100`"
      case `1101` => "`1101`"
      case `1102` => "`1102`"
      case `1103` => "`1103`"
      case `1104` => "`1104`"
      case `1105` => "`1105`"
      case `1106` => "`1106`"
      case `1107` => "`1107`"
      case `1108` => "`1108`"
      case `1109` => "`1109`"
      case `1110` => "`1110`"
      case `2000` => "`2000`"
      case `2001` => "`2001`"
      case `2002` => "`2002`"
      case `2003` => "`2003`"
      case `2004` => "`2004`"
      case `2005` => "`2005`"
      case `2006` => "`2006`"
      case `2007` => "`2007`"
      case `2008` => "`2008`"
      case `2009` => "`2009`"
      case `2010` => "`2010`"
      case `2011` => "`2011`"
      case `2012` => "`2012`"
      case `2013` => "`2013`"
      case `2100` => "`2100`"
      case `2101` => "`2101`"
      case `2102` => "`2102`"
      case `2103` => "`2103`"
      case `2200` => "`2200`"
      case `2201` => "`2201`"
      case `2202` => "`2202`"
      case `2203` => "`2203`"
      case `2204` => "`2204`"
      case `2205` => "`2205`"
      case `2206` => "`2206`"
      case `2207` => "`2207`"
      case `2208` => "`2208`"
      case `2209` => "`2209`"
      case `2210` => "`2210`"
      case `2211` => "`2211`"
      case `2212` => "`2212`"
      case `2300` => "`2300`"
      case `2301` => "`2301`"
      case `2302` => "`2302`"
      case `2303` => "`2303`"
      case `2400` => "`2400`"
      case `2401` => "`2401`"
      case `2402` => "`2402`"
      case `2500` => "`2500`"
      case `2501` => "`2501`"
      case `2502` => "`2502`"
      case `2503` => "`2503`"
      case `2504` => "`2504`"
      case `2505` => "`2505`"
      case `2506` => "`2506`"
      case `2507` => "`2507`"
      case `2508` => "`2508`"
      case `2509` => "`2509`"
      case `2510` => "`2510`"
      case `2511` => "`2511`"
      case `2512` => "`2512`"
      case `2513` => "`2513`"
      case `2514` => "`2514`"
      case `2515` => "`2515`"
      case `2600` => "`2600`"
      case `2601` => "`2601`"
      case `2602` => "`2602`"
      case `2603` => "`2603`"
      case `2604` => "`2604`"
      case `2700` => "`2700`"
      case `2701` => "`2701`"
      case `2702` => "`2702`"
      case `2703` => "`2703`"
      case `2704` => "`2704`"
      case `2705` => "`2705`"
      case `2800` => "`2800`"
      case `2801` => "`2801`"
      case `2900` => "`2900`"
      case `2901` => "`2901`"
      case `2902` => "`2902`"
      case `2903` => "`2903`"
      case `2904` => "`2904`"
      case `2905` => "`2905`"
      case `2906` => "`2906`"
      case `3000` => "`3000`"
      case `3001` => "`3001`"
      case `3002` => "`3002`"
      case `3100` => "`3100`"
      case `3101` => "`3101`"
      case `3102` => "`3102`"
      case `3103` => "`3103`"
      case `3104` => "`3104`"
      case `3200` => "`3200`"
      case `3201` => "`3201`"
      case `3300` => "`3300`"
      case `3301` => "`3301`"
      case `3302` => "`3302`"
      case `3303` => "`3303`"
      case `3304` => "`3304`"
      case `3305` => "`3305`"
      case `3306` => "`3306`"
      case `3307` => "`3307`"
      case `3308` => "`3308`"
      case `3309` => "`3309`"
      case `3310` => "`3310`"
      case `3311` => "`3311`"
      case `3312` => "`3312`"
      case `3313` => "`3313`"
      case `3314` => "`3314`"
      case `3315` => "`3315`"
      case `3316` => "`3316`"
      case `3400` => "`3400`"
      case `3401` => "`3401`"
      case `3500` => "`3500`"
      case `3501` => "`3501`"
      case `3502` => "`3502`"
      case `3503` => "`3503`"
      case `3504` => "`3504`"
      case `3505` => "`3505`"
      case `3506` => "`3506`"
      case `3507` => "`3507`"
      case `3508` => "`3508`"
      case `3600` => "`3600`"
      case `3601` => "`3601`"
      case `3602` => "`3602`"
      case `3603` => "`3603`"
      case `3700` => "`3700`"
      case `3701` => "`3701`"
      case `3702` => "`3702`"
      case `3703` => "`3703`"
      case `3800` => "`3800`"
      case `3801` => "`3801`"
      case `3802` => "`3802`"
      case `3803` => "`3803`"
      case `3804` => "`3804`"
      case `3805` => "`3805`"
      case `3806` => "`3806`"
      case `3807` => "`3807`"
      case `3900` => "`3900`"
      case `3901` => "`3901`"
      case `3902` => "`3902`"
      case `3903` => "`3903`"
      case `3904` => "`3904`"
      case `3905` => "`3905`"
      case `4000` => "`4000`"
      case `4001` => "`4001`"
      case `4002` => "`4002`"
      case `4100` => "`4100`"
      case `4101` => "`4101`"
      case `4102` => "`4102`"
      case `4103` => "`4103`"
      case `4200` => "`4200`"
      case `4201` => "`4201`"
      case `4202` => "`4202`"
      case `4203` => "`4203`"
      case `4204` => "`4204`"
      case `4205` => "`4205`"
      case `4300` => "`4300`"
      case `4301` => "`4301`"
      case `4302` => "`4302`"
      case `4303` => "`4303`"
      case `4304` => "`4304`"
      case `4400` => "`4400`"
      case `4401` => "`4401`"
      case `4500` => "`4500`"
      case `4501` => "`4501`"
      case `4502` => "`4502`"
      case `4503` => "`4503`"
      case `4504` => "`4504`"
      case `4505` => "`4505`"
      case `4600` => "`4600`"
      case `4700` => "`4700`"
      case `4701` => "`4701`"
      case `4702` => "`4702`"
      case `4800` => "`4800`"
      case `4801` => "`4801`"
      case `4900` => "`4900`"
      case `4901` => "`4901`"
      case `4902` => "`4902`"
      case `4903` => "`4903`"
      case `4904` => "`4904`"
      case `4905` => "`4905`"
      case `4906` => "`4906`"
      case `5000` => "`5000`"
      case `5001` => "`5001`"
      case `5002` => "`5002`"
      case `5003` => "`5003`"
      case `5100` => "`5100`"
      case `5101` => "`5101`"
      case `5102` => "`5102`"
      case `5103` => "`5103`"
      case `5104` => "`5104`"
      case `5200` => "`5200`"
      case `5300` => "`5300`"
      case `5301` => "`5301`"
      case `5302` => "`5302`"
      case `5303` => "`5303`"
      case `5400` => "`5400`"
      case `5500` => "`5500`"
      case `5501` => "`5501`"
      case `5600` => "`5600`"
      case `5601` => "`5601`"
      case `5602` => "`5602`"
      case `5603` => "`5603`"
      case `5604` => "`5604`"
      case `5606` => "`5606`"
      case `5607` => "`5607`"
      case `5608` => "`5608`"
      case `5609` => "`5609`"
      case `5700` => "`5700`"
      case `5701` => "`5701`"
      case `5702` => "`5702`"
      case `5703` => "`5703`"
      case `5704` => "`5704`"
      case `5705` => "`5705`"
      case `5800` => "`5800`"
      case `5801` => "`5801`"
      case `5802` => "`5802`"
      case `5803` => "`5803`"
      case `5804` => "`5804`"
      case `5805` => "`5805`"
      case `5806` => "`5806`"
      case `5807` => "`5807`"
      case `5900` => "`5900`"
      case `5901` => "`5901`"
      case `5902` => "`5902`"
      case `5903` => "`5903`"
      case `5904` => "`5904`"
      case `5905` => "`5905`"
      case `5906` => "`5906`"
      case `5907` => "`5907`"
      case `5908` => "`5908`"
      case `5909` => "`5909`"
      case `5910` => "`5910`"
      case `5911` => "`5911`"
      case `5912` => "`5912`"
      case `5913` => "`5913`"
      case `5914` => "`5914`"
      case `5915` => "`5915`"
      case `5916` => "`5916`"
      case `6000` => "`6000`"
      case `6001` => "`6001`"
      case `6100` => "`6100`"
      case `6101` => "`6101`"
      case `6102` => "`6102`"
      case `6103` => "`6103`"
      case `6200` => "`6200`"
      case `6201` => "`6201`"
      case `6202` => "`6202`"
      case `6300` => "`6300`"
      case `6301` => "`6301`"
      case `6302` => "`6302`"
      case `6303` => "`6303`"
      case `6304` => "`6304`"
      case `6305` => "`6305`"
      case `6306` => "`6306`"
      case `6307` => "`6307`"
      case `6308` => "`6308`"
      case `6309` => "`6309`"
      case `6310` => "`6310`"
      case `6311` => "`6311`"
      case `6312` => "`6312`"
      case `6400` => "`6400`"
      case `6401` => "`6401`"
      case `6402` => "`6402`"
      case `6403` => "`6403`"
      case `6404` => "`6404`"
      case `6500` => "`6500`"
      case `6501` => "`6501`"
      case `6502` => "`6502`"
      case `6600` => "`6600`"
      case `6601` => "`6601`"
      case `6602` => "`6602`"
      case `6603` => "`6603`"
      case `6700` => "`6700`"
      case `6701` => "`6701`"
      case `6702` => "`6702`"
      case `6703` => "`6703`"
      case `6704` => "`6704`"
      case `6705` => "`6705`"
      case `6706` => "`6706`"
      case `6707` => "`6707`"
      case `6708` => "`6708`"
      case `6709` => "`6709`"
      case `6800` => "`6800`"
      case `6801` => "`6801`"
      case `6802` => "`6802`"
      case `6803` => "`6803`"
      case `6900` => "`6900`"
      case `6901` => "`6901`"
      case `6902` => "`6902`"
      case `6903` => "`6903`"
      case `7000` => "`7000`"
      case `7100` => "`7100`"
      case `7101` => "`7101`"
      case `7102` => "`7102`"
      case `7200` => "`7200`"
      case `7201` => "`7201`"
      case `7300` => "`7300`"
      case `7301` => "`7301`"
      case `7302` => "`7302`"
      case `7303` => "`7303`"
      case `7400` => "`7400`"
      case `7401` => "`7401`"
      case `7402` => "`7402`"
      case `7403` => "`7403`"
      case `7404` => "`7404`"
      case `7405` => "`7405`"
      case `7500` => "`7500`"
      case `7501` => "`7501`"
      case `7600` => "`7600`"
      case `7601` => "`7601`"
      case `7602` => "`7602`"
      case `7603` => "`7603`"
      case `7604` => "`7604`"
      case `7605` => "`7605`"
      case `7606` => "`7606`"
      case `7700` => "`7700`"
      case `7701` => "`7701`"
      case `7702` => "`7702`"
      case `7703` => "`7703`"
      case `7704` => "`7704`"
      case `7705` => "`7705`"
      case `7706` => "`7706`"
      case `7707` => "`7707`"
      case `7800` => "`7800`"
      case `7801` => "`7801`"
      case `7802` => "`7802`"
      case `7803` => "`7803`"
      case `7804` => "`7804`"
      case `7805` => "`7805`"
      case `7806` => "`7806`"
      case `7807` => "`7807`"
      case `7808` => "`7808`"
      case `7809` => "`7809`"
      case `7810` => "`7810`"
      case `7811` => "`7811`"
      case `7812` => "`7812`"
      case `7813` => "`7813`"
      case `7814` => "`7814`"
      case `7815` => "`7815`"
      case `7817` => "`7817`"
      case `7818` => "`7818`"
      case `7819` => "`7819`"
      case `7900` => "`7900`"
      case `7901` => "`7901`"
      case `7902` => "`7902`"
      case `7903` => "`7903`"
      case `7904` => "`7904`"
      case `7905` => "`7905`"
      case `7906` => "`7906`"
      case `8000` => "`8000`"
      case `8001` => "`8001`"
      case `8100` => "`8100`"
      case `8101` => "`8101`"
      case `8102` => "`8102`"
      case `8103` => "`8103`"
      case `8104` => "`8104`"
      case `8105` => "`8105`"
      case `8107` => "`8107`"
      case `8108` => "`8108`"
      case `8200` => "`8200`"
      case `8201` => "`8201`"
      case `10000` => "`10000`"
      case `10001` => "`10001`"
      case `10002` => "`10002`"
      case `10003` => "`10003`"
      case `10004` => "`10004`"
      case `10005` => "`10005`"
      case `10006` => "`10006`"
      case `10020` => "`10020`"
      case `10021` => "`10021`"
      case `10022` => "`10022`"
      case `10040` => "`10040`"
      case `10041` => "`10041`"
      case `10042` => "`10042`"
      case `10043` => "`10043`"
      case `11000` => "`11000`"
      case `11001` => "`11001`"
      case `11002` => "`11002`"
      case `11003` => "`11003`"
      case `11004` => "`11004`"
      case `11005` => "`11005`"
      case `12000` => "`12000`"
      case `12001` => "`12001`"
      case `12002` => "`12002`"
      case `12003` => "`12003`"
      case `12004` => "`12004`"
      case `12005` => "`12005`"
      case `13000` => "`13000`"
      case `13001` => "`13001`"
      case `13002` => "`13002`"
      case `14000` => "`14000`"
      case `14001` => "`14001`"
      case `14002` => "`14002`"
      case `14003` => "`14003`"
      case `14004` => "`14004`"
      case `14005` => "`14005`"
      case `14006` => "`14006`"
      case `14007` => "`14007`"
      case `14008` => "`14008`"
      case `14009` => "`14009`"
      case `14010` => "`14010`"
      case `14011` => "`14011`"
      case `14012` => "`14012`"
    }
  }

  implicit val MessageEnumEncoder: EncodeJson[Message] =
    EncodeJson[Message](is => StringEncodeJson(Message.fromMessage(is)))

  implicit val MessageEnumDecoder: DecodeJson[Message] =
    DecodeJson.optionDecoder[Message](n => n.string.flatMap(jStr => Message.toMessage(jStr)), "Message failed to de-serialize")

  implicit val SubscriptionCodecJson: CodecJson[Subscription] = CodecJson.derive[Subscription]
  implicit val SubscriptionDecoder: EntityDecoder[Subscription] = jsonOf[Subscription]
  implicit val SubscriptionEncoder: EntityEncoder[Subscription] = jsonEncoderOf[Subscription]
}
