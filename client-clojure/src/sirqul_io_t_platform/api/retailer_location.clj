(ns sirqul-io-t-platform.api.retailer-location
  (:require [sirqul-io-t-platform.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [sirqul-io-t-platform.specs.creative-response :refer :all]
            [sirqul-io-t-platform.specs.album-response :refer :all]
            [sirqul-io-t-platform.specs.connected-friend :refer :all]
            [sirqul-io-t-platform.specs.date-time-range :refer :all]
            [sirqul-io-t-platform.specs.contact-info-response :refer :all]
            [sirqul-io-t-platform.specs.sirqul-response :refer :all]
            [sirqul-io-t-platform.specs.user-activity-response :refer :all]
            [sirqul-io-t-platform.specs.album-contest-list-response :refer :all]
            [sirqul-io-t-platform.specs.building :refer :all]
            [sirqul-io-t-platform.specs.purchase-item-short-response :refer :all]
            [sirqul-io-t-platform.specs.report-batch-response :refer :all]
            [sirqul-io-t-platform.specs.leg :refer :all]
            [sirqul-io-t-platform.specs.image-generation-response :refer :all]
            [sirqul-io-t-platform.specs.offer :refer :all]
            [sirqul-io-t-platform.specs.profile-response :refer :all]
            [sirqul-io-t-platform.specs.date-time-zone :refer :all]
            [sirqul-io-t-platform.specs.coords-response :refer :all]
            [sirqul-io-t-platform.specs.notification-message-list-response :refer :all]
            [sirqul-io-t-platform.specs.trip :refer :all]
            [sirqul-io-t-platform.specs.json-element :refer :all]
            [sirqul-io-t-platform.specs.scheduled-notification :refer :all]
            [sirqul-io-t-platform.specs.url-response :refer :all]
            [sirqul-io-t-platform.specs.search-response :refer :all]
            [sirqul-io-t-platform.specs.audience :refer :all]
            [sirqul-io-t-platform.specs.pack :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-prod-response :refer :all]
            [sirqul-io-t-platform.specs.billable-entity-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-location-response :refer :all]
            [sirqul-io-t-platform.specs.count-response :refer :all]
            [sirqul-io-t-platform.specs.node :refer :all]
            [sirqul-io-t-platform.specs.asset-list-response :refer :all]
            [sirqul-io-t-platform.specs.mission :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-voice-canvas-response :refer :all]
            [sirqul-io-t-platform.specs.route :refer :all]
            [sirqul-io-t-platform.specs.application-mini-response :refer :all]
            [sirqul-io-t-platform.specs.stop :refer :all]
            [sirqul-io-t-platform.specs.json-array :refer :all]
            [sirqul-io-t-platform.specs.shipment-batch :refer :all]
            [sirqul-io-t-platform.specs.third-party-network :refer :all]
            [sirqul-io-t-platform.specs.disbursement-response :refer :all]
            [sirqul-io-t-platform.specs.placement :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.device :refer :all]
            [sirqul-io-t-platform.specs.notification-recipient-response-list-response :refer :all]
            [sirqul-io-t-platform.specs.event-attendance-response :refer :all]
            [sirqul-io-t-platform.specs.leaderboard-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-count-response :refer :all]
            [sirqul-io-t-platform.specs.subscription-response :refer :all]
            [sirqul-io-t-platform.specs.twi-ml-response :refer :all]
            [sirqul-io-t-platform.specs.participant-response :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-stt-response :refer :all]
            [sirqul-io-t-platform.specs.offer-response :refer :all]
            [sirqul-io-t-platform.specs.purchase-item-list-response :refer :all]
            [sirqul-io-t-platform.specs.duration-field :refer :all]
            [sirqul-io-t-platform.specs.retailer-offer-response :refer :all]
            [sirqul-io-t-platform.specs.vehicle-response :refer :all]
            [sirqul-io-t-platform.specs.purchase-item-full-response :refer :all]
            [sirqul-io-t-platform.specs.game-level-list-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.rule-response :refer :all]
            [sirqul-io-t-platform.specs.app-response :refer :all]
            [sirqul-io-t-platform.specs.scheduled-notification-full-response :refer :all]
            [sirqul-io-t-platform.specs.json-object :refer :all]
            [sirqul-io-t-platform.specs.account-login-response :refer :all]
            [sirqul-io-t-platform.specs.third-party-credentials :refer :all]
            [sirqul-io-t-platform.specs.weather-response :refer :all]
            [sirqul-io-t-platform.specs.listing :refer :all]
            [sirqul-io-t-platform.specs.time-slot-response :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-tech-tune-response :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-proto-response :refer :all]
            [sirqul-io-t-platform.specs.queue-response :refer :all]
            [sirqul-io-t-platform.specs.geo-box :refer :all]
            [sirqul-io-t-platform.specs.report-definition :refer :all]
            [sirqul-io-t-platform.specs.subscription-plan-response :refer :all]
            [sirqul-io-t-platform.specs.address :refer :all]
            [sirqul-io-t-platform.specs.invite-response :refer :all]
            [sirqul-io-t-platform.specs.user-permissions :refer :all]
            [sirqul-io-t-platform.specs.retailer :refer :all]
            [sirqul-io-t-platform.specs.account-mini-response :refer :all]
            [sirqul-io-t-platform.specs.size-group-response :refer :all]
            [sirqul-io-t-platform.specs.offer-location :refer :all]
            [sirqul-io-t-platform.specs.size-group :refer :all]
            [sirqul-io-t-platform.specs.ticket-count-response :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-topic-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-location :refer :all]
            [sirqul-io-t-platform.specs.placement-response :refer :all]
            [sirqul-io-t-platform.specs.mission-format-response :refer :all]
            [sirqul-io-t-platform.specs.vehicle-cargo-setting :refer :all]
            [sirqul-io-t-platform.specs.message-response :refer :all]
            [sirqul-io-t-platform.specs.list-response :refer :all]
            [sirqul-io-t-platform.specs.order-response :refer :all]
            [sirqul-io-t-platform.specs.filter-tree-response :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-batch-topics-response :refer :all]
            [sirqul-io-t-platform.specs.date-time-field :refer :all]
            [sirqul-io-t-platform.specs.assignment-status :refer :all]
            [sirqul-io-t-platform.specs.achievement-progress-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-response :refer :all]
            [sirqul-io-t-platform.specs.trilat-app-settings :refer :all]
            [sirqul-io-t-platform.specs.game-object-response :refer :all]
            [sirqul-io-t-platform.specs.third-party-credential-response :refer :all]
            [sirqul-io-t-platform.specs.address-response :refer :all]
            [sirqul-io-t-platform.specs.driver-response :refer :all]
            [sirqul-io-t-platform.specs.reservation-response :refer :all]
            [sirqul-io-t-platform.specs.chronology :refer :all]
            [sirqul-io-t-platform.specs.mission-response :refer :all]
            [sirqul-io-t-platform.specs.preview-persona-response :refer :all]
            [sirqul-io-t-platform.specs.biometric-image :refer :all]
            [sirqul-io-t-platform.specs.user-location-list-response :refer :all]
            [sirqul-io-t-platform.specs.entity-reference :refer :all]
            [sirqul-io-t-platform.specs.participant :refer :all]
            [sirqul-io-t-platform.specs.wrapped-proxy-response :refer :all]
            [sirqul-io-t-platform.specs.connection-group :refer :all]
            [sirqul-io-t-platform.specs.wordz-word-response :refer :all]
            [sirqul-io-t-platform.specs.likable-response :refer :all]
            [sirqul-io-t-platform.specs.offer-transaction-response :refer :all]
            [sirqul-io-t-platform.specs.third-party-network-short-response :refer :all]
            [sirqul-io-t-platform.specs.application-short-response :refer :all]
            [sirqul-io-t-platform.specs.application-usage-response :refer :all]
            [sirqul-io-t-platform.specs.contact :refer :all]
            [sirqul-io-t-platform.specs.wrapped-proxy-item-response :refer :all]
            [sirqul-io-t-platform.specs.flag-response :refer :all]
            [sirqul-io-t-platform.specs.purchase-order-item-response :refer :all]
            [sirqul-io-t-platform.specs.connection-group-response :refer :all]
            [sirqul-io-t-platform.specs.listing-response :refer :all]
            [sirqul-io-t-platform.specs.game-response :refer :all]
            [sirqul-io-t-platform.specs.shipment :refer :all]
            [sirqul-io-t-platform.specs.mission-list-response :refer :all]
            [sirqul-io-t-platform.specs.geocode-lat-lng-response :refer :all]
            [sirqul-io-t-platform.specs.reward-response :refer :all]
            [sirqul-io-t-platform.specs.subscription-option-response :refer :all]
            [sirqul-io-t-platform.specs.contact-response :refer :all]
            [sirqul-io-t-platform.specs.note-full-response :refer :all]
            [sirqul-io-t-platform.specs.fingerprint-biometric-image :refer :all]
            [sirqul-io-t-platform.specs.audience-device :refer :all]
            [sirqul-io-t-platform.specs.region-leg-summary :refer :all]
            [sirqul-io-t-platform.specs.promo-code :refer :all]
            [sirqul-io-t-platform.specs.region :refer :all]
            [sirqul-io-t-platform.specs.account-list-response :refer :all]
            [sirqul-io-t-platform.specs.activity-response :refer :all]
            [sirqul-io-t-platform.specs.payment-transaction-response :refer :all]
            [sirqul-io-t-platform.specs.question-response :refer :all]
            [sirqul-io-t-platform.specs.rating-index-response :refer :all]
            [sirqul-io-t-platform.specs.like-response :refer :all]
            [sirqul-io-t-platform.specs.message-list-response :refer :all]
            [sirqul-io-t-platform.specs.offer-transaction-status-response :refer :all]
            [sirqul-io-t-platform.specs.user-permissions-response :refer :all]
            [sirqul-io-t-platform.specs.json-primitive :refer :all]
            [sirqul-io-t-platform.specs.account-response :refer :all]
            [sirqul-io-t-platform.specs.route-settings :refer :all]
            [sirqul-io-t-platform.specs.base-offer-response :refer :all]
            [sirqul-io-t-platform.specs.import-statuses :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-topics-response :refer :all]
            [sirqul-io-t-platform.specs.profile-info-response :refer :all]
            [sirqul-io-t-platform.specs.node-request :refer :all]
            [sirqul-io-t-platform.specs.predicted-location-response :refer :all]
            [sirqul-io-t-platform.specs.report-response :refer :all]
            [sirqul-io-t-platform.specs.product-response :refer :all]
            [sirqul-io-t-platform.specs.group-permissions :refer :all]
            [sirqul-io-t-platform.specs.tutorial :refer :all]
            [sirqul-io-t-platform.specs.category-response :refer :all]
            [sirqul-io-t-platform.specs.trilat-cache-sample :refer :all]
            [sirqul-io-t-platform.specs.age-group-response :refer :all]
            [sirqul-io-t-platform.specs.user-settings-response :refer :all]
            [sirqul-io-t-platform.specs.mission-task :refer :all]
            [sirqul-io-t-platform.specs.leaderboard-full-response :refer :all]
            [sirqul-io-t-platform.specs.employee-response :refer :all]
            [sirqul-io-t-platform.specs.cell-carrier :refer :all]
            [sirqul-io-t-platform.specs.pack-list-response :refer :all]
            [sirqul-io-t-platform.specs.media-offer-response :refer :all]
            [sirqul-io-t-platform.specs.list-count-response :refer :all]
            [sirqul-io-t-platform.specs.listing-full-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-location-short-response :refer :all]
            [sirqul-io-t-platform.specs.load-short-response :refer :all]
            [sirqul-io-t-platform.specs.game-level-response :refer :all]
            [sirqul-io-t-platform.specs.location :refer :all]
            [sirqul-io-t-platform.specs.step :refer :all]
            [sirqul-io-t-platform.specs.cell-carrier-response :refer :all]
            [sirqul-io-t-platform.specs.orson-render-response :refer :all]
            [sirqul-io-t-platform.specs.score-response :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-visual-emotion-response :refer :all]
            [sirqul-io-t-platform.specs.tutorial-response :refer :all]
            [sirqul-io-t-platform.specs.user-location-search-response :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-batch-emotions-response :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-add-movie-response :refer :all]
            [sirqul-io-t-platform.specs.application-config-response :refer :all]
            [sirqul-io-t-platform.specs.notification-message-response :refer :all]
            [sirqul-io-t-platform.specs.program :refer :all]
            [sirqul-io-t-platform.specs.notification-template-response :refer :all]
            [sirqul-io-t-platform.specs.routing-list-response :refer :all]
            [sirqul-io-t-platform.specs.offer-list-response :refer :all]
            [sirqul-io-t-platform.specs.third-party-network-response :refer :all]
            [sirqul-io-t-platform.specs.audience-response :refer :all]
            [sirqul-io-t-platform.specs.note-response :refer :all]
            [sirqul-io-t-platform.specs.scheduled-notification-short-response :refer :all]
            [sirqul-io-t-platform.specs.trigger-response :refer :all]
            [sirqul-io-t-platform.specs.permissions :refer :all]
            [sirqul-io-t-platform.specs.connection :refer :all]
            [sirqul-io-t-platform.specs.theme-descriptor-response :refer :all]
            [sirqul-io-t-platform.specs.local-time :refer :all]
            [sirqul-io-t-platform.specs.account-profile-info :refer :all]
            [sirqul-io-t-platform.specs.listing-group-response :refer :all]
            [sirqul-io-t-platform.specs.profile-short-response :refer :all]
            [sirqul-io-t-platform.specs.service-hub :refer :all]
            [sirqul-io-t-platform.specs.filter-response :refer :all]
            [sirqul-io-t-platform.specs.audience-location :refer :all]
            [sirqul-io-t-platform.specs.app-info-response :refer :all]
            [sirqul-io-t-platform.specs.consumer-invite-response :refer :all]
            [sirqul-io-t-platform.specs.location-response :refer :all]
            [sirqul-io-t-platform.specs.routing-response :refer :all]
            [sirqul-io-t-platform.specs.verb :refer :all]
            [sirqul-io-t-platform.specs.load-response :refer :all]
            [sirqul-io-t-platform.specs.bid-response :refer :all]
            [sirqul-io-t-platform.specs.tournament-response :refer :all]
            [sirqul-io-t-platform.specs.album-full-response :refer :all]
            [sirqul-io-t-platform.specs.game-object-list-response :refer :all]
            [sirqul-io-t-platform.specs.recurrence :refer :all]
            [sirqul-io-t-platform.specs.leaderboard :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-batch-transcript-response :refer :all]
            [sirqul-io-t-platform.specs.rank-list-response :refer :all]
            [sirqul-io-t-platform.specs.interval :refer :all]
            [sirqul-io-t-platform.specs.orders :refer :all]
            [sirqul-io-t-platform.specs.assignment-status-response :refer :all]
            [sirqul-io-t-platform.specs.subscription-plan :refer :all]
            [sirqul-io-t-platform.specs.flag :refer :all]
            [sirqul-io-t-platform.specs.blob-file :refer :all]
            [sirqul-io-t-platform.specs.mission-invite-response :refer :all]
            [sirqul-io-t-platform.specs.yay-or-nay :refer :all]
            [sirqul-io-t-platform.specs.billable-entity-short-response :refer :all]
            [sirqul-io-t-platform.specs.subscription :refer :all]
            [sirqul-io-t-platform.specs.shipment-import-status :refer :all]
            [sirqul-io-t-platform.specs.achievement-short-response :refer :all]
            [sirqul-io-t-platform.specs.order-item-request :refer :all]
            [sirqul-io-t-platform.specs.vehicle :refer :all]
            [sirqul-io-t-platform.specs.audience-device-version-range :refer :all]
            [sirqul-io-t-platform.specs.event-response :refer :all]
            [sirqul-io-t-platform.specs.task-response :refer :all]
            [sirqul-io-t-platform.specs.asset-full-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-profile :refer :all]
            [sirqul-io-t-platform.specs.leg-response :refer :all]
            [sirqul-io-t-platform.specs.step-response :refer :all]
            [sirqul-io-t-platform.specs.event :refer :all]
            [sirqul-io-t-platform.specs.geo-point-response :refer :all]
            [sirqul-io-t-platform.specs.contact-info :refer :all]
            [sirqul-io-t-platform.specs.postal-code-response :refer :all]
            [sirqul-io-t-platform.specs.line-item :refer :all]
            [sirqul-io-t-platform.specs.purchase-item-response :refer :all]
            [sirqul-io-t-platform.specs.shipment-order :refer :all]
            [sirqul-io-t-platform.specs.availability-response :refer :all]
            [sirqul-io-t-platform.specs.product :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-emotions-response :refer :all]
            [sirqul-io-t-platform.specs.personal-profile-response :refer :all]
            [sirqul-io-t-platform.specs.ticket-offer-response :refer :all]
            [sirqul-io-t-platform.specs.user-location-response :refer :all]
            [sirqul-io-t-platform.specs.application-settings-response :refer :all]
            [sirqul-io-t-platform.specs.game-list-response :refer :all]
            [sirqul-io-t-platform.specs.location-search-response :refer :all]
            [sirqul-io-t-platform.specs.direction-response :refer :all]
            [sirqul-io-t-platform.specs.pathing-response :refer :all]
            [sirqul-io-t-platform.specs.user-permissions-list-response :refer :all]
            [sirqul-io-t-platform.specs.subscription-option :refer :all]
            [sirqul-io-t-platform.specs.ticket-response :refer :all]
            [sirqul-io-t-platform.specs.app-version :refer :all]
            [sirqul-io-t-platform.specs.payment-types-response :refer :all]
            [sirqul-io-t-platform.specs.blocked-notification-response :refer :all]
            [sirqul-io-t-platform.specs.filter :refer :all]
            [sirqul-io-t-platform.specs.postal-code :refer :all]
            [sirqul-io-t-platform.specs.album-contest-response :refer :all]
            [sirqul-io-t-platform.specs.geo-response :refer :all]
            [sirqul-io-t-platform.specs.vehicle-type :refer :all]
            [sirqul-io-t-platform.specs.offer-short-response :refer :all]
            [sirqul-io-t-platform.specs.connection-group-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.dimensions :refer :all]
            [sirqul-io-t-platform.specs.payment-request :refer :all]
            [sirqul-io-t-platform.specs.retailer-full-response :refer :all]
            [sirqul-io-t-platform.specs.token-response :refer :all]
            [sirqul-io-t-platform.specs.duration-field-type :refer :all]
            [sirqul-io-t-platform.specs.connection-response :refer :all]
            [sirqul-io-t-platform.specs.flag-threshold :refer :all]
            [sirqul-io-t-platform.specs.asset-response :refer :all]
            [sirqul-io-t-platform.specs.rank-full-response :refer :all]
            [sirqul-io-t-platform.specs.biometric-request :refer :all]
            [sirqul-io-t-platform.specs.score-list-response :refer :all]
            [sirqul-io-t-platform.specs.achievement-tier-response :refer :all]
            [sirqul-io-t-platform.specs.itinerary-response :refer :all]
            [sirqul-io-t-platform.specs.rank-response :refer :all]
            [sirqul-io-t-platform.specs.chart-data :refer :all]
            [sirqul-io-t-platform.specs.achievement-response :refer :all]
            [sirqul-io-t-platform.specs.csv-import-response :refer :all]
            [sirqul-io-t-platform.specs.notification-recipient-response :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-batch-response :refer :all]
            [sirqul-io-t-platform.specs.report-type-response :refer :all]
            [sirqul-io-t-platform.specs.category-tree-response :refer :all]
            [sirqul-io-t-platform.specs.object-store-response :refer :all]
            [sirqul-io-t-platform.specs.config-routing-request :refer :all]
            [sirqul-io-t-platform.specs.date-time-field-type :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-tts-response :refer :all]
            [sirqul-io-t-platform.specs.mission-short-response :refer :all]
            [sirqul-io-t-platform.specs.assignment-response :refer :all]
            [sirqul-io-t-platform.specs.orson-video-response :refer :all]
            [sirqul-io-t-platform.specs.orson-episode-response :refer :all]
            [sirqul-io-t-platform.specs.region-response :refer :all]
            [sirqul-io-t-platform.specs.preferred-location-response :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.game :refer :all]
            [sirqul-io-t-platform.specs.notification-settings-response :refer :all]
            [sirqul-io-t-platform.specs.stop-response :refer :all]
            [sirqul-io-t-platform.specs.wrapped-response :refer :all]
            [sirqul-io-t-platform.specs.connection-info-response :refer :all]
            [sirqul-io-t-platform.specs.media :refer :all]
            [sirqul-io-t-platform.specs.trilat-cache-request :refer :all]
            [sirqul-io-t-platform.specs.platform :refer :all]
            [sirqul-io-t-platform.specs.platform-response :refer :all]
            [sirqul-io-t-platform.specs.permission-response :refer :all]
            [sirqul-io-t-platform.specs.connection-list-response :refer :all]
            [sirqul-io-t-platform.specs.report-region-leg-summary-batch-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-short-response :refer :all]
            [sirqul-io-t-platform.specs.application-response :refer :all]
            [sirqul-io-t-platform.specs.direction :refer :all]
            [sirqul-io-t-platform.specs.album :refer :all]
            [sirqul-io-t-platform.specs.assignment :refer :all]
            [sirqul-io-t-platform.specs.service-type :refer :all]
            [sirqul-io-t-platform.specs.territory-response :refer :all]
            [sirqul-io-t-platform.specs.order-package :refer :all]
            [sirqul-io-t-platform.specs.rule-list-response :refer :all]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.weather-forecast-response :refer :all]
            [sirqul-io-t-platform.specs.media-response :refer :all]
            [sirqul-io-t-platform.specs.audience-device-response :refer :all]
            [sirqul-io-t-platform.specs.audience-target-type :refer :all]
            [sirqul-io-t-platform.specs.billable-entity :refer :all]
            [sirqul-io-t-platform.specs.pack-response :refer :all]
            [sirqul-io-t-platform.specs.game-level :refer :all]
            [sirqul-io-t-platform.specs.ticket-list-response :refer :all]
            [sirqul-io-t-platform.specs.application :refer :all]
            [sirqul-io-t-platform.specs.invoice :refer :all]
            [sirqul-io-t-platform.specs.rating-response :refer :all]
            [sirqul-io-t-platform.specs.cargo-type :refer :all]
            [sirqul-io-t-platform.specs.category :refer :all]
            [sirqul-io-t-platform.specs.answer-response :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.json-null :refer :all]
            [sirqul-io-t-platform.specs.territory :refer :all]
            )
  (:import (java.io File)))


