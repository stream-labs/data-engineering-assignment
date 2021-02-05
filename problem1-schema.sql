CREATE TABLE `event_tracker` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `event` varchar(255) CHARACTER SET latin1 NOT NULL, -- event includes 'stream_start', 'stream_end', 'app_start', 'app_end'
  `previous_event` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `stream_length` int(10) unsigned NOT NULL, -- if event = 'stream_end', this field reflects the length of the stream in seconds, otherwise = NULL
  `app_length` int(10) unsigned NOT NULL, -- if event = 'app_end', this field reflects the length of the session in seconds, otherwise = NULL
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
);
