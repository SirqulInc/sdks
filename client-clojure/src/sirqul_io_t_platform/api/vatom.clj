(ns sirqul-io-t-platform.api.vatom
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


(defn-spec create-following-with-http-info any?
  "Create following
  Create following."
  ([version float?, accountId int?, vatomParameters string?, ] (create-following-with-http-info version accountId vatomParameters nil))
  ([version float?, accountId int?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomParameters)
   (call-api "/api/{version}/vatom/me/rels/following/create" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec create-following any?
  "Create following
  Create following."
  ([version float?, accountId int?, vatomParameters string?, ] (create-following version accountId vatomParameters nil))
  ([version float?, accountId int?, vatomParameters string?, optional-params any?]
   (let [res (:data (create-following-with-http-info version accountId vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec create-space-with-http-info any?
  "Create Vatom Space
  Create a Vatom space."
  ([version float?, accountId int?, appKey string?, vatomParameters string?, ] (create-space-with-http-info version accountId appKey vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomParameters)
   (call-api "/api/{version}/vatom/b/spaces/create" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec create-space any?
  "Create Vatom Space
  Create a Vatom space."
  ([version float?, accountId int?, appKey string?, vatomParameters string?, ] (create-space version accountId appKey vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomParameters string?, optional-params any?]
   (let [res (:data (create-space-with-http-info version accountId appKey vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec create-vatom-event-with-http-info any?
  "Create Vatom Event
  Create a Vatom event."
  ([version float?, accountId int?, appKey string?, vatomParameters string?, ] (create-vatom-event-with-http-info version accountId appKey vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomParameters)
   (call-api "/api/{version}/vatom/b/events/create" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec create-vatom-event any?
  "Create Vatom Event
  Create a Vatom event."
  ([version float?, accountId int?, appKey string?, vatomParameters string?, ] (create-vatom-event version accountId appKey vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomParameters string?, optional-params any?]
   (let [res (:data (create-vatom-event-with-http-info version accountId appKey vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec delete-following-with-http-info any?
  "Delete following
  Delete following."
  ([version float?, accountId int?, vatomRelsKey string?, ] (delete-following-with-http-info version accountId vatomRelsKey nil))
  ([version float?, accountId int?, vatomRelsKey string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomRelsKey)
   (call-api "/api/{version}/vatom/me/rels/following/delete" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomRelsKey" vatomRelsKey "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec delete-following any?
  "Delete following
  Delete following."
  ([version float?, accountId int?, vatomRelsKey string?, ] (delete-following version accountId vatomRelsKey nil))
  ([version float?, accountId int?, vatomRelsKey string?, optional-params any?]
   (let [res (:data (delete-following-with-http-info version accountId vatomRelsKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec delete-points-balance-with-http-info any?
  "Reset All Points Balance
  Reset All Points Balance."
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, ] (delete-points-balance-with-http-info version accountId appKey vatomCampaignId nil))
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomCampaignId)
   (call-api "/api/{version}/vatom/b/campaign/points/delete" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomCampaignId" vatomCampaignId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec delete-points-balance any?
  "Reset All Points Balance
  Reset All Points Balance."
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, ] (delete-points-balance version accountId appKey vatomCampaignId nil))
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, optional-params any?]
   (let [res (:data (delete-points-balance-with-http-info version accountId appKey vatomCampaignId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec delete-space-with-http-info any?
  "Delete Vatom Space
  Delete a Vatom space."
  ([version float?, accountId int?, appKey string?, vatomSpaceId string?, ] (delete-space-with-http-info version accountId appKey vatomSpaceId nil))
  ([version float?, accountId int?, appKey string?, vatomSpaceId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomSpaceId)
   (call-api "/api/{version}/vatom/b/spaces/delete" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomSpaceId" vatomSpaceId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec delete-space any?
  "Delete Vatom Space
  Delete a Vatom space."
  ([version float?, accountId int?, appKey string?, vatomSpaceId string?, ] (delete-space version accountId appKey vatomSpaceId nil))
  ([version float?, accountId int?, appKey string?, vatomSpaceId string?, optional-params any?]
   (let [res (:data (delete-space-with-http-info version accountId appKey vatomSpaceId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec delete-vatom-event-with-http-info any?
  "Delete Vatom Event
  Delete a Vatom event."
  ([version float?, accountId int?, appKey string?, vatomEventId string?, ] (delete-vatom-event-with-http-info version accountId appKey vatomEventId nil))
  ([version float?, accountId int?, appKey string?, vatomEventId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomEventId)
   (call-api "/api/{version}/vatom/b/events/delete" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomEventId" vatomEventId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec delete-vatom-event any?
  "Delete Vatom Event
  Delete a Vatom event."
  ([version float?, accountId int?, appKey string?, vatomEventId string?, ] (delete-vatom-event version accountId appKey vatomEventId nil))
  ([version float?, accountId int?, appKey string?, vatomEventId string?, optional-params any?]
   (let [res (:data (delete-vatom-event-with-http-info version accountId appKey vatomEventId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec delete-vatom-nft-with-http-info any?
  "Delete Vatom NFT
  Delete Vatom NFT"
  ([version float?, accountId int?, vatomId string?, ] (delete-vatom-nft-with-http-info version accountId vatomId nil))
  ([version float?, accountId int?, vatomId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomId)
   (call-api "/api/{version}/vatom/vatoms/delete" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomId" vatomId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec delete-vatom-nft any?
  "Delete Vatom NFT
  Delete Vatom NFT"
  ([version float?, accountId int?, vatomId string?, ] (delete-vatom-nft version accountId vatomId nil))
  ([version float?, accountId int?, vatomId string?, optional-params any?]
   (let [res (:data (delete-vatom-nft-with-http-info version accountId vatomId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec execute-action-on-nft-with-http-info any?
  "Execute Action on NFT
  Execute Action on NFT."
  ([version float?, accountId int?, vatomId string?, vatomParameters string?, ] (execute-action-on-nft-with-http-info version accountId vatomId vatomParameters nil))
  ([version float?, accountId int?, vatomId string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomId vatomParameters)
   (call-api "/api/{version}/vatom/vatoms/execute-action" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomId" vatomId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec execute-action-on-nft any?
  "Execute Action on NFT
  Execute Action on NFT."
  ([version float?, accountId int?, vatomId string?, vatomParameters string?, ] (execute-action-on-nft version accountId vatomId vatomParameters nil))
  ([version float?, accountId int?, vatomId string?, vatomParameters string?, optional-params any?]
   (let [res (:data (execute-action-on-nft-with-http-info version accountId vatomId vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec geomap-search-with-http-info any?
  "Search Vatom Geo Map
  Search Vatom Geo Map"
  ([version float?, accountId int?, vatomParameters string?, ] (geomap-search-with-http-info version accountId vatomParameters nil))
  ([version float?, accountId int?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomParameters)
   (call-api "/api/{version}/vatom/vatoms/geo-map/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec geomap-search any?
  "Search Vatom Geo Map
  Search Vatom Geo Map"
  ([version float?, accountId int?, vatomParameters string?, ] (geomap-search version accountId vatomParameters nil))
  ([version float?, accountId int?, vatomParameters string?, optional-params any?]
   (let [res (:data (geomap-search-with-http-info version accountId vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-business-behaviors-with-http-info any?
  "Get Vatom Business Behaviors
  Gets the behaviors of a business."
  ([version float?, accountId int?, appKey string?, ] (get-business-behaviors-with-http-info version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey)
   (call-api "/api/{version}/vatom/b/behaviors" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-business-behaviors any?
  "Get Vatom Business Behaviors
  Gets the behaviors of a business."
  ([version float?, accountId int?, appKey string?, ] (get-business-behaviors version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, optional-params any?]
   (let [res (:data (get-business-behaviors-with-http-info version accountId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-business-coins-balance-with-http-info any?
  "Get the coins for a Business
  Get the coins for a Businesss."
  ([version float?, accountId int?, appKey string?, ] (get-business-coins-balance-with-http-info version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey)
   (call-api "/api/{version}/vatom/b/coins/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-business-coins-balance any?
  "Get the coins for a Business
  Get the coins for a Businesss."
  ([version float?, accountId int?, appKey string?, ] (get-business-coins-balance version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, optional-params any?]
   (let [res (:data (get-business-coins-balance-with-http-info version accountId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-business-ids-with-http-info any?
  "Get the user business ids
  Get the business ids the logged in user has access to."
  ([version float?, accountId int?, ] (get-business-ids-with-http-info version accountId nil))
  ([version float?, accountId int?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId)
   (call-api "/api/{version}/vatom/me/businesses" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-business-ids any?
  "Get the user business ids
  Get the business ids the logged in user has access to."
  ([version float?, accountId int?, ] (get-business-ids version accountId nil))
  ([version float?, accountId int?, optional-params any?]
   (let [res (:data (get-business-ids-with-http-info version accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-business-info-with-http-info any?
  "Get Vatom Business Info
  Gets the business info tied to this account."
  ([version float?, accountId int?, appKey string?, ] (get-business-info-with-http-info version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, {:keys [vatomParameters returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey)
   (call-api "/api/{version}/vatom/b/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-business-info any?
  "Get Vatom Business Info
  Gets the business info tied to this account."
  ([version float?, accountId int?, appKey string?, ] (get-business-info version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, optional-params any?]
   (let [res (:data (get-business-info-with-http-info version accountId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-business-users-with-http-info any?
  "Get Vatom Business Users
  Gets the users of a business."
  ([version float?, accountId int?, appKey string?, ] (get-business-users-with-http-info version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey)
   (call-api "/api/{version}/vatom/b/users" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-business-users any?
  "Get Vatom Business Users
  Gets the users of a business."
  ([version float?, accountId int?, appKey string?, ] (get-business-users version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, optional-params any?]
   (let [res (:data (get-business-users-with-http-info version accountId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-campaign-group-entities-with-http-info any?
  "Get Campaign Group Entities
  Get campaign group entities."
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, ] (get-campaign-group-entities-with-http-info version accountId appKey vatomCampaignId nil))
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomCampaignId)
   (call-api "/api/{version}/vatom/b/campaign-groups/entities" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomCampaignId" vatomCampaignId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-campaign-group-entities any?
  "Get Campaign Group Entities
  Get campaign group entities."
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, ] (get-campaign-group-entities version accountId appKey vatomCampaignId nil))
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, optional-params any?]
   (let [res (:data (get-campaign-group-entities-with-http-info version accountId appKey vatomCampaignId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-campaign-group-rules-with-http-info any?
  "Get Campaign Group Rules
  Get campaign group rules."
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, ] (get-campaign-group-rules-with-http-info version accountId appKey vatomCampaignId nil))
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomCampaignId)
   (call-api "/api/{version}/vatom/b/campaign-groups/rules" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomCampaignId" vatomCampaignId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-campaign-group-rules any?
  "Get Campaign Group Rules
  Get campaign group rules."
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, ] (get-campaign-group-rules version accountId appKey vatomCampaignId nil))
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, optional-params any?]
   (let [res (:data (get-campaign-group-rules-with-http-info version accountId appKey vatomCampaignId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-campaign-group-stats-with-http-info any?
  "Get Campaign Group Stats
  Get campaign group stats."
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, ] (get-campaign-group-stats-with-http-info version accountId appKey vatomCampaignId nil))
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomCampaignId)
   (call-api "/api/{version}/vatom/b/campaign-groups/stats" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomCampaignId" vatomCampaignId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-campaign-group-stats any?
  "Get Campaign Group Stats
  Get campaign group stats."
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, ] (get-campaign-group-stats version accountId appKey vatomCampaignId nil))
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, optional-params any?]
   (let [res (:data (get-campaign-group-stats-with-http-info version accountId appKey vatomCampaignId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-campaign-info-with-http-info any?
  "Get Campaign Info
  Gets the info on a campaign."
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, ] (get-campaign-info-with-http-info version accountId appKey vatomCampaignId nil))
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomCampaignId)
   (call-api "/api/{version}/vatom/b/campaign-groups/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomCampaignId" vatomCampaignId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-campaign-info any?
  "Get Campaign Info
  Gets the info on a campaign."
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, ] (get-campaign-info version accountId appKey vatomCampaignId nil))
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, optional-params any?]
   (let [res (:data (get-campaign-info-with-http-info version accountId appKey vatomCampaignId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-event-guest-list-with-http-info any?
  "Get Vatom Event Guest List
  Gets the guest list of an event."
  ([version float?, accountId int?, appKey string?, vatomEventId string?, ] (get-event-guest-list-with-http-info version accountId appKey vatomEventId nil))
  ([version float?, accountId int?, appKey string?, vatomEventId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomEventId)
   (call-api "/api/{version}/vatom/b/events/guests/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomEventId" vatomEventId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-event-guest-list any?
  "Get Vatom Event Guest List
  Gets the guest list of an event."
  ([version float?, accountId int?, appKey string?, vatomEventId string?, ] (get-event-guest-list version accountId appKey vatomEventId nil))
  ([version float?, accountId int?, appKey string?, vatomEventId string?, optional-params any?]
   (let [res (:data (get-event-guest-list-with-http-info version accountId appKey vatomEventId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-inventory-with-http-info any?
  "Get Vatom User's Inventory
  Gets the logged in user's Vatom Inventory."
  ([version float?, accountId int?, vatomParameters string?, ] (get-inventory-with-http-info version accountId vatomParameters nil))
  ([version float?, accountId int?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomParameters)
   (call-api "/api/{version}/vatom/me/inventory" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-inventory any?
  "Get Vatom User's Inventory
  Gets the logged in user's Vatom Inventory."
  ([version float?, accountId int?, vatomParameters string?, ] (get-inventory version accountId vatomParameters nil))
  ([version float?, accountId int?, vatomParameters string?, optional-params any?]
   (let [res (:data (get-inventory-with-http-info version accountId vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-my-following-with-http-info any?
  "Get following
  Get following."
  ([version float?, accountId int?, ] (get-my-following-with-http-info version accountId nil))
  ([version float?, accountId int?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId)
   (call-api "/api/{version}/vatom/me/rels/following" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-my-following any?
  "Get following
  Get following."
  ([version float?, accountId int?, ] (get-my-following version accountId nil))
  ([version float?, accountId int?, optional-params any?]
   (let [res (:data (get-my-following-with-http-info version accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-points-balance-with-http-info any?
  "Get Points Balance
  Gets the points balance of a Vatom user."
  ([version float?, accountId int?, vatomUserId string?, vatomCampaignId string?, ] (get-points-balance-with-http-info version accountId vatomUserId vatomCampaignId nil))
  ([version float?, accountId int?, vatomUserId string?, vatomCampaignId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomUserId vatomCampaignId)
   (call-api "/api/{version}/vatom/u/campaign/points/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomUserId" vatomUserId "vatomCampaignId" vatomCampaignId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-points-balance any?
  "Get Points Balance
  Gets the points balance of a Vatom user."
  ([version float?, accountId int?, vatomUserId string?, vatomCampaignId string?, ] (get-points-balance version accountId vatomUserId vatomCampaignId nil))
  ([version float?, accountId int?, vatomUserId string?, vatomCampaignId string?, optional-params any?]
   (let [res (:data (get-points-balance-with-http-info version accountId vatomUserId vatomCampaignId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-points-balance-as-business-with-http-info any?
  "Get Points Balance as Business
  Gets the points balance of a Vatom user."
  ([version float?, accountId int?, appKey string?, vatomUserId string?, vatomCampaignId string?, ] (get-points-balance-as-business-with-http-info version accountId appKey vatomUserId vatomCampaignId nil))
  ([version float?, accountId int?, appKey string?, vatomUserId string?, vatomCampaignId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomUserId vatomCampaignId)
   (call-api "/api/{version}/vatom/b/campaign/u/points/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomUserId" vatomUserId "vatomCampaignId" vatomCampaignId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-points-balance-as-business any?
  "Get Points Balance as Business
  Gets the points balance of a Vatom user."
  ([version float?, accountId int?, appKey string?, vatomUserId string?, vatomCampaignId string?, ] (get-points-balance-as-business version accountId appKey vatomUserId vatomCampaignId nil))
  ([version float?, accountId int?, appKey string?, vatomUserId string?, vatomCampaignId string?, optional-params any?]
   (let [res (:data (get-points-balance-as-business-with-http-info version accountId appKey vatomUserId vatomCampaignId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-space-with-http-info any?
  "Get Vatom Space
  Gets the details of a space."
  ([version float?, accountId int?, appKey string?, vatomSpaceId string?, ] (get-space-with-http-info version accountId appKey vatomSpaceId nil))
  ([version float?, accountId int?, appKey string?, vatomSpaceId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomSpaceId)
   (call-api "/api/{version}/vatom/b/spaces/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomSpaceId" vatomSpaceId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-space any?
  "Get Vatom Space
  Gets the details of a space."
  ([version float?, accountId int?, appKey string?, vatomSpaceId string?, ] (get-space version accountId appKey vatomSpaceId nil))
  ([version float?, accountId int?, appKey string?, vatomSpaceId string?, optional-params any?]
   (let [res (:data (get-space-with-http-info version accountId appKey vatomSpaceId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-user-coins-as-business-with-http-info any?
  "Get the coins for a user (as a Business)
  Get the coins for a user (as a Business)."
  ([version float?, accountId int?, vatomUserId string?, appKey string?, ] (get-user-coins-as-business-with-http-info version accountId vatomUserId appKey nil))
  ([version float?, accountId int?, vatomUserId string?, appKey string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomUserId appKey)
   (call-api "/api/{version}/vatom/b/users/coins/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomUserId" vatomUserId "appKey" appKey "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-user-coins-as-business any?
  "Get the coins for a user (as a Business)
  Get the coins for a user (as a Business)."
  ([version float?, accountId int?, vatomUserId string?, appKey string?, ] (get-user-coins-as-business version accountId vatomUserId appKey nil))
  ([version float?, accountId int?, vatomUserId string?, appKey string?, optional-params any?]
   (let [res (:data (get-user-coins-as-business-with-http-info version accountId vatomUserId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-user-coins-balance-with-http-info any?
  "Gets the coins balance for a Vatom User
  Gets the coins balance for a Vatom User."
  ([version float?, accountId int?, vatomUserId string?, ] (get-user-coins-balance-with-http-info version accountId vatomUserId nil))
  ([version float?, accountId int?, vatomUserId string?, {:keys [vatomParameters returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomUserId)
   (call-api "/api/{version}/vatom/u/coins/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomUserId" vatomUserId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-user-coins-balance any?
  "Gets the coins balance for a Vatom User
  Gets the coins balance for a Vatom User."
  ([version float?, accountId int?, vatomUserId string?, ] (get-user-coins-balance version accountId vatomUserId nil))
  ([version float?, accountId int?, vatomUserId string?, optional-params any?]
   (let [res (:data (get-user-coins-balance-with-http-info version accountId vatomUserId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-user-followers-with-http-info any?
  "Get user followers
  Get user followers."
  ([version float?, accountId int?, vatomUserId string?, ] (get-user-followers-with-http-info version accountId vatomUserId nil))
  ([version float?, accountId int?, vatomUserId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomUserId)
   (call-api "/api/{version}/vatom/users/rels/followers" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomUserId" vatomUserId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-user-followers any?
  "Get user followers
  Get user followers."
  ([version float?, accountId int?, vatomUserId string?, ] (get-user-followers version accountId vatomUserId nil))
  ([version float?, accountId int?, vatomUserId string?, optional-params any?]
   (let [res (:data (get-user-followers-with-http-info version accountId vatomUserId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-user-following-with-http-info any?
  "Get user following
  Get user following."
  ([version float?, accountId int?, vatomUserId string?, ] (get-user-following-with-http-info version accountId vatomUserId nil))
  ([version float?, accountId int?, vatomUserId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomUserId)
   (call-api "/api/{version}/vatom/users/rels/following" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomUserId" vatomUserId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-user-following any?
  "Get user following
  Get user following."
  ([version float?, accountId int?, vatomUserId string?, ] (get-user-following version accountId vatomUserId nil))
  ([version float?, accountId int?, vatomUserId string?, optional-params any?]
   (let [res (:data (get-user-following-with-http-info version accountId vatomUserId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-user-info-with-http-info any?
  "Get User Info
  Get a User's Info."
  ([version float?, accountId int?, vatomUserId string?, ] (get-user-info-with-http-info version accountId vatomUserId nil))
  ([version float?, accountId int?, vatomUserId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomUserId)
   (call-api "/api/{version}/vatom/user/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomUserId" vatomUserId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-user-info any?
  "Get User Info
  Get a User's Info."
  ([version float?, accountId int?, vatomUserId string?, ] (get-user-info version accountId vatomUserId nil))
  ([version float?, accountId int?, vatomUserId string?, optional-params any?]
   (let [res (:data (get-user-info-with-http-info version accountId vatomUserId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-user-profile-with-http-info any?
  "Get Vatom User Profile
  Gets the logged in user's profile in Vatom."
  ([version float?, accountId int?, ] (get-user-profile-with-http-info version accountId nil))
  ([version float?, accountId int?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId)
   (call-api "/api/{version}/vatom/me/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-user-profile any?
  "Get Vatom User Profile
  Gets the logged in user's profile in Vatom."
  ([version float?, accountId int?, ] (get-user-profile version accountId nil))
  ([version float?, accountId int?, optional-params any?]
   (let [res (:data (get-user-profile-with-http-info version accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-vatom-event-with-http-info any?
  "Get Vatom Event
  Gets the details of a event."
  ([version float?, accountId int?, appKey string?, vatomEventId string?, ] (get-vatom-event-with-http-info version accountId appKey vatomEventId nil))
  ([version float?, accountId int?, appKey string?, vatomEventId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomEventId)
   (call-api "/api/{version}/vatom/b/events/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomEventId" vatomEventId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-vatom-event any?
  "Get Vatom Event
  Gets the details of a event."
  ([version float?, accountId int?, appKey string?, vatomEventId string?, ] (get-vatom-event version accountId appKey vatomEventId nil))
  ([version float?, accountId int?, appKey string?, vatomEventId string?, optional-params any?]
   (let [res (:data (get-vatom-event-with-http-info version accountId appKey vatomEventId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-vatom-nft-with-http-info any?
  "Get Vatom NFT Details
  Get Vatom NFT Details"
  ([version float?, accountId int?, vatomId string?, ] (get-vatom-nft-with-http-info version accountId vatomId nil))
  ([version float?, accountId int?, vatomId string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomId)
   (call-api "/api/{version}/vatom/vatoms/get" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomId" vatomId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec get-vatom-nft any?
  "Get Vatom NFT Details
  Get Vatom NFT Details"
  ([version float?, accountId int?, vatomId string?, ] (get-vatom-nft version accountId vatomId nil))
  ([version float?, accountId int?, vatomId string?, optional-params any?]
   (let [res (:data (get-vatom-nft-with-http-info version accountId vatomId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec list-communities-with-http-info any?
  "List Vatom Communities
  Gets the communities tied to a business."
  ([version float?, accountId int?, appKey string?, ] (list-communities-with-http-info version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, {:keys [vatomParameters returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey)
   (call-api "/api/{version}/vatom/b/communities/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec list-communities any?
  "List Vatom Communities
  Gets the communities tied to a business."
  ([version float?, accountId int?, appKey string?, ] (list-communities version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, optional-params any?]
   (let [res (:data (list-communities-with-http-info version accountId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec list-events-with-http-info any?
  "List Vatom Events
  Gets the events tied to a business."
  ([version float?, accountId int?, appKey string?, ] (list-events-with-http-info version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, {:keys [vatomParameters returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey)
   (call-api "/api/{version}/vatom/b/events/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec list-events any?
  "List Vatom Events
  Gets the events tied to a business."
  ([version float?, accountId int?, appKey string?, ] (list-events version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, optional-params any?]
   (let [res (:data (list-events-with-http-info version accountId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec list-spaces-with-http-info any?
  "List Vatom Spaces
  Gets the spaces tied to a business."
  ([version float?, accountId int?, appKey string?, ] (list-spaces-with-http-info version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, {:keys [vatomParameters returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey)
   (call-api "/api/{version}/vatom/b/spaces/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec list-spaces any?
  "List Vatom Spaces
  Gets the spaces tied to a business."
  ([version float?, accountId int?, appKey string?, ] (list-spaces version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, optional-params any?]
   (let [res (:data (list-spaces-with-http-info version accountId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec list-user-coin-transactions-with-http-info any?
  "List Coin Transactions for a Vatom User
  Gets the logged in user's Vatom coin transactions."
  ([version float?, accountId int?, vatomUserId string?, ] (list-user-coin-transactions-with-http-info version accountId vatomUserId nil))
  ([version float?, accountId int?, vatomUserId string?, {:keys [vatomParameters returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomUserId)
   (call-api "/api/{version}/vatom/u/coins/txns/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomUserId" vatomUserId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec list-user-coin-transactions any?
  "List Coin Transactions for a Vatom User
  Gets the logged in user's Vatom coin transactions."
  ([version float?, accountId int?, vatomUserId string?, ] (list-user-coin-transactions version accountId vatomUserId nil))
  ([version float?, accountId int?, vatomUserId string?, optional-params any?]
   (let [res (:data (list-user-coin-transactions-with-http-info version accountId vatomUserId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec list-user-coin-transactions-as-business-with-http-info any?
  "List coin transactions for a user (as a Business)
  List coin transactions for a user (as a Business)."
  ([version float?, accountId int?, vatomUserId string?, appKey string?, ] (list-user-coin-transactions-as-business-with-http-info version accountId vatomUserId appKey nil))
  ([version float?, accountId int?, vatomUserId string?, appKey string?, {:keys [vatomParameters returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomUserId appKey)
   (call-api "/api/{version}/vatom/b/users/coins/txns/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomUserId" vatomUserId "appKey" appKey "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec list-user-coin-transactions-as-business any?
  "List coin transactions for a user (as a Business)
  List coin transactions for a user (as a Business)."
  ([version float?, accountId int?, vatomUserId string?, appKey string?, ] (list-user-coin-transactions-as-business version accountId vatomUserId appKey nil))
  ([version float?, accountId int?, vatomUserId string?, appKey string?, optional-params any?]
   (let [res (:data (list-user-coin-transactions-as-business-with-http-info version accountId vatomUserId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec perform-action-on-nft-with-http-info any?
  "Perform Action on NFT
  Perform Action on NFT."
  ([version float?, accountId int?, vatomId string?, vatomAction string?, vatomParameters string?, ] (perform-action-on-nft-with-http-info version accountId vatomId vatomAction vatomParameters nil))
  ([version float?, accountId int?, vatomId string?, vatomAction string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomId vatomAction vatomParameters)
   (call-api "/api/{version}/vatom/me/vatoms/actions" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomId" vatomId "vatomAction" vatomAction "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec perform-action-on-nft any?
  "Perform Action on NFT
  Perform Action on NFT."
  ([version float?, accountId int?, vatomId string?, vatomAction string?, vatomParameters string?, ] (perform-action-on-nft version accountId vatomId vatomAction vatomParameters nil))
  ([version float?, accountId int?, vatomId string?, vatomAction string?, vatomParameters string?, optional-params any?]
   (let [res (:data (perform-action-on-nft-with-http-info version accountId vatomId vatomAction vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec redeem-nft-with-http-info any?
  "Redeem NFT
  Redeem an NFT."
  ([version float?, accountId int?, appKey string?, vatomParameters string?, ] (redeem-nft-with-http-info version accountId appKey vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomParameters)
   (call-api "/api/{version}/vatom/b/redemptions" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec redeem-nft any?
  "Redeem NFT
  Redeem an NFT."
  ([version float?, accountId int?, appKey string?, vatomParameters string?, ] (redeem-nft version accountId appKey vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomParameters string?, optional-params any?]
   (let [res (:data (redeem-nft-with-http-info version accountId appKey vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec redeem-user-coins-as-business-with-http-info any?
  "Redeem the coins for a user (as a Business)
  Redeem the coins for a user (as a Business)."
  ([version float?, accountId int?, vatomUserId string?, appKey string?, vatomParameters string?, ] (redeem-user-coins-as-business-with-http-info version accountId vatomUserId appKey vatomParameters nil))
  ([version float?, accountId int?, vatomUserId string?, appKey string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomUserId appKey vatomParameters)
   (call-api "/api/{version}/vatom/b/users/coins/redeem" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomUserId" vatomUserId "appKey" appKey "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec redeem-user-coins-as-business any?
  "Redeem the coins for a user (as a Business)
  Redeem the coins for a user (as a Business)."
  ([version float?, accountId int?, vatomUserId string?, appKey string?, vatomParameters string?, ] (redeem-user-coins-as-business version accountId vatomUserId appKey vatomParameters nil))
  ([version float?, accountId int?, vatomUserId string?, appKey string?, vatomParameters string?, optional-params any?]
   (let [res (:data (redeem-user-coins-as-business-with-http-info version accountId vatomUserId appKey vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-businesses-with-http-info any?
  "Search for Vatom Businesses
  Searches for Vatom businesses."
  ([version float?, accountId int?, ] (search-businesses-with-http-info version accountId nil))
  ([version float?, accountId int?, {:keys [vatomParameters returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId)
   (call-api "/api/{version}/vatom/b/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec search-businesses any?
  "Search for Vatom Businesses
  Searches for Vatom businesses."
  ([version float?, accountId int?, ] (search-businesses version accountId nil))
  ([version float?, accountId int?, optional-params any?]
   (let [res (:data (search-businesses-with-http-info version accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-campaign-groups-with-http-info any?
  "Search Campaign Groups
  Search campaign groups."
  ([version float?, accountId int?, appKey string?, ] (search-campaign-groups-with-http-info version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey)
   (call-api "/api/{version}/vatom/b/campaign-groups/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec search-campaign-groups any?
  "Search Campaign Groups
  Search campaign groups."
  ([version float?, accountId int?, appKey string?, ] (search-campaign-groups version accountId appKey nil))
  ([version float?, accountId int?, appKey string?, optional-params any?]
   (let [res (:data (search-campaign-groups-with-http-info version accountId appKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-identities-with-http-info any?
  "Search User Identities
  Search User Identities."
  ([version float?, accountId int?, ] (search-identities-with-http-info version accountId nil))
  ([version float?, accountId int?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId)
   (call-api "/api/{version}/vatom/me/identities/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec search-identities any?
  "Search User Identities
  Search User Identities."
  ([version float?, accountId int?, ] (search-identities version accountId nil))
  ([version float?, accountId int?, optional-params any?]
   (let [res (:data (search-identities-with-http-info version accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-inventory-with-http-info any?
  "Search Vatom User's Inventory
  Searches the logged in user's Vatom Inventory."
  ([version float?, accountId int?, ] (search-inventory-with-http-info version accountId nil))
  ([version float?, accountId int?, {:keys [vatomParameters returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId)
   (call-api "/api/{version}/vatom/user-inventory/search" :get
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec search-inventory any?
  "Search Vatom User's Inventory
  Searches the logged in user's Vatom Inventory."
  ([version float?, accountId int?, ] (search-inventory version accountId nil))
  ([version float?, accountId int?, optional-params any?]
   (let [res (:data (search-inventory-with-http-info version accountId optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec send-nft-with-http-info any?
  "Send NFT
  Send an NFT."
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, vatomParameters string?, ] (send-nft-with-http-info version accountId appKey vatomCampaignId vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomCampaignId vatomParameters)
   (call-api "/api/{version}/vatom/b/campaigns/send" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomCampaignId" vatomCampaignId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec send-nft any?
  "Send NFT
  Send an NFT."
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, vatomParameters string?, ] (send-nft version accountId appKey vatomCampaignId vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomCampaignId string?, vatomParameters string?, optional-params any?]
   (let [res (:data (send-nft-with-http-info version accountId appKey vatomCampaignId vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec set-points-balance-as-business-with-http-info any?
  "Set Points Balance as Business
  Sets the points balance of a Vatom user."
  ([version float?, accountId int?, appKey string?, vatomUserId string?, vatomCampaignId string?, vatomParameters string?, ] (set-points-balance-as-business-with-http-info version accountId appKey vatomUserId vatomCampaignId vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomUserId string?, vatomCampaignId string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomUserId vatomCampaignId vatomParameters)
   (call-api "/api/{version}/vatom/b/campaign/u/points/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomUserId" vatomUserId "vatomCampaignId" vatomCampaignId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec set-points-balance-as-business any?
  "Set Points Balance as Business
  Sets the points balance of a Vatom user."
  ([version float?, accountId int?, appKey string?, vatomUserId string?, vatomCampaignId string?, vatomParameters string?, ] (set-points-balance-as-business version accountId appKey vatomUserId vatomCampaignId vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomUserId string?, vatomCampaignId string?, vatomParameters string?, optional-params any?]
   (let [res (:data (set-points-balance-as-business-with-http-info version accountId appKey vatomUserId vatomCampaignId vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec transfer-user-coins-with-http-info any?
  "Transfer coins from Vatom Users
  Transfer coins from Vatom Users."
  ([version float?, accountId int?, vatomUserId string?, vatomParameters string?, ] (transfer-user-coins-with-http-info version accountId vatomUserId vatomParameters nil))
  ([version float?, accountId int?, vatomUserId string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomUserId vatomParameters)
   (call-api "/api/{version}/vatom/u/coins/transfer" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomUserId" vatomUserId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec transfer-user-coins any?
  "Transfer coins from Vatom Users
  Transfer coins from Vatom Users."
  ([version float?, accountId int?, vatomUserId string?, vatomParameters string?, ] (transfer-user-coins version accountId vatomUserId vatomParameters nil))
  ([version float?, accountId int?, vatomUserId string?, vatomParameters string?, optional-params any?]
   (let [res (:data (transfer-user-coins-with-http-info version accountId vatomUserId vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec update-business-coins-with-http-info any?
  "Fund coins for a Business
  Fund/update coins for a Businesss."
  ([version float?, accountId int?, appKey string?, vatomParameters string?, ] (update-business-coins-with-http-info version accountId appKey vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomParameters)
   (call-api "/api/{version}/vatom/b/coins/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec update-business-coins any?
  "Fund coins for a Business
  Fund/update coins for a Businesss."
  ([version float?, accountId int?, appKey string?, vatomParameters string?, ] (update-business-coins version accountId appKey vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomParameters string?, optional-params any?]
   (let [res (:data (update-business-coins-with-http-info version accountId appKey vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec update-event-guest-list-with-http-info any?
  "Update Vatom Event Guest List
  Update the guest list of an event."
  ([version float?, accountId int?, appKey string?, vatomEventId string?, vatomParameters string?, ] (update-event-guest-list-with-http-info version accountId appKey vatomEventId vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomEventId string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomEventId vatomParameters)
   (call-api "/api/{version}/vatom/b/events/guests/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomEventId" vatomEventId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec update-event-guest-list any?
  "Update Vatom Event Guest List
  Update the guest list of an event."
  ([version float?, accountId int?, appKey string?, vatomEventId string?, vatomParameters string?, ] (update-event-guest-list version accountId appKey vatomEventId vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomEventId string?, vatomParameters string?, optional-params any?]
   (let [res (:data (update-event-guest-list-with-http-info version accountId appKey vatomEventId vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec update-space-with-http-info any?
  "Update Vatom Space
  Update a Vatom space."
  ([version float?, accountId int?, appKey string?, vatomSpaceId string?, vatomParameters string?, ] (update-space-with-http-info version accountId appKey vatomSpaceId vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomSpaceId string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomSpaceId vatomParameters)
   (call-api "/api/{version}/vatom/b/spaces/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomSpaceId" vatomSpaceId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec update-space any?
  "Update Vatom Space
  Update a Vatom space."
  ([version float?, accountId int?, appKey string?, vatomSpaceId string?, vatomParameters string?, ] (update-space version accountId appKey vatomSpaceId vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomSpaceId string?, vatomParameters string?, optional-params any?]
   (let [res (:data (update-space-with-http-info version accountId appKey vatomSpaceId vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec update-user-coins-as-business-with-http-info any?
  "Update the coins for a user (as a Business)
  Update the coins for a user (as a Business)."
  ([version float?, accountId int?, vatomUserId string?, appKey string?, vatomParameters string?, ] (update-user-coins-as-business-with-http-info version accountId vatomUserId appKey vatomParameters nil))
  ([version float?, accountId int?, vatomUserId string?, appKey string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomUserId appKey vatomParameters)
   (call-api "/api/{version}/vatom/b/users/coins/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomUserId" vatomUserId "appKey" appKey "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec update-user-coins-as-business any?
  "Update the coins for a user (as a Business)
  Update the coins for a user (as a Business)."
  ([version float?, accountId int?, vatomUserId string?, appKey string?, vatomParameters string?, ] (update-user-coins-as-business version accountId vatomUserId appKey vatomParameters nil))
  ([version float?, accountId int?, vatomUserId string?, appKey string?, vatomParameters string?, optional-params any?]
   (let [res (:data (update-user-coins-as-business-with-http-info version accountId vatomUserId appKey vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec update-user-profile-with-http-info any?
  "Update Vatom User Profile
  Gets the logged in user's profile in Vatom."
  ([version float?, accountId int?, vatomParameters string?, ] (update-user-profile-with-http-info version accountId vatomParameters nil))
  ([version float?, accountId int?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId vatomParameters)
   (call-api "/api/{version}/vatom/me/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec update-user-profile any?
  "Update Vatom User Profile
  Gets the logged in user's profile in Vatom."
  ([version float?, accountId int?, vatomParameters string?, ] (update-user-profile version accountId vatomParameters nil))
  ([version float?, accountId int?, vatomParameters string?, optional-params any?]
   (let [res (:data (update-user-profile-with-http-info version accountId vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec update-vatom-event-with-http-info any?
  "Update Vatom Event
  Update a Vatom event."
  ([version float?, accountId int?, appKey string?, vatomEventId string?, vatomParameters string?, ] (update-vatom-event-with-http-info version accountId appKey vatomEventId vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomEventId string?, vatomParameters string?, {:keys [returnRawResponse]} (s/map-of keyword? any?)]
   (check-required-params version accountId appKey vatomEventId vatomParameters)
   (call-api "/api/{version}/vatom/b/events/update" :post
             {:path-params   {"version" version }
              :header-params {}
              :query-params  {"accountId" accountId "appKey" appKey "vatomEventId" vatomEventId "vatomParameters" vatomParameters "returnRawResponse" returnRawResponse }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec update-vatom-event any?
  "Update Vatom Event
  Update a Vatom event."
  ([version float?, accountId int?, appKey string?, vatomEventId string?, vatomParameters string?, ] (update-vatom-event version accountId appKey vatomEventId vatomParameters nil))
  ([version float?, accountId int?, appKey string?, vatomEventId string?, vatomParameters string?, optional-params any?]
   (let [res (:data (update-vatom-event-with-http-info version accountId appKey vatomEventId vatomParameters optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


