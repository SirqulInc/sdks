cmake_minimum_required (VERSION 2.6...3.10.2)
project (CGenerator C)

cmake_policy(SET CMP0063 NEW)

set(CMAKE_C_VISIBILITY_PRESET default)
set(CMAKE_VISIBILITY_INLINES_HIDDEN OFF)
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=implicit-function-declaration")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=missing-declarations")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=int-conversion")

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

find_package(OpenSSL)

if (OPENSSL_FOUND)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DOPENSSL")
    if(CMAKE_VERSION VERSION_LESS 3.4)
        include_directories(${OPENSSL_INCLUDE_DIR})
        include_directories(${OPENSSL_INCLUDE_DIRS})
        link_directories(${OPENSSL_LIBRARIES})
    endif()
endif()

set(pkgName "sirqul_iot_platform")

# this default version can be overridden in PreTarget.cmake
set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 0)
set(PROJECT_VERSION_PATCH 1)

if( (DEFINED CURL_INCLUDE_DIR) AND (DEFINED CURL_LIBRARIES))
    include_directories(${CURL_INCLUDE_DIR})
    set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
else()
    find_package(CURL 7.58.0 REQUIRED)
    if(CURL_FOUND)
        include_directories(${CURL_INCLUDE_DIR})
        set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
    endif()
endif()

set(SRCS
    src/list.c
    src/apiKey.c
    src/apiClient.c
    src/binary.c
    external/cJSON.c
    model/object.c
    model/account.c
    model/account_list_response.c
    model/account_login_response.c
    model/account_mini_response.c
    model/account_profile_info.c
    model/account_response.c
    model/account_short_response.c
    model/achievement_progress_response.c
    model/achievement_response.c
    model/achievement_short_response.c
    model/achievement_tier_response.c
    model/activity_response.c
    model/address.c
    model/address_response.c
    model/age_group_response.c
    model/album.c
    model/album_contest_list_response.c
    model/album_contest_response.c
    model/album_full_response.c
    model/album_response.c
    model/answer_response.c
    model/app_info_response.c
    model/app_response.c
    model/app_version.c
    model/application.c
    model/application_config_response.c
    model/application_mini_response.c
    model/application_response.c
    model/application_settings_response.c
    model/application_short_response.c
    model/application_usage_response.c
    model/asset.c
    model/asset_full_response.c
    model/asset_list_response.c
    model/asset_response.c
    model/asset_short_response.c
    model/assignment.c
    model/assignment_response.c
    model/assignment_status.c
    model/assignment_status_response.c
    model/audience.c
    model/audience_device.c
    model/audience_device_response.c
    model/audience_device_version_range.c
    model/audience_location.c
    model/audience_response.c
    model/audience_target_type.c
    model/availability_response.c
    model/base_offer_response.c
    model/bid_response.c
    model/billable_entity.c
    model/billable_entity_response.c
    model/billable_entity_short_response.c
    model/biometric_image.c
    model/biometric_request.c
    model/blob_file.c
    model/blocked_notification_response.c
    model/building.c
    model/cargo_type.c
    model/category.c
    model/category_response.c
    model/category_tree_response.c
    model/cell_carrier.c
    model/cell_carrier_response.c
    model/chart_data.c
    model/chronology.c
    model/config_routing_request.c
    model/connected_friend.c
    model/connection.c
    model/connection_group.c
    model/connection_group_response.c
    model/connection_group_short_response.c
    model/connection_info_response.c
    model/connection_list_response.c
    model/connection_response.c
    model/consumer_invite_response.c
    model/contact.c
    model/contact_info.c
    model/contact_info_response.c
    model/contact_response.c
    model/coords_response.c
    model/count_response.c
    model/creative_response.c
    model/csv_import_response.c
    model/date_time_field.c
    model/date_time_field_type.c
    model/date_time_range.c
    model/date_time_zone.c
    model/device.c
    model/dimensions.c
    model/direction.c
    model/direction_response.c
    model/disbursement_response.c
    model/driver_response.c
    model/duration_field.c
    model/duration_field_type.c
    model/employee_response.c
    model/entity_reference.c
    model/event.c
    model/event_attendance_response.c
    model/event_response.c
    model/filter.c
    model/filter_response.c
    model/filter_tree_response.c
    model/fingerprint_biometric_image.c
    model/flag.c
    model/flag_response.c
    model/flag_threshold.c
    model/game.c
    model/game_level.c
    model/game_level_list_response.c
    model/game_level_response.c
    model/game_list_response.c
    model/game_object_list_response.c
    model/game_object_response.c
    model/game_response.c
    model/geo_box.c
    model/geo_point_response.c
    model/geo_response.c
    model/geocode_lat_lng_response.c
    model/group_permissions.c
    model/image_generation_response.c
    model/import_statuses.c
    model/interval.c
    model/invite_response.c
    model/invoice.c
    model/itinerary_response.c
    model/json_array.c
    model/json_element.c
    model/json_null.c
    model/json_object.c
    model/json_primitive.c
    model/leaderboard.c
    model/leaderboard_full_response.c
    model/leaderboard_response.c
    model/leg.c
    model/leg_response.c
    model/likable_response.c
    model/like_response.c
    model/line_item.c
    model/list_count_response.c
    model/list_response.c
    model/listing.c
    model/listing_full_response.c
    model/listing_group_response.c
    model/listing_response.c
    model/load_response.c
    model/load_short_response.c
    model/local_time.c
    model/location.c
    model/location_response.c
    model/location_search_response.c
    model/media.c
    model/media_offer_response.c
    model/media_response.c
    model/message_list_response.c
    model/message_response.c
    model/mission.c
    model/mission_format_response.c
    model/mission_invite_response.c
    model/mission_list_response.c
    model/mission_response.c
    model/mission_short_response.c
    model/mission_task.c
    model/name_string_value_response.c
    model/node.c
    model/node_request.c
    model/note.c
    model/note_full_response.c
    model/note_response.c
    model/notification_message_list_response.c
    model/notification_message_response.c
    model/notification_recipient_response.c
    model/notification_recipient_response_list_response.c
    model/notification_settings_response.c
    model/notification_template_response.c
    model/object_store_response.c
    model/offer.c
    model/offer_list_response.c
    model/offer_location.c
    model/offer_response.c
    model/offer_short_response.c
    model/offer_transaction_response.c
    model/offer_transaction_status_response.c
    model/order_item_request.c
    model/order_package.c
    model/order_response.c
    model/orders.c
    model/orson_ai_add_movie_response.c
    model/orson_ai_batch_emotions_response.c
    model/orson_ai_batch_response.c
    model/orson_ai_batch_topics_response.c
    model/orson_ai_batch_transcript_response.c
    model/orson_ai_emotions_response.c
    model/orson_ai_prod_response.c
    model/orson_ai_proto_response.c
    model/orson_ai_stt_response.c
    model/orson_ai_tech_tune_response.c
    model/orson_ai_topic_response.c
    model/orson_ai_topics_response.c
    model/orson_ai_tts_response.c
    model/orson_ai_visual_emotion_response.c
    model/orson_ai_voice_canvas_response.c
    model/orson_episode_response.c
    model/orson_render_response.c
    model/orson_video_response.c
    model/pack.c
    model/pack_list_response.c
    model/pack_response.c
    model/participant.c
    model/participant_response.c
    model/pathing_response.c
    model/payment_request.c
    model/payment_transaction_response.c
    model/payment_types_response.c
    model/permission_response.c
    model/permissions.c
    model/personal_profile_response.c
    model/placement.c
    model/placement_response.c
    model/platform.c
    model/platform_response.c
    model/postal_code.c
    model/postal_code_response.c
    model/predicted_location_response.c
    model/preferred_location_response.c
    model/preview_persona_response.c
    model/product.c
    model/product_response.c
    model/profile_info_response.c
    model/profile_response.c
    model/profile_short_response.c
    model/program.c
    model/promo_code.c
    model/purchase_item_full_response.c
    model/purchase_item_list_response.c
    model/purchase_item_response.c
    model/purchase_item_short_response.c
    model/purchase_order_item_response.c
    model/question_response.c
    model/queue_response.c
    model/rank_full_response.c
    model/rank_list_response.c
    model/rank_response.c
    model/rating_index_response.c
    model/rating_response.c
    model/recurrence.c
    model/region.c
    model/region_leg_summary.c
    model/region_response.c
    model/report_batch_response.c
    model/report_definition.c
    model/report_region_leg_summary_batch_response.c
    model/report_response.c
    model/report_type_response.c
    model/reservation_response.c
    model/retailer.c
    model/retailer_count_response.c
    model/retailer_full_response.c
    model/retailer_location.c
    model/retailer_location_response.c
    model/retailer_location_short_response.c
    model/retailer_offer_response.c
    model/retailer_profile.c
    model/retailer_response.c
    model/retailer_short_response.c
    model/reward_response.c
    model/route.c
    model/route_settings.c
    model/routing_list_response.c
    model/routing_response.c
    model/rule_list_response.c
    model/rule_response.c
    model/scheduled_notification.c
    model/scheduled_notification_full_response.c
    model/scheduled_notification_short_response.c
    model/score_list_response.c
    model/score_response.c
    model/search_response.c
    model/service_hub.c
    model/service_type.c
    model/shipment.c
    model/shipment_batch.c
    model/shipment_import_status.c
    model/shipment_order.c
    model/sirqul_response.c
    model/size_group.c
    model/size_group_response.c
    model/step.c
    model/step_response.c
    model/stop.c
    model/stop_response.c
    model/subscription.c
    model/subscription_option.c
    model/subscription_option_response.c
    model/subscription_plan.c
    model/subscription_plan_response.c
    model/subscription_response.c
    model/task_response.c
    model/territory.c
    model/territory_response.c
    model/theme_descriptor_response.c
    model/third_party_credential_response.c
    model/third_party_credentials.c
    model/third_party_network.c
    model/third_party_network_response.c
    model/third_party_network_short_response.c
    model/ticket_count_response.c
    model/ticket_list_response.c
    model/ticket_offer_response.c
    model/ticket_response.c
    model/time_slot_response.c
    model/token_response.c
    model/tournament_response.c
    model/trigger_response.c
    model/trilat_app_settings.c
    model/trilat_cache_request.c
    model/trilat_cache_sample.c
    model/trip.c
    model/tutorial.c
    model/tutorial_response.c
    model/twi_ml_response.c
    model/url_response.c
    model/user_activity_response.c
    model/user_location_list_response.c
    model/user_location_response.c
    model/user_location_search_response.c
    model/user_permissions.c
    model/user_permissions_list_response.c
    model/user_permissions_response.c
    model/user_settings_response.c
    model/vehicle.c
    model/vehicle_cargo_setting.c
    model/vehicle_response.c
    model/vehicle_type.c
    model/verb.c
    model/weather_forecast_response.c
    model/weather_response.c
    model/wordz_word_response.c
    model/wrapped_proxy_item_response.c
    model/wrapped_proxy_response.c
    model/wrapped_response.c
    model/yay_or_nay.c
    api/AMQPAPI.c
    api/AccountAPI.c
    api/AchievementAPI.c
    api/ActivityAPI.c
    api/AlbumAPI.c
    api/AnalyticsAPI.c
    api/AppDataAPI.c
    api/ApplicationAPI.c
    api/ApplicationConfigAPI.c
    api/AssetAPI.c
    api/AssignmentAPI.c
    api/AudienceAPI.c
    api/BidAPI.c
    api/BillableEntityAPI.c
    api/BillingInfoAPI.c
    api/CSVImportAPI.c
    api/CargoTypeAPI.c
    api/CarrierAPI.c
    api/CategoryAPI.c
    api/ConnectionAPI.c
    api/ContestAPI.c
    api/CreativeAPI.c
    api/DependentAPI.c
    api/DisbursementAPI.c
    api/EmployeeAPI.c
    api/EventAPI.c
    api/FacebookAPI.c
    api/FavoriteAPI.c
    api/FilterAPI.c
    api/FlagAPI.c
    api/GameAPI.c
    api/GameLevelAPI.c
    api/InviteAPI.c
    api/LeaderboardAPI.c
    api/LikeAPI.c
    api/ListingAPI.c
    api/LocationAPI.c
    api/LocationApiV2API.c
    api/MediaAPI.c
    api/MissionAPI.c
    api/MissionInviteAPI.c
    api/NoteAPI.c
    api/NotificationAPI.c
    api/ObjectStoreAPI.c
    api/OfferAPI.c
    api/OfferStatusAPI.c
    api/OpenAIAPI.c
    api/OptimizeAPI.c
    api/OrsonAPI.c
    api/PackAPI.c
    api/ParticipantsAPI.c
    api/PathingAPI.c
    api/PostalCodeAPI.c
    api/PreviewPersonaAPI.c
    api/ProgramAPI.c
    api/PurchaseItemAPI.c
    api/PurchaseOrderAPI.c
    api/QuestionAPI.c
    api/RankingAPI.c
    api/RatingAPI.c
    api/RegionAPI.c
    api/ReportingAPI.c
    api/ReservationAPI.c
    api/RetailerAPI.c
    api/RetailerLocationAPI.c
    api/RetailerV2API.c
    api/RouteAPI.c
    api/RouteSettingAPI.c
    api/RoutingAPI.c
    api/ScheduledNotificationAPI.c
    api/ScoreAPI.c
    api/SecureAppAPI.c
    api/ServiceHubAPI.c
    api/ShipmentAPI.c
    api/ShipmentBatchAPI.c
    api/SimulationAPI.c
    api/StopAPI.c
    api/StripeAPI.c
    api/SubscriptionAPI.c
    api/TaskAPI.c
    api/TerritoryAPI.c
    api/ThemeDescriptorAPI.c
    api/ThirdPartyCredentialsAPI.c
    api/TicketAPI.c
    api/TournamentAPI.c
    api/TrackingAPI.c
    api/TriggerAPI.c
    api/TripAPI.c
    api/TwilioAPI.c
    api/TwitterAPI.c
    api/UserPermissionsAPI.c
    api/VatomAPI.c
    api/VehicleAPI.c
    api/VehicleTypeAPI.c
    api/WalletAPI.c
    api/WeatherAPI.c
    api/WordAPI.c
    api/WorkflowAPI.c

)

set(HDRS
    include/apiClient.h
    include/list.h
    include/binary.h
    include/keyValuePair.h
    external/cJSON.h
    model/object.h
    model/any_type.h
    model/account.h
    model/account_list_response.h
    model/account_login_response.h
    model/account_mini_response.h
    model/account_profile_info.h
    model/account_response.h
    model/account_short_response.h
    model/achievement_progress_response.h
    model/achievement_response.h
    model/achievement_short_response.h
    model/achievement_tier_response.h
    model/activity_response.h
    model/address.h
    model/address_response.h
    model/age_group_response.h
    model/album.h
    model/album_contest_list_response.h
    model/album_contest_response.h
    model/album_full_response.h
    model/album_response.h
    model/answer_response.h
    model/app_info_response.h
    model/app_response.h
    model/app_version.h
    model/application.h
    model/application_config_response.h
    model/application_mini_response.h
    model/application_response.h
    model/application_settings_response.h
    model/application_short_response.h
    model/application_usage_response.h
    model/asset.h
    model/asset_full_response.h
    model/asset_list_response.h
    model/asset_response.h
    model/asset_short_response.h
    model/assignment.h
    model/assignment_response.h
    model/assignment_status.h
    model/assignment_status_response.h
    model/audience.h
    model/audience_device.h
    model/audience_device_response.h
    model/audience_device_version_range.h
    model/audience_location.h
    model/audience_response.h
    model/audience_target_type.h
    model/availability_response.h
    model/base_offer_response.h
    model/bid_response.h
    model/billable_entity.h
    model/billable_entity_response.h
    model/billable_entity_short_response.h
    model/biometric_image.h
    model/biometric_request.h
    model/blob_file.h
    model/blocked_notification_response.h
    model/building.h
    model/cargo_type.h
    model/category.h
    model/category_response.h
    model/category_tree_response.h
    model/cell_carrier.h
    model/cell_carrier_response.h
    model/chart_data.h
    model/chronology.h
    model/config_routing_request.h
    model/connected_friend.h
    model/connection.h
    model/connection_group.h
    model/connection_group_response.h
    model/connection_group_short_response.h
    model/connection_info_response.h
    model/connection_list_response.h
    model/connection_response.h
    model/consumer_invite_response.h
    model/contact.h
    model/contact_info.h
    model/contact_info_response.h
    model/contact_response.h
    model/coords_response.h
    model/count_response.h
    model/creative_response.h
    model/csv_import_response.h
    model/date_time_field.h
    model/date_time_field_type.h
    model/date_time_range.h
    model/date_time_zone.h
    model/device.h
    model/dimensions.h
    model/direction.h
    model/direction_response.h
    model/disbursement_response.h
    model/driver_response.h
    model/duration_field.h
    model/duration_field_type.h
    model/employee_response.h
    model/entity_reference.h
    model/event.h
    model/event_attendance_response.h
    model/event_response.h
    model/filter.h
    model/filter_response.h
    model/filter_tree_response.h
    model/fingerprint_biometric_image.h
    model/flag.h
    model/flag_response.h
    model/flag_threshold.h
    model/game.h
    model/game_level.h
    model/game_level_list_response.h
    model/game_level_response.h
    model/game_list_response.h
    model/game_object_list_response.h
    model/game_object_response.h
    model/game_response.h
    model/geo_box.h
    model/geo_point_response.h
    model/geo_response.h
    model/geocode_lat_lng_response.h
    model/group_permissions.h
    model/image_generation_response.h
    model/import_statuses.h
    model/interval.h
    model/invite_response.h
    model/invoice.h
    model/itinerary_response.h
    model/json_array.h
    model/json_element.h
    model/json_null.h
    model/json_object.h
    model/json_primitive.h
    model/leaderboard.h
    model/leaderboard_full_response.h
    model/leaderboard_response.h
    model/leg.h
    model/leg_response.h
    model/likable_response.h
    model/like_response.h
    model/line_item.h
    model/list_count_response.h
    model/list_response.h
    model/listing.h
    model/listing_full_response.h
    model/listing_group_response.h
    model/listing_response.h
    model/load_response.h
    model/load_short_response.h
    model/local_time.h
    model/location.h
    model/location_response.h
    model/location_search_response.h
    model/media.h
    model/media_offer_response.h
    model/media_response.h
    model/message_list_response.h
    model/message_response.h
    model/mission.h
    model/mission_format_response.h
    model/mission_invite_response.h
    model/mission_list_response.h
    model/mission_response.h
    model/mission_short_response.h
    model/mission_task.h
    model/name_string_value_response.h
    model/node.h
    model/node_request.h
    model/note.h
    model/note_full_response.h
    model/note_response.h
    model/notification_message_list_response.h
    model/notification_message_response.h
    model/notification_recipient_response.h
    model/notification_recipient_response_list_response.h
    model/notification_settings_response.h
    model/notification_template_response.h
    model/object_store_response.h
    model/offer.h
    model/offer_list_response.h
    model/offer_location.h
    model/offer_response.h
    model/offer_short_response.h
    model/offer_transaction_response.h
    model/offer_transaction_status_response.h
    model/order_item_request.h
    model/order_package.h
    model/order_response.h
    model/orders.h
    model/orson_ai_add_movie_response.h
    model/orson_ai_batch_emotions_response.h
    model/orson_ai_batch_response.h
    model/orson_ai_batch_topics_response.h
    model/orson_ai_batch_transcript_response.h
    model/orson_ai_emotions_response.h
    model/orson_ai_prod_response.h
    model/orson_ai_proto_response.h
    model/orson_ai_stt_response.h
    model/orson_ai_tech_tune_response.h
    model/orson_ai_topic_response.h
    model/orson_ai_topics_response.h
    model/orson_ai_tts_response.h
    model/orson_ai_visual_emotion_response.h
    model/orson_ai_voice_canvas_response.h
    model/orson_episode_response.h
    model/orson_render_response.h
    model/orson_video_response.h
    model/pack.h
    model/pack_list_response.h
    model/pack_response.h
    model/participant.h
    model/participant_response.h
    model/pathing_response.h
    model/payment_request.h
    model/payment_transaction_response.h
    model/payment_types_response.h
    model/permission_response.h
    model/permissions.h
    model/personal_profile_response.h
    model/placement.h
    model/placement_response.h
    model/platform.h
    model/platform_response.h
    model/postal_code.h
    model/postal_code_response.h
    model/predicted_location_response.h
    model/preferred_location_response.h
    model/preview_persona_response.h
    model/product.h
    model/product_response.h
    model/profile_info_response.h
    model/profile_response.h
    model/profile_short_response.h
    model/program.h
    model/promo_code.h
    model/purchase_item_full_response.h
    model/purchase_item_list_response.h
    model/purchase_item_response.h
    model/purchase_item_short_response.h
    model/purchase_order_item_response.h
    model/question_response.h
    model/queue_response.h
    model/rank_full_response.h
    model/rank_list_response.h
    model/rank_response.h
    model/rating_index_response.h
    model/rating_response.h
    model/recurrence.h
    model/region.h
    model/region_leg_summary.h
    model/region_response.h
    model/report_batch_response.h
    model/report_definition.h
    model/report_region_leg_summary_batch_response.h
    model/report_response.h
    model/report_type_response.h
    model/reservation_response.h
    model/retailer.h
    model/retailer_count_response.h
    model/retailer_full_response.h
    model/retailer_location.h
    model/retailer_location_response.h
    model/retailer_location_short_response.h
    model/retailer_offer_response.h
    model/retailer_profile.h
    model/retailer_response.h
    model/retailer_short_response.h
    model/reward_response.h
    model/route.h
    model/route_settings.h
    model/routing_list_response.h
    model/routing_response.h
    model/rule_list_response.h
    model/rule_response.h
    model/scheduled_notification.h
    model/scheduled_notification_full_response.h
    model/scheduled_notification_short_response.h
    model/score_list_response.h
    model/score_response.h
    model/search_response.h
    model/service_hub.h
    model/service_type.h
    model/shipment.h
    model/shipment_batch.h
    model/shipment_import_status.h
    model/shipment_order.h
    model/sirqul_response.h
    model/size_group.h
    model/size_group_response.h
    model/step.h
    model/step_response.h
    model/stop.h
    model/stop_response.h
    model/subscription.h
    model/subscription_option.h
    model/subscription_option_response.h
    model/subscription_plan.h
    model/subscription_plan_response.h
    model/subscription_response.h
    model/task_response.h
    model/territory.h
    model/territory_response.h
    model/theme_descriptor_response.h
    model/third_party_credential_response.h
    model/third_party_credentials.h
    model/third_party_network.h
    model/third_party_network_response.h
    model/third_party_network_short_response.h
    model/ticket_count_response.h
    model/ticket_list_response.h
    model/ticket_offer_response.h
    model/ticket_response.h
    model/time_slot_response.h
    model/token_response.h
    model/tournament_response.h
    model/trigger_response.h
    model/trilat_app_settings.h
    model/trilat_cache_request.h
    model/trilat_cache_sample.h
    model/trip.h
    model/tutorial.h
    model/tutorial_response.h
    model/twi_ml_response.h
    model/url_response.h
    model/user_activity_response.h
    model/user_location_list_response.h
    model/user_location_response.h
    model/user_location_search_response.h
    model/user_permissions.h
    model/user_permissions_list_response.h
    model/user_permissions_response.h
    model/user_settings_response.h
    model/vehicle.h
    model/vehicle_cargo_setting.h
    model/vehicle_response.h
    model/vehicle_type.h
    model/verb.h
    model/weather_forecast_response.h
    model/weather_response.h
    model/wordz_word_response.h
    model/wrapped_proxy_item_response.h
    model/wrapped_proxy_response.h
    model/wrapped_response.h
    model/yay_or_nay.h
    api/AMQPAPI.h
    api/AccountAPI.h
    api/AchievementAPI.h
    api/ActivityAPI.h
    api/AlbumAPI.h
    api/AnalyticsAPI.h
    api/AppDataAPI.h
    api/ApplicationAPI.h
    api/ApplicationConfigAPI.h
    api/AssetAPI.h
    api/AssignmentAPI.h
    api/AudienceAPI.h
    api/BidAPI.h
    api/BillableEntityAPI.h
    api/BillingInfoAPI.h
    api/CSVImportAPI.h
    api/CargoTypeAPI.h
    api/CarrierAPI.h
    api/CategoryAPI.h
    api/ConnectionAPI.h
    api/ContestAPI.h
    api/CreativeAPI.h
    api/DependentAPI.h
    api/DisbursementAPI.h
    api/EmployeeAPI.h
    api/EventAPI.h
    api/FacebookAPI.h
    api/FavoriteAPI.h
    api/FilterAPI.h
    api/FlagAPI.h
    api/GameAPI.h
    api/GameLevelAPI.h
    api/InviteAPI.h
    api/LeaderboardAPI.h
    api/LikeAPI.h
    api/ListingAPI.h
    api/LocationAPI.h
    api/LocationApiV2API.h
    api/MediaAPI.h
    api/MissionAPI.h
    api/MissionInviteAPI.h
    api/NoteAPI.h
    api/NotificationAPI.h
    api/ObjectStoreAPI.h
    api/OfferAPI.h
    api/OfferStatusAPI.h
    api/OpenAIAPI.h
    api/OptimizeAPI.h
    api/OrsonAPI.h
    api/PackAPI.h
    api/ParticipantsAPI.h
    api/PathingAPI.h
    api/PostalCodeAPI.h
    api/PreviewPersonaAPI.h
    api/ProgramAPI.h
    api/PurchaseItemAPI.h
    api/PurchaseOrderAPI.h
    api/QuestionAPI.h
    api/RankingAPI.h
    api/RatingAPI.h
    api/RegionAPI.h
    api/ReportingAPI.h
    api/ReservationAPI.h
    api/RetailerAPI.h
    api/RetailerLocationAPI.h
    api/RetailerV2API.h
    api/RouteAPI.h
    api/RouteSettingAPI.h
    api/RoutingAPI.h
    api/ScheduledNotificationAPI.h
    api/ScoreAPI.h
    api/SecureAppAPI.h
    api/ServiceHubAPI.h
    api/ShipmentAPI.h
    api/ShipmentBatchAPI.h
    api/SimulationAPI.h
    api/StopAPI.h
    api/StripeAPI.h
    api/SubscriptionAPI.h
    api/TaskAPI.h
    api/TerritoryAPI.h
    api/ThemeDescriptorAPI.h
    api/ThirdPartyCredentialsAPI.h
    api/TicketAPI.h
    api/TournamentAPI.h
    api/TrackingAPI.h
    api/TriggerAPI.h
    api/TripAPI.h
    api/TwilioAPI.h
    api/TwitterAPI.h
    api/UserPermissionsAPI.h
    api/VatomAPI.h
    api/VehicleAPI.h
    api/VehicleTypeAPI.h
    api/WalletAPI.h
    api/WeatherAPI.h
    api/WordAPI.h
    api/WorkflowAPI.h

)

