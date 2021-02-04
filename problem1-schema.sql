CREATE TABLE `event_tracker` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `event` varchar(255) CHARACTER SET latin1 NOT NULL,
  `previous_event` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `stream_length` int(10) unsigned NOT NULL,
  `app_length` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
);
