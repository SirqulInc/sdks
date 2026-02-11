(ns sirqul-io-t-platform.api.third-party-credentials
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


(defn-spec create-credential-with-http-info any?
  "Create Credential
  This endpoint creates a third-party login for a Sirqul account. A third party login is a way for external systems (Third Party Networks) to link their own user accounts with a Sirqul account. 

The thirdPartyId parameter is used to determine if the user already exists in Sirqul or not. This parameter needs to be unique for each user in the Third Party Network (identified by the networkUID parameter). Note that subsequent calls will update the user's third-party login credentials for the user with the same thirdPartyId and networkUID combination. 

 The thirdPartyToken parameter acts as a shared secret and used by client applications to log users into Sirqul without providing a Sirqul username and password."
  ([thirdPartyId string?, thirdPartyToken string?, networkUID string?, appKey string?, ] (create-credential-with-http-info thirdPartyId thirdPartyToken networkUID appKey nil))
  ([thirdPartyId string?, thirdPartyToken string?, networkUID string?, appKey string?, {:keys [accountId deviceId sessionId thirdPartyName emailAddress signinOnlyMode responseFilters latitude longitude metaData thirdPartyRefreshToken audienceIdsToAdd audienceIdsToRemove]} (s/map-of keyword? any?)]
   (check-required-params thirdPartyId thirdPartyToken networkUID appKey)
   (call-api "/thirdparty/credential/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "deviceId" deviceId "sessionId" sessionId "thirdPartyId" thirdPartyId "thirdPartyName" thirdPartyName "thirdPartyToken" thirdPartyToken "networkUID" networkUID "appKey" appKey "emailAddress" emailAddress "signinOnlyMode" signinOnlyMode "responseFilters" responseFilters "latitude" latitude "longitude" longitude "metaData" metaData "thirdPartyRefreshToken" thirdPartyRefreshToken "audienceIdsToAdd" audienceIdsToAdd "audienceIdsToRemove" audienceIdsToRemove }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-credential profile-response-spec
  "Create Credential
  This endpoint creates a third-party login for a Sirqul account. A third party login is a way for external systems (Third Party Networks) to link their own user accounts with a Sirqul account. 

The thirdPartyId parameter is used to determine if the user already exists in Sirqul or not. This parameter needs to be unique for each user in the Third Party Network (identified by the networkUID parameter). Note that subsequent calls will update the user's third-party login credentials for the user with the same thirdPartyId and networkUID combination. 

 The thirdPartyToken parameter acts as a shared secret and used by client applications to log users into Sirqul without providing a Sirqul username and password."
  ([thirdPartyId string?, thirdPartyToken string?, networkUID string?, appKey string?, ] (create-credential thirdPartyId thirdPartyToken networkUID appKey nil))
  ([thirdPartyId string?, thirdPartyToken string?, networkUID string?, appKey string?, optional-params any?]
   (let [res (:data (create-credential-with-http-info thirdPartyId thirdPartyToken networkUID appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode profile-response-spec res st/string-transformer)
        res))))


(defn-spec create-network-with-http-info any?
  "Create Network
  Creates a custom third party network."
  ([accountId int?, name string?, enableIntrospection boolean?, ] (create-network-with-http-info accountId name enableIntrospection nil))
  ([accountId int?, name string?, enableIntrospection boolean?, {:keys [description introspectionMethod introspectionURL introspectionParams requiredRootField enableMFA sizeMFA shelfLifeMFA oauthTokenURL ^File oauthPrivateKey ^File oauthPublicKey oauthClientId oauthSecretKey body]} (s/map-of keyword? any?)]
   (check-required-params accountId name enableIntrospection)
   (call-api "/thirdparty/network/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "name" name "description" description "enableIntrospection" enableIntrospection "introspectionMethod" introspectionMethod "introspectionURL" introspectionURL "introspectionParams" introspectionParams "requiredRootField" requiredRootField "enableMFA" enableMFA "sizeMFA" sizeMFA "shelfLifeMFA" shelfLifeMFA "oauthTokenURL" oauthTokenURL "oauthPrivateKey" oauthPrivateKey "oauthPublicKey" oauthPublicKey "oauthClientId" oauthClientId "oauthSecretKey" oauthSecretKey }
              :form-params   {}
              :body-param    body
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-network third-party-network-response-spec
  "Create Network
  Creates a custom third party network."
  ([accountId int?, name string?, enableIntrospection boolean?, ] (create-network accountId name enableIntrospection nil))
  ([accountId int?, name string?, enableIntrospection boolean?, optional-params any?]
   (let [res (:data (create-network-with-http-info accountId name enableIntrospection optional-params))]
     (if (:decode-models *api-context*)
        (st/decode third-party-network-response-spec res st/string-transformer)
        res))))


(defn-spec delete-credential-with-http-info any?
  "Delete Credential
  Delete a third party network on a Sirqul account."
  [accountId int?, networkUID string?, thirdPartyId string?, appKey string?]
  (check-required-params accountId networkUID thirdPartyId appKey)
  (call-api "/thirdparty/credential/delete" :post
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "networkUID" networkUID "thirdPartyId" thirdPartyId "appKey" appKey }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec delete-credential sirqul-response-spec
  "Delete Credential
  Delete a third party network on a Sirqul account."
  [accountId int?, networkUID string?, thirdPartyId string?, appKey string?]
  (let [res (:data (delete-credential-with-http-info accountId networkUID thirdPartyId appKey))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


(defn-spec delete-network-with-http-info any?
  "Delete Network
  Marks a custom third party network as deleted. Only the network owners and managers have access to this."
  [accountId int?, networkUID string?]
  (check-required-params accountId networkUID)
  (call-api "/thirdparty/network/delete" :post
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "networkUID" networkUID }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec delete-network sirqul-response-spec
  "Delete Network
  Marks a custom third party network as deleted. Only the network owners and managers have access to this."
  [accountId int?, networkUID string?]
  (let [res (:data (delete-network-with-http-info accountId networkUID))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


(defn-spec get-credential-with-http-info any?
  "Get Credential
  Gets the account information given a third party token."
  ([networkUID string?, appKey string?, ] (get-credential-with-http-info networkUID appKey nil))
  ([networkUID string?, appKey string?, {:keys [accountId deviceId sessionId thirdPartyCredentialId thirdPartyToken thirdPartySecret createNewAccount responseFilters latitude longitude audienceIdsToAdd audienceIdsToRemove referralAccountId]} (s/map-of keyword? any?)]
   (check-required-params networkUID appKey)
   (call-api "/thirdparty/credential/get" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "deviceId" deviceId "sessionId" sessionId "thirdPartyCredentialId" thirdPartyCredentialId "thirdPartyToken" thirdPartyToken "thirdPartySecret" thirdPartySecret "createNewAccount" createNewAccount "networkUID" networkUID "appKey" appKey "responseFilters" responseFilters "latitude" latitude "longitude" longitude "audienceIdsToAdd" audienceIdsToAdd "audienceIdsToRemove" audienceIdsToRemove "referralAccountId" referralAccountId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-credential profile-response-spec
  "Get Credential
  Gets the account information given a third party token."
  ([networkUID string?, appKey string?, ] (get-credential networkUID appKey nil))
  ([networkUID string?, appKey string?, optional-params any?]
   (let [res (:data (get-credential-with-http-info networkUID appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode profile-response-spec res st/string-transformer)
        res))))


(defn-spec get-network-with-http-info any?
  "Get Network
  Get the details of a third party network. Only the network owners and managers have access to this."
  [accountId int?, networkUID string?]
  (check-required-params accountId networkUID)
  (call-api "/thirdparty/network/get" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "networkUID" networkUID }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-network third-party-network-response-spec
  "Get Network
  Get the details of a third party network. Only the network owners and managers have access to this."
  [accountId int?, networkUID string?]
  (let [res (:data (get-network-with-http-info accountId networkUID))]
    (if (:decode-models *api-context*)
       (st/decode third-party-network-response-spec res st/string-transformer)
       res)))


(defn-spec search-credentials-with-http-info any?
  "Search Credentials
  Search on a user's linked third party networks."
  ([accountId int?, ] (search-credentials-with-http-info accountId nil))
  ([accountId int?, {:keys [keyword networkUID descending start limit]} (s/map-of keyword? any?)]
   (check-required-params accountId)
   (call-api "/thirdparty/credential/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "keyword" keyword "networkUID" networkUID "descending" descending "start" start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-credentials (s/coll-of third-party-credential-response-spec)
  "Search Credentials
  Search on a user's linked third party networks."
  ([accountId int?, ] (search-credentials accountId nil))
  ([accountId int?, optional-params any?]
   (let [res (:data (search-credentials-with-http-info accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of third-party-credential-response-spec) res st/string-transformer)
        res))))


(defn-spec search-networks-with-http-info any?
  "Search Networks
  Search on supported third party networks and custom networks from external users."
  ([accountId int?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, ] (search-networks-with-http-info accountId sortField descending start limit activeOnly nil))
  ([accountId int?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, {:keys [keyword filterBillable]} (s/map-of keyword? any?)]
   (check-required-params accountId sortField descending start limit activeOnly)
   (call-api "/thirdparty/network/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "keyword" keyword "sortField" sortField "descending" descending "start" start "limit" limit "activeOnly" activeOnly "filterBillable" filterBillable }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-networks (s/coll-of third-party-network-short-response-spec)
  "Search Networks
  Search on supported third party networks and custom networks from external users."
  ([accountId int?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, ] (search-networks accountId sortField descending start limit activeOnly nil))
  ([accountId int?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, optional-params any?]
   (let [res (:data (search-networks-with-http-info accountId sortField descending start limit activeOnly optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of third-party-network-short-response-spec) res st/string-transformer)
        res))))


(defn-spec send-mfa-challenge-with-http-info any?
  "Send MFA Challenge
  Sends an MFA challenge (SMS or Email) for networks with MFA enabled."
  ([networkUID string?, appKey string?, ] (send-mfa-challenge-with-http-info networkUID appKey nil))
  ([networkUID string?, appKey string?, {:keys [thirdPartyToken thirdPartyCredentialId deviceId]} (s/map-of keyword? any?)]
   (check-required-params networkUID appKey)
   (call-api "/thirdparty/credential/mfa/send" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"thirdPartyToken" thirdPartyToken "thirdPartyCredentialId" thirdPartyCredentialId "networkUID" networkUID "appKey" appKey "deviceId" deviceId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec send-mfa-challenge sirqul-response-spec
  "Send MFA Challenge
  Sends an MFA challenge (SMS or Email) for networks with MFA enabled."
  ([networkUID string?, appKey string?, ] (send-mfa-challenge networkUID appKey nil))
  ([networkUID string?, appKey string?, optional-params any?]
   (let [res (:data (send-mfa-challenge-with-http-info networkUID appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec update-credential-with-http-info any?
  "Update Credential
  Updates a third-party login for an account."
  ([networkUID string?, thirdPartyId string?, appKey string?, ] (update-credential-with-http-info networkUID thirdPartyId appKey nil))
  ([networkUID string?, thirdPartyId string?, appKey string?, {:keys [deviceId thirdPartyName thirdPartyToken responseFilters metaData thirdPartyRefreshToken]} (s/map-of keyword? any?)]
   (check-required-params networkUID thirdPartyId appKey)
   (call-api "/thirdparty/credential/update" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"deviceId" deviceId "networkUID" networkUID "thirdPartyId" thirdPartyId "thirdPartyName" thirdPartyName "thirdPartyToken" thirdPartyToken "appKey" appKey "responseFilters" responseFilters "metaData" metaData "thirdPartyRefreshToken" thirdPartyRefreshToken }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-credential profile-response-spec
  "Update Credential
  Updates a third-party login for an account."
  ([networkUID string?, thirdPartyId string?, appKey string?, ] (update-credential networkUID thirdPartyId appKey nil))
  ([networkUID string?, thirdPartyId string?, appKey string?, optional-params any?]
   (let [res (:data (update-credential-with-http-info networkUID thirdPartyId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode profile-response-spec res st/string-transformer)
        res))))


(defn-spec update-network-with-http-info any?
  "Update Network
  Updates a custom third party network. Only the network owners and managers have access to this."
  ([accountId int?, networkUID string?, ] (update-network-with-http-info accountId networkUID nil))
  ([accountId int?, networkUID string?, {:keys [name description enableIntrospection introspectionMethod introspectionURL introspectionParams requiredRootField enableMFA sizeMFA shelfLifeMFA oauthTokenURL ^File oauthPrivateKey ^File oauthPublicKey oauthClientId oauthSecretKey body]} (s/map-of keyword? any?)]
   (check-required-params accountId networkUID)
   (call-api "/thirdparty/network/update" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "networkUID" networkUID "name" name "description" description "enableIntrospection" enableIntrospection "introspectionMethod" introspectionMethod "introspectionURL" introspectionURL "introspectionParams" introspectionParams "requiredRootField" requiredRootField "enableMFA" enableMFA "sizeMFA" sizeMFA "shelfLifeMFA" shelfLifeMFA "oauthTokenURL" oauthTokenURL "oauthPrivateKey" oauthPrivateKey "oauthPublicKey" oauthPublicKey "oauthClientId" oauthClientId "oauthSecretKey" oauthSecretKey }
              :form-params   {}
              :body-param    body
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-network third-party-network-response-spec
  "Update Network
  Updates a custom third party network. Only the network owners and managers have access to this."
  ([accountId int?, networkUID string?, ] (update-network accountId networkUID nil))
  ([accountId int?, networkUID string?, optional-params any?]
   (let [res (:data (update-network-with-http-info accountId networkUID optional-params))]
     (if (:decode-models *api-context*)
        (st/decode third-party-network-response-spec res st/string-transformer)
        res))))


