(ns sirqul-io-t-platform.api.assignment
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


(defn-spec assigment-assignee-account-search-with-http-info any?
  "Search Assignment Assignees
  Search for avaiable users for creating or updating assignment."
  ([accountId int?, ] (assigment-assignee-account-search-with-http-info accountId nil))
  ([accountId int?, {:keys [keyword]} (s/map-of keyword? any?)]
   (check-required-params accountId)
   (call-api "/assignment/assignee/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "keyword" keyword }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec assigment-assignee-account-search (s/coll-of account-mini-response-spec)
  "Search Assignment Assignees
  Search for avaiable users for creating or updating assignment."
  ([accountId int?, ] (assigment-assignee-account-search accountId nil))
  ([accountId int?, optional-params any?]
   (let [res (:data (assigment-assignee-account-search-with-http-info accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of account-mini-response-spec) res st/string-transformer)
        res))))


(defn-spec assignment-create-with-http-info any?
  "Create Assignment
  Create an assignment."
  ([accountId int?, name string?, assigneeAccountId int?, ] (assignment-create-with-http-info accountId name assigneeAccountId nil))
  ([accountId int?, name string?, assigneeAccountId int?, {:keys [description retailerLocationId tags active]} (s/map-of keyword? any?)]
   (check-required-params accountId name assigneeAccountId)
   (call-api "/assignment/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "name" name "description" description "assigneeAccountId" assigneeAccountId "retailerLocationId" retailerLocationId "tags" tags "active" active }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec assignment-create assignment-response-spec
  "Create Assignment
  Create an assignment."
  ([accountId int?, name string?, assigneeAccountId int?, ] (assignment-create accountId name assigneeAccountId nil))
  ([accountId int?, name string?, assigneeAccountId int?, optional-params any?]
   (let [res (:data (assignment-create-with-http-info accountId name assigneeAccountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode assignment-response-spec res st/string-transformer)
        res))))


(defn-spec assignment-delete-with-http-info any?
  "Delete Assignment
  Delete an assignment."
  [accountId int?, assignmentId int?]
  (check-required-params accountId assignmentId)
  (call-api "/assignment/delete" :post
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "assignmentId" assignmentId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec assignment-delete sirqul-response-spec
  "Delete Assignment
  Delete an assignment."
  [accountId int?, assignmentId int?]
  (let [res (:data (assignment-delete-with-http-info accountId assignmentId))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


(defn-spec assignment-get-with-http-info any?
  "Get Assignment
  Get the details of an assignment."
  [accountId int?, assignmentId int?]
  (check-required-params accountId assignmentId)
  (call-api "/assignment/get" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "assignmentId" assignmentId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec assignment-get assignment-response-spec
  "Get Assignment
  Get the details of an assignment."
  [accountId int?, assignmentId int?]
  (let [res (:data (assignment-get-with-http-info accountId assignmentId))]
    (if (:decode-models *api-context*)
       (st/decode assignment-response-spec res st/string-transformer)
       res)))


(defn-spec assignment-search-with-http-info any?
  "Search Assignments
  Search for assignments by the given parameters."
  ([accountId int?, sortField string?, descending boolean?, activeOnly boolean?, start int?, limit int?, ] (assignment-search-with-http-info accountId sortField descending activeOnly start limit nil))
  ([accountId int?, sortField string?, descending boolean?, activeOnly boolean?, start int?, limit int?, {:keys [creatorAccountId assigneeAccountIds retailerLocationIds currentStatusType keyword]} (s/map-of keyword? any?)]
   (check-required-params accountId sortField descending activeOnly start limit)
   (call-api "/assignment/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "creatorAccountId" creatorAccountId "assigneeAccountIds" assigneeAccountIds "retailerLocationIds" retailerLocationIds "currentStatusType" currentStatusType "keyword" keyword "sortField" sortField "descending" descending "activeOnly" activeOnly "start" start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec assignment-search (s/coll-of assignment-response-spec)
  "Search Assignments
  Search for assignments by the given parameters."
  ([accountId int?, sortField string?, descending boolean?, activeOnly boolean?, start int?, limit int?, ] (assignment-search accountId sortField descending activeOnly start limit nil))
  ([accountId int?, sortField string?, descending boolean?, activeOnly boolean?, start int?, limit int?, optional-params any?]
   (let [res (:data (assignment-search-with-http-info accountId sortField descending activeOnly start limit optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of assignment-response-spec) res st/string-transformer)
        res))))


(defn-spec assignment-status-create-with-http-info any?
  "Create Assignment Status
  Create an assignment status."
  ([accountId int?, assignmentId int?, ] (assignment-status-create-with-http-info accountId assignmentId nil))
  ([accountId int?, assignmentId int?, {:keys [scheduledNotificationId toDo connection method status closure message followUp active]} (s/map-of keyword? any?)]
   (check-required-params accountId assignmentId)
   (call-api "/assignment/status/create" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "assignmentId" assignmentId "scheduledNotificationId" scheduledNotificationId "toDo" toDo "connection" connection "method" method "status" status "closure" closure "message" message "followUp" followUp "active" active }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec assignment-status-create assignment-status-response-spec
  "Create Assignment Status
  Create an assignment status."
  ([accountId int?, assignmentId int?, ] (assignment-status-create accountId assignmentId nil))
  ([accountId int?, assignmentId int?, optional-params any?]
   (let [res (:data (assignment-status-create-with-http-info accountId assignmentId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode assignment-status-response-spec res st/string-transformer)
        res))))


(defn-spec assignment-status-delete-with-http-info any?
  "Deletes Assignment Status
  Deletes an assignment status."
  [accountId int?, assignmentStatusId int?]
  (check-required-params accountId assignmentStatusId)
  (call-api "/assignment/status/delete" :post
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "assignmentStatusId" assignmentStatusId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec assignment-status-delete sirqul-response-spec
  "Deletes Assignment Status
  Deletes an assignment status."
  [accountId int?, assignmentStatusId int?]
  (let [res (:data (assignment-status-delete-with-http-info accountId assignmentStatusId))]
    (if (:decode-models *api-context*)
       (st/decode sirqul-response-spec res st/string-transformer)
       res)))


(defn-spec assignment-status-get-with-http-info any?
  "Get Assignment Status
  Get an assignment status."
  [accountId int?, assignmentStatusId int?]
  (check-required-params accountId assignmentStatusId)
  (call-api "/assignment/status/get" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"accountId" accountId "assignmentStatusId" assignmentStatusId }
             :form-params   {}
             :content-types []
             :accepts       ["*/*"]
             :auth-names    []}))

(defn-spec assignment-status-get assignment-status-response-spec
  "Get Assignment Status
  Get an assignment status."
  [accountId int?, assignmentStatusId int?]
  (let [res (:data (assignment-status-get-with-http-info accountId assignmentStatusId))]
    (if (:decode-models *api-context*)
       (st/decode assignment-status-response-spec res st/string-transformer)
       res)))


(defn-spec assignment-status-search-with-http-info any?
  "Search Assignment Statuses
  Search on assignment statuses."
  ([accountId int?, sortField string?, descending boolean?, activeOnly boolean?, start int?, limit int?, ] (assignment-status-search-with-http-info accountId sortField descending activeOnly start limit nil))
  ([accountId int?, sortField string?, descending boolean?, activeOnly boolean?, start int?, limit int?, {:keys [assignmentId creatorAccountId assigneeAccountId retailerLocationId statusType keyword]} (s/map-of keyword? any?)]
   (check-required-params accountId sortField descending activeOnly start limit)
   (call-api "/assignment/status/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "assignmentId" assignmentId "creatorAccountId" creatorAccountId "assigneeAccountId" assigneeAccountId "retailerLocationId" retailerLocationId "statusType" statusType "keyword" keyword "sortField" sortField "descending" descending "activeOnly" activeOnly "start" start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec assignment-status-search (s/coll-of assignment-status-response-spec)
  "Search Assignment Statuses
  Search on assignment statuses."
  ([accountId int?, sortField string?, descending boolean?, activeOnly boolean?, start int?, limit int?, ] (assignment-status-search accountId sortField descending activeOnly start limit nil))
  ([accountId int?, sortField string?, descending boolean?, activeOnly boolean?, start int?, limit int?, optional-params any?]
   (let [res (:data (assignment-status-search-with-http-info accountId sortField descending activeOnly start limit optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of assignment-status-response-spec) res st/string-transformer)
        res))))


(defn-spec assignment-status-update-with-http-info any?
  "Update Assignment Status
  Updates an assignment status."
  ([accountId int?, assignmentStatusId int?, ] (assignment-status-update-with-http-info accountId assignmentStatusId nil))
  ([accountId int?, assignmentStatusId int?, {:keys [scheduledNotificationId toDo connection method status closure message followUp active]} (s/map-of keyword? any?)]
   (check-required-params accountId assignmentStatusId)
   (call-api "/assignment/status/update" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "assignmentStatusId" assignmentStatusId "scheduledNotificationId" scheduledNotificationId "toDo" toDo "connection" connection "method" method "status" status "closure" closure "message" message "followUp" followUp "active" active }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec assignment-status-update assignment-status-response-spec
  "Update Assignment Status
  Updates an assignment status."
  ([accountId int?, assignmentStatusId int?, ] (assignment-status-update accountId assignmentStatusId nil))
  ([accountId int?, assignmentStatusId int?, optional-params any?]
   (let [res (:data (assignment-status-update-with-http-info accountId assignmentStatusId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode assignment-status-response-spec res st/string-transformer)
        res))))


(defn-spec assignment-update-with-http-info any?
  "Update Assignment
  Updates an assignment."
  ([accountId int?, assignmentId int?, ] (assignment-update-with-http-info accountId assignmentId nil))
  ([accountId int?, assignmentId int?, {:keys [name description assigneeAccountId retailerLocationId tags active]} (s/map-of keyword? any?)]
   (check-required-params accountId assignmentId)
   (call-api "/assignment/update" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"accountId" accountId "assignmentId" assignmentId "name" name "description" description "assigneeAccountId" assigneeAccountId "retailerLocationId" retailerLocationId "tags" tags "active" active }
              :form-params   {}
              :content-types []
              :accepts       ["*/*"]
              :auth-names    []})))

(defn-spec assignment-update assignment-response-spec
  "Update Assignment
  Updates an assignment."
  ([accountId int?, assignmentId int?, ] (assignment-update accountId assignmentId nil))
  ([accountId int?, assignmentId int?, optional-params any?]
   (let [res (:data (assignment-update-with-http-info accountId assignmentId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode assignment-response-spec res st/string-transformer)
        res))))


