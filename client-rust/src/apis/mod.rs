use std::error;
use std::fmt;

#[derive(Debug, Clone)]
pub struct ResponseContent<T> {
    pub status: reqwest::StatusCode,
    pub content: String,
    pub entity: Option<T>,
}

#[derive(Debug)]
pub enum Error<T> {
    Reqwest(reqwest::Error),
    Serde(serde_json::Error),
    Io(std::io::Error),
    ResponseError(ResponseContent<T>),
}

impl <T> fmt::Display for Error<T> {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        let (module, e) = match self {
            Error::Reqwest(e) => ("reqwest", e.to_string()),
            Error::Serde(e) => ("serde", e.to_string()),
            Error::Io(e) => ("IO", e.to_string()),
            Error::ResponseError(e) => ("response", format!("status code {}", e.status)),
        };
        write!(f, "error in {}: {}", module, e)
    }
}

impl <T: fmt::Debug> error::Error for Error<T> {
    fn source(&self) -> Option<&(dyn error::Error + 'static)> {
        Some(match self {
            Error::Reqwest(e) => e,
            Error::Serde(e) => e,
            Error::Io(e) => e,
            Error::ResponseError(_) => return None,
        })
    }
}

impl <T> From<reqwest::Error> for Error<T> {
    fn from(e: reqwest::Error) -> Self {
        Error::Reqwest(e)
    }
}

impl <T> From<serde_json::Error> for Error<T> {
    fn from(e: serde_json::Error) -> Self {
        Error::Serde(e)
    }
}

impl <T> From<std::io::Error> for Error<T> {
    fn from(e: std::io::Error) -> Self {
        Error::Io(e)
    }
}

pub fn urlencode<T: AsRef<str>>(s: T) -> String {
    ::url::form_urlencoded::byte_serialize(s.as_ref().as_bytes()).collect()
}

pub fn parse_deep_object(prefix: &str, value: &serde_json::Value) -> Vec<(String, String)> {
    if let serde_json::Value::Object(object) = value {
        let mut params = vec![];

        for (key, value) in object {
            match value {
                serde_json::Value::Object(_) => params.append(&mut parse_deep_object(
                    &format!("{}[{}]", prefix, key),
                    value,
                )),
                serde_json::Value::Array(array) => {
                    for (i, value) in array.iter().enumerate() {
                        params.append(&mut parse_deep_object(
                            &format!("{}[{}][{}]", prefix, key, i),
                            value,
                        ));
                    }
                },
                serde_json::Value::String(s) => params.push((format!("{}[{}]", prefix, key), s.clone())),
                _ => params.push((format!("{}[{}]", prefix, key), value.to_string())),
            }
        }

        return params;
    }

    unimplemented!("Only objects are supported with style=deepObject")
}

/// Internal use only
/// A content type supported by this client.
#[allow(dead_code)]
enum ContentType {
    Json,
    Text,
    Unsupported(String)
}

impl From<&str> for ContentType {
    fn from(content_type: &str) -> Self {
        if content_type.starts_with("application") && content_type.contains("json") {
            return Self::Json;
        } else if content_type.starts_with("text/plain") {
            return Self::Text;
        } else {
            return Self::Unsupported(content_type.to_string());
        }
    }
}

pub mod amqp_api;
pub mod account_api;
pub mod achievement_api;
pub mod activity_api;
pub mod album_api;
pub mod analytics_api;
pub mod app_data_api;
pub mod application_api;
pub mod application_config_api;
pub mod asset_api;
pub mod assignment_api;
pub mod audience_api;
pub mod bid_api;
pub mod billable_entity_api;
pub mod billing_info_api;
pub mod csv_import_api;
pub mod cargo_type_api;
pub mod carrier_api;
pub mod category_api;
pub mod connection_api;
pub mod contest_api;
pub mod creative_api;
pub mod dependent_api;
pub mod disbursement_api;
pub mod employee_api;
pub mod event_api;
pub mod facebook_api;
pub mod favorite_api;
pub mod filter_api;
pub mod flag_api;
pub mod game_api;
pub mod game_level_api;
pub mod invite_api;
pub mod leaderboard_api;
pub mod like_api;
pub mod listing_api;
pub mod location_api;
pub mod location_api_v2_api;
pub mod media_api;
pub mod mission_api;
pub mod mission_invite_api;
pub mod note_api;
pub mod notification_api;
pub mod object_store_api;
pub mod offer_api;
pub mod offer_status_api;
pub mod open_ai_api;
pub mod optimize_api;
pub mod orson_api;
pub mod pack_api;
pub mod participants_api;
pub mod pathing_api;
pub mod postal_code_api;
pub mod preview_persona_api;
pub mod program_api;
pub mod purchase_item_api;
pub mod purchase_order_api;
pub mod question_api;
pub mod ranking_api;
pub mod rating_api;
pub mod region_api;
pub mod reporting_api;
pub mod reservation_api;
pub mod retailer_api;
pub mod retailer_location_api;
pub mod retailer_v2_api;
pub mod route_api;
pub mod route_setting_api;
pub mod routing_api;
pub mod scheduled_notification_api;
pub mod score_api;
pub mod secure_app_api;
pub mod service_hub_api;
pub mod shipment_api;
pub mod shipment_batch_api;
pub mod simulation_api;
pub mod stop_api;
pub mod stripe_api;
pub mod subscription_api;
pub mod task_api;
pub mod territory_api;
pub mod theme_descriptor_api;
pub mod third_party_credentials_api;
pub mod ticket_api;
pub mod tournament_api;
pub mod tracking_api;
pub mod trigger_api;
pub mod trip_api;
pub mod twilio_api;
pub mod twitter_api;
pub mod user_permissions_api;
pub mod vatom_api;
pub mod vehicle_api;
pub mod vehicle_type_api;
pub mod wallet_api;
pub mod weather_api;
pub mod word_api;
pub mod workflow_api;

pub mod configuration;
