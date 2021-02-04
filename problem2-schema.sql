CREATE TABLE `paid_user_subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `plan_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cancellation_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
);

CREATE TABLE `stream_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `event` varchar(100) NOT NULL,
  `data` json DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `_donations` (
  `donation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(20,10) DEFAULT NULL,
  `donor_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf16,
  `verified` int(11) DEFAULT '1',
  `fee_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee_refunded_at` timestamp NULL DEFAULT NULL,
   `source` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usd_amount` decimal(20,10) DEFAULT NULL,
   `data` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`donation_id`),
  );
