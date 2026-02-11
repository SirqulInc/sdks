(ns sirqul-io-t-platform.api.audience
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


(defn-spec create-audience-with-http-info any?
  "Create Audience
  Create a user defined audience."
  ([accountId int?, name string?, ] (create-audience-with-http-info accountId name nil))
  ([accountId int?, name string?, {:keys [description searchTags gender ageGroups categoryIds applicationIds gameExperienceLevel devices deviceIds deviceVersions locations radius startTimeOffset endTimeOffset sendSuggestion associateDescription associateType associateId groupingId metaData visibility audienceType useOrder cohortRegionsData appKey trilaterationTypes uniqueName]} (s/map-of keyword? any?)]
   (check-required-params accountId name)
   (call-api "/audience/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "name" name "description" description "searchTags" searchTags "gender" gender "ageGroups" ageGroups "categoryIds" categoryIds "applicationIds" applicationIds "gameExperienceLevel" gameExperienceLevel "devices" devices "deviceIds" deviceIds "deviceVersions" deviceVersions "locations" locations "radius" radius "startTimeOffset" startTimeOffset "endTimeOffset" endTimeOffset "sendSuggestion" sendSuggestion "associateDescription" associateDescription "associateType" associateType "associateId" associateId "groupingId" groupingId "metaData" metaData "visibility" visibility "audienceType" audienceType "useOrder" useOrder "cohortRegionsData" cohortRegionsData "appKey" appKey "trilaterationTypes" trilaterationTypes "uniqueName" uniqueName }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec create-audience audience-response-spec
  "Create Audience
  Create a user defined audience."
  ([accountId int?, name string?, ] (create-audience accountId name nil))
  ([accountId int?, name string?, optional-params any?]
   (let [res (:data (create-audience-with-http-info accountId name optional-params))]
     (if (:decode-models *api-context*)
        (st/decode audience-response-spec res st/string-transformer)
        res))))


(defn-spec delete-audience-with-http-info any?
  "Delete Audience
  Delete an audience. The audience and account must be valid and have the appropirate permissions to view the content."
  [accountId int?, audienceId int?]
  (check-required-params accountId audienceId)
  (call-api "/audience/delete" :post
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "audienceId" audienceId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec delete-audience sirqul-response-spec
  "Delete Audience
  Delete an audience. The audience and account must be valid and have the appropirate permissions to view the content."
  [accountId int?, audienceId int?]
  (let [res (:data (delete-audience-with-http-info accountId audienceId))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


(defn-spec get-age-groups-with-http-info any?
  "Get Age Groups
  Gets the list of available age groups that can be selected by consumers and retailers targeting offers."
  []
  (call-api "/audience/ageGroups" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-age-groups (s/coll-of age-group-response-spec)
  "Get Age Groups
  Gets the list of available age groups that can be selected by consumers and retailers targeting offers."
  []
  (let [res (:data (get-age-groups-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of age-group-response-spec) res st/string-transformer)
       res)))


(defn-spec get-audience-with-http-info any?
  "Get Audience
  Get an audience. The audience and account must be valid and have the appropriate permissions to view the content."
  ([accountId int?, audienceId int?, ] (get-audience-with-http-info accountId audienceId nil))
  ([accountId int?, audienceId int?, {:keys [appKey returnAccountCount returnAlbumCount albumTypesForCount]} (s/map-of keyword? any?)]
   (check-required-params accountId audienceId)
   (call-api "/audience/get" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "audienceId" audienceId "appKey" appKey "returnAccountCount" returnAccountCount "returnAlbumCount" returnAlbumCount "albumTypesForCount" albumTypesForCount }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-audience audience-response-spec
  "Get Audience
  Get an audience. The audience and account must be valid and have the appropriate permissions to view the content."
  ([accountId int?, audienceId int?, ] (get-audience accountId audienceId nil))
  ([accountId int?, audienceId int?, optional-params any?]
   (let [res (:data (get-audience-with-http-info accountId audienceId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode audience-response-spec res st/string-transformer)
        res))))


(defn-spec get-audience-list-with-http-info any?
  "Search Audiences
  Get the list audiences owned by the account"
  ([] (get-audience-list-with-http-info nil))
  ([{:keys [accountId albumIds keyword keywordFields sortField descending start limit sendSuggestion activeOnly groupByGroupingId appKey returnGlobal exactKeyword audienceType audienceTypes returnAccountCount returnAlbumCount albumTypesForCount]} (s/map-of keyword? any?)]
   (call-api "/audience/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "albumIds" albumIds "keyword" keyword "keywordFields" keywordFields "sortField" sortField "descending" descending "start" start "limit" limit "sendSuggestion" sendSuggestion "activeOnly" activeOnly "groupByGroupingId" groupByGroupingId "appKey" appKey "returnGlobal" returnGlobal "exactKeyword" exactKeyword "audienceType" audienceType "audienceTypes" audienceTypes "returnAccountCount" returnAccountCount "returnAlbumCount" returnAlbumCount "albumTypesForCount" albumTypesForCount }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-audience-list (s/coll-of search-response-spec)
  "Search Audiences
  Get the list audiences owned by the account"
  ([] (get-audience-list nil))
  ([optional-params any?]
   (let [res (:data (get-audience-list-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of search-response-spec) res st/string-transformer)
        res))))


(defn-spec get-devices-with-http-info any?
  "Get Devices
  Gets the list of available devices that can be selected by consumers and retailers."
  [includeInactive boolean?]
  (check-required-params includeInactive)
  (call-api "/audience/devices" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"includeInactive" includeInactive }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-devices (s/coll-of audience-device-response-spec)
  "Get Devices
  Gets the list of available devices that can be selected by consumers and retailers."
  [includeInactive boolean?]
  (let [res (:data (get-devices-with-http-info includeInactive))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of audience-device-response-spec) res st/string-transformer)
       res)))


(defn-spec get-experiences-with-http-info any?
  "Get Experiences
  Gets the list of available experiences that can be selected by consumers and retailers."
  []
  (call-api "/audience/experiences" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-experiences sirqul-response-spec
  "Get Experiences
  Gets the list of available experiences that can be selected by consumers and retailers."
  []
  (let [res (:data (get-experiences-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


(defn-spec get-grouped-audiences-with-http-info any?
  "Get GroupedAudiences
  Get a group of audiences. The audience and account must be valid and have the appropriate permissions to view the content."
  [accountId int?, audienceGroupingId string?]
  (check-required-params accountId audienceGroupingId)
  (call-api "/audience/grouped/get" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "audienceGroupingId" audienceGroupingId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-grouped-audiences audience-response-spec
  "Get GroupedAudiences
  Get a group of audiences. The audience and account must be valid and have the appropriate permissions to view the content."
  [accountId int?, audienceGroupingId string?]
  (let [res (:data (get-grouped-audiences-with-http-info accountId audienceGroupingId))]
    (if (:decode-models *api-context*)
       (st/decode audience-response-spec res st/string-transformer)
       res)))


(defn-spec list-by-account-with-http-info any?
  "List Suggestions by Audience
  List either Missions or Offers that the user matches the assigned audience."
  [accountId int?, limit int?, suggestionType string?]
  (check-required-params accountId limit suggestionType)
  (call-api "/audience/suggestion/list" :post
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "limit" limit "suggestionType" suggestionType }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec list-by-account offer-list-response-spec
  "List Suggestions by Audience
  List either Missions or Offers that the user matches the assigned audience."
  [accountId int?, limit int?, suggestionType string?]
  (let [res (:data (list-by-account-with-http-info accountId limit suggestionType))]
    (if (:decode-models *api-context*)
       (st/decode offer-list-response-spec res st/string-transformer)
       res)))


(defn-spec list-by-audience-with-http-info any?
  "List Offers by Audience
  Get a list of offer locations based on audience information provided."
  ([limit int?, ] (list-by-audience-with-http-info limit nil))
  ([limit int?, {:keys [gender age categoryIds latitude longitude]} (s/map-of keyword? any?)]
   (check-required-params limit)
   (call-api "/audience/suggestion/offersByAudience" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"gender" gender "age" age "categoryIds" categoryIds "latitude" latitude "longitude" longitude "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec list-by-audience offer-list-response-spec
  "List Offers by Audience
  Get a list of offer locations based on audience information provided."
  ([limit int?, ] (list-by-audience limit nil))
  ([limit int?, optional-params any?]
   (let [res (:data (list-by-audience-with-http-info limit optional-params))]
     (if (:decode-models *api-context*)
        (st/decode offer-list-response-spec res st/string-transformer)
        res))))


(defn-spec list-lastest-by-account-with-http-info any?
  "List Sent Suggestions
  Return list of recent trigger suggestions that have been sent to the user."
  [accountId int?, timeframe int?, suggestionType string?]
  (check-required-params accountId timeframe suggestionType)
  (call-api "/audience/suggestion/latest" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "timeframe" timeframe "suggestionType" suggestionType }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec list-lastest-by-account offer-list-response-spec
  "List Sent Suggestions
  Return list of recent trigger suggestions that have been sent to the user."
  [accountId int?, timeframe int?, suggestionType string?]
  (let [res (:data (list-lastest-by-account-with-http-info accountId timeframe suggestionType))]
    (if (:decode-models *api-context*)
       (st/decode offer-list-response-spec res st/string-transformer)
       res)))


(defn-spec send-by-account-with-http-info any?
  "Send Suggestions
  Use the accountId to determine the associated BillableEntity. From there get a list of all triggers associated with the BillableEntity."
  [accountId int?, latitude float?, longitude float?]
  (check-required-params accountId latitude longitude)
  (call-api "/audience/suggestion/send" :post
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "latitude" latitude "longitude" longitude }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec send-by-account sirqul-response-spec
  "Send Suggestions
  Use the accountId to determine the associated BillableEntity. From there get a list of all triggers associated with the BillableEntity."
  [accountId int?, latitude float?, longitude float?]
  (let [res (:data (send-by-account-with-http-info accountId latitude longitude))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


(defn-spec update-audience-with-http-info any?
  "Update Audience
  Update a user defined audience."
  ([accountId int?, audienceId int?, ] (update-audience-with-http-info accountId audienceId nil))
  ([accountId int?, audienceId int?, {:keys [name description searchTags gender ageGroups categoryIds applicationIds gameExperienceLevel devices deviceIds deviceVersions locations radius active sendSuggestion startTimeOffset endTimeOffset associateDescription associateType associateId groupingId metaData visibility audienceType useOrder cohortRegionsData appKey trilaterationTypes uniqueName]} (s/map-of keyword? any?)]
   (check-required-params accountId audienceId)
   (call-api "/audience/update" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "audienceId" audienceId "name" name "description" description "searchTags" searchTags "gender" gender "ageGroups" ageGroups "categoryIds" categoryIds "applicationIds" applicationIds "gameExperienceLevel" gameExperienceLevel "devices" devices "deviceIds" deviceIds "deviceVersions" deviceVersions "locations" locations "radius" radius "active" active "sendSuggestion" sendSuggestion "startTimeOffset" startTimeOffset "endTimeOffset" endTimeOffset "associateDescription" associateDescription "associateType" associateType "associateId" associateId "groupingId" groupingId "metaData" metaData "visibility" visibility "audienceType" audienceType "useOrder" useOrder "cohortRegionsData" cohortRegionsData "appKey" appKey "trilaterationTypes" trilaterationTypes "uniqueName" uniqueName }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec update-audience audience-response-spec
  "Update Audience
  Update a user defined audience."
  ([accountId int?, audienceId int?, ] (update-audience accountId audienceId nil))
  ([accountId int?, audienceId int?, optional-params any?]
   (let [res (:data (update-audience-with-http-info accountId audienceId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode audience-response-spec res st/string-transformer)
        res))))


