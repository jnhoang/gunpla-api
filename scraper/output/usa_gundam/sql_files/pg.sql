INSERT INTO models ( access_name, display_name, japanese_name, sku, info_source, release_date, timeline_id, series_id, product_line_id, manufacturer_id, scale_id, updated_date, created_date, user_update_id ) VALUES (
  'pg_1_60_perfect_strike',
  'pg 1/60 perfect strike',
  NULL,
  '5059011',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'cosmic_era'),
  (SELECT series_id from series WHERE access_name = 'seed'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_ms_06s_zaku_2',
  'pg 1/60 ms 06s zaku 2',
  NULL,
  '4902425718705',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'universal_century'),
  (SELECT series_id from series WHERE access_name = 'universal_century'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_ms_06_f_zaku_2',
  'pg 1/60 ms 06 f zaku 2',
  NULL,
  '7063291524',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'universal_century'),
  (SELECT series_id from series WHERE access_name = 'universal_century'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_rx_78_gp01_zephyranthes',
  'pg 1/60 rx 78 gp01 zephyranthes',
  NULL,
  '4543112164094',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'universal_century'),
  (SELECT series_id from series WHERE access_name = 'universal_century'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_skygrasper_aile_striker',
  'pg 1/60 skygrasper aile striker',
  NULL,
  '4543112341013',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_strike_rouge_sky_grasper',
  'pg 1/60 strike rouge sky grasper',
  NULL,
  '6442724036',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'cosmic_era'),
  (SELECT series_id from series WHERE access_name = 'seed'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_wing_zero_custom',
  'pg 1/60 wing zero custom',
  NULL,
  '4902425776590',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'after_colony'),
  (SELECT series_id from series WHERE access_name = 'wing'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_astray_red_frame',
  'pg 1/60 astray red frame',
  NULL,
  '0158463',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'cosmic_era'),
  (SELECT series_id from series WHERE access_name = 'seed'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_strike',
  'pg 1/60 strike',
  NULL,
  '4543112314130',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'cosmic_era'),
  (SELECT series_id from series WHERE access_name = 'seed'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_banshee_norn',
  'pg 1/60 banshee norn',
  NULL,
  '4549660006411',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'universal_century'),
  (SELECT series_id from series WHERE access_name = 'universal_century'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_rx_78_2_gundam_chrome_plated_ver',
  'pg 1/60 rx 78 2 gundam chrome plated ver',
  NULL,
  '216619',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'universal_century'),
  (SELECT series_id from series WHERE access_name = 'universal_century'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_astray_blue_frame',
  'pg 1/60 astray blue frame',
  NULL,
  '9259852529700',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_seven_sword_gundam',
  'pg 1/60 seven sword gundam',
  NULL,
  '4573102555823',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'anno_domini'),
  (SELECT series_id from series WHERE access_name = '00'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_strike_striker_weapon_system',
  'pg 1/60 strike striker weapon system',
  NULL,
  '5555555555555',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_astray_red_frame_kai_limited_edition',
  'pg 1/60 astray red frame kai limited edition',
  NULL,
  '228335',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_wing_zero_ew_pearl_coating',
  'pg 1/60 wing zero ew pearl coating',
  NULL,
  '4543112498434',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_rx_178_gundam_mk_ii_titans',
  'pg 1/60 rx 178 gundam mk ii titans',
  NULL,
  '4543112128164',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_rx_178_gundam_mk_ii_aeug',
  'pg 1/60 rx 178 gundam mk ii aeug',
  NULL,
  '4543112060471',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_rx_78_2',
  'pg 1/60 rx 78 2',
  NULL,
  '4902425606255',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'universal_century'),
  (SELECT series_id from series WHERE access_name = 'universal_century'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_msz_006_zeta',
  'pg 1/60 msz 006 zeta',
  NULL,
  '4902425756806',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'universal_century'),
  (SELECT series_id from series WHERE access_name = 'zeta'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_strike_freedom',
  'pg 1/60 strike freedom',
  NULL,
  '4543112655066',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'cosmic_era'),
  (SELECT series_id from series WHERE access_name = 'seed'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'pg_1_60_00_raiser',
  'pg 1/60 00 raiser',
  NULL,
  '4543112610164',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'anno_domini'),
  (SELECT series_id from series WHERE access_name = '00'),
  (SELECT product_line_id from product_lines WHERE short_name = 'pg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
);