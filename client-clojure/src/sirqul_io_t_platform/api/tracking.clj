(ns sirqul-io-t-platform.api.tracking
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


(defn-spec batch-save-tracking-with-http-info any?
  "Create Batch Tracking
  Batch create tracking legs"
  ([data string?, ] (batch-save-tracking-with-http-info data nil))
  ([data string?, {:keys [deviceId accountId generateAccounts updateAccountLocations defaultTag slaveUID]} (s/map-of keyword? any?)]
   (check-required-params data)
   (call-api "/tracking/batch/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "data" data "generateAccounts" generateAccounts "updateAccountLocations" updateAccountLocations "defaultTag" defaultTag "slaveUID" slaveUID }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec batch-save-tracking (s/coll-of leg-spec)
  "Create Batch Tracking
  Batch create tracking legs"
  ([data string?, ] (batch-save-tracking data nil))
  ([data string?, optional-params any?]
   (let [res (:data (batch-save-tracking-with-http-info data optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of leg-spec) res st/string-transformer)
        res))))


(defn-spec get-predicted-locations-with-http-info any?
  "Get Predicted Locations
  Get the predicted location for a customer based on previous behavior.  If a customer resides in a place for a period of time this is marked as a preferred location.  We look back over the previous few days and the previous days of the week from the day specified.  If for instance the day was a Wednesday then this would check the days before, including: Tuesday, Monday, Sunday, etc. It will also check some number of previous Wednesdays in the past few weeks."
  ([accountId int?, ] (get-predicted-locations-with-http-info accountId nil))
  ([accountId int?, {:keys [latitude longitude dateCheck hourCheck threshold distanceUnit searchRange sortOrder]} (s/map-of keyword? any?)]
   (check-required-params accountId)
   (call-api "/tracking/predicted/get" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "latitude" latitude "longitude" longitude "dateCheck" dateCheck "hourCheck" hourCheck "threshold" threshold "distanceUnit" distanceUnit "searchRange" searchRange "sortOrder" sortOrder }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-predicted-locations predicted-location-response-spec
  "Get Predicted Locations
  Get the predicted location for a customer based on previous behavior.  If a customer resides in a place for a period of time this is marked as a preferred location.  We look back over the previous few days and the previous days of the week from the day specified.  If for instance the day was a Wednesday then this would check the days before, including: Tuesday, Monday, Sunday, etc. It will also check some number of previous Wednesdays in the past few weeks."
  ([accountId int?, ] (get-predicted-locations accountId nil))
  ([accountId int?, optional-params any?]
   (let [res (:data (get-predicted-locations-with-http-info accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode predicted-location-response-spec res st/string-transformer)
        res))))


(defn-spec get-predicted-path-with-http-info any?
  "Get Tracking Path
  Get the path (lat/long coordinates) between 2 steps previously logged for a customer."
  [accountId int?, startStepId int?, endStepId int?]
  (check-required-params accountId startStepId endStepId)
  (call-api "/tracking/path/get" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "startStepId" startStepId "endStepId" endStepId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec get-predicted-path (s/coll-of step-response-spec)
  "Get Tracking Path
  Get the path (lat/long coordinates) between 2 steps previously logged for a customer."
  [accountId int?, startStepId int?, endStepId int?]
  (let [res (:data (get-predicted-path-with-http-info accountId startStepId endStepId))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of step-response-spec) res st/string-transformer)
       res)))


(defn-spec get-preferred-locations-with-http-info any?
  "Search Preferred Locations
  Search on preferred locations for a user, which is created when a customer resides in a place for a period of time."
  ([accountId int?, ] (get-preferred-locations-with-http-info accountId nil))
  ([accountId int?, {:keys [latitude longitude dateCheck hourCheck sortField descending start limit searchRange distanceUnit]} (s/map-of keyword? any?)]
   (check-required-params accountId)
   (call-api "/tracking/preferred/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "latitude" latitude "longitude" longitude "dateCheck" dateCheck "hourCheck" hourCheck "sortField" sortField "descending" descending "start" start "limit" limit "searchRange" searchRange "distanceUnit" distanceUnit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-preferred-locations (s/coll-of preferred-location-response-spec)
  "Search Preferred Locations
  Search on preferred locations for a user, which is created when a customer resides in a place for a period of time."
  ([accountId int?, ] (get-preferred-locations accountId nil))
  ([accountId int?, optional-params any?]
   (let [res (:data (get-preferred-locations-with-http-info accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of preferred-location-response-spec) res st/string-transformer)
        res))))


(defn-spec get-tracking-legs-with-http-info any?
  "Search Tracking
  Retrieve tracking data to be able to show where a user has been."
  ([] (get-tracking-legs-with-http-info nil))
  ([{:keys [deviceId accountId ownerId trackingDeviceId startDate endDate tags getLastPoint]} (s/map-of keyword? any?)]
   (call-api "/tracking/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "ownerId" ownerId "trackingDeviceId" trackingDeviceId "startDate" startDate "endDate" endDate "tags" tags "getLastPoint" getLastPoint }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec get-tracking-legs (s/coll-of leg-response-spec)
  "Search Tracking
  Retrieve tracking data to be able to show where a user has been."
  ([] (get-tracking-legs nil))
  ([optional-params any?]
   (let [res (:data (get-tracking-legs-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of leg-response-spec) res st/string-transformer)
        res))))


(defn-spec save-tracking-leg-with-http-info any?
  "Create Tracking Leg
  Send tracking points to be able to generate pathing data"
  ([startLat float?, startLng float?, startDate int?, endLat float?, endLng float?, endDate int?, ] (save-tracking-leg-with-http-info startLat startLng startDate endLat endLng endDate nil))
  ([startLat float?, startLng float?, startDate int?, endLat float?, endLng float?, endDate int?, {:keys [deviceId accountId distance duration steps tags]} (s/map-of keyword? any?)]
   (check-required-params startLat startLng startDate endLat endLng endDate)
   (call-api "/tracking/leg/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "distance" distance "duration" duration "startLat" startLat "startLng" startLng "startDate" startDate "endLat" endLat "endLng" endLng "endDate" endDate "steps" steps "tags" tags }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec save-tracking-leg sirqul-response-spec
  "Create Tracking Leg
  Send tracking points to be able to generate pathing data"
  ([startLat float?, startLng float?, startDate int?, endLat float?, endLng float?, endDate int?, ] (save-tracking-leg startLat startLng startDate endLat endLng endDate nil))
  ([startLat float?, startLng float?, startDate int?, endLat float?, endLng float?, endDate int?, optional-params any?]
   (let [res (:data (save-tracking-leg-with-http-info startLat startLng startDate endLat endLng endDate optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec save-tracking-step-with-http-info any?
  "Create Tracking Step
  Send tracking points to be able to generate pathing data"
  ([legId int?, startLat float?, startLng float?, startDate int?, endLat float?, endLng float?, endDate int?, ] (save-tracking-step-with-http-info legId startLat startLng startDate endLat endLng endDate nil))
  ([legId int?, startLat float?, startLng float?, startDate int?, endLat float?, endLng float?, endDate int?, {:keys [deviceId accountId distance duration]} (s/map-of keyword? any?)]
   (check-required-params legId startLat startLng startDate endLat endLng endDate)
   (call-api "/tracking/step/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"deviceId" deviceId "accountId" accountId "legId" legId "distance" distance "duration" duration "startLat" startLat "startLng" startLng "startDate" startDate "endLat" endLat "endLng" endLng "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec save-tracking-step sirqul-response-spec
  "Create Tracking Step
  Send tracking points to be able to generate pathing data"
  ([legId int?, startLat float?, startLng float?, startDate int?, endLat float?, endLng float?, endDate int?, ] (save-tracking-step legId startLat startLng startDate endLat endLng endDate nil))
  ([legId int?, startLat float?, startLng float?, startDate int?, endLat float?, endLng float?, endDate int?, optional-params any?]
   (let [res (:data (save-tracking-step-with-http-info legId startLat startLng startDate endLat endLng endDate optional-params))]
     (if (:decode-models *api-context*)
        (st/decode sirqul-response-spec res st/string-transformer)
        res))))


(defn-spec search-accounts-with-tracking-legs-with-http-info any?
  "List Tracking
  Search for all accounts that have tracking legs data by the given constraints."
  ([accountId int?, ] (search-accounts-with-tracking-legs-with-http-info accountId nil))
  ([accountId int?, {:keys [keyword startDate endDate tags audienceIds latitude longitude range sortField descending start limit activeOnly]} (s/map-of keyword? any?)]
   (check-required-params accountId)
   (call-api "/tracking/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "keyword" keyword "startDate" startDate "endDate" endDate "tags" tags "audienceIds" audienceIds "latitude" latitude "longitude" longitude "range" range "sortField" sortField "descending" descending "start" start "limit" limit "activeOnly" activeOnly }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-accounts-with-tracking-legs (s/coll-of account-mini-response-spec)
  "List Tracking
  Search for all accounts that have tracking legs data by the given constraints."
  ([accountId int?, ] (search-accounts-with-tracking-legs accountId nil))
  ([accountId int?, optional-params any?]
   (let [res (:data (search-accounts-with-tracking-legs-with-http-info accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of account-mini-response-spec) res st/string-transformer)
        res))))


(defn-spec search-tracking-legs-with-http-info any?
  "Search Tracking (Billable)
  Retrieve tracking data for billable/account scoped queries."
  ([accountId int?, appKey string?, ] (search-tracking-legs-with-http-info accountId appKey nil))
  ([accountId int?, appKey string?, {:keys [trackingDeviceId startDate endDate tags start limit]} (s/map-of keyword? any?)]
   (check-required-params accountId appKey)
   (call-api "/tracking/searchByBillable" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "trackingDeviceId" trackingDeviceId "startDate" startDate "endDate" endDate "tags" tags "start" start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec search-tracking-legs (s/coll-of leg-response-spec)
  "Search Tracking (Billable)
  Retrieve tracking data for billable/account scoped queries."
  ([accountId int?, appKey string?, ] (search-tracking-legs accountId appKey nil))
  ([accountId int?, appKey string?, optional-params any?]
   (let [res (:data (search-tracking-legs-with-http-info accountId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of leg-response-spec) res st/string-transformer)
        res))))


