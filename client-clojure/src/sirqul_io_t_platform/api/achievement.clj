(ns sirqul-io-t-platform.api.achievement
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


(defn-spec api-version-achievement-tier-search-post-with-http-info any?
  "Searches an Achievement Tier
  Searches a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for."
  ([version float?, ] (api-version-achievement-tier-search-post-with-http-info version nil))
  ([version float?, {:keys [deviceId accountId appKey keyword achievementType rankType sortField descending descendingGoal start limit]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/achievement/tier/search" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "appKey" appKey "keyword" keyword "achievementType" achievementType "rankType" rankType "sortField" sortField "descending" descending "descendingGoal" descendingGoal "start" start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec api-version-achievement-tier-search-post achievement-tier-response-spec
  "Searches an Achievement Tier
  Searches a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for."
  ([version float?, ] (api-version-achievement-tier-search-post version nil))
  ([version float?, optional-params any?]
   (let [res (:data (api-version-achievement-tier-search-post-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode achievement-tier-response-spec res st/string-transformer)
        res))))


(defn-spec create-achievement-with-http-info any?
  "Create Achievement
  Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for."
  ([version float?, appKey string?, title string?, ] (create-achievement-with-http-info version appKey title nil))
  ([version float?, appKey string?, title string?, {:keys [deviceId accountId analyticsTag description rankType rankIncrement minIncrement maxIncrement validate active triggerDefinition]} (s/map-of keyword? any?)]
   (check-required-params version appKey title)
   (call-api "/api/{version}/achievement/create" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "appKey" appKey "analyticsTag" analyticsTag "title" title "description" description "rankType" rankType "rankIncrement" rankIncrement "minIncrement" minIncrement "maxIncrement" maxIncrement "validate" validate "active" active "triggerDefinition" triggerDefinition }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-achievement achievement-response-spec
  "Create Achievement
  Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for."
  ([version float?, appKey string?, title string?, ] (create-achievement version appKey title nil))
  ([version float?, appKey string?, title string?, optional-params any?]
   (let [res (:data (create-achievement-with-http-info version appKey title optional-params))]
     (if (:decode-models *api-context*)
        (st/decode achievement-response-spec res st/string-transformer)
        res))))


(defn-spec create-achievement-tier-with-http-info any?
  "Create Achievement Tier
  Create a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for."
  ([version float?, achievementId int?, scoreAllInstances boolean?, ] (create-achievement-tier-with-http-info version achievementId scoreAllInstances nil))
  ([version float?, achievementId int?, scoreAllInstances boolean?, {:keys [deviceId accountId ^File icon iconAssetId title description goalCount missionId gameId packId gameLevelId gameObjectId]} (s/map-of keyword? any?)]
   (check-required-params version achievementId scoreAllInstances)
   (call-api "/api/{version}/achievement/tier/create" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "achievementId" achievementId "icon" icon "iconAssetId" iconAssetId "title" title "description" description "goalCount" goalCount "missionId" missionId "gameId" gameId "packId" packId "gameLevelId" gameLevelId "gameObjectId" gameObjectId "scoreAllInstances" scoreAllInstances }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-achievement-tier achievement-tier-response-spec
  "Create Achievement Tier
  Create a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for."
  ([version float?, achievementId int?, scoreAllInstances boolean?, ] (create-achievement-tier version achievementId scoreAllInstances nil))
  ([version float?, achievementId int?, scoreAllInstances boolean?, optional-params any?]
   (let [res (:data (create-achievement-tier-with-http-info version achievementId scoreAllInstances optional-params))]
     (if (:decode-models *api-context*)
        (st/decode achievement-tier-response-spec res st/string-transformer)
        res))))


(defn-spec delete-achievement-with-http-info any?
  "Delete Achievement
  Deletes an achievement (for developer/retailer use). User must have permissions to the application the achievement was created for."
  ([version float?, achievementId int?, ] (delete-achievement-with-http-info version achievementId nil))
  ([version float?, achievementId int?, {:keys [accountId]} (s/map-of keyword? any?)]
   (check-required-params version achievementId)
   (call-api "/api/{version}/achievement/delete" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "achievementId" achievementId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec delete-achievement sirqul-response-spec
  "Delete Achievement
  Deletes an achievement (for developer/retailer use). User must have permissions to the application the achievement was created for."
  ([version float?, achievementId int?, ] (delete-achievement version achievementId nil))
  ([version float?, achievementId int?, optional-params any?]
   (let [res (:data (delete-achievement-with-http-info version achievementId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec delete-achievement-tier-with-http-info any?
  "Delete Achievement Tier
  Deletes an achievement tier (for developer/retailer use). User must have permissions to the application the achievement was created for."
  ([version float?, achievementTierId int?, ] (delete-achievement-tier-with-http-info version achievementTierId nil))
  ([version float?, achievementTierId int?, {:keys [accountId]} (s/map-of keyword? any?)]
   (check-required-params version achievementTierId)
   (call-api "/api/{version}/achievement/tier/delete" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "achievementTierId" achievementTierId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec delete-achievement-tier sirqul-response-spec
  "Delete Achievement Tier
  Deletes an achievement tier (for developer/retailer use). User must have permissions to the application the achievement was created for."
  ([version float?, achievementTierId int?, ] (delete-achievement-tier version achievementTierId nil))
  ([version float?, achievementTierId int?, optional-params any?]
   (let [res (:data (delete-achievement-tier-with-http-info version achievementTierId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec get-achievement-with-http-info any?
  "Get Achievement
  Get an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for."
  ([version float?, achievementId int?, ] (get-achievement-with-http-info version achievementId nil))
  ([version float?, achievementId int?, {:keys [deviceId accountId achievementType]} (s/map-of keyword? any?)]
   (check-required-params version achievementId)
   (call-api "/api/{version}/achievement/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "achievementId" achievementId "achievementType" achievementType }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-achievement achievement-tier-response-spec
  "Get Achievement
  Get an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for."
  ([version float?, achievementId int?, ] (get-achievement version achievementId nil))
  ([version float?, achievementId int?, optional-params any?]
   (let [res (:data (get-achievement-with-http-info version achievementId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode achievement-tier-response-spec res st/string-transformer)
        res))))


(defn-spec get-achievement-tier-with-http-info any?
  "Gets an achievement tier
  Gets an achievement tier (for developer/retailer use). User must have permissions to the application the achievement is created for."
  [version float?, accountId int?, achievementTierId int?]
  (check-required-params version accountId achievementTierId)
  (call-api "/api/{version}/achievement/tier/get" :post
            {:path-params   {"version" version }
             :header-params {}
             :query-params  {"accountId" accountId "achievementTierId" achievementTierId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-achievement-tier achievement-tier-response-spec
  "Gets an achievement tier
  Gets an achievement tier (for developer/retailer use). User must have permissions to the application the achievement is created for."
  [version float?, accountId int?, achievementTierId int?]
  (let [res (:data (get-achievement-tier-with-http-info version accountId achievementTierId))]
    (if (:decode-models *api-context*)
       (st/decode achievement-tier-response-spec res st/string-transformer)
       res)))


(defn-spec get-user-achievements-with-http-info any?
  "Get Achievement Progress
  Gets a list of user achievements."
  ([version float?, returnNulls boolean?, appKey string?, includeUndiscovered boolean?, ] (get-user-achievements-with-http-info version returnNulls appKey includeUndiscovered nil))
  ([version float?, returnNulls boolean?, appKey string?, includeUndiscovered boolean?, {:keys [deviceId accountId connectionAccountEmail connectionAccountId rankType achievementType latitude longitude]} (s/map-of keyword? any?)]
   (check-required-params version returnNulls appKey includeUndiscovered)
   (call-api "/api/{version}/achievement/progress/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"returnNulls" returnNulls "deviceId" deviceId "accountId" accountId "connectionAccountEmail" connectionAccountEmail "connectionAccountId" connectionAccountId "appKey" appKey "rankType" rankType "achievementType" achievementType "includeUndiscovered" includeUndiscovered "latitude" latitude "longitude" longitude }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-user-achievements (s/coll-of achievement-progress-response-spec)
  "Get Achievement Progress
  Gets a list of user achievements."
  ([version float?, returnNulls boolean?, appKey string?, includeUndiscovered boolean?, ] (get-user-achievements version returnNulls appKey includeUndiscovered nil))
  ([version float?, returnNulls boolean?, appKey string?, includeUndiscovered boolean?, optional-params any?]
   (let [res (:data (get-user-achievements-with-http-info version returnNulls appKey includeUndiscovered optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of achievement-progress-response-spec) res st/string-transformer)
        res))))


(defn-spec list-achievement-tags-with-http-info any?
  "List Achievement Tags
  List achievement tags by application"
  ([version float?, ] (list-achievement-tags-with-http-info version nil))
  ([version float?, {:keys [appKey]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/achievement/tag/list" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"appKey" appKey }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec list-achievement-tags sirqul-response-spec
  "List Achievement Tags
  List achievement tags by application"
  ([version float?, ] (list-achievement-tags version nil))
  ([version float?, optional-params any?]
   (let [res (:data (list-achievement-tags-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec list-achievements-with-http-info any?
  "List Achievements
  List achievements by billable."
  ([version float?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, ] (list-achievements-with-http-info version sortField descending start limit activeOnly nil))
  ([version float?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, {:keys [deviceId accountId appKey keyword achievementType rankType]} (s/map-of keyword? any?)]
   (check-required-params version sortField descending start limit activeOnly)
   (call-api "/api/{version}/achievement/list" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "appKey" appKey "keyword" keyword "achievementType" achievementType "rankType" rankType "sortField" sortField "descending" descending "start" start "limit" limit "activeOnly" activeOnly }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec list-achievements (s/coll-of achievement-short-response-spec)
  "List Achievements
  List achievements by billable."
  ([version float?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, ] (list-achievements version sortField descending start limit activeOnly nil))
  ([version float?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, optional-params any?]
   (let [res (:data (list-achievements-with-http-info version sortField descending start limit activeOnly optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of achievement-short-response-spec) res st/string-transformer)
        res))))


(defn-spec search-achievements-with-http-info any?
  "Search Achievements
  Searches achievements by application for consumers."
  ([version float?, appKey string?, sortField string?, descending boolean?, includeTiers boolean?, includeInactiveTiers boolean?, start int?, limit int?, ] (search-achievements-with-http-info version appKey sortField descending includeTiers includeInactiveTiers start limit nil))
  ([version float?, appKey string?, sortField string?, descending boolean?, includeTiers boolean?, includeInactiveTiers boolean?, start int?, limit int?, {:keys [deviceId accountId keyword achievementType rankType]} (s/map-of keyword? any?)]
   (check-required-params version appKey sortField descending includeTiers includeInactiveTiers start limit)
   (call-api "/api/{version}/achievement/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "appKey" appKey "keyword" keyword "achievementType" achievementType "rankType" rankType "sortField" sortField "descending" descending "includeTiers" includeTiers "includeInactiveTiers" includeInactiveTiers "start" start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-achievements (s/coll-of achievement-short-response-spec)
  "Search Achievements
  Searches achievements by application for consumers."
  ([version float?, appKey string?, sortField string?, descending boolean?, includeTiers boolean?, includeInactiveTiers boolean?, start int?, limit int?, ] (search-achievements version appKey sortField descending includeTiers includeInactiveTiers start limit nil))
  ([version float?, appKey string?, sortField string?, descending boolean?, includeTiers boolean?, includeInactiveTiers boolean?, start int?, limit int?, optional-params any?]
   (let [res (:data (search-achievements-with-http-info version appKey sortField descending includeTiers includeInactiveTiers start limit optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of achievement-short-response-spec) res st/string-transformer)
        res))))


(defn-spec update-achievement-with-http-info any?
  "Update Achievement
  Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for."
  ([version float?, ] (update-achievement-with-http-info version nil))
  ([version float?, {:keys [deviceId accountId achievementId analyticsTag title description rankType rankIncrement minIncrement nullMinIncrement maxIncrement nullMaxIncrement validate active triggerDefinition]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/achievement/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "achievementId" achievementId "analyticsTag" analyticsTag "title" title "description" description "rankType" rankType "rankIncrement" rankIncrement "minIncrement" minIncrement "nullMinIncrement" nullMinIncrement "maxIncrement" maxIncrement "nullMaxIncrement" nullMaxIncrement "validate" validate "active" active "triggerDefinition" triggerDefinition }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-achievement achievement-response-spec
  "Update Achievement
  Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for."
  ([version float?, ] (update-achievement version nil))
  ([version float?, optional-params any?]
   (let [res (:data (update-achievement-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode achievement-response-spec res st/string-transformer)
        res))))


(defn-spec update-achievement-tier-with-http-info any?
  "Update Achievement Tier
  Updates a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for."
  ([version float?, achievementTierId int?, ] (update-achievement-tier-with-http-info version achievementTierId nil))
  ([version float?, achievementTierId int?, {:keys [deviceId accountId ^File icon iconAssetId title description goalCount missionId gameId packId gameLevelId gameObjectId scoreAllInstances]} (s/map-of keyword? any?)]
   (check-required-params version achievementTierId)
   (call-api "/api/{version}/achievement/tier/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "achievementTierId" achievementTierId "icon" icon "iconAssetId" iconAssetId "title" title "description" description "goalCount" goalCount "missionId" missionId "gameId" gameId "packId" packId "gameLevelId" gameLevelId "gameObjectId" gameObjectId "scoreAllInstances" scoreAllInstances }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-achievement-tier achievement-tier-response-spec
  "Update Achievement Tier
  Updates a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for."
  ([version float?, achievementTierId int?, ] (update-achievement-tier version achievementTierId nil))
  ([version float?, achievementTierId int?, optional-params any?]
   (let [res (:data (update-achievement-tier-with-http-info version achievementTierId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode achievement-tier-response-spec res st/string-transformer)
        res))))


(defn-spec update-user-achievement-with-http-info any?
  "Update Achievement Progress
  Update user achievement progress."
  ([version float?, accountId int?, ] (update-user-achievement-with-http-info version accountId nil))
  ([version float?, accountId int?, {:keys [achievementId tag customId increment startDate endDate returnProgress]} (s/map-of keyword? any?)]
   (check-required-params version accountId)
   (call-api "/api/{version}/achievement/progress/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "achievementId" achievementId "tag" tag "customId" customId "increment" increment "startDate" startDate "endDate" endDate "returnProgress" returnProgress }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-user-achievement sirqul-response-spec
  "Update Achievement Progress
  Update user achievement progress."
  ([version float?, accountId int?, ] (update-user-achievement version accountId nil))
  ([version float?, accountId int?, optional-params any?]
   (let [res (:data (update-user-achievement-with-http-info version accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