include(PreTarget.cmake OPTIONAL)

set(PROJECT_VERSION_STRING "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

# Add library with project file with project name as library name
if(NOT BUILD_STATIC_LIBS)
  add_library(${pkgName} ${SRCS} ${HDRS})
else()
  add_library(${pkgName} STATIC ${SRCS} ${HDRS})
endif()
# Link dependent libraries
if(NOT CMAKE_VERSION VERSION_LESS 3.4)
    target_link_libraries(${pkgName} PRIVATE OpenSSL::SSL OpenSSL::Crypto)
endif()
target_link_libraries(${pkgName} PUBLIC ${CURL_LIBRARIES} )
target_include_directories(
    ${pkgName} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

include(PostTarget.cmake OPTIONAL)

# installation of libraries, headers, and config files
if (NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in)
    install(TARGETS ${pkgName} DESTINATION lib)
else()
    include(GNUInstallDirs)
    install(TARGETS ${pkgName} DESTINATION lib EXPORT ${pkgName}Targets)

    foreach(HDR_FILE ${HDRS})
        get_filename_component(HDR_DIRECTORY ${HDR_FILE} DIRECTORY)
        get_filename_component(ABSOLUTE_HDR_DIRECTORY ${HDR_DIRECTORY} ABSOLUTE)
        file(RELATIVE_PATH RELATIVE_HDR_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${ABSOLUTE_HDR_DIRECTORY})
        install(FILES ${HDR_FILE} DESTINATION include/${pkgName}/${RELATIVE_HDR_PATH})
    endforeach()

    include(CMakePackageConfigHelpers)
    write_basic_package_version_file(
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            VERSION "${PROJECT_VERSION_STRING}"
            COMPATIBILITY AnyNewerVersion
    )

    export(EXPORT ${pkgName}Targets
            FILE "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Targets.cmake"
            NAMESPACE ${pkgName}::
            )

    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            @ONLY
            )

    set(ConfigPackageLocation lib/cmake/${pkgName})
    install(EXPORT ${pkgName}Targets
            FILE
            ${pkgName}Targets.cmake
            NAMESPACE
            ${pkgName}::
            DESTINATION
            ${ConfigPackageLocation}
            )
    install(
            FILES
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            DESTINATION
            ${ConfigPackageLocation}
    )
endif()

# make installation packages
include(Packing.cmake OPTIONAL)

# Setting file variables to null
set(SRCS "")
set(HDRS "")


## This section shows how to use the above compiled library to compile the source files
## set source files
#set(SRCS
#    unit-tests/manual-AMQPAPI.c
#    unit-tests/manual-AccountAPI.c
#    unit-tests/manual-AchievementAPI.c
#    unit-tests/manual-ActivityAPI.c
#    unit-tests/manual-AlbumAPI.c
#    unit-tests/manual-AnalyticsAPI.c
#    unit-tests/manual-AppDataAPI.c
#    unit-tests/manual-ApplicationAPI.c
#    unit-tests/manual-ApplicationConfigAPI.c
#    unit-tests/manual-AssetAPI.c
#    unit-tests/manual-AssignmentAPI.c
#    unit-tests/manual-AudienceAPI.c
#    unit-tests/manual-BidAPI.c
#    unit-tests/manual-BillableEntityAPI.c
#    unit-tests/manual-BillingInfoAPI.c
#    unit-tests/manual-CSVImportAPI.c
#    unit-tests/manual-CargoTypeAPI.c
#    unit-tests/manual-CarrierAPI.c
#    unit-tests/manual-CategoryAPI.c
#    unit-tests/manual-ConnectionAPI.c
#    unit-tests/manual-ContestAPI.c
#    unit-tests/manual-CreativeAPI.c
#    unit-tests/manual-DependentAPI.c
#    unit-tests/manual-DisbursementAPI.c
#    unit-tests/manual-EmployeeAPI.c
#    unit-tests/manual-EventAPI.c
#    unit-tests/manual-FacebookAPI.c
#    unit-tests/manual-FavoriteAPI.c
#    unit-tests/manual-FilterAPI.c
#    unit-tests/manual-FlagAPI.c
#    unit-tests/manual-GameAPI.c
#    unit-tests/manual-GameLevelAPI.c
#    unit-tests/manual-InviteAPI.c
#    unit-tests/manual-LeaderboardAPI.c
#    unit-tests/manual-LikeAPI.c
#    unit-tests/manual-ListingAPI.c
#    unit-tests/manual-LocationAPI.c
#    unit-tests/manual-LocationApiV2API.c
#    unit-tests/manual-MediaAPI.c
#    unit-tests/manual-MissionAPI.c
#    unit-tests/manual-MissionInviteAPI.c
#    unit-tests/manual-NoteAPI.c
#    unit-tests/manual-NotificationAPI.c
#    unit-tests/manual-ObjectStoreAPI.c
#    unit-tests/manual-OfferAPI.c
#    unit-tests/manual-OfferStatusAPI.c
#    unit-tests/manual-OpenAIAPI.c
#    unit-tests/manual-OptimizeAPI.c
#    unit-tests/manual-OrsonAPI.c
#    unit-tests/manual-PackAPI.c
#    unit-tests/manual-ParticipantsAPI.c
#    unit-tests/manual-PathingAPI.c
#    unit-tests/manual-PostalCodeAPI.c
#    unit-tests/manual-PreviewPersonaAPI.c
#    unit-tests/manual-ProgramAPI.c
#    unit-tests/manual-PurchaseItemAPI.c
#    unit-tests/manual-PurchaseOrderAPI.c
#    unit-tests/manual-QuestionAPI.c
#    unit-tests/manual-RankingAPI.c
#    unit-tests/manual-RatingAPI.c
#    unit-tests/manual-RegionAPI.c
#    unit-tests/manual-ReportingAPI.c
#    unit-tests/manual-ReservationAPI.c
#    unit-tests/manual-RetailerAPI.c
#    unit-tests/manual-RetailerLocationAPI.c
#    unit-tests/manual-RetailerV2API.c
#    unit-tests/manual-RouteAPI.c
#    unit-tests/manual-RouteSettingAPI.c
#    unit-tests/manual-RoutingAPI.c
#    unit-tests/manual-ScheduledNotificationAPI.c
#    unit-tests/manual-ScoreAPI.c
#    unit-tests/manual-SecureAppAPI.c
#    unit-tests/manual-ServiceHubAPI.c
#    unit-tests/manual-ShipmentAPI.c
#    unit-tests/manual-ShipmentBatchAPI.c
#    unit-tests/manual-SimulationAPI.c
#    unit-tests/manual-StopAPI.c
#    unit-tests/manual-StripeAPI.c
#    unit-tests/manual-SubscriptionAPI.c
#    unit-tests/manual-TaskAPI.c
#    unit-tests/manual-TerritoryAPI.c
#    unit-tests/manual-ThemeDescriptorAPI.c
#    unit-tests/manual-ThirdPartyCredentialsAPI.c
#    unit-tests/manual-TicketAPI.c
#    unit-tests/manual-TournamentAPI.c
#    unit-tests/manual-TrackingAPI.c
#    unit-tests/manual-TriggerAPI.c
#    unit-tests/manual-TripAPI.c
#    unit-tests/manual-TwilioAPI.c
#    unit-tests/manual-TwitterAPI.c
#    unit-tests/manual-UserPermissionsAPI.c
#    unit-tests/manual-VatomAPI.c
#    unit-tests/manual-VehicleAPI.c
#    unit-tests/manual-VehicleTypeAPI.c
#    unit-tests/manual-WalletAPI.c
#    unit-tests/manual-WeatherAPI.c
#    unit-tests/manual-WordAPI.c
#    unit-tests/manual-WorkflowAPI.c
#)

##set header files
#set(HDRS
#)

## loop over all files in SRCS variable
#foreach(SOURCE_FILE ${SRCS})
#    # Get only the file name from the file as add_executable does not support executable with slash("/")
#    get_filename_component(FILE_NAME_ONLY ${SOURCE_FILE} NAME_WE)
#    # Remove .c from the file name and set it as executable name
#    string( REPLACE ".c" "" EXECUTABLE_FILE ${FILE_NAME_ONLY})
#    # Add executable for every source file in  SRCS
#    add_executable(unit-${EXECUTABLE_FILE} ${SOURCE_FILE})
#    # Link above created library to executable and dependent library curl
#    target_link_libraries(unit-${EXECUTABLE_FILE} ${CURL_LIBRARIES} ${pkgName} )
#endforeach(SOURCE_FILE ${SRCS})
