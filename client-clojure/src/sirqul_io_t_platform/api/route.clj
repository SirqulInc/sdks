(ns sirqul-io-t-platform.api.route
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


(defn-spec approve-route-with-http-info any?
  "Approve Route
  Approve a route"
  [routeId int?]
  (check-required-params routeId)
  (call-api "/route/{routeId}/approve" :post
            {:path-params   {"routeId" routeId }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec approve-route route-spec
  "Approve Route
  Approve a route"
  [routeId int?]
  (let [res (:data (approve-route-with-http-info routeId))]
    (if (:decode-models *api-context*)
       (st/decode route-spec res st/string-transformer)
       res)))


(defn-spec copy-route-with-http-info any?
  "Copy Route
  Make an copy of the given route with optional overriding properties"
  ([routeId int?, ] (copy-route-with-http-info routeId nil))
  ([routeId int?, {:keys [body]} (s/map-of keyword? any?)]
   (check-required-params routeId)
   (call-api "/route/{routeId}/copy" :post
             {:path-params   {"routeId" routeId }
              :header-params {}
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec copy-route route-spec
  "Copy Route
  Make an copy of the given route with optional overriding properties"
  ([routeId int?, ] (copy-route routeId nil))
  ([routeId int?, optional-params any?]
   (let [res (:data (copy-route-with-http-info routeId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode route-spec res st/string-transformer)
        res))))


(defn-spec create-route-with-http-info any?
  "Create Route
  Create new route"
  ([] (create-route-with-http-info nil))
  ([{:keys [body]} (s/map-of keyword? any?)]
   (call-api "/route" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-route route-spec
  "Create Route
  Create new route"
  ([] (create-route nil))
  ([optional-params any?]
   (let [res (:data (create-route-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode route-spec res st/string-transformer)
        res))))


(defn-spec create-route-directions-with-http-info any?
  "Update Route Directions
  Regenerate the directions of a route"
  [routeId int?]
  (check-required-params routeId)
  (call-api "/route/{routeId}/directions" :put
            {:path-params   {"routeId" routeId }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec create-route-directions (s/coll-of direction-spec)
  "Update Route Directions
  Regenerate the directions of a route"
  [routeId int?]
  (let [res (:data (create-route-directions-with-http-info routeId))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of direction-spec) res st/string-transformer)
       res)))


(defn-spec create-route-polyline-with-http-info any?
  "Create Route Polyline
  Update the polyline of the requested route"
  [routeId int?]
  (check-required-params routeId)
  (call-api "/route/{routeId}/polyline" :put
            {:path-params   {"routeId" routeId }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec create-route-polyline route-spec
  "Create Route Polyline
  Update the polyline of the requested route"
  [routeId int?]
  (let [res (:data (create-route-polyline-with-http-info routeId))]
    (if (:decode-models *api-context*)
       (st/decode route-spec res st/string-transformer)
       res)))


(defn-spec delete-route-with-http-info any?
  "Delete Route
  Delete an existing route"
  [routeId int?]
  (check-required-params routeId)
  (call-api "/route/{routeId}" :delete
            {:path-params   {"routeId" routeId }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    []}))

(defn-spec delete-route any?
  "Delete Route
  Delete an existing route"
  [routeId int?]
  (let [res (:data (delete-route-with-http-info routeId))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec disapprove-route-with-http-info any?
  "Disapprove Route
  Disapprove a route"
  [routeId int?]
  (check-required-params routeId)
  (call-api "/route/{routeId}/disapprove" :post
            {:path-params   {"routeId" routeId }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec disapprove-route route-spec
  "Disapprove Route
  Disapprove a route"
  [routeId int?]
  (let [res (:data (disapprove-route-with-http-info routeId))]
    (if (:decode-models *api-context*)
       (st/decode route-spec res st/string-transformer)
       res)))


(defn-spec get-route-with-http-info any?
  "Get Route
  Get an existing route"
  [routeId int?, showInheritedProperties boolean?]
  (check-required-params routeId showInheritedProperties)
  (call-api "/route/{routeId}" :get
            {:path-params   {"routeId" routeId }
             :header-params {}
             :query-params  {"showInheritedProperties" showInheritedProperties }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-route route-spec
  "Get Route
  Get an existing route"
  [routeId int?, showInheritedProperties boolean?]
  (let [res (:data (get-route-with-http-info routeId showInheritedProperties))]
    (if (:decode-models *api-context*)
       (st/decode route-spec res st/string-transformer)
       res)))


(defn-spec get-route-directions-with-http-info any?
  "Get Route Directions
  Get the directions of a route"
  [routeId int?]
  (check-required-params routeId)
  (call-api "/route/{routeId}/directions" :get
            {:path-params   {"routeId" routeId }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-route-directions (s/coll-of direction-spec)
  "Get Route Directions
  Get the directions of a route"
  [routeId int?]
  (let [res (:data (get-route-directions-with-http-info routeId))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of direction-spec) res st/string-transformer)
       res)))


(defn-spec get-route-shipments-with-http-info any?
  "Get Route Shipments
  Get the shipments on the requested route"
  [routeId int?]
  (check-required-params routeId)
  (call-api "/route/{routeId}/shipments" :get
            {:path-params   {"routeId" routeId }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-route-shipments (s/coll-of shipment-spec)
  "Get Route Shipments
  Get the shipments on the requested route"
  [routeId int?]
  (let [res (:data (get-route-shipments-with-http-info routeId))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of shipment-spec) res st/string-transformer)
       res)))


(defn-spec get-route-stop-with-http-info any?
  "Get Route Stop
  Get the specific stop on a route"
  [routeId int?, stopId int?]
  (check-required-params routeId stopId)
  (call-api "/route/{routeId}/stop/{stopId}" :get
            {:path-params   {"routeId" routeId "stopId" stopId }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-route-stop stop-spec
  "Get Route Stop
  Get the specific stop on a route"
  [routeId int?, stopId int?]
  (let [res (:data (get-route-stop-with-http-info routeId stopId))]
    (if (:decode-models *api-context*)
       (st/decode stop-spec res st/string-transformer)
       res)))


(defn-spec get-route-stops-with-http-info any?
  "Get Route Stops
  The stops of the route requested"
  [routeId int?, confirmedOnly boolean?]
  (check-required-params routeId confirmedOnly)
  (call-api "/route/{routeId}/stops" :get
            {:path-params   {"routeId" routeId }
             :header-params {}
             :query-params  {"confirmedOnly" confirmedOnly }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-route-stops (s/coll-of stop-spec)
  "Get Route Stops
  The stops of the route requested"
  [routeId int?, confirmedOnly boolean?]
  (let [res (:data (get-route-stops-with-http-info routeId confirmedOnly))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of stop-spec) res st/string-transformer)
       res)))


(defn-spec get-shipments-at-stop-with-http-info any?
  "Get Shipments At Stop
  Get the list of shipments on the requested route at a stop"
  [routeId int?, stopId int?]
  (check-required-params routeId stopId)
  (call-api "/route/{routeId}/stop/{stopId}/shipments" :get
            {:path-params   {"routeId" routeId "stopId" stopId }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-shipments-at-stop (s/coll-of shipment-spec)
  "Get Shipments At Stop
  Get the list of shipments on the requested route at a stop"
  [routeId int?, stopId int?]
  (let [res (:data (get-shipments-at-stop-with-http-info routeId stopId))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of shipment-spec) res st/string-transformer)
       res)))


(defn-spec optimize-route-with-http-info any?
  "Optimize Route
  Optimize a route. The optimization method based on how the server is configured."
  [routeId int?]
  (check-required-params routeId)
  (call-api "/route/{routeId}/optimize" :post
            {:path-params   {"routeId" routeId }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    []}))

(defn-spec optimize-route any?
  "Optimize Route
  Optimize a route. The optimization method based on how the server is configured."
  [routeId int?]
  (let [res (:data (optimize-route-with-http-info routeId))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec remove-stop-with-http-info any?
  "Delete Stop
  Delete a stop on a route"
  [routeId int?, stopId int?]
  (check-required-params routeId stopId)
  (call-api "/route/{routeId}/stop/{stopId}" :delete
            {:path-params   {"routeId" routeId "stopId" stopId }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    []}))

(defn-spec remove-stop any?
  "Delete Stop
  Delete a stop on a route"
  [routeId int?, stopId int?]
  (let [res (:data (remove-stop-with-http-info routeId stopId))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec reorder-route-stops-patch-with-http-info any?
  "Reorder Route Stops
  Reordering the stops on the route with and update route distance, time, direction, and polyline"
  ([routeId int?, ] (reorder-route-stops-patch-with-http-info routeId nil))
  ([routeId int?, {:keys [body]} (s/map-of keyword? any?)]
   (check-required-params routeId)
   (call-api "/route/{routeId}/stops/reorder" :patch
             {:path-params   {"routeId" routeId }
              :header-params {}
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec reorder-route-stops-patch (s/coll-of stop-spec)
  "Reorder Route Stops
  Reordering the stops on the route with and update route distance, time, direction, and polyline"
  ([routeId int?, ] (reorder-route-stops-patch routeId nil))
  ([routeId int?, optional-params any?]
   (let [res (:data (reorder-route-stops-patch-with-http-info routeId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of stop-spec) res st/string-transformer)
        res))))


(defn-spec reorder-route-stops-post-with-http-info any?
  "Reorder Route Stops
  Reordering the stops on the route with and update route distance, time, direction, and polyline"
  ([routeId int?, ] (reorder-route-stops-post-with-http-info routeId nil))
  ([routeId int?, {:keys [body]} (s/map-of keyword? any?)]
   (check-required-params routeId)
   (call-api "/route/{routeId}/stops/reorder" :post
             {:path-params   {"routeId" routeId }
              :header-params {}
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec reorder-route-stops-post (s/coll-of stop-spec)
  "Reorder Route Stops
  Reordering the stops on the route with and update route distance, time, direction, and polyline"
  ([routeId int?, ] (reorder-route-stops-post routeId nil))
  ([routeId int?, optional-params any?]
   (let [res (:data (reorder-route-stops-post-with-http-info routeId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of stop-spec) res st/string-transformer)
        res))))


(defn-spec search-routes-with-http-info any?
  "Search Routes
  Search for routes."
  ([sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, includesEmpty boolean?, rootOnly boolean?, showInheritedProperties boolean?, ] (search-routes-with-http-info sortField descending start limit activeOnly includesEmpty rootOnly showInheritedProperties nil))
  ([sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, includesEmpty boolean?, rootOnly boolean?, showInheritedProperties boolean?, {:keys [hubId programId scheduledStart scheduledEnd updatedStart updatedEnd featured seatCount approved started completed valid parentId]} (s/map-of keyword? any?)]
   (check-required-params sortField descending start limit activeOnly includesEmpty rootOnly showInheritedProperties)
   (call-api "/route" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"hubId" hubId "programId" programId "scheduledStart" scheduledStart "scheduledEnd" scheduledEnd "updatedStart" updatedStart "updatedEnd" updatedEnd "featured" featured "seatCount" seatCount "approved" approved "started" started "completed" completed "valid" valid "parentId" parentId "sortField" sortField "descending" descending "start" start "limit" limit "activeOnly" activeOnly "includesEmpty" includesEmpty "rootOnly" rootOnly "showInheritedProperties" showInheritedProperties }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-routes (s/coll-of route-spec)
  "Search Routes
  Search for routes."
  ([sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, includesEmpty boolean?, rootOnly boolean?, showInheritedProperties boolean?, ] (search-routes sortField descending start limit activeOnly includesEmpty rootOnly showInheritedProperties nil))
  ([sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, includesEmpty boolean?, rootOnly boolean?, showInheritedProperties boolean?, optional-params any?]
   (let [res (:data (search-routes-with-http-info sortField descending start limit activeOnly includesEmpty rootOnly showInheritedProperties optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of route-spec) res st/string-transformer)
        res))))


(defn-spec set-driver-with-http-info any?
  "Set Driver
  Update the driver of the route."
  [id int?, driverId int?]
  (check-required-params id driverId)
  (call-api "/route/{id}/driver/{driverId}" :post
            {:path-params   {"id" id "driverId" driverId }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    []}))

(defn-spec set-driver any?
  "Set Driver
  Update the driver of the route."
  [id int?, driverId int?]
  (let [res (:data (set-driver-with-http-info id driverId))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec update-route-with-http-info any?
  "Update Route
  Update an existing route"
  ([routeId int?, ] (update-route-with-http-info routeId nil))
  ([routeId int?, {:keys [body]} (s/map-of keyword? any?)]
   (check-required-params routeId)
   (call-api "/route/{routeId}" :put
             {:path-params   {"routeId" routeId }
              :header-params {}
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-route route-spec
  "Update Route
  Update an existing route"
  ([routeId int?, ] (update-route routeId nil))
  ([routeId int?, optional-params any?]
   (let [res (:data (update-route-with-http-info routeId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode route-spec res st/string-transformer)
        res))))


(defn-spec update-route-stop-with-http-info any?
  "Update Route Stop
  Update a stop on a specified route"
  ([routeId int?, stopId int?, ] (update-route-stop-with-http-info routeId stopId nil))
  ([routeId int?, stopId int?, {:keys [body]} (s/map-of keyword? any?)]
   (check-required-params routeId stopId)
   (call-api "/route/{routeId}/stop/{stopId}" :put
             {:path-params   {"routeId" routeId "stopId" stopId }
              :header-params {}
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec update-route-stop any?
  "Update Route Stop
  Update a stop on a specified route"
  ([routeId int?, stopId int?, ] (update-route-stop routeId stopId nil))
  ([routeId int?, stopId int?, optional-params any?]
   (let [res (:data (update-route-stop-with-http-info routeId stopId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


