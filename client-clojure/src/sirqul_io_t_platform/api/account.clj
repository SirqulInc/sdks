(ns sirqul-io-t-platform.api.account
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


(defn-spec account-location-search-with-http-info any?
  "Search Accounts by Location
  Search accounts by their location. This only searches on users that have location data. Use ConnectionApi to perform a regular search on accounts."
  ([version float?, ] (account-location-search-with-http-info version nil))
  ([version float?, {:keys [deviceId accountId q keyword postalCode latitude longitude appKey range locationLastUpdated gender minAge maxAge companionshipIndex _i start _l limit searchMode sortField descending roles tags experience categoryIds audienceIds audienceOperator updateCurrentLocation updatePreferredSettings showExactLocations showConnectionToSearcher flagCountMinimum verifiedUserOnly contentAdminOnly]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/account/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "q" q "keyword" keyword "postalCode" postalCode "latitude" latitude "longitude" longitude "appKey" appKey "range" range "locationLastUpdated" locationLastUpdated "gender" gender "minAge" minAge "maxAge" maxAge "companionshipIndex" companionshipIndex "_i" _i "start" start "_l" _l "limit" limit "searchMode" searchMode "sortField" sortField "descending" descending "roles" roles "tags" tags "experience" experience "categoryIds" categoryIds "audienceIds" audienceIds "audienceOperator" audienceOperator "updateCurrentLocation" updateCurrentLocation "updatePreferredSettings" updatePreferredSettings "showExactLocations" showExactLocations "showConnectionToSearcher" showConnectionToSearcher "flagCountMinimum" flagCountMinimum "verifiedUserOnly" verifiedUserOnly "contentAdminOnly" contentAdminOnly }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec account-location-search user-location-search-response-spec
  "Search Accounts by Location
  Search accounts by their location. This only searches on users that have location data. Use ConnectionApi to perform a regular search on accounts."
  ([version float?, ] (account-location-search version nil))
  ([version float?, optional-params any?]
   (let [res (:data (account-location-search-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode user-location-search-response-spec res st/string-transformer)
        res))))


(defn-spec block-account-with-http-info any?
  "Block Account
  Moves or removes an account into the user's blocked group."
  ([version float?, accountIdBeingBlocked int?, ] (block-account-with-http-info version accountIdBeingBlocked nil))
  ([version float?, accountIdBeingBlocked int?, {:keys [deviceId accountId blockFlagValue removeFromGroupsIfBlocked latitude longitude]} (s/map-of keyword? any?)]
   (check-required-params version accountIdBeingBlocked)
   (call-api "/api/{version}/account/block" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "accountIdBeingBlocked" accountIdBeingBlocked "blockFlagValue" blockFlagValue "removeFromGroupsIfBlocked" removeFromGroupsIfBlocked "latitude" latitude "longitude" longitude }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec block-account sirqul-response-spec
  "Block Account
  Moves or removes an account into the user's blocked group."
  ([version float?, accountIdBeingBlocked int?, ] (block-account version accountIdBeingBlocked nil))
  ([version float?, accountIdBeingBlocked int?, optional-params any?]
   (let [res (:data (block-account-with-http-info version accountIdBeingBlocked optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec create-account-with-http-info any?
  "Create Account
  Create a new account by role."
  ([version float?, username string?, password string?, ] (create-account-with-http-info version username password nil))
  ([version float?, username string?, password string?, {:keys [name prefixName firstName middleName lastName suffixName title deviceId deviceIdType emailAddress assetId streetAddress zipcode gender birthday homePhone cellPhone cellPhoneCarrier businessPhone role platforms tags aboutUs gameExperience categoryIds hometown height heightIndex ethnicity bodyType maritalStatus children religion education educationIndex smoke drink companionship companionshipIndex preferredMinAge preferredMaxAge preferredMinHeight preferredMaxHeight preferredGender preferredEducation preferredEducationIndex preferredBodyType preferredEthnicity preferredLocation preferredLocationRange latitude longitude acceptedTerms inviteToken referralAccountId sendValidation gameType appKey appVersion responseType audienceIdsToAdd appBlob appEnablePush appEnableSMS appEnableEmail locationVisibility homeLatitude homeLongitude appNickname personalAudienceId]} (s/map-of keyword? any?)]
   (check-required-params version username password)
   (call-api "/api/{version}/account/create" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"name" name "prefixName" prefixName "firstName" firstName "middleName" middleName "lastName" lastName "suffixName" suffixName "title" title "deviceId" deviceId "deviceIdType" deviceIdType "username" username "password" password "emailAddress" emailAddress "assetId" assetId "streetAddress" streetAddress "zipcode" zipcode "gender" gender "birthday" birthday "homePhone" homePhone "cellPhone" cellPhone "cellPhoneCarrier" cellPhoneCarrier "businessPhone" businessPhone "role" role "platforms" platforms "tags" tags "aboutUs" aboutUs "gameExperience" gameExperience "categoryIds" categoryIds "hometown" hometown "height" height "heightIndex" heightIndex "ethnicity" ethnicity "bodyType" bodyType "maritalStatus" maritalStatus "children" children "religion" religion "education" education "educationIndex" educationIndex "smoke" smoke "drink" drink "companionship" companionship "companionshipIndex" companionshipIndex "preferredMinAge" preferredMinAge "preferredMaxAge" preferredMaxAge "preferredMinHeight" preferredMinHeight "preferredMaxHeight" preferredMaxHeight "preferredGender" preferredGender "preferredEducation" preferredEducation "preferredEducationIndex" preferredEducationIndex "preferredBodyType" preferredBodyType "preferredEthnicity" preferredEthnicity "preferredLocation" preferredLocation "preferredLocationRange" preferredLocationRange "latitude" latitude "longitude" longitude "acceptedTerms" acceptedTerms "inviteToken" inviteToken "referralAccountId" referralAccountId "sendValidation" sendValidation "gameType" gameType "appKey" appKey "appVersion" appVersion "responseType" responseType "audienceIdsToAdd" audienceIdsToAdd "appBlob" appBlob "appEnablePush" appEnablePush "appEnableSMS" appEnableSMS "appEnableEmail" appEnableEmail "locationVisibility" locationVisibility "homeLatitude" homeLatitude "homeLongitude" homeLongitude "appNickname" appNickname "personalAudienceId" personalAudienceId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-account account-login-response-spec
  "Create Account
  Create a new account by role."
  ([version float?, username string?, password string?, ] (create-account version username password nil))
  ([version float?, username string?, password string?, optional-params any?]
   (let [res (:data (create-account-with-http-info version username password optional-params))]
     (if (:decode-models *api-context*)
        (st/decode account-login-response-spec res st/string-transformer)
        res))))


(defn-spec edit-account-with-http-info any?
  "Update Account
  Edit the user's profile information"
  ([version float?, ] (edit-account-with-http-info version nil))
  ([version float?, {:keys [deviceId accountId connectionAccountId role assetId name prefixName firstName middleName lastName suffixName title gender age birthday homePhone cellPhone cellPhoneCarrier businessPhone emailAddress streetAddress streetAddress2 city state zipcode country makeProfileInfoPublic makeGameInfoPublic makeFriendsInfoPublic hometown height heightIndex ethnicity bodyType maritalStatus children religion education educationIndex smoke drink companionship companionshipIndex preferredMinAge preferredMaxAge preferredMinHeight preferredMaxHeight preferredGender preferredEducation preferredEducationIndex preferredBodyType preferredEthnicity preferredLocation preferredLocationRange platforms tags aboutUs matchToken gameExperience categories categoryIds responseFilters showAsZipcode showExactLocation showOthersExactLocation acceptedTerms locationVisibility appBlob appEnablePush appEnableSMS appEnableEmail gameType appKey latitude longitude returnProfile audienceIdsToAdd audienceIdsToRemove referralAccountId appNickname personalAudienceId nonGuestUsername]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/account/profile/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "connectionAccountId" connectionAccountId "role" role "assetId" assetId "name" name "prefixName" prefixName "firstName" firstName "middleName" middleName "lastName" lastName "suffixName" suffixName "title" title "gender" gender "age" age "birthday" birthday "homePhone" homePhone "cellPhone" cellPhone "cellPhoneCarrier" cellPhoneCarrier "businessPhone" businessPhone "emailAddress" emailAddress "streetAddress" streetAddress "streetAddress2" streetAddress2 "city" city "state" state "zipcode" zipcode "country" country "makeProfileInfoPublic" makeProfileInfoPublic "makeGameInfoPublic" makeGameInfoPublic "makeFriendsInfoPublic" makeFriendsInfoPublic "hometown" hometown "height" height "heightIndex" heightIndex "ethnicity" ethnicity "bodyType" bodyType "maritalStatus" maritalStatus "children" children "religion" religion "education" education "educationIndex" educationIndex "smoke" smoke "drink" drink "companionship" companionship "companionshipIndex" companionshipIndex "preferredMinAge" preferredMinAge "preferredMaxAge" preferredMaxAge "preferredMinHeight" preferredMinHeight "preferredMaxHeight" preferredMaxHeight "preferredGender" preferredGender "preferredEducation" preferredEducation "preferredEducationIndex" preferredEducationIndex "preferredBodyType" preferredBodyType "preferredEthnicity" preferredEthnicity "preferredLocation" preferredLocation "preferredLocationRange" preferredLocationRange "platforms" platforms "tags" tags "aboutUs" aboutUs "matchToken" matchToken "gameExperience" gameExperience "categories" categories "categoryIds" categoryIds "responseFilters" responseFilters "showAsZipcode" showAsZipcode "showExactLocation" showExactLocation "showOthersExactLocation" showOthersExactLocation "acceptedTerms" acceptedTerms "locationVisibility" locationVisibility "appBlob" appBlob "appEnablePush" appEnablePush "appEnableSMS" appEnableSMS "appEnableEmail" appEnableEmail "gameType" gameType "appKey" appKey "latitude" latitude "longitude" longitude "returnProfile" returnProfile "audienceIdsToAdd" audienceIdsToAdd "audienceIdsToRemove" audienceIdsToRemove "referralAccountId" referralAccountId "appNickname" appNickname "personalAudienceId" personalAudienceId "nonGuestUsername" nonGuestUsername }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec edit-account profile-info-response-spec
  "Update Account
  Edit the user's profile information"
  ([version float?, ] (edit-account version nil))
  ([version float?, optional-params any?]
   (let [res (:data (edit-account-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode profile-info-response-spec res st/string-transformer)
        res))))


(defn-spec edit-username-with-http-info any?
  "Update Username and Email
  Update account's own username and/or emailAddress"
  ([version float?, ] (edit-username-with-http-info version nil))
  ([version float?, {:keys [deviceId accountId emailAddress username]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/account/username/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "emailAddress" emailAddress "username" username }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec edit-username sirqul-response-spec
  "Update Username and Email
  Update account's own username and/or emailAddress"
  ([version float?, ] (edit-username version nil))
  ([version float?, optional-params any?]
   (let [res (:data (edit-username-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec get-account-with-http-info any?
  "Get Account
  Gets a user's account profile. Application settings and account settings will also be returned for the owner of the account."
  ([version float?, ] (get-account-with-http-info version nil))
  ([version float?, {:keys [returnNulls deviceId accountId connectionAccountEmail connectionAccountId responseFilters gameType appKey purchaseType updateViewedDate latitude longitude]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/account/profile/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"returnNulls" returnNulls "deviceId" deviceId "accountId" accountId "connectionAccountEmail" connectionAccountEmail "connectionAccountId" connectionAccountId "responseFilters" responseFilters "gameType" gameType "appKey" appKey "purchaseType" purchaseType "updateViewedDate" updateViewedDate "latitude" latitude "longitude" longitude }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-account profile-response-spec
  "Get Account
  Gets a user's account profile. Application settings and account settings will also be returned for the owner of the account."
  ([version float?, ] (get-account version nil))
  ([version float?, optional-params any?]
   (let [res (:data (get-account-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode profile-response-spec res st/string-transformer)
        res))))


(defn-spec get-profile-assets-with-http-info any?
  "Get Profile Assets
  Get a list of assets a person has ever uploaded. Filters the list based on parameters."
  ([version float?, ] (get-profile-assets-with-http-info version nil))
  ([version float?, {:keys [returnNulls deviceId accountId ownerId mediaTypes mimeTypes sortField descending latitude longitude _i start _l limit]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/account/profile/assets" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"returnNulls" returnNulls "deviceId" deviceId "accountId" accountId "ownerId" ownerId "mediaTypes" mediaTypes "mimeTypes" mimeTypes "sortField" sortField "descending" descending "latitude" latitude "longitude" longitude "_i" _i "start" start "_l" _l "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-profile-assets asset-list-response-spec
  "Get Profile Assets
  Get a list of assets a person has ever uploaded. Filters the list based on parameters."
  ([version float?, ] (get-profile-assets version nil))
  ([version float?, optional-params any?]
   (let [res (:data (get-profile-assets-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode asset-list-response-spec res st/string-transformer)
        res))))


(defn-spec get-referral-list-with-http-info any?
  "Search Accounts
  Gets a user's account profile and their referral List."
  ([version float?, ] (get-referral-list-with-http-info version nil))
  ([version float?, {:keys [accountId appKey retrieveType levelLimit ancestorLevelLimit childrenLevelLimit ancestorListStart ancestorListLimit childrenListStart childrenListLimit childrenChildren]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/account/referral/list" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "retrieveType" retrieveType "levelLimit" levelLimit "ancestorLevelLimit" ancestorLevelLimit "childrenLevelLimit" childrenLevelLimit "ancestorListStart" ancestorListStart "ancestorListLimit" ancestorListLimit "childrenListStart" childrenListStart "childrenListLimit" childrenListLimit "childrenChildren" childrenChildren }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-referral-list any?
  "Search Accounts
  Gets a user's account profile and their referral List."
  ([version float?, ] (get-referral-list version nil))
  ([version float?, optional-params any?]
   (let [res (:data (get-referral-list-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-settings-with-http-info any?
  "Get Account Settings
  Get the account settings for a user"
  ([version float?, ] (get-settings-with-http-info version nil))
  ([version float?, {:keys [deviceId accountId latitude longitude]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/account/settings/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "latitude" latitude "longitude" longitude }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-settings user-settings-response-spec
  "Get Account Settings
  Get the account settings for a user"
  ([version float?, ] (get-settings version nil))
  ([version float?, optional-params any?]
   (let [res (:data (get-settings-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode user-settings-response-spec res st/string-transformer)
        res))))


(defn-spec login-delegate-with-http-info any?
  "Login as Account
  A login service that supports logging in as someone else (accounts that the user manages). Intended for internal use for now."
  ([version float?, accessToken string?, appKey string?, ] (login-delegate-with-http-info version accessToken appKey nil))
  ([version float?, accessToken string?, appKey string?, {:keys [deviceId accessTokenSecret delegatedAccountId delegatedUsername networkUID ageRestriction responseFilters latitude longitude]} (s/map-of keyword? any?)]
   (check-required-params version accessToken appKey)
   (call-api "/api/{version}/account/login/delegate" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accessToken" accessToken "accessTokenSecret" accessTokenSecret "delegatedAccountId" delegatedAccountId "delegatedUsername" delegatedUsername "networkUID" networkUID "appKey" appKey "ageRestriction" ageRestriction "responseFilters" responseFilters "latitude" latitude "longitude" longitude }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec login-delegate profile-response-spec
  "Login as Account
  A login service that supports logging in as someone else (accounts that the user manages). Intended for internal use for now."
  ([version float?, accessToken string?, appKey string?, ] (login-delegate version accessToken appKey nil))
  ([version float?, accessToken string?, appKey string?, optional-params any?]
   (let [res (:data (login-delegate-with-http-info version accessToken appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode profile-response-spec res st/string-transformer)
        res))))


(defn-spec login-general-with-http-info any?
  "Login Account
  General login service that supports various authentication methods. Currently supports Facebook, Twitter, Sirqul Username, and Sirqul Phone by default. Can also support custom networks created using the {@link ThirdPartyApi}"
  ([version float?, accessToken string?, networkUID string?, appKey string?, ] (login-general-with-http-info version accessToken networkUID appKey nil))
  ([version float?, accessToken string?, networkUID string?, appKey string?, {:keys [deviceId deviceIdType accessTokenSecret ageRestriction responseFilters latitude longitude emailMatch chosenAccountId thirdPartyCredentialId]} (s/map-of keyword? any?)]
   (check-required-params version accessToken networkUID appKey)
   (call-api "/api/{version}/account/login" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "deviceIdType" deviceIdType "accessToken" accessToken "accessTokenSecret" accessTokenSecret "networkUID" networkUID "appKey" appKey "ageRestriction" ageRestriction "responseFilters" responseFilters "latitude" latitude "longitude" longitude "emailMatch" emailMatch "chosenAccountId" chosenAccountId "thirdPartyCredentialId" thirdPartyCredentialId }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec login-general profile-response-spec
  "Login Account
  General login service that supports various authentication methods. Currently supports Facebook, Twitter, Sirqul Username, and Sirqul Phone by default. Can also support custom networks created using the {@link ThirdPartyApi}"
  ([version float?, accessToken string?, networkUID string?, appKey string?, ] (login-general version accessToken networkUID appKey nil))
  ([version float?, accessToken string?, networkUID string?, appKey string?, optional-params any?]
   (let [res (:data (login-general-with-http-info version accessToken networkUID appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode profile-response-spec res st/string-transformer)
        res))))


(defn-spec login-username-with-http-info any?
  "Login Account (Username)
  Login to system with an account"
  ([version float?, username string?, password string?, ] (login-username-with-http-info version username password nil))
  ([version float?, username string?, password string?, {:keys [deviceId latitude longitude app gameType appKey returnProfile responseFilters]} (s/map-of keyword? any?)]
   (check-required-params version username password)
   (call-api "/api/{version}/account/get" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "username" username "password" password "latitude" latitude "longitude" longitude "app" app "gameType" gameType "appKey" appKey "returnProfile" returnProfile "responseFilters" responseFilters }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec login-username profile-response-spec
  "Login Account (Username)
  Login to system with an account"
  ([version float?, username string?, password string?, ] (login-username version username password nil))
  ([version float?, username string?, password string?, optional-params any?]
   (let [res (:data (login-username-with-http-info version username password optional-params))]
     (if (:decode-models *api-context*)
        (st/decode profile-response-spec res st/string-transformer)
        res))))


(defn-spec logout-with-http-info any?
  "Logout Account
  Cleans up the users data for logging out."
  ([version float?, ] (logout-with-http-info version nil))
  ([version float?, {:keys [deviceId deviceIdType accountId latitude longitude]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/account/logout" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "deviceIdType" deviceIdType "accountId" accountId "latitude" latitude "longitude" longitude }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec logout sirqul-response-spec
  "Logout Account
  Cleans up the users data for logging out."
  ([version float?, ] (logout version nil))
  ([version float?, optional-params any?]
   (let [res (:data (logout-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec merge-account-with-http-info any?
  "Merge Account
  Merges the analytics, achievements, leaderboards of two accounts."
  ([version float?, mergeAccountId int?, appKey string?, ] (merge-account-with-http-info version mergeAccountId appKey nil))
  ([version float?, mergeAccountId int?, appKey string?, {:keys [deviceId accountId]} (s/map-of keyword? any?)]
   (check-required-params version mergeAccountId appKey)
   (call-api "/api/{version}/account/merge" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "mergeAccountId" mergeAccountId "appKey" appKey }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec merge-account sirqul-response-spec
  "Merge Account
  Merges the analytics, achievements, leaderboards of two accounts."
  ([version float?, mergeAccountId int?, appKey string?, ] (merge-account version mergeAccountId appKey nil))
  ([version float?, mergeAccountId int?, appKey string?, optional-params any?]
   (let [res (:data (merge-account-with-http-info version mergeAccountId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec password-change-with-http-info any?
  "Update Password
  Update the account password."
  [version float?, accountId int?, oldPassword string?, newPassword string?, confirmPassword string?]
  (check-required-params version accountId oldPassword newPassword confirmPassword)
  (call-api "/api/{version}/account/passwordchange" :post
            {:path-params   {"version" version }
             :header-params {}
             :query-params  {"accountId" accountId "oldPassword" oldPassword "newPassword" newPassword "confirmPassword" confirmPassword }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec password-change sirqul-response-spec
  "Update Password
  Update the account password."
  [version float?, accountId int?, oldPassword string?, newPassword string?, confirmPassword string?]
  (let [res (:data (password-change-with-http-info version accountId oldPassword newPassword confirmPassword))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


(defn-spec password-reset-with-http-info any?
  "Reset Password
  Reset the account password. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token."
  [version float?, token string?, password string?, confirm string?]
  (check-required-params version token password confirm)
  (call-api "/api/{version}/account/passwordreset" :post
            {:path-params   {"version" version }
             :header-params {}
             :query-params  {"token" token "password" password "confirm" confirm }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec password-reset sirqul-response-spec
  "Reset Password
  Reset the account password. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token."
  [version float?, token string?, password string?, confirm string?]
  (let [res (:data (password-reset-with-http-info version token password confirm))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


(defn-spec request-password-reset-with-http-info any?
  "Request Password Reset
  Request that an account password be reset. The account is looked up by email address and then a link is sent via email to that account with a reset token. The token is valid for 24 hours."
  ([version float?, email string?, ] (request-password-reset-with-http-info version email nil))
  ([version float?, email string?, {:keys [from domain subUrl referer]} (s/map-of keyword? any?)]
   (check-required-params version email)
   (call-api "/api/{version}/account/requestpasswordreset" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"email" email "from" from "domain" domain "subUrl" subUrl "referer" referer }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec request-password-reset sirqul-response-spec
  "Request Password Reset
  Request that an account password be reset. The account is looked up by email address and then a link is sent via email to that account with a reset token. The token is valid for 24 hours."
  ([version float?, email string?, ] (request-password-reset version email nil))
  ([version float?, email string?, optional-params any?]
   (let [res (:data (request-password-reset-with-http-info version email optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec request-validate-account-with-http-info any?
  "Send Validation Request
  Send an email to validate a user's account."
  [version float?, accountId int?]
  (check-required-params version accountId)
  (call-api "/api/{version}/account/requestValidateAccount" :post
            {:path-params   {"version" version }
             :header-params {}
             :query-params  {"accountId" accountId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec request-validate-account sirqul-response-spec
  "Send Validation Request
  Send an email to validate a user's account."
  [version float?, accountId int?]
  (let [res (:data (request-validate-account-with-http-info version accountId))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


(defn-spec search-accounts-with-http-info any?
  "Search Accounts
  Search for account profiles."
  ([version float?, accountId int?, appKey string?, ] (search-accounts-with-http-info version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, {:keys [keyword latitude longitude radius gender gameExperience age categoryIds returnNulls responseFilters purchaseType sortField descending start limit activeOnly]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey)
   (call-api "/api/{version}/account/profile/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "keyword" keyword "latitude" latitude "longitude" longitude "radius" radius "gender" gender "gameExperience" gameExperience "age" age "categoryIds" categoryIds "returnNulls" returnNulls "responseFilters" responseFilters "purchaseType" purchaseType "sortField" sortField "descending" descending "start" start "limit" limit "activeOnly" activeOnly }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-accounts (s/coll-of profile-response-spec)
  "Search Accounts
  Search for account profiles."
  ([version float?, accountId int?, appKey string?, ] (search-accounts version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, optional-params any?]
   (let [res (:data (search-accounts-with-http-info version accountId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of profile-response-spec) res st/string-transformer)
        res))))


(defn-spec secure-login-with-http-info any?
  "Login Account (Encrypted Username)
  ogin with encrypted user-name and password."
  ([version float?, username string?, password string?, gameType string?, ] (secure-login-with-http-info version username password gameType nil))
  ([version float?, username string?, password string?, gameType string?, {:keys [deviceId charsetName latitude longitude returnProfile responseFilters]} (s/map-of keyword? any?)]
   (check-required-params version username password gameType)
   (call-api "/api/{version}/account/login/validate" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "username" username "password" password "gameType" gameType "charsetName" charsetName "latitude" latitude "longitude" longitude "returnProfile" returnProfile "responseFilters" responseFilters }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec secure-login profile-response-spec
  "Login Account (Encrypted Username)
  ogin with encrypted user-name and password."
  ([version float?, username string?, password string?, gameType string?, ] (secure-login version username password gameType nil))
  ([version float?, username string?, password string?, gameType string?, optional-params any?]
   (let [res (:data (secure-login-with-http-info version username password gameType optional-params))]
     (if (:decode-models *api-context*)
        (st/decode profile-response-spec res st/string-transformer)
        res))))


(defn-spec secure-signup-with-http-info any?
  "Create Account (Encrypted Username)
  Create a new account by role (with encrypted user-name and password)"
  ([version float?, deviceId string?, username string?, password string?, ] (secure-signup-with-http-info version deviceId username password nil))
  ([version float?, deviceId string?, username string?, password string?, {:keys [name inviteToken prefixName firstName middleName lastName suffixName title deviceIdType emailAddress assetId address zipcode gender birthday homePhone cellPhone cellPhoneCarrier businessPhone role platforms tags aboutUs gameExperience categoryIds hometown height heightIndex ethnicity bodyType maritalStatus children religion education educationIndex smoke drink companionship companionshipIndex preferredMinAge preferredMaxAge preferredMinHeight preferredMaxHeight preferredGender preferredEducation preferredEducationIndex preferredBodyType preferredEthnicity preferredLocation preferredLocationRange latitude longitude acceptedTerms charsetName gameType appKey appVersion responseType]} (s/map-of keyword? any?)]
   (check-required-params version deviceId username password)
   (call-api "/api/{version}/account/create/validate" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"name" name "inviteToken" inviteToken "prefixName" prefixName "firstName" firstName "middleName" middleName "lastName" lastName "suffixName" suffixName "title" title "deviceId" deviceId "deviceIdType" deviceIdType "username" username "password" password "emailAddress" emailAddress "assetId" assetId "address" address "zipcode" zipcode "gender" gender "birthday" birthday "homePhone" homePhone "cellPhone" cellPhone "cellPhoneCarrier" cellPhoneCarrier "businessPhone" businessPhone "role" role "platforms" platforms "tags" tags "aboutUs" aboutUs "gameExperience" gameExperience "categoryIds" categoryIds "hometown" hometown "height" height "heightIndex" heightIndex "ethnicity" ethnicity "bodyType" bodyType "maritalStatus" maritalStatus "children" children "religion" religion "education" education "educationIndex" educationIndex "smoke" smoke "drink" drink "companionship" companionship "companionshipIndex" companionshipIndex "preferredMinAge" preferredMinAge "preferredMaxAge" preferredMaxAge "preferredMinHeight" preferredMinHeight "preferredMaxHeight" preferredMaxHeight "preferredGender" preferredGender "preferredEducation" preferredEducation "preferredEducationIndex" preferredEducationIndex "preferredBodyType" preferredBodyType "preferredEthnicity" preferredEthnicity "preferredLocation" preferredLocation "preferredLocationRange" preferredLocationRange "latitude" latitude "longitude" longitude "acceptedTerms" acceptedTerms "charsetName" charsetName "gameType" gameType "appKey" appKey "appVersion" appVersion "responseType" responseType }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec secure-signup profile-info-response-spec
  "Create Account (Encrypted Username)
  Create a new account by role (with encrypted user-name and password)"
  ([version float?, deviceId string?, username string?, password string?, ] (secure-signup version deviceId username password nil))
  ([version float?, deviceId string?, username string?, password string?, optional-params any?]
   (let [res (:data (secure-signup-with-http-info version deviceId username password optional-params))]
     (if (:decode-models *api-context*)
        (st/decode profile-info-response-spec res st/string-transformer)
        res))))


(defn-spec set-match-token-with-http-info any?
  "Save Match Token
  Save user's match token to be used for profile match making"
  ([version float?, ] (set-match-token-with-http-info version nil))
  ([version float?, {:keys [deviceId accountId matchToken gameType appKey latitude longitude]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/consumer/profile/matchToken" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "matchToken" matchToken "gameType" gameType "appKey" appKey "latitude" latitude "longitude" longitude }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec set-match-token sirqul-response-spec
  "Save Match Token
  Save user's match token to be used for profile match making"
  ([version float?, ] (set-match-token version nil))
  ([version float?, optional-params any?]
   (let [res (:data (set-match-token-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec update-actve-status-with-http-info any?
  "Update Account Active Status
  Activate or deactivate an account (requires appropriate permissions)."
  ([version float?, accountId int?, connectionAccountId int?, active boolean?, ] (update-actve-status-with-http-info version accountId connectionAccountId active nil))
  ([version float?, accountId int?, connectionAccountId int?, active boolean?, {:keys [deviceId appKey]} (s/map-of keyword? any?)]
   (check-required-params version accountId connectionAccountId active)
   (call-api "/api/{version}/account/active/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "connectionAccountId" connectionAccountId "appKey" appKey "active" active }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-actve-status sirqul-response-spec
  "Update Account Active Status
  Activate or deactivate an account (requires appropriate permissions)."
  ([version float?, accountId int?, connectionAccountId int?, active boolean?, ] (update-actve-status version accountId connectionAccountId active nil))
  ([version float?, accountId int?, connectionAccountId int?, active boolean?, optional-params any?]
   (let [res (:data (update-actve-status-with-http-info version accountId connectionAccountId active optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec update-location-with-http-info any?
  "Update Location
  Update the account location"
  ([version float?, ] (update-location-with-http-info version nil))
  ([version float?, {:keys [deviceId accountId latitude longitude clientTime]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/account/location/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "latitude" latitude "longitude" longitude "clientTime" clientTime }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-location sirqul-response-spec
  "Update Location
  Update the account location"
  ([version float?, ] (update-location version nil))
  ([version float?, optional-params any?]
   (let [res (:data (update-location-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec update-settings-with-http-info any?
  "Update Account Settings
  Update the account settings for a user"
  ([version float?, ] (update-settings-with-http-info version nil))
  ([version float?, {:keys [deviceId accountId blockedNotifications suggestionMethod suggestionCount suggestionTimeFrame showOthersExactLocation showAsZipcode showExactLocation favoriteVisibility latitude longitude]} (s/map-of keyword? any?)]
   (check-required-params version)
   (call-api "/api/{version}/account/settings/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "blockedNotifications" blockedNotifications "suggestionMethod" suggestionMethod "suggestionCount" suggestionCount "suggestionTimeFrame" suggestionTimeFrame "showOthersExactLocation" showOthersExactLocation "showAsZipcode" showAsZipcode "showExactLocation" showExactLocation "favoriteVisibility" favoriteVisibility "latitude" latitude "longitude" longitude }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-settings user-settings-response-spec
  "Update Account Settings
  Update the account settings for a user"
  ([version float?, ] (update-settings version nil))
  ([version float?, optional-params any?]
   (let [res (:data (update-settings-with-http-info version optional-params))]
     (if (:decode-models *api-context*)
        (st/decode user-settings-response-spec res st/string-transformer)
        res))))


(defn-spec validate-account-signup-with-http-info any?
  "Save Validation Status
  Validate the account's email address. The token must be valid and not expired. Use the RequestValidateAccount end point to request a new token."
  [version float?, token string?]
  (check-required-params version token)
  (call-api "/api/{version}/account/validateAccountSignup" :post
            {:path-params   {"version" version }
             :header-params {}
             :query-params  {"token" token }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec validate-account-signup account-login-response-spec
  "Save Validation Status
  Validate the account's email address. The token must be valid and not expired. Use the RequestValidateAccount end point to request a new token."
  [version float?, token string?]
  (let [res (:data (validate-account-signup-with-http-info version token))]
    (if (:decode-models *api-context*)
       (st/decode account-login-response-spec res st/string-transformer)
       res)))


(defn-spec validate-password-reset-with-http-info any?
  "Validate Password Reset Token
  Validate the password reset token. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token. The user receives and email with the reset page, therefore it should be validated before bwing used to reset the password."
  [version float?, token string?]
  (check-required-params version token)
  (call-api "/api/{version}/account/validatepasswordreset" :post
            {:path-params   {"version" version }
             :header-params {}
             :query-params  {"token" token }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec validate-password-reset sirqul-response-spec
  "Validate Password Reset Token
  Validate the password reset token. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token. The user receives and email with the reset page, therefore it should be validated before bwing used to reset the password."
  [version float?, token string?]
  (let [res (:data (validate-password-reset-with-http-info version token))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


