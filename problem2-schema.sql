CREATE TABLE `paid_user_subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL, -- common user identifier across all tables
  `plan_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL, -- Posible values: 'monthly' 'annual'
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL, -- Posible values: 'Active' 'Past Due' 'Cancelled' 'Refunded'
  `expires_at` timestamp NOT NULL, -- timestamp when subscription expires
  `deleted_at` timestamp NULL DEFAULT NULL, -- timestamp when subscription was deleted for any reason on our end
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cancellation_at` timestamp NULL DEFAULT NULL, -- timestamp when user manually cancels subscription
  PRIMARY KEY (`id`),
);
CREATE TABLE `stream_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL, -- common user identifier across all tables
  `event` varchar(100) NOT NULL, -- possible values: 'stream_start' 'stream_end' 'app_start' 'app_end' 'crash'
  `data` json DEFAULT NULL, -- json with keys: 'os' 'platform' 'inputResolution' 'game' 'encoder'
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
);
CREATE TABLE `_donations` (
  `donation_id` int(10) unsigned NOT NULL AUTO_INCREMENT, -- identifier for each donation
  `user_id` int(11) NOT NULL, -- common user identifier across all tables
  `currency_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL, -- currency of the donation
  `amount` decimal(20,10) DEFAULT NULL, -- donation amount in the indicated currency
  `donor_id` int(11) DEFAULT NULL, -- identifier of donor
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL, -- email of donor
  `message` mediumtext CHARACTER SET utf16, -- donation message
  `verified` int(11) DEFAULT '1', -- 0: manually created by streamer (read: not a real donation); 1: real donation sent from a payment processor
  `source` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL, -- 'paypal' or 'credit_card'
  `transaction_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL, -- identifier sent from payment processor
  `usd_amount` decimal(20,10) DEFAULT NULL, -- donation in USD equivalent
  `data` json DEFAULT NULL, -- json details of the donation: donor, media attached, GIF attached
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`donation_id`),
  );
  