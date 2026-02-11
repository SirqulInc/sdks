(ns sirqul-io-t-platform.api.orson
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


(defn-spec add-movie-with-http-info any?
  "Add Movie
  Add a movie to be indexed for Topics. Indexing a movie analyses the content and incorporates it into the topics model for future /topics calls. This does not store the movie file long-term."
  ([accountId int?, movieName string?, ] (add-movie-with-http-info accountId movieName nil))
  ([accountId int?, movieName string?, {:keys [thirdPartyAccountId tags ^File file url callback]} (s/map-of keyword? any?)]
   (check-required-params accountId movieName)
   (call-api "/orson/ai/addMovie" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "thirdPartyAccountId" thirdPartyAccountId "tags" tags "movieName" movieName "file" file "url" url "callback" callback }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec add-movie orson-ai-add-movie-response-spec
  "Add Movie
  Add a movie to be indexed for Topics. Indexing a movie analyses the content and incorporates it into the topics model for future /topics calls. This does not store the movie file long-term."
  ([accountId int?, movieName string?, ] (add-movie accountId movieName nil))
  ([accountId int?, movieName string?, optional-params any?]
   (let [res (:data (add-movie-with-http-info accountId movieName optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orson-ai-add-movie-response-spec res st/string-transformer)
        res))))


(defn-spec ai-docs-with-http-info any?
  "Search Docs
  Takes in a text string representing one or more sentences and it returns a list of documents which are related to the provided document."
  ([accountId int?, doc string?, ] (ai-docs-with-http-info accountId doc nil))
  ([accountId int?, doc string?, {:keys [return_topics limit offset]} (s/map-of keyword? any?)]
   (check-required-params accountId doc)
   (call-api "/orson/ai/docs" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "doc" doc "return_topics" return_topics "limit" limit "offset" offset }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec ai-docs orson-ai-proto-response-spec
  "Search Docs
  Takes in a text string representing one or more sentences and it returns a list of documents which are related to the provided document."
  ([accountId int?, doc string?, ] (ai-docs accountId doc nil))
  ([accountId int?, doc string?, optional-params any?]
   (let [res (:data (ai-docs-with-http-info accountId doc optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orson-ai-proto-response-spec res st/string-transformer)
        res))))


(defn-spec ai-find-images-with-http-info any?
  "Find images
  Returns a list of URIs of images that match the text."
  ([accountId int?, text string?, ] (ai-find-images-with-http-info accountId text nil))
  ([accountId int?, text string?, {:keys [parse_flag fetch_flag size]} (s/map-of keyword? any?)]
   (check-required-params accountId text)
   (call-api "/orson/ai/img" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "text" text "parse_flag" parse_flag "fetch_flag" fetch_flag "size" size }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec ai-find-images orson-ai-proto-response-spec
  "Find images
  Returns a list of URIs of images that match the text."
  ([accountId int?, text string?, ] (ai-find-images accountId text nil))
  ([accountId int?, text string?, optional-params any?]
   (let [res (:data (ai-find-images-with-http-info accountId text optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orson-ai-proto-response-spec res st/string-transformer)
        res))))


(defn-spec ai-tags-with-http-info any?
  "Search Tags
  Search the tags column of user provided tags using this endpoint."
  ([accountId int?, tags string?, ] (ai-tags-with-http-info accountId tags nil))
  ([accountId int?, tags string?, {:keys [conditional limit offset]} (s/map-of keyword? any?)]
   (check-required-params accountId tags)
   (call-api "/orson/ai/tags" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "tags" tags "conditional" conditional "limit" limit "offset" offset }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec ai-tags orson-ai-proto-response-spec
  "Search Tags
  Search the tags column of user provided tags using this endpoint."
  ([accountId int?, tags string?, ] (ai-tags accountId tags nil))
  ([accountId int?, tags string?, optional-params any?]
   (let [res (:data (ai-tags-with-http-info accountId tags optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orson-ai-proto-response-spec res st/string-transformer)
        res))))


(defn-spec ai-text-with-http-info any?
  "Search Text
  Search the movie text column of movie text using this endpoint."
  ([accountId int?, terms string?, ] (ai-text-with-http-info accountId terms nil))
  ([accountId int?, terms string?, {:keys [conditional limit offset]} (s/map-of keyword? any?)]
   (check-required-params accountId terms)
   (call-api "/orson/ai/text" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "terms" terms "conditional" conditional "limit" limit "offset" offset }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec ai-text orson-ai-proto-response-spec
  "Search Text
  Search the movie text column of movie text using this endpoint."
  ([accountId int?, terms string?, ] (ai-text accountId terms nil))
  ([accountId int?, terms string?, optional-params any?]
   (let [res (:data (ai-text-with-http-info accountId terms optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orson-ai-proto-response-spec res st/string-transformer)
        res))))


(defn-spec batch-with-http-info any?
  "Batch Analysis
  Run several types of analysis on an audio or video file in a single API call, instead of calling several operations for the same file.."
  ([accountId int?, ] (batch-with-http-info accountId nil))
  ([accountId int?, {:keys [thirdPartyAccountId limit operations ^File file url callback]} (s/map-of keyword? any?)]
   (check-required-params accountId)
   (call-api "/orson/ai/batch" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "thirdPartyAccountId" thirdPartyAccountId "limit" limit "operations" operations "file" file "url" url "callback" callback }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec batch orson-ai-batch-response-spec
  "Batch Analysis
  Run several types of analysis on an audio or video file in a single API call, instead of calling several operations for the same file.."
  ([accountId int?, ] (batch accountId nil))
  ([accountId int?, optional-params any?]
   (let [res (:data (batch-with-http-info accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orson-ai-batch-response-spec res st/string-transformer)
        res))))


(defn-spec create-instant-episode-with-http-info any?
  "Creates an instant episode
  Creates an instant episode for a given StoryStrip by providing all necessary inputs, interview recordings, and pictures, kicking off a render immediately."
  [accountId int?, data string?]
  (check-required-params accountId data)
  (call-api "/orson/stories/episodes/instant" :post
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "data" data }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec create-instant-episode orson-episode-response-spec
  "Creates an instant episode
  Creates an instant episode for a given StoryStrip by providing all necessary inputs, interview recordings, and pictures, kicking off a render immediately."
  [accountId int?, data string?]
  (let [res (:data (create-instant-episode-with-http-info accountId data))]
    (if (:decode-models *api-context*)
       (st/decode orson-episode-response-spec res st/string-transformer)
       res)))


(defn-spec create-voice-canvas-with-http-info any?
  "Create VoiceCanvas images
  Create VoiceCanvas images for provided text, file upload, or file URL"
  ([accountId int?, dimensions string?, ] (create-voice-canvas-with-http-info accountId dimensions nil))
  ([accountId int?, dimensions string?, {:keys [thirdPartyAccountId text ^File file url parseFlag fetchFlag callback]} (s/map-of keyword? any?)]
   (check-required-params accountId dimensions)
   (call-api "/orson/ai/voiceCanvas" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "thirdPartyAccountId" thirdPartyAccountId "dimensions" dimensions "text" text "file" file "url" url "parseFlag" parseFlag "fetchFlag" fetchFlag "callback" callback }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-voice-canvas orson-ai-voice-canvas-response-spec
  "Create VoiceCanvas images
  Create VoiceCanvas images for provided text, file upload, or file URL"
  ([accountId int?, dimensions string?, ] (create-voice-canvas accountId dimensions nil))
  ([accountId int?, dimensions string?, optional-params any?]
   (let [res (:data (create-voice-canvas-with-http-info accountId dimensions optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orson-ai-voice-canvas-response-spec res st/string-transformer)
        res))))


(defn-spec emotion-with-http-info any?
  "Detect emotions
  Detects emotions in an audio or video recording."
  ([accountId int?, ] (emotion-with-http-info accountId nil))
  ([accountId int?, {:keys [thirdPartyAccountId ^File file url callback]} (s/map-of keyword? any?)]
   (check-required-params accountId)
   (call-api "/orson/ai/emotion" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "thirdPartyAccountId" thirdPartyAccountId "file" file "url" url "callback" callback }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec emotion orson-ai-emotions-response-spec
  "Detect emotions
  Detects emotions in an audio or video recording."
  ([accountId int?, ] (emotion accountId nil))
  ([accountId int?, optional-params any?]
   (let [res (:data (emotion-with-http-info accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orson-ai-emotions-response-spec res st/string-transformer)
        res))))


(defn-spec get-add-movie-result-with-http-info any?
  "Get Add Movie Result
  Get the result of an in progress Add Movie request from an earlier POST."
  [requestId string?, accountId int?]
  (check-required-params requestId accountId)
  (call-api "/orson/ai/addMovie/{requestId}" :get
            {:path-params   {"requestId" requestId }
             :header-params {}
             :query-params  {"accountId" accountId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-add-movie-result orson-ai-add-movie-response-spec
  "Get Add Movie Result
  Get the result of an in progress Add Movie request from an earlier POST."
  [requestId string?, accountId int?]
  (let [res (:data (get-add-movie-result-with-http-info requestId accountId))]
    (if (:decode-models *api-context*)
       (st/decode orson-ai-add-movie-response-spec res st/string-transformer)
       res)))


(defn-spec get-batch-with-http-info any?
  "Get Batch Analysis Results
  Gets the completed Video Batch results, if done, or an error or status update if not."
  [requestId string?, accountId int?]
  (check-required-params requestId accountId)
  (call-api "/orson/ai/batch/{requestId}" :get
            {:path-params   {"requestId" requestId }
             :header-params {}
             :query-params  {"accountId" accountId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-batch orson-ai-batch-response-spec
  "Get Batch Analysis Results
  Gets the completed Video Batch results, if done, or an error or status update if not."
  [requestId string?, accountId int?]
  (let [res (:data (get-batch-with-http-info requestId accountId))]
    (if (:decode-models *api-context*)
       (st/decode orson-ai-batch-response-spec res st/string-transformer)
       res)))


(defn-spec get-emotion-with-http-info any?
  "Get Emotion Results
  Checks the Emotion analysis and returns in progress, results, or error."
  [requestId string?, accountId int?]
  (check-required-params requestId accountId)
  (call-api "/orson/ai/emotion/{requestId}" :get
            {:path-params   {"requestId" requestId }
             :header-params {}
             :query-params  {"accountId" accountId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-emotion orson-ai-emotions-response-spec
  "Get Emotion Results
  Checks the Emotion analysis and returns in progress, results, or error."
  [requestId string?, accountId int?]
  (let [res (:data (get-emotion-with-http-info requestId accountId))]
    (if (:decode-models *api-context*)
       (st/decode orson-ai-emotions-response-spec res st/string-transformer)
       res)))


(defn-spec get-episode-status-with-http-info any?
  "Check episode status
  Gets a summary of the episode's status, including any renders."
  [episodeId int?, accountId int?]
  (check-required-params episodeId accountId)
  (call-api "/orson/stories/episodes/{episodeId}/status" :get
            {:path-params   {"episodeId" episodeId }
             :header-params {}
             :query-params  {"accountId" accountId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-episode-status orson-episode-response-spec
  "Check episode status
  Gets a summary of the episode's status, including any renders."
  [episodeId int?, accountId int?]
  (let [res (:data (get-episode-status-with-http-info episodeId accountId))]
    (if (:decode-models *api-context*)
       (st/decode orson-episode-response-spec res st/string-transformer)
       res)))


(defn-spec get-render-status-with-http-info any?
  "Check episode status
  Gets a summary of the episode's status, including any renders."
  [renderId string?, accountId int?]
  (check-required-params renderId accountId)
  (call-api "/orson/stories/renders/{renderId}/status" :get
            {:path-params   {"renderId" renderId }
             :header-params {}
             :query-params  {"accountId" accountId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-render-status orson-render-response-spec
  "Check episode status
  Gets a summary of the episode's status, including any renders."
  [renderId string?, accountId int?]
  (let [res (:data (get-render-status-with-http-info renderId accountId))]
    (if (:decode-models *api-context*)
       (st/decode orson-render-response-spec res st/string-transformer)
       res)))


(defn-spec get-stt-with-http-info any?
  "Get Speach to Text Result
  The results of the video transcription and optional translation."
  [requestId string?, accountId int?]
  (check-required-params requestId accountId)
  (call-api "/orson/ai/stt/{requestId}" :get
            {:path-params   {"requestId" requestId }
             :header-params {}
             :query-params  {"accountId" accountId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-stt orson-ai-stt-response-spec
  "Get Speach to Text Result
  The results of the video transcription and optional translation."
  [requestId string?, accountId int?]
  (let [res (:data (get-stt-with-http-info requestId accountId))]
    (if (:decode-models *api-context*)
       (st/decode orson-ai-stt-response-spec res st/string-transformer)
       res)))


(defn-spec get-tech-tune-with-http-info any?
  "Get TechTune Results
  Get a result or continue waiting for a pending request for TechTune analysis."
  [requestId string?, accountId int?]
  (check-required-params requestId accountId)
  (call-api "/orson/ai/techTune/{requestId}" :get
            {:path-params   {"requestId" requestId }
             :header-params {}
             :query-params  {"accountId" accountId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-tech-tune orson-ai-tech-tune-response-spec
  "Get TechTune Results
  Get a result or continue waiting for a pending request for TechTune analysis."
  [requestId string?, accountId int?]
  (let [res (:data (get-tech-tune-with-http-info requestId accountId))]
    (if (:decode-models *api-context*)
       (st/decode orson-ai-tech-tune-response-spec res st/string-transformer)
       res)))


(defn-spec get-topics-with-http-info any?
  "Get Topics
  Get the result of an in progress Topics Analysis from an earlier POST."
  [requestId string?, accountId int?]
  (check-required-params requestId accountId)
  (call-api "/orson/ai/topics/{requestId}" :get
            {:path-params   {"requestId" requestId }
             :header-params {}
             :query-params  {"accountId" accountId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-topics orson-ai-topics-response-spec
  "Get Topics
  Get the result of an in progress Topics Analysis from an earlier POST."
  [requestId string?, accountId int?]
  (let [res (:data (get-topics-with-http-info requestId accountId))]
    (if (:decode-models *api-context*)
       (st/decode orson-ai-topics-response-spec res st/string-transformer)
       res)))


(defn-spec get-tts-with-http-info any?
  "Get Text to Speach Result
  Check the status of an in progress Text-to-Speech call or download the result."
  [requestId string?, accountId int?]
  (check-required-params requestId accountId)
  (call-api "/orson/ai/tts/{requestId}" :get
            {:path-params   {"requestId" requestId }
             :header-params {}
             :query-params  {"accountId" accountId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-tts orson-ai-tts-response-spec
  "Get Text to Speach Result
  Check the status of an in progress Text-to-Speech call or download the result."
  [requestId string?, accountId int?]
  (let [res (:data (get-tts-with-http-info requestId accountId))]
    (if (:decode-models *api-context*)
       (st/decode orson-ai-tts-response-spec res st/string-transformer)
       res)))


(defn-spec get-voice-canvas-with-http-info any?
  "Get VoiceCanvas images
  Get a result or continue waiting for a pending request for VoiceCanvas Images."
  [requestId string?, accountId int?]
  (check-required-params requestId accountId)
  (call-api "/orson/ai/voiceCanvas/{requestId}" :get
            {:path-params   {"requestId" requestId }
             :header-params {}
             :query-params  {"accountId" accountId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-voice-canvas orson-ai-voice-canvas-response-spec
  "Get VoiceCanvas images
  Get a result or continue waiting for a pending request for VoiceCanvas Images."
  [requestId string?, accountId int?]
  (let [res (:data (get-voice-canvas-with-http-info requestId accountId))]
    (if (:decode-models *api-context*)
       (st/decode orson-ai-voice-canvas-response-spec res st/string-transformer)
       res)))


(defn-spec start-video-render-with-http-info any?
  "Starts a StoryStitch video render
  Starts a StoryStitch video render to produce your final video, returning the status details."
  [accountId int?, data string?]
  (check-required-params accountId data)
  (call-api "/orson/stories/renders" :post
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "data" data }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec start-video-render orson-render-response-spec
  "Starts a StoryStitch video render
  Starts a StoryStitch video render to produce your final video, returning the status details."
  [accountId int?, data string?]
  (let [res (:data (start-video-render-with-http-info accountId data))]
    (if (:decode-models *api-context*)
       (st/decode orson-render-response-spec res st/string-transformer)
       res)))


(defn-spec stt-with-http-info any?
  "Speach to Text
  Accepts a movie URL or uploaded file and transcribes it. You also have the option to translate it into one of our additional supported languages."
  ([accountId int?, ] (stt-with-http-info accountId nil))
  ([accountId int?, {:keys [thirdPartyAccountId sourceLanguage targetLanguage ^File file url callback]} (s/map-of keyword? any?)]
   (check-required-params accountId)
   (call-api "/orson/ai/stt" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "thirdPartyAccountId" thirdPartyAccountId "sourceLanguage" sourceLanguage "targetLanguage" targetLanguage "file" file "url" url "callback" callback }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec stt orson-ai-stt-response-spec
  "Speach to Text
  Accepts a movie URL or uploaded file and transcribes it. You also have the option to translate it into one of our additional supported languages."
  ([accountId int?, ] (stt accountId nil))
  ([accountId int?, optional-params any?]
   (let [res (:data (stt-with-http-info accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orson-ai-stt-response-spec res st/string-transformer)
        res))))


(defn-spec summarize-topics-with-http-info any?
  "Summarize Topics
  Takes in a string of text sentences (also known as a document) and returns a list of associated topics and their proximity score."
  ([accountId int?, ] (summarize-topics-with-http-info accountId nil))
  ([accountId int?, {:keys [thirdPartyAccountId doc ^File file url limit offset callback]} (s/map-of keyword? any?)]
   (check-required-params accountId)
   (call-api "/orson/ai/topics" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "thirdPartyAccountId" thirdPartyAccountId "doc" doc "file" file "url" url "limit" limit "offset" offset "callback" callback }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec summarize-topics orson-ai-topics-response-spec
  "Summarize Topics
  Takes in a string of text sentences (also known as a document) and returns a list of associated topics and their proximity score."
  ([accountId int?, ] (summarize-topics accountId nil))
  ([accountId int?, optional-params any?]
   (let [res (:data (summarize-topics-with-http-info accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orson-ai-topics-response-spec res st/string-transformer)
        res))))


(defn-spec tech-tune-with-http-info any?
  "Detect Technical Issues
  Analyses a movie file to detect technical issues, such as too few people in frame."
  ([accountId int?, numFacesExpected int?, ] (tech-tune-with-http-info accountId numFacesExpected nil))
  ([accountId int?, numFacesExpected int?, {:keys [thirdPartyAccountId ^File file url callback]} (s/map-of keyword? any?)]
   (check-required-params accountId numFacesExpected)
   (call-api "/orson/ai/techTune" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "thirdPartyAccountId" thirdPartyAccountId "numFacesExpected" numFacesExpected "file" file "url" url "callback" callback }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec tech-tune orson-ai-tech-tune-response-spec
  "Detect Technical Issues
  Analyses a movie file to detect technical issues, such as too few people in frame."
  ([accountId int?, numFacesExpected int?, ] (tech-tune accountId numFacesExpected nil))
  ([accountId int?, numFacesExpected int?, optional-params any?]
   (let [res (:data (tech-tune-with-http-info accountId numFacesExpected optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orson-ai-tech-tune-response-spec res st/string-transformer)
        res))))


(defn-spec tts-with-http-info any?
  "Text to Speach
  Creates an audio file for the given text, with the option of language and voice selection."
  ([accountId int?, text string?, ] (tts-with-http-info accountId text nil))
  ([accountId int?, text string?, {:keys [thirdPartyAccountId language voice callback]} (s/map-of keyword? any?)]
   (check-required-params accountId text)
   (call-api "/orson/ai/tts" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "thirdPartyAccountId" thirdPartyAccountId "text" text "language" language "voice" voice "callback" callback }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec tts orson-ai-tts-response-spec
  "Text to Speach
  Creates an audio file for the given text, with the option of language and voice selection."
  ([accountId int?, text string?, ] (tts accountId text nil))
  ([accountId int?, text string?, optional-params any?]
   (let [res (:data (tts-with-http-info accountId text optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orson-ai-tts-response-spec res st/string-transformer)
        res))))


