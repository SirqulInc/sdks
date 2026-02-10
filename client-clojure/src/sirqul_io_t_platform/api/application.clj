(ns sirqul-io-t-platform.api.application
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


(defn-spec create-application-with-http-info any?
  "Create Application
  Create an application record and one placement record for that application. You can create more placements for this application by using {@link createApplicationPlacement}."
  ([version float?, appName string?, ] (create-application-with-http-info version appName nil))
  ([version float?, appName string?, {:keys [deviceId accountId about bundleId appIconAssetId appLogoAssetId facebookAppId facebookAppSecret googleApiKey updateEULADate eulaVersion landingPageUrl showInActivities activityDescription inviteWelcomeText invitePageUrl urlScheme platforms downloadUrls categoryIds scoringType hintCost maxScore ticketsPerPoint hasGameData publicNotifications useMatchingAlgorithm globalTickets buildVersion apiVersion placementName placementDescription placementSize placementHeight placementWidth placementRefreshInterval createObjectStore publicContentApproval productionMode minimumSessionLength sessionGapLength localAdsEnabled sqootApiKey trilatProcessingType maxSampleSize minRSSI modules authorizedCount authorizedServers defaultTimezone smtpPass metaData placementMetaData ipsFloor enableAPNSBadge includeInReport defaultAppFilterId enableWelcomeEmail appleAppId appleTeamId appleAuthKeyId ^File appleAuthKey appleIssuerId appStoreKeyId ^File appStoreKey ^File googlePrivateKeyFile authorizeNetApiKey authorizeNetTransactionKey emailSender smtpUser smtpHost vatomBusinessId vatomRestClientId vatomRestSecretKey twilioAccountSID twilioAuthToken twilioSenderPhoneNumber openAISecretKey]} (s/map-of keyword? any?)]
   (check-required-params version appName)
   (call-api "/api/{version}/application/create" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "appName" appName "about" about "bundleId" bundleId "appIconAssetId" appIconAssetId "appLogoAssetId" appLogoAssetId "facebookAppId" facebookAppId "facebookAppSecret" facebookAppSecret "googleApiKey" googleApiKey "updateEULADate" updateEULADate "eulaVersion" eulaVersion "landingPageUrl" landingPageUrl "showInActivities" showInActivities "activityDescription" activityDescription "inviteWelcomeText" inviteWelcomeText "invitePageUrl" invitePageUrl "urlScheme" urlScheme "platforms" platforms "downloadUrls" downloadUrls "categoryIds" categoryIds "scoringType" scoringType "hintCost" hintCost "maxScore" maxScore "ticketsPerPoint" ticketsPerPoint "hasGameData" hasGameData "publicNotifications" publicNotifications "useMatchingAlgorithm" useMatchingAlgorithm "globalTickets" globalTickets "buildVersion" buildVersion "apiVersion" apiVersion "placementName" placementName "placementDescription" placementDescription "placementSize" placementSize "placementHeight" placementHeight "placementWidth" placementWidth "placementRefreshInterval" placementRefreshInterval "createObjectStore" createObjectStore "publicContentApproval" publicContentApproval "productionMode" productionMode "minimumSessionLength" minimumSessionLength "sessionGapLength" sessionGapLength "localAdsEnabled" localAdsEnabled "sqootApiKey" sqootApiKey "trilatProcessingType" trilatProcessingType "maxSampleSize" maxSampleSize "minRSSI" minRSSI "modules" modules "authorizedCount" authorizedCount "authorizedServers" authorizedServers "defaultTimezone" defaultTimezone "smtpPass" smtpPass "metaData" metaData "placementMetaData" placementMetaData "ipsFloor" ipsFloor "enableAPNSBadge" enableAPNSBadge "includeInReport" includeInReport "defaultAppFilterId" defaultAppFilterId "enableWelcomeEmail" enableWelcomeEmail "appleAppId" appleAppId "appleTeamId" appleTeamId "appleAuthKeyId" appleAuthKeyId "appleAuthKey" appleAuthKey "appleIssuerId" appleIssuerId "appStoreKeyId" appStoreKeyId "appStoreKey" appStoreKey "googlePrivateKeyFile" googlePrivateKeyFile "authorizeNetApiKey" authorizeNetApiKey "authorizeNetTransactionKey" authorizeNetTransactionKey "emailSender" emailSender "smtpUser" smtpUser "smtpHost" smtpHost "vatomBusinessId" vatomBusinessId "vatomRestClientId" vatomRestClientId "vatomRestSecretKey" vatomRestSecretKey "twilioAccountSID" twilioAccountSID "twilioAuthToken" twilioAuthToken "twilioSenderPhoneNumber" twilioSenderPhoneNumber "openAISecretKey" openAISecretKey }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-application application-response-spec
  "Create Application
  Create an application record and one placement record for that application. You can create more placements for this application by using {@link createApplicationPlacement}."
  ([version float?, appName string?, ] (create-application version appName nil))
  ([version float?, appName string?, optional-params any?]
   (let [res (:data (create-application-with-http-info version appName optional-params))]
     (if (:decode-models *api-context*)
        (st/decode application-response-spec res st/string-transformer)
        res))))


(defn-spec create-application-placement-with-http-info any?
  "Create Ad Placement
  Creates a new ad placement for an application."
  ([version float?, appKey string?, size string?, ] (create-application-placement-with-http-info version appKey size nil))
  ([version float?, appKey string?, size string?, {:keys [deviceId accountId name description height width refreshInterval defaultImageId active]} (s/map-of keyword? any?)]
   (check-required-params version appKey size)
   (call-api "/api/{version}/application/placement/create" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "appKey" appKey "name" name "description" description "size" size "height" height "width" width "refreshInterval" refreshInterval "defaultImageId" defaultImageId "active" active }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-application-placement placement-response-spec
  "Create Ad Placement
  Creates a new ad placement for an application."
  ([version float?, appKey string?, size string?, ] (create-application-placement version appKey size nil))
  ([version float?, appKey string?, size string?, optional-params any?]
   (let [res (:data (create-application-placement-with-http-info version appKey size optional-params))]
     (if (:decode-models *api-context*)
        (st/decode placement-response-spec res st/string-transformer)
        res))))


(defn-spec delete-application-with-http-info any?
  "Delete Application
  Set the deleted timestamp to current time. This effectively deletes the application since all queries should ignore any records with a deleted timestamp"
  ([version float?, ] (delete-application-with-http-info version nil))
  ([version float?, {:keys [accountId appKey]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/application/delete" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec delete-application sirqul-response-spec
  "Delete Application
  Set the deleted timestamp to current time. This effectively deletes the application since all queries should ignore any records with a deleted timestamp"
  ([version float?, ] (delete-application version nil))
  ([version float?, optional-params any?]
   (let [res (:data (delete-application-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec delete-application-placement-with-http-info any?
  "Delete Ad Placement
  Deletes an ad placement for an application."
  ([version float?, placementId int?, ] (delete-application-placement-with-http-info version placementId nil))
  ([version float?, placementId int?, {:keys [deviceId accountId]} (s/map-of keyword? any?)]
   (check-required-params version placementId)
   (call-api "/api/{version}/application/placement/delete" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "placementId" placementId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec delete-application-placement placement-response-spec
  "Delete Ad Placement
  Deletes an ad placement for an application."
  ([version float?, placementId int?, ] (delete-application-placement version placementId nil))
  ([version float?, placementId int?, optional-params any?]
   (let [res (:data (delete-application-placement-with-http-info version placementId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode placement-response-spec res st/string-transformer)
        res))))


(defn-spec get-application-with-http-info any?
  "Get Application
  Get a specific application by appKey"
  ([version float?, ] (get-application-with-http-info version nil))
  ([version float?, {:keys [appKey applicationId]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/application/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"appKey" appKey "applicationId" applicationId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-application application-response-spec
  "Get Application
  Get a specific application by appKey"
  ([version float?, ] (get-application version nil))
  ([version float?, optional-params any?]
   (let [res (:data (get-application-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode application-response-spec res st/string-transformer)
        res))))


(defn-spec get-application-placement-with-http-info any?
  "Get Ad Placement
  Get details of an ad placement"
  ([version float?, placementId int?, ] (get-application-placement-with-http-info version placementId nil))
  ([version float?, placementId int?, {:keys [deviceId accountId]} (s/map-of keyword? any?)]
   (check-required-params version placementId)
   (call-api "/api/{version}/application/placement/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "placementId" placementId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-application-placement placement-response-spec
  "Get Ad Placement
  Get details of an ad placement"
  ([version float?, placementId int?, ] (get-application-placement version placementId nil))
  ([version float?, placementId int?, optional-params any?]
   (let [res (:data (get-application-placement-with-http-info version placementId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode placement-response-spec res st/string-transformer)
        res))))


(defn-spec get-application-versions-with-http-info any?
  "Get API versions
  Will return a comma separated list of numbers, newest first. For example: 3.0, 2.2, 2.1, 1.8"
  [version float?]
  (check-required-params version)
  (call-api "/api/{version}/application/versions" :get
            {:path-params   {"version" version }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-application-versions sirqul-response-spec
  "Get API versions
  Will return a comma separated list of numbers, newest first. For example: 3.0, 2.2, 2.1, 1.8"
  [version float?]
  (let [res (:data (get-application-versions-with-http-info version))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


(defn-spec get-unique-users-by-app-with-http-info any?
  "Search Application Users
  Get a list of users per application"
  ([version float?, appKey string?, ] (get-unique-users-by-app-with-http-info version appKey nil))
  ([version float?, appKey string?, {:keys [q keyword since _i start _l limit]} (s/map-of keyword? any?)]
   (check-required-params version appKey)
   (call-api "/api/{version}/application/users" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"appKey" appKey "q" q "keyword" keyword "since" since "_i" _i "start" start "_l" _l "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-unique-users-by-app account-list-response-spec
  "Search Application Users
  Get a list of users per application"
  ([version float?, appKey string?, ] (get-unique-users-by-app version appKey nil))
  ([version float?, appKey string?, optional-params any?]
   (let [res (:data (get-unique-users-by-app-with-http-info version appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode account-list-response-spec res st/string-transformer)
        res))))


(defn-spec list-applications-with-http-info any?
  "List Applications
  List active applications matching the criteria (as a consumer)"
  ([version float?, ] (list-applications-with-http-info version nil))
  ([version float?, {:keys [accountId q keyword platforms deviceIds deviceVersions categoryIds sortField hasAds publicNotifications filterBillable filterContentAdmin descending _i start _l limit applicationIds hasObjectStore activeOnly]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/application/list" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "q" q "keyword" keyword "platforms" platforms "deviceIds" deviceIds "deviceVersions" deviceVersions "categoryIds" categoryIds "sortField" sortField "hasAds" hasAds "publicNotifications" publicNotifications "filterBillable" filterBillable "filterContentAdmin" filterContentAdmin "descending" descending "_i" _i "start" start "_l" _l "limit" limit "applicationIds" applicationIds "hasObjectStore" hasObjectStore "activeOnly" activeOnly }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec list-applications (s/coll-of application-short-response-spec)
  "List Applications
  List active applications matching the criteria (as a consumer)"
  ([version float?, ] (list-applications version nil))
  ([version float?, optional-params any?]
   (let [res (:data (list-applications-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of application-short-response-spec) res st/string-transformer)
        res))))


(defn-spec search-application-placement-with-http-info any?
  "Search for Ad Placements
  Searches placements for an application."
  ([version float?, appKey string?, ] (search-application-placement-with-http-info version appKey nil))
  ([version float?, appKey string?, {:keys [deviceId accountId start limit]} (s/map-of keyword? any?)]
   (check-required-params version appKey)
   (call-api "/api/{version}/application/placement/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "appKey" appKey "start" start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-application-placement (s/coll-of placement-response-spec)
  "Search for Ad Placements
  Searches placements for an application."
  ([version float?, appKey string?, ] (search-application-placement version appKey nil))
  ([version float?, appKey string?, optional-params any?]
   (let [res (:data (search-application-placement-with-http-info version appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of placement-response-spec) res st/string-transformer)
        res))))


(defn-spec search-application-settings-with-http-info any?
  "Search for Application Settings
  Returns a list of applications that the user has logged into before, and returns specific settings for that application and user"
  ([version float?, ] (search-application-settings-with-http-info version nil))
  ([version float?, {:keys [deviceId accountId connectionAccountId keyword sortField descending start limit]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/application/settings/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "connectionAccountId" connectionAccountId "keyword" keyword "sortField" sortField "descending" descending "start" start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-application-settings application-settings-response-spec
  "Search for Application Settings
  Returns a list of applications that the user has logged into before, and returns specific settings for that application and user"
  ([version float?, ] (search-application-settings version nil))
  ([version float?, optional-params any?]
   (let [res (:data (search-application-settings-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode application-settings-response-spec res st/string-transformer)
        res))))


(defn-spec search-applications-with-http-info any?
  "Search Applications
  Search for applications matching the criteria that the logged in user has access to"
  ([version float?, ] (search-applications-with-http-info version nil))
  ([version float?, {:keys [deviceId accountId latitude longitude q keyword qSearchFields sortField descending _i start _l limit hasAds publicNotifications activeOnly]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/application/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "latitude" latitude "longitude" longitude "q" q "keyword" keyword "qSearchFields" qSearchFields "sortField" sortField "descending" descending "_i" _i "start" start "_l" _l "limit" limit "hasAds" hasAds "publicNotifications" publicNotifications "activeOnly" activeOnly }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-applications (s/coll-of application-response-spec)
  "Search Applications
  Search for applications matching the criteria that the logged in user has access to"
  ([version float?, ] (search-applications version nil))
  ([version float?, optional-params any?]
   (let [res (:data (search-applications-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of application-response-spec) res st/string-transformer)
        res))))


(defn-spec update-application-with-http-info any?
  "Update Application
  Update an application record"
  ([version float?, appKey string?, appName string?, ] (update-application-with-http-info version appKey appName nil))
  ([version float?, appKey string?, appName string?, {:keys [deviceId accountId about bundleId appIconAssetId appLogoAssetId facebookAppId facebookAppSecret googleApiKey updateEULADate eulaVersion landingPageUrl showInActivities activityDescription inviteWelcomeText invitePageUrl urlScheme platforms downloadUrls categoryIds scoringType hintCost maxScore ticketsPerPoint hasGameData publicNotifications useMatchingAlgorithm globalTickets buildVersion apiVersion placementName placementDescription placementSize placementHeight placementWidth placementRefreshInterval createObjectStore publicContentApproval productionMode minimumSessionLength sessionGapLength localAdsEnabled sqootApiKey trilatProcessingType maxSampleSize minRSSI modules authorizedCount authorizedServers defaultTimezone smtpPass metaData placementMetaData ipsFloor enableAPNSBadge includeInReport defaultAppFilterId enableWelcomeEmail appleAppId appleTeamId appleAuthKeyId ^File appleAuthKey appleIssuerId appStoreKeyId ^File appStoreKey ^File googlePrivateKeyFile authorizeNetApiKey authorizeNetTransactionKey emailSender smtpUser smtpHost vatomBusinessId vatomRestClientId vatomRestSecretKey twilioAccountSID twilioAuthToken twilioSenderPhoneNumber openAISecretKey]} (s/map-of keyword? any?)]
   (check-required-params version appKey appName)
   (call-api "/api/{version}/application/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "appKey" appKey "appName" appName "about" about "bundleId" bundleId "appIconAssetId" appIconAssetId "appLogoAssetId" appLogoAssetId "facebookAppId" facebookAppId "facebookAppSecret" facebookAppSecret "googleApiKey" googleApiKey "updateEULADate" updateEULADate "eulaVersion" eulaVersion "landingPageUrl" landingPageUrl "showInActivities" showInActivities "activityDescription" activityDescription "inviteWelcomeText" inviteWelcomeText "invitePageUrl" invitePageUrl "urlScheme" urlScheme "platforms" platforms "downloadUrls" downloadUrls "categoryIds" categoryIds "scoringType" scoringType "hintCost" hintCost "maxScore" maxScore "ticketsPerPoint" ticketsPerPoint "hasGameData" hasGameData "publicNotifications" publicNotifications "useMatchingAlgorithm" useMatchingAlgorithm "globalTickets" globalTickets "buildVersion" buildVersion "apiVersion" apiVersion "placementName" placementName "placementDescription" placementDescription "placementSize" placementSize "placementHeight" placementHeight "placementWidth" placementWidth "placementRefreshInterval" placementRefreshInterval "createObjectStore" createObjectStore "publicContentApproval" publicContentApproval "productionMode" productionMode "minimumSessionLength" minimumSessionLength "sessionGapLength" sessionGapLength "localAdsEnabled" localAdsEnabled "sqootApiKey" sqootApiKey "trilatProcessingType" trilatProcessingType "maxSampleSize" maxSampleSize "minRSSI" minRSSI "modules" modules "authorizedCount" authorizedCount "authorizedServers" authorizedServers "defaultTimezone" defaultTimezone "smtpPass" smtpPass "metaData" metaData "placementMetaData" placementMetaData "ipsFloor" ipsFloor "enableAPNSBadge" enableAPNSBadge "includeInReport" includeInReport "defaultAppFilterId" defaultAppFilterId "enableWelcomeEmail" enableWelcomeEmail "appleAppId" appleAppId "appleTeamId" appleTeamId "appleAuthKeyId" appleAuthKeyId "appleAuthKey" appleAuthKey "appleIssuerId" appleIssuerId "appStoreKeyId" appStoreKeyId "appStoreKey" appStoreKey "googlePrivateKeyFile" googlePrivateKeyFile "authorizeNetApiKey" authorizeNetApiKey "authorizeNetTransactionKey" authorizeNetTransactionKey "emailSender" emailSender "smtpUser" smtpUser "smtpHost" smtpHost "vatomBusinessId" vatomBusinessId "vatomRestClientId" vatomRestClientId "vatomRestSecretKey" vatomRestSecretKey "twilioAccountSID" twilioAccountSID "twilioAuthToken" twilioAuthToken "twilioSenderPhoneNumber" twilioSenderPhoneNumber "openAISecretKey" openAISecretKey }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-application application-response-spec
  "Update Application
  Update an application record"
  ([version float?, appKey string?, appName string?, ] (update-application version appKey appName nil))
  ([version float?, appKey string?, appName string?, optional-params any?]
   (let [res (:data (update-application-with-http-info version appKey appName optional-params))]
     (if (:decode-models *api-context*)
        (st/decode application-response-spec res st/string-transformer)
        res))))


(defn-spec update-application-active-with-http-info any?
  "Change Appliation Status
  Set the application's active flag to true/false. This effectively activates or deactivates the application."
  [version float?, accountId int?, appKey string?, active boolean?]
  (check-required-params version accountId appKey active)
  (call-api "/api/{version}/application/active" :post
            {:path-params   {"version" version }
             :header-params {}
             :query-params  {"accountId" accountId "appKey" appKey "active" active }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec update-application-active sirqul-response-spec
  "Change Appliation Status
  Set the application's active flag to true/false. This effectively activates or deactivates the application."
  [version float?, accountId int?, appKey string?, active boolean?]
  (let [res (:data (update-application-active-with-http-info version accountId appKey active))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


(defn-spec update-application-placement-with-http-info any?
  "Update Ad Placement
  Updates an ad placement for an application."
  ([version float?, placementId int?, ] (update-application-placement-with-http-info version placementId nil))
  ([version float?, placementId int?, {:keys [deviceId accountId name description size height width refreshInterval defaultImageId active]} (s/map-of keyword? any?)]
   (check-required-params version placementId)
   (call-api "/api/{version}/application/placement/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "placementId" placementId "name" name "description" description "size" size "height" height "width" width "refreshInterval" refreshInterval "defaultImageId" defaultImageId "active" active }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-application-placement placement-response-spec
  "Update Ad Placement
  Updates an ad placement for an application."
  ([version float?, placementId int?, ] (update-application-placement version placementId nil))
  ([version float?, placementId int?, optional-params any?]
   (let [res (:data (update-application-placement-with-http-info version placementId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode placement-response-spec res st/string-transformer)
        res))))


(defn-spec upload-application-certificate-with-http-info any?
  "Create Application Certificate
  Uploads a certificate for an application that the user has access to."
  ([version float?, appKey string?, ] (upload-application-certificate-with-http-info version appKey nil))
  ([version float?, appKey string?, {:keys [deviceId accountId ^File certificate]} (s/map-of keyword? any?)]
   (check-required-params version appKey)
   (call-api "/api/{version}/application/certificate/create" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "appKey" appKey "certificate" certificate }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec upload-application-certificate sirqul-response-spec
  "Create Application Certificate
  Uploads a certificate for an application that the user has access to."
  ([version float?, appKey string?, ] (upload-application-certificate version appKey nil))
  ([version float?, appKey string?, optional-params any?]
   (let [res (:data (upload-application-certificate-with-http-info version appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