(defn-spec create-retailer-location-consumer-with-http-info any?
  "Create Retailer Location (Consumer)
  Creates a location record for an application that can support crowd sourced locations."
  ([appKey string?, name string?, ] (create-retailer-location-consumer-with-http-info appKey name nil))
  ([appKey string?, name string?, {:keys [deviceId accountId streetAddress streetAddress2 city state postalCode country businessPhone businessPhoneExt website email detailsHeader detailsBody hours tags logoAssetId picture1AssetId picture2AssetId categoryIds filterIds metaData publicLocation active locationType latitude longitude]} (s/map-of keyword? any?)]
   (check-required-params appKey name)
   (call-api "/location/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "appKey" appKey "name" name "streetAddress" streetAddress "streetAddress2" streetAddress2 "city" city "state" state "postalCode" postalCode "country" country "businessPhone" businessPhone "businessPhoneExt" businessPhoneExt "website" website "email" email "detailsHeader" detailsHeader "detailsBody" detailsBody "hours" hours "tags" tags "logoAssetId" logoAssetId "picture1AssetId" picture1AssetId "picture2AssetId" picture2AssetId "categoryIds" categoryIds "filterIds" filterIds "metaData" metaData "publicLocation" publicLocation "active" active "locationType" locationType "latitude" latitude "longitude" longitude }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-retailer-location-consumer retailer-location-response-spec
  "Create Retailer Location (Consumer)
  Creates a location record for an application that can support crowd sourced locations."
  ([appKey string?, name string?, ] (create-retailer-location-consumer appKey name nil))
  ([appKey string?, name string?, optional-params any?]
   (let [res (:data (create-retailer-location-consumer-with-http-info appKey name optional-params))]
     (if (:decode-models *api-context*)
        (st/decode retailer-location-response-spec res st/string-transformer)
        res))))


(defn-spec create-retailer-locations-with-http-info any?
  "Create Retailer Location
  Creates a location record for a retailer. Only the owner and the employees of the retailer have access to do this."
  ([retailerId int?, name string?, streetAddress string?, city string?, state string?, postalCode string?, ] (create-retailer-locations-with-http-info retailerId name streetAddress city state postalCode nil))
  ([retailerId int?, name string?, streetAddress string?, city string?, state string?, postalCode string?, {:keys [deviceId accountId streetAddress2 country businessPhone businessPhoneExt website email internalId detailsHeader detailsBody hours ^File logo logoAssetId ^File picture1 picture1AssetId ^File picture2 picture2AssetId categoryIds filterIds latitude longitude building googlePlaceId yelpId active publicLocation locationType audienceIds audienceIdsToAdd audienceIdsToRemove responseFormat responseIncludes]} (s/map-of keyword? any?)]
   (check-required-params retailerId name streetAddress city state postalCode)
   (call-api "/retailer/location/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "retailerId" retailerId "name" name "streetAddress" streetAddress "streetAddress2" streetAddress2 "city" city "state" state "postalCode" postalCode "country" country "businessPhone" businessPhone "businessPhoneExt" businessPhoneExt "website" website "email" email "internalId" internalId "detailsHeader" detailsHeader "detailsBody" detailsBody "hours" hours "logo" logo "logoAssetId" logoAssetId "picture1" picture1 "picture1AssetId" picture1AssetId "picture2" picture2 "picture2AssetId" picture2AssetId "categoryIds" categoryIds "filterIds" filterIds "latitude" latitude "longitude" longitude "building" building "googlePlaceId" googlePlaceId "yelpId" yelpId "active" active "publicLocation" publicLocation "locationType" locationType "audienceIds" audienceIds "audienceIdsToAdd" audienceIdsToAdd "audienceIdsToRemove" audienceIdsToRemove "responseFormat" responseFormat "responseIncludes" responseIncludes }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-retailer-locations retailer-location-response-spec
  "Create Retailer Location
  Creates a location record for a retailer. Only the owner and the employees of the retailer have access to do this."
  ([retailerId int?, name string?, streetAddress string?, city string?, state string?, postalCode string?, ] (create-retailer-locations retailerId name streetAddress city state postalCode nil))
  ([retailerId int?, name string?, streetAddress string?, city string?, state string?, postalCode string?, optional-params any?]
   (let [res (:data (create-retailer-locations-with-http-info retailerId name streetAddress city state postalCode optional-params))]
     (if (:decode-models *api-context*)
        (st/decode retailer-location-response-spec res st/string-transformer)
        res))))


(defn-spec delete-retailer-location-with-http-info any?
  "Delete Retailer Location
  Set the deleted timestamp to current time. This effectively deletes the retailer location since all queries should ignore any records with a deleted time stamp."
  ([] (delete-retailer-location-with-http-info nil))
  ([{:keys [deviceId accountId retailerLocationId]} (s/map-of keyword? any?)]
   (call-api "/retailer/location/delete" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "retailerLocationId" retailerLocationId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec delete-retailer-location sirqul-response-spec
  "Delete Retailer Location
  Set the deleted timestamp to current time. This effectively deletes the retailer location since all queries should ignore any records with a deleted time stamp."
  ([] (delete-retailer-location nil))
  ([optional-params any?]
   (let [res (:data (delete-retailer-location-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec get-retailer-location-with-http-info any?
  "Get Retailer Location
  Gets a retailer location. Only the owner and the employees of the retailer have access to view its information."
  ([retailerLocationId int?, ] (get-retailer-location-with-http-info retailerLocationId nil))
  ([retailerLocationId int?, {:keys [deviceId accountId retailerLocationToken]} (s/map-of keyword? any?)]
   (check-required-params retailerLocationId)
   (call-api "/retailer/location/get" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "retailerLocationId" retailerLocationId "retailerLocationToken" retailerLocationToken }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-retailer-location retailer-location-response-spec
  "Get Retailer Location
  Gets a retailer location. Only the owner and the employees of the retailer have access to view its information."
  ([retailerLocationId int?, ] (get-retailer-location retailerLocationId nil))
  ([retailerLocationId int?, optional-params any?]
   (let [res (:data (get-retailer-location-with-http-info retailerLocationId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode retailer-location-response-spec res st/string-transformer)
        res))))


(defn-spec get-retailer-location-consumer-with-http-info any?
  "Get Retailer Location (Consumer)
  Gets the details of a retailer location as a consumer."
  ([retailerLocationId int?, ] (get-retailer-location-consumer-with-http-info retailerLocationId nil))
  ([retailerLocationId int?, {:keys [deviceId accountId]} (s/map-of keyword? any?)]
   (check-required-params retailerLocationId)
   (call-api "/location/get" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "retailerLocationId" retailerLocationId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-retailer-location-consumer retailer-location-response-spec
  "Get Retailer Location (Consumer)
  Gets the details of a retailer location as a consumer."
  ([retailerLocationId int?, ] (get-retailer-location-consumer retailerLocationId nil))
  ([retailerLocationId int?, optional-params any?]
   (let [res (:data (get-retailer-location-consumer-with-http-info retailerLocationId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode retailer-location-response-spec res st/string-transformer)
        res))))


(defn-spec indexed-retailer-location-distance-search-with-http-info any?
  "Distance Search Retailer Locations (Indexed)
  Retailer location indexed search by distance. This searches on any retailer location with location data and returns the results sorted by distance."
  ([latitude float?, longitude float?, searchRange float?, start int?, limit int?, ] (indexed-retailer-location-distance-search-with-http-info latitude longitude searchRange start limit nil))
  ([latitude float?, longitude float?, searchRange float?, start int?, limit int?, {:keys [accountId address hasOffers categories filters audiences retailerIds retailerLocationIds tags locationType sortField descending q keyword keywordOperator searchExpression distanceUnit returnFavorited returnRetailer returnAssets returnOffers returnCategories returnFilters returnAudiences returnQrCode returnExternalCategoryData includeFavorite includeLiked includeRating]} (s/map-of keyword? any?)]
   (check-required-params latitude longitude searchRange start limit)
   (call-api "/retailer/location/idistancesearch" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"latitude" latitude "longitude" longitude "accountId" accountId "address" address "searchRange" searchRange "start" start "limit" limit "hasOffers" hasOffers "categories" categories "filters" filters "audiences" audiences "retailerIds" retailerIds "retailerLocationIds" retailerLocationIds "tags" tags "locationType" locationType "sortField" sortField "descending" descending "q" q "keyword" keyword "keywordOperator" keywordOperator "searchExpression" searchExpression "distanceUnit" distanceUnit "returnFavorited" returnFavorited "returnRetailer" returnRetailer "returnAssets" returnAssets "returnOffers" returnOffers "returnCategories" returnCategories "returnFilters" returnFilters "returnAudiences" returnAudiences "returnQrCode" returnQrCode "returnExternalCategoryData" returnExternalCategoryData "includeFavorite" includeFavorite "includeLiked" includeLiked "includeRating" includeRating }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec indexed-retailer-location-distance-search (s/coll-of retailer-location-response-spec)
  "Distance Search Retailer Locations (Indexed)
  Retailer location indexed search by distance. This searches on any retailer location with location data and returns the results sorted by distance."
  ([latitude float?, longitude float?, searchRange float?, start int?, limit int?, ] (indexed-retailer-location-distance-search latitude longitude searchRange start limit nil))
  ([latitude float?, longitude float?, searchRange float?, start int?, limit int?, optional-params any?]
   (let [res (:data (indexed-retailer-location-distance-search-with-http-info latitude longitude searchRange start limit optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of retailer-location-response-spec) res st/string-transformer)
        res))))


(defn-spec indexed-retailer-location-search-with-http-info any?
  "Keyword Search Retailer Locations (Indexed)
  Retailer location (faster) indexed search. This searches all retailer locations."
  ([] (indexed-retailer-location-search-with-http-info nil))
  ([{:keys [accountId start limit hasOffers categories filters audiences retailerIds retailerLocationIds tags locationType sortField descending q keyword keywordOperator searchExpression returnRetailer returnAssets returnOffers returnCategories returnFilters returnAudiences returnQrCode returnExternalCategoryData includeFavorite includeLiked includeRating]} (s/map-of keyword? any?)]
   (call-api "/retailer/location/isearch" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "start" start "limit" limit "hasOffers" hasOffers "categories" categories "filters" filters "audiences" audiences "retailerIds" retailerIds "retailerLocationIds" retailerLocationIds "tags" tags "locationType" locationType "sortField" sortField "descending" descending "q" q "keyword" keyword "keywordOperator" keywordOperator "searchExpression" searchExpression "returnRetailer" returnRetailer "returnAssets" returnAssets "returnOffers" returnOffers "returnCategories" returnCategories "returnFilters" returnFilters "returnAudiences" returnAudiences "returnQrCode" returnQrCode "returnExternalCategoryData" returnExternalCategoryData "includeFavorite" includeFavorite "includeLiked" includeLiked "includeRating" includeRating }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec indexed-retailer-location-search (s/coll-of retailer-location-response-spec)
  "Keyword Search Retailer Locations (Indexed)
  Retailer location (faster) indexed search. This searches all retailer locations."
  ([] (indexed-retailer-location-search nil))
  ([optional-params any?]
   (let [res (:data (indexed-retailer-location-search-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of retailer-location-response-spec) res st/string-transformer)
        res))))


(defn-spec search-retailer-locations-with-http-info any?
  "Search Retailer Locations (Owned)
  Searches on retailer locations that the account has access to."
  ([] (search-retailer-locations-with-http-info nil))
  ([{:keys [deviceId accountId q keyword retailerIds retailerLocationIds locationType sortField descending _i start _l limit showPublicLocations activeOnly returnRetailer returnAssets returnOffers returnCategories returnFilters returnAudiences returnQrCode includeFavorite includeLiked includeRating]} (s/map-of keyword? any?)]
   (call-api "/retailer/location/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "q" q "keyword" keyword "retailerIds" retailerIds "retailerLocationIds" retailerLocationIds "locationType" locationType "sortField" sortField "descending" descending "_i" _i "start" start "_l" _l "limit" limit "showPublicLocations" showPublicLocations "activeOnly" activeOnly "returnRetailer" returnRetailer "returnAssets" returnAssets "returnOffers" returnOffers "returnCategories" returnCategories "returnFilters" returnFilters "returnAudiences" returnAudiences "returnQrCode" returnQrCode "includeFavorite" includeFavorite "includeLiked" includeLiked "includeRating" includeRating }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-retailer-locations (s/coll-of retailer-location-response-spec)
  "Search Retailer Locations (Owned)
  Searches on retailer locations that the account has access to."
  ([] (search-retailer-locations nil))
  ([optional-params any?]
   (let [res (:data (search-retailer-locations-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of retailer-location-response-spec) res st/string-transformer)
        res))))


(defn-spec update-retailer-locations-with-http-info any?
  "Update Retailer Location
  Updates a location record for a retailer. Only the owner and the employees of the retailer have access to do this."
  ([retailerLocationId int?, ] (update-retailer-locations-with-http-info retailerLocationId nil))
  ([retailerLocationId int?, {:keys [deviceId accountId name streetAddress streetAddress2 city state postalCode country businessPhone businessPhoneExt website email internalId detailsHeader detailsBody hours ^File logo logoAssetId ^File picture1 picture1AssetId ^File picture2 picture2AssetId categoryIds filterIds latitude longitude building googlePlaceId yelpId metaData paymentProvider active publicLocation locationType audienceIds audienceIdsToAdd audienceIdsToRemove responseFormat tags]} (s/map-of keyword? any?)]
   (check-required-params retailerLocationId)
   (call-api "/retailer/location/update" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "retailerLocationId" retailerLocationId "name" name "streetAddress" streetAddress "streetAddress2" streetAddress2 "city" city "state" state "postalCode" postalCode "country" country "businessPhone" businessPhone "businessPhoneExt" businessPhoneExt "website" website "email" email "internalId" internalId "detailsHeader" detailsHeader "detailsBody" detailsBody "hours" hours "logo" logo "logoAssetId" logoAssetId "picture1" picture1 "picture1AssetId" picture1AssetId "picture2" picture2 "picture2AssetId" picture2AssetId "categoryIds" categoryIds "filterIds" filterIds "latitude" latitude "longitude" longitude "building" building "googlePlaceId" googlePlaceId "yelpId" yelpId "metaData" metaData "paymentProvider" paymentProvider "active" active "publicLocation" publicLocation "locationType" locationType "audienceIds" audienceIds "audienceIdsToAdd" audienceIdsToAdd "audienceIdsToRemove" audienceIdsToRemove "responseFormat" responseFormat "tags" tags }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-retailer-locations retailer-location-response-spec
  "Update Retailer Location
  Updates a location record for a retailer. Only the owner and the employees of the retailer have access to do this."
  ([retailerLocationId int?, ] (update-retailer-locations retailerLocationId nil))
  ([retailerLocationId int?, optional-params any?]
   (let [res (:data (update-retailer-locations-with-http-info retailerLocationId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode retailer-location-response-spec res st/string-transformer)
        res))))


