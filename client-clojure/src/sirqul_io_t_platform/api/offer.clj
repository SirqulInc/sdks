(ns sirqul-io-t-platform.api.offer
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


(defn-spec batch-update-offer-locations-with-http-info any?
  "Update Offer Locations
  Batch update offer locations."
  ([version float?, data string?, ] (batch-update-offer-locations-with-http-info version data nil))
  ([version float?, data string?, {:keys [deviceId accountId]} (s/map-of keyword? any?)]
   (check-required-params version data)
   (call-api "/api/{version}/retailer/offer/location/batchUpdate" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "data" data }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec batch-update-offer-locations sirqul-response-spec
  "Update Offer Locations
  Batch update offer locations."
  ([version float?, data string?, ] (batch-update-offer-locations version data nil))
  ([version float?, data string?, optional-params any?]
   (let [res (:data (batch-update-offer-locations-with-http-info version data optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec create-offer-with-http-info any?
  "Create Offer
  Create an offer and assign it to the provided retailer locations."
  ([version float?, includeOfferLocations boolean?, title string?, barcodeType string?, noExpiration boolean?, availableLimit int?, availableLimitPerUser int?, addedLimit int?, viewLimit int?, maxPrints int?, ticketPrice int?, fullPrice float?, discountPrice float?, offerType string?, specialOfferType string?, offerVisibility string?, active boolean?, ] (create-offer-with-http-info version includeOfferLocations title barcodeType noExpiration availableLimit availableLimitPerUser addedLimit viewLimit maxPrints ticketPrice fullPrice discountPrice offerType specialOfferType offerVisibility active nil))
  ([version float?, includeOfferLocations boolean?, title string?, barcodeType string?, noExpiration boolean?, availableLimit int?, availableLimitPerUser int?, addedLimit int?, viewLimit int?, maxPrints int?, ticketPrice int?, fullPrice float?, discountPrice float?, offerType string?, specialOfferType string?, offerVisibility string?, active boolean?, {:keys [deviceId accountId tags parentOfferId retailerLocationIds offerLocations subTitle details subDetails finePrint barcodeEntry externalRedeemOptions externalUrl externalId ticketsRewardType ticketsReward activated expires ticketPriceType showRemaining showRedeemed replaced featured categoryIds filterIds barcodeAssetId imageAssetId imageAssetId1 imageAssetId2 imageAssetId3 imageAssetId4 imageAssetId5 publisher redeemableStart redeemableEnd brand productType conditionType isbn asin catalogNumbers department features minimumPrice width height depth weight unit studio parentalRating publishDate availabilityDate sizeId listingId mediaType duration author releaseDate collectionIds rebootTimeHour rebootTimeMinute idleTimeoutInSecond serialNumber udid deviceType devicePower deviceInterference availability availabilitySummary]} (s/map-of keyword? any?)]
   (check-required-params version includeOfferLocations title barcodeType noExpiration availableLimit availableLimitPerUser addedLimit viewLimit maxPrints ticketPrice fullPrice discountPrice offerType specialOfferType offerVisibility active)
   (call-api "/api/{version}/retailer/offer/create" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "tags" tags "parentOfferId" parentOfferId "includeOfferLocations" includeOfferLocations "retailerLocationIds" retailerLocationIds "offerLocations" offerLocations "title" title "subTitle" subTitle "details" details "subDetails" subDetails "finePrint" finePrint "barcodeType" barcodeType "barcodeEntry" barcodeEntry "externalRedeemOptions" externalRedeemOptions "externalUrl" externalUrl "externalId" externalId "ticketsRewardType" ticketsRewardType "ticketsReward" ticketsReward "activated" activated "expires" expires "noExpiration" noExpiration "availableLimit" availableLimit "availableLimitPerUser" availableLimitPerUser "addedLimit" addedLimit "viewLimit" viewLimit "maxPrints" maxPrints "ticketPriceType" ticketPriceType "ticketPrice" ticketPrice "fullPrice" fullPrice "discountPrice" discountPrice "showRemaining" showRemaining "showRedeemed" showRedeemed "replaced" replaced "featured" featured "offerType" offerType "specialOfferType" specialOfferType "offerVisibility" offerVisibility "categoryIds" categoryIds "filterIds" filterIds "active" active "barcodeAssetId" barcodeAssetId "imageAssetId" imageAssetId "imageAssetId1" imageAssetId1 "imageAssetId2" imageAssetId2 "imageAssetId3" imageAssetId3 "imageAssetId4" imageAssetId4 "imageAssetId5" imageAssetId5 "publisher" publisher "redeemableStart" redeemableStart "redeemableEnd" redeemableEnd "brand" brand "productType" productType "conditionType" conditionType "isbn" isbn "asin" asin "catalogNumbers" catalogNumbers "department" department "features" features "minimumPrice" minimumPrice "width" width "height" height "depth" depth "weight" weight "unit" unit "studio" studio "parentalRating" parentalRating "publishDate" publishDate "availabilityDate" availabilityDate "sizeId" sizeId "listingId" listingId "mediaType" mediaType "duration" duration "author" author "releaseDate" releaseDate "collectionIds" collectionIds "rebootTimeHour" rebootTimeHour "rebootTimeMinute" rebootTimeMinute "idleTimeoutInSecond" idleTimeoutInSecond "serialNumber" serialNumber "udid" udid "deviceType" deviceType "devicePower" devicePower "deviceInterference" deviceInterference "availability" availability "availabilitySummary" availabilitySummary }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-offer retailer-offer-response-spec
  "Create Offer
  Create an offer and assign it to the provided retailer locations."
  ([version float?, includeOfferLocations boolean?, title string?, barcodeType string?, noExpiration boolean?, availableLimit int?, availableLimitPerUser int?, addedLimit int?, viewLimit int?, maxPrints int?, ticketPrice int?, fullPrice float?, discountPrice float?, offerType string?, specialOfferType string?, offerVisibility string?, active boolean?, ] (create-offer version includeOfferLocations title barcodeType noExpiration availableLimit availableLimitPerUser addedLimit viewLimit maxPrints ticketPrice fullPrice discountPrice offerType specialOfferType offerVisibility active nil))
  ([version float?, includeOfferLocations boolean?, title string?, barcodeType string?, noExpiration boolean?, availableLimit int?, availableLimitPerUser int?, addedLimit int?, viewLimit int?, maxPrints int?, ticketPrice int?, fullPrice float?, discountPrice float?, offerType string?, specialOfferType string?, offerVisibility string?, active boolean?, optional-params any?]
   (let [res (:data (create-offer-with-http-info version includeOfferLocations title barcodeType noExpiration availableLimit availableLimitPerUser addedLimit viewLimit maxPrints ticketPrice fullPrice discountPrice offerType specialOfferType offerVisibility active optional-params))]
     (if (:decode-models *api-context*)
        (st/decode retailer-offer-response-spec res st/string-transformer)
        res))))


(defn-spec delete-offer-with-http-info any?
  "Delete Offer
  Set the deleted timestamp to current time. This effectively deletes the offer since all queries should ignore any records with a deleted time stamp."
  ([version float?, offerId int?, ] (delete-offer-with-http-info version offerId nil))
  ([version float?, offerId int?, {:keys [deviceId accountId]} (s/map-of keyword? any?)]
   (check-required-params version offerId)
   (call-api "/api/{version}/retailer/offer/delete" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "offerId" offerId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec delete-offer sirqul-response-spec
  "Delete Offer
  Set the deleted timestamp to current time. This effectively deletes the offer since all queries should ignore any records with a deleted time stamp."
  ([version float?, offerId int?, ] (delete-offer version offerId nil))
  ([version float?, offerId int?, optional-params any?]
   (let [res (:data (delete-offer-with-http-info version offerId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec delete-offer-location-with-http-info any?
  "Delete Offer Location
  Set the deleted timestamp to current time. This effectively deletes the offer location since all queries should ignore any records with a deleted time stamp."
  ([version float?, offerLocationId int?, ] (delete-offer-location-with-http-info version offerLocationId nil))
  ([version float?, offerLocationId int?, {:keys [deviceId accountId]} (s/map-of keyword? any?)]
   (check-required-params version offerLocationId)
   (call-api "/api/{version}/retailer/offer/location/delete" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "offerLocationId" offerLocationId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec delete-offer-location sirqul-response-spec
  "Delete Offer Location
  Set the deleted timestamp to current time. This effectively deletes the offer location since all queries should ignore any records with a deleted time stamp."
  ([version float?, offerLocationId int?, ] (delete-offer-location version offerLocationId nil))
  ([version float?, offerLocationId int?, optional-params any?]
   (let [res (:data (delete-offer-location-with-http-info version offerLocationId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec get-offer-with-http-info any?
  "Get Offer
  Gets the details of an offer that the user has access to."
  ([version float?, offerId int?, includeOfferLocations boolean?, ] (get-offer-with-http-info version offerId includeOfferLocations nil))
  ([version float?, offerId int?, includeOfferLocations boolean?, {:keys [deviceId accountId]} (s/map-of keyword? any?)]
   (check-required-params version offerId includeOfferLocations)
   (call-api "/api/{version}/retailer/offer/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "offerId" offerId "includeOfferLocations" includeOfferLocations }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-offer retailer-offer-response-spec
  "Get Offer
  Gets the details of an offer that the user has access to."
  ([version float?, offerId int?, includeOfferLocations boolean?, ] (get-offer version offerId includeOfferLocations nil))
  ([version float?, offerId int?, includeOfferLocations boolean?, optional-params any?]
   (let [res (:data (get-offer-with-http-info version offerId includeOfferLocations optional-params))]
     (if (:decode-models *api-context*)
        (st/decode retailer-offer-response-spec res st/string-transformer)
        res))))


(defn-spec get-offer-details-with-http-info any?
  "Get Offer
  Gets offer or offer location details as a consumer.  Will check if it is a favorite if the deviceId/accountId is provided.  If the offerId is provided it will look up the main offer and ignore the the offerLocationId. If no offerId is provided then an offerLocationId must be specified."
  ([version float?, ] (get-offer-details-with-http-info version nil))
  ([version float?, {:keys [deviceId accountId offerId offerLocationId distance latitude longitude includeOfferLocations includeRetailerLocations includeChildOffers]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/offer/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "offerId" offerId "offerLocationId" offerLocationId "distance" distance "latitude" latitude "longitude" longitude "includeOfferLocations" includeOfferLocations "includeRetailerLocations" includeRetailerLocations "includeChildOffers" includeChildOffers }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-offer-details offer-response-spec
  "Get Offer
  Gets offer or offer location details as a consumer.  Will check if it is a favorite if the deviceId/accountId is provided.  If the offerId is provided it will look up the main offer and ignore the the offerLocationId. If no offerId is provided then an offerLocationId must be specified."
  ([version float?, ] (get-offer-details version nil))
  ([version float?, optional-params any?]
   (let [res (:data (get-offer-details-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode offer-response-spec res st/string-transformer)
        res))))


(defn-spec get-offer-list-counts-with-http-info any?
  "Get Offers (Counts)
  Gets the offer list counts."
  ([version float?, latitude float?, longitude float?, ] (get-offer-list-counts-with-http-info version latitude longitude nil))
  ([version float?, latitude float?, longitude float?, {:keys [searchRange distanceUnit]} (s/map-of keyword? any?)]
   (check-required-params version latitude longitude)
   (call-api "/api/{version}/offer/lists/count" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"latitude" latitude "longitude" longitude "searchRange" searchRange "distanceUnit" distanceUnit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-offer-list-counts list-count-response-spec
  "Get Offers (Counts)
  Gets the offer list counts."
  ([version float?, latitude float?, longitude float?, ] (get-offer-list-counts version latitude longitude nil))
  ([version float?, latitude float?, longitude float?, optional-params any?]
   (let [res (:data (get-offer-list-counts-with-http-info version latitude longitude optional-params))]
     (if (:decode-models *api-context*)
        (st/decode list-count-response-spec res st/string-transformer)
        res))))


(defn-spec get-offer-location-with-http-info any?
  "Get Offer Location
  Gets the offer location by offer location id or udid (of a device)"
  ([version float?, ] (get-offer-location-with-http-info version nil))
  ([version float?, {:keys [offerLocationId udid]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/offer/location/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"offerLocationId" offerLocationId "udid" udid }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-offer-location offer-short-response-spec
  "Get Offer Location
  Gets the offer location by offer location id or udid (of a device)"
  ([version float?, ] (get-offer-location version nil))
  ([version float?, optional-params any?]
   (let [res (:data (get-offer-location-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode offer-short-response-spec res st/string-transformer)
        res))))


(defn-spec get-offer-locations-for-retailers-with-http-info any?
  "Search Offer Locations
  Searches on offer locations, which are records that represent an offer that has been assigned to a retailer location. If an offer does not have any locations assigned, then it will NOT be returned."
  ([version float?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, includeRetailerLocation boolean?, ] (get-offer-locations-for-retailers-with-http-info version sortField descending start limit activeOnly includeRetailerLocation nil))
  ([version float?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, includeRetailerLocation boolean?, {:keys [deviceId accountId keyword retailerId retailerLocationId offerType specialOfferType barcodeType barcodeEntry isbn asin deviceStatus needsNotificationSent lastNotificationSent]} (s/map-of keyword? any?)]
   (check-required-params version sortField descending start limit activeOnly includeRetailerLocation)
   (call-api "/api/{version}/retailer/offer/location/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "keyword" keyword "retailerId" retailerId "retailerLocationId" retailerLocationId "offerType" offerType "specialOfferType" specialOfferType "sortField" sortField "descending" descending "start" start "limit" limit "activeOnly" activeOnly "includeRetailerLocation" includeRetailerLocation "barcodeType" barcodeType "barcodeEntry" barcodeEntry "isbn" isbn "asin" asin "deviceStatus" deviceStatus "needsNotificationSent" needsNotificationSent "lastNotificationSent" lastNotificationSent }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-offer-locations-for-retailers (s/coll-of offer-short-response-spec)
  "Search Offer Locations
  Searches on offer locations, which are records that represent an offer that has been assigned to a retailer location. If an offer does not have any locations assigned, then it will NOT be returned."
  ([version float?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, includeRetailerLocation boolean?, ] (get-offer-locations-for-retailers version sortField descending start limit activeOnly includeRetailerLocation nil))
  ([version float?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, includeRetailerLocation boolean?, optional-params any?]
   (let [res (:data (get-offer-locations-for-retailers-with-http-info version sortField descending start limit activeOnly includeRetailerLocation optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of offer-short-response-spec) res st/string-transformer)
        res))))


(defn-spec get-offers-for-retailers-with-http-info any?
  "Search Offers
  Searches on offers that the account has access to."
  ([version float?, offerVisibility string?, sortField string?, descending boolean?, start int?, limit int?, availableOnly boolean?, activeOnly boolean?, includeCategories boolean?, includeFilters boolean?, includeOfferLocations boolean?, ] (get-offers-for-retailers-with-http-info version offerVisibility sortField descending start limit availableOnly activeOnly includeCategories includeFilters includeOfferLocations nil))
  ([version float?, offerVisibility string?, sortField string?, descending boolean?, start int?, limit int?, availableOnly boolean?, activeOnly boolean?, includeCategories boolean?, includeFilters boolean?, includeOfferLocations boolean?, {:keys [deviceId accountId categoryIds filterIds q keyword retailerId retailerLocationId couponType offerType offerTypes specialOfferType _i _l barcodeType barcodeEntry isbn asin deviceStatus needsNotificationSent lastNotificationSent]} (s/map-of keyword? any?)]
   (check-required-params version offerVisibility sortField descending start limit availableOnly activeOnly includeCategories includeFilters includeOfferLocations)
   (call-api "/api/{version}/retailer/offer/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "categoryIds" categoryIds "filterIds" filterIds "q" q "keyword" keyword "retailerId" retailerId "retailerLocationId" retailerLocationId "couponType" couponType "offerType" offerType "offerTypes" offerTypes "specialOfferType" specialOfferType "offerVisibility" offerVisibility "sortField" sortField "descending" descending "_i" _i "start" start "_l" _l "limit" limit "availableOnly" availableOnly "activeOnly" activeOnly "includeCategories" includeCategories "includeFilters" includeFilters "includeOfferLocations" includeOfferLocations "barcodeType" barcodeType "barcodeEntry" barcodeEntry "isbn" isbn "asin" asin "deviceStatus" deviceStatus "needsNotificationSent" needsNotificationSent "lastNotificationSent" lastNotificationSent }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-offers-for-retailers (s/coll-of offer-response-spec)
  "Search Offers
  Searches on offers that the account has access to."
  ([version float?, offerVisibility string?, sortField string?, descending boolean?, start int?, limit int?, availableOnly boolean?, activeOnly boolean?, includeCategories boolean?, includeFilters boolean?, includeOfferLocations boolean?, ] (get-offers-for-retailers version offerVisibility sortField descending start limit availableOnly activeOnly includeCategories includeFilters includeOfferLocations nil))
  ([version float?, offerVisibility string?, sortField string?, descending boolean?, start int?, limit int?, availableOnly boolean?, activeOnly boolean?, includeCategories boolean?, includeFilters boolean?, includeOfferLocations boolean?, optional-params any?]
   (let [res (:data (get-offers-for-retailers-with-http-info version offerVisibility sortField descending start limit availableOnly activeOnly includeCategories includeFilters includeOfferLocations optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of offer-response-spec) res st/string-transformer)
        res))))


(defn-spec redeem-offer-transaction-with-http-info any?
  "Update Offer Transaction
  Redeems an offer."
  ([version float?, offerTransactionId int?, status int?, ] (redeem-offer-transaction-with-http-info version offerTransactionId status nil))
  ([version float?, offerTransactionId int?, status int?, {:keys [deviceId accountId offerLocationId]} (s/map-of keyword? any?)]
   (check-required-params version offerTransactionId status)
   (call-api "/api/{version}/retailer/offer/transaction/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "offerTransactionId" offerTransactionId "offerLocationId" offerLocationId "status" status }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec redeem-offer-transaction sirqul-response-spec
  "Update Offer Transaction
  Redeems an offer."
  ([version float?, offerTransactionId int?, status int?, ] (redeem-offer-transaction version offerTransactionId status nil))
  ([version float?, offerTransactionId int?, status int?, optional-params any?]
   (let [res (:data (redeem-offer-transaction-with-http-info version offerTransactionId status optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec search-offer-transactions-for-retailers-with-http-info any?
  "Search Offer Transactions
  Searches on offer transactions for offers that the account has access to."
  ([version float?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, ] (search-offer-transactions-for-retailers-with-http-info version sortField descending start limit activeOnly nil))
  ([version float?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, {:keys [deviceId accountId q keyword retailerId retailerLocationId offerId offerLocationId redeemed reservationsOnly couponType offerType specialOfferType customerAccountIds categoryIds redeemableStartDate redeemableEndDate _i _l]} (s/map-of keyword? any?)]
   (check-required-params version sortField descending start limit activeOnly)
   (call-api "/api/{version}/retailer/offer/transaction/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "q" q "keyword" keyword "retailerId" retailerId "retailerLocationId" retailerLocationId "offerId" offerId "offerLocationId" offerLocationId "redeemed" redeemed "reservationsOnly" reservationsOnly "couponType" couponType "offerType" offerType "specialOfferType" specialOfferType "customerAccountIds" customerAccountIds "categoryIds" categoryIds "redeemableStartDate" redeemableStartDate "redeemableEndDate" redeemableEndDate "sortField" sortField "descending" descending "_i" _i "start" start "_l" _l "limit" limit "activeOnly" activeOnly }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-offer-transactions-for-retailers (s/coll-of offer-transaction-response-spec)
  "Search Offer Transactions
  Searches on offer transactions for offers that the account has access to."
  ([version float?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, ] (search-offer-transactions-for-retailers version sortField descending start limit activeOnly nil))
  ([version float?, sortField string?, descending boolean?, start int?, limit int?, activeOnly boolean?, optional-params any?]
   (let [res (:data (search-offer-transactions-for-retailers-with-http-info version sortField descending start limit activeOnly optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of offer-transaction-response-spec) res st/string-transformer)
        res))))


(defn-spec search-offers-for-consumer-with-http-info any?
  "Search Offers
  Searches for offers as a consumer."
  ([version float?, latitude float?, longitude float?, recommendationType string?, locationId int?, start int?, limit int?, maxRecommendations int?, distanceUnit string?, ] (search-offers-for-consumer-with-http-info version latitude longitude recommendationType locationId start limit maxRecommendations distanceUnit nil))
  ([version float?, latitude float?, longitude float?, recommendationType string?, locationId int?, start int?, limit int?, maxRecommendations int?, distanceUnit string?, {:keys [appKey deviceId accountId searchRange tags supportedPostalCodes keyword categories filters offerTypes type sortField recommendOfferIds retailerLocationIds offerId includeMission includeCategories includeFilters includeExpired includeFavorite closestOfferOnly searchExpression groupBy]} (s/map-of keyword? any?)]
   (check-required-params version latitude longitude recommendationType locationId start limit maxRecommendations distanceUnit)
   (call-api "/api/{version}/offer/lists" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"appKey" appKey "deviceId" deviceId "accountId" accountId "latitude" latitude "longitude" longitude "searchRange" searchRange "tags" tags "supportedPostalCodes" supportedPostalCodes "keyword" keyword "categories" categories "filters" filters "offerTypes" offerTypes "type" type "sortField" sortField "recommendOfferIds" recommendOfferIds "recommendationType" recommendationType "locationId" locationId "retailerLocationIds" retailerLocationIds "offerId" offerId "includeMission" includeMission "includeCategories" includeCategories "includeFilters" includeFilters "includeExpired" includeExpired "includeFavorite" includeFavorite "start" start "limit" limit "maxRecommendations" maxRecommendations "distanceUnit" distanceUnit "closestOfferOnly" closestOfferOnly "searchExpression" searchExpression "groupBy" groupBy }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-offers-for-consumer offer-list-response-spec
  "Search Offers
  Searches for offers as a consumer."
  ([version float?, latitude float?, longitude float?, recommendationType string?, locationId int?, start int?, limit int?, maxRecommendations int?, distanceUnit string?, ] (search-offers-for-consumer version latitude longitude recommendationType locationId start limit maxRecommendations distanceUnit nil))
  ([version float?, latitude float?, longitude float?, recommendationType string?, locationId int?, start int?, limit int?, maxRecommendations int?, distanceUnit string?, optional-params any?]
   (let [res (:data (search-offers-for-consumer-with-http-info version latitude longitude recommendationType locationId start limit maxRecommendations distanceUnit optional-params))]
     (if (:decode-models *api-context*)
        (st/decode offer-list-response-spec res st/string-transformer)
        res))))


(defn-spec top-offer-transactions-with-http-info any?
  "Get Offers (Top)
  Gets the top active offers."
  ([version float?, ] (top-offer-transactions-with-http-info version nil))
  ([version float?, {:keys [start limit]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/offer/top" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"start" start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec top-offer-transactions offer-list-response-spec
  "Get Offers (Top)
  Gets the top active offers."
  ([version float?, ] (top-offer-transactions version nil))
  ([version float?, optional-params any?]
   (let [res (:data (top-offer-transactions-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode offer-list-response-spec res st/string-transformer)
        res))))


(defn-spec update-offer-with-http-info any?
  "Update Offer
  Update an offer, must provide a current list of retailer locations or the current offer locations will be marked as deleted."
  ([version float?, offerId int?, includeOfferLocations boolean?, ] (update-offer-with-http-info version offerId includeOfferLocations nil))
  ([version float?, offerId int?, includeOfferLocations boolean?, {:keys [deviceId accountId parentOfferId retailerLocationIds offerLocations tags title subTitle details subDetails finePrint barcodeType barcodeEntry externalRedeemOptions externalUrl externalId ticketsRewardType ticketsReward activated expires noExpiration availableLimit availableLimitPerUser addedLimit viewLimit maxPrints ticketPriceType ticketPrice fullPrice discountPrice showRemaining showRedeemed replaced featured offerType specialOfferType offerVisibility categoryIds filterIds active barcodeAssetId imageAssetId imageAssetId1 imageAssetId2 imageAssetId3 imageAssetId4 imageAssetId5 publisher redeemableStart redeemableEnd brand productType conditionType isbn asin catalogNumbers department features minimumPrice width height depth weight unit studio parentalRating publishDate availabilityDate sizeId listingId mediaType duration author releaseDate collectionIds rebootTimeHour rebootTimeMinute idleTimeoutInSecond serialNumber udid deviceType devicePower deviceInterference availability availabilitySummary]} (s/map-of keyword? any?)]
   (check-required-params version offerId includeOfferLocations)
   (call-api "/api/{version}/retailer/offer/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "offerId" offerId "parentOfferId" parentOfferId "includeOfferLocations" includeOfferLocations "retailerLocationIds" retailerLocationIds "offerLocations" offerLocations "tags" tags "title" title "subTitle" subTitle "details" details "subDetails" subDetails "finePrint" finePrint "barcodeType" barcodeType "barcodeEntry" barcodeEntry "externalRedeemOptions" externalRedeemOptions "externalUrl" externalUrl "externalId" externalId "ticketsRewardType" ticketsRewardType "ticketsReward" ticketsReward "activated" activated "expires" expires "noExpiration" noExpiration "availableLimit" availableLimit "availableLimitPerUser" availableLimitPerUser "addedLimit" addedLimit "viewLimit" viewLimit "maxPrints" maxPrints "ticketPriceType" ticketPriceType "ticketPrice" ticketPrice "fullPrice" fullPrice "discountPrice" discountPrice "showRemaining" showRemaining "showRedeemed" showRedeemed "replaced" replaced "featured" featured "offerType" offerType "specialOfferType" specialOfferType "offerVisibility" offerVisibility "categoryIds" categoryIds "filterIds" filterIds "active" active "barcodeAssetId" barcodeAssetId "imageAssetId" imageAssetId "imageAssetId1" imageAssetId1 "imageAssetId2" imageAssetId2 "imageAssetId3" imageAssetId3 "imageAssetId4" imageAssetId4 "imageAssetId5" imageAssetId5 "publisher" publisher "redeemableStart" redeemableStart "redeemableEnd" redeemableEnd "brand" brand "productType" productType "conditionType" conditionType "isbn" isbn "asin" asin "catalogNumbers" catalogNumbers "department" department "features" features "minimumPrice" minimumPrice "width" width "height" height "depth" depth "weight" weight "unit" unit "studio" studio "parentalRating" parentalRating "publishDate" publishDate "availabilityDate" availabilityDate "sizeId" sizeId "listingId" listingId "mediaType" mediaType "duration" duration "author" author "releaseDate" releaseDate "collectionIds" collectionIds "rebootTimeHour" rebootTimeHour "rebootTimeMinute" rebootTimeMinute "idleTimeoutInSecond" idleTimeoutInSecond "serialNumber" serialNumber "udid" udid "deviceType" deviceType "devicePower" devicePower "deviceInterference" deviceInterference "availability" availability "availabilitySummary" availabilitySummary }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-offer retailer-offer-response-spec
  "Update Offer
  Update an offer, must provide a current list of retailer locations or the current offer locations will be marked as deleted."
  ([version float?, offerId int?, includeOfferLocations boolean?, ] (update-offer version offerId includeOfferLocations nil))
  ([version float?, offerId int?, includeOfferLocations boolean?, optional-params any?]
   (let [res (:data (update-offer-with-http-info version offerId includeOfferLocations optional-params))]
     (if (:decode-models *api-context*)
        (st/decode retailer-offer-response-spec res st/string-transformer)
        res))))


(defn-spec update-offer-status-with-http-info any?
  "Activate Offer
  Sets the activated date on offers. This will make offers visible for consumers."
  ([version float?, offerIds string?, active boolean?, ] (update-offer-status-with-http-info version offerIds active nil))
  ([version float?, offerIds string?, active boolean?, {:keys [deviceId accountId]} (s/map-of keyword? any?)]
   (check-required-params version offerIds active)
   (call-api "/api/{version}/retailer/offer/status" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "offerIds" offerIds "active" active }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-offer-status sirqul-response-spec
  "Activate Offer
  Sets the activated date on offers. This will make offers visible for consumers."
  ([version float?, offerIds string?, active boolean?, ] (update-offer-status version offerIds active nil))
  ([version float?, offerIds string?, active boolean?, optional-params any?]
   (let [res (:data (update-offer-status-with-http-info version offerIds active optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


