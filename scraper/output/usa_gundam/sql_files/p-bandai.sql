INSERT INTO models ( access_name, display_name, japanese_name, sku, info_source, release_date, timeline_id, series_id, product_line_id, manufacturer_id, scale_id, updated_date, created_date, user_update_id ) VALUES (
  'hg_1_144_super_fumina_axis_angel_mk_ii_axis_image_color_ver',
  'hg 1/144 super fumina axis angel mk ii axis image color ver',
  NULL,
  '4549660196259',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'build'),
  (SELECT series_id from series WHERE access_name = 'build_fighters'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_white_base_catapult_deck',
  'hg 1/144 white base catapult deck',
  NULL,
  'MH82773',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg1_144_zeta_argama_catapult_deck',
  'hg1/144 zeta argama catapult deck',
  NULL,
  'MH82954',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_gm_dominance_philip_hughes_custom',
  'mg 1/100 gm dominance philip hughes custom',
  NULL,
  '4573102587695',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'p-bandai'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_rgz_91b_re_gz_custom',
  'mg-rgz-91b-re-gz-custom',
  NULL,
  '4573102575661',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'universal_century'),
  (SELECT series_id from series WHERE access_name = 'universal_century'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_zeta_clear_color',
  'hg 1/144 zeta clear color',
  NULL,
  '4549660207016',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_bael_clear_color',
  'hg 1/144 bael clear color',
  NULL,
  '4549660216346',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_00_seven_sword_clear_ver',
  'mg 1/100 00 seven sword clear ver',
  NULL,
  '4549660222552',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_justice_clear_ver',
  'mg 1/100 justice clear ver',
  NULL,
  '4549660216360',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_full_armor_gundam_half_mechanical_clear_ver_ka',
  'mg 1/100 full armor gundam half mechanical clear ver ka',
  NULL,
  '4549660196235',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  're_1_100_efreet_custom_clear_ver',
  're 1/100 efreet custom clear ver',
  NULL,
  '4549660210191',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'rg_1_144_wing_zero_pearl_gloss_ver',
  'rg 1/144 wing zero pearl gloss ver',
  NULL,
  '4543112967565',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'rg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_barzam_clear_ver',
  'hg 1/144 barzam clear ver',
  NULL,
  '4549660216339',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_strike_freedom_clear_ver',
  'hg 1/144 strike freedom clear ver',
  NULL,
  '4549660222545',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'p-bandai'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = 'None'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_kimaris_vidar_clear_ver',
  'hg 1/144 kimaris vidar clear ver',
  NULL,
  '4549660210214',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'rg_1_144_tallegeese_iii',
  'rg 1/144 tallegeese iii',
  NULL,
  '11207146405924',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'after_colony'),
  (SELECT series_id from series WHERE access_name = 'wing'),
  (SELECT product_line_id from product_lines WHERE short_name = 'rg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_dwadge_zz_ver',
  'mg 1/100 dwadge zz ver',
  NULL,
  '4573102570093',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_shenlong_ew_liaoya_unit_ver',
  'mg 1/100 shenlong ew liaoya unit ver',
  NULL,
  'None',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'rg_1_144_ms_06r_1a_eric_manthfields_custom_zaku_ii',
  'rg 1/144 ms 06r 1a eric manthfields custom zaku ii',
  NULL,
  '10249660727332',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'rg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_rgm_96xs_jesta_shezarr_type_team_b_c',
  'mg 1/100 rgm 96xs jesta shezarr type team b c',
  NULL,
  '10249646211108',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_astray_red_dragon',
  'mg 1/100 astray red dragon',
  NULL,
  '10057065496612',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_barbatos_lupus_rex_clear_ver',
  'hg 1/144 barbatos lupus rex clear ver',
  NULL,
  '4549660196204',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'ng_1_100_barbatos_lupus_full_mechanics_clear_ver',
  'ng 1/100 barbatos lupus full mechanics clear ver',
  NULL,
  '4549660165774',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'ng'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_astray_red_frame_clear_part_set',
  'mg 1/100 astray red frame clear part set',
  NULL,
  '9912712593444',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_build_strike_full_package_plavsky_particle_clear_ver',
  'hg 1/144 build strike full package plavsky particle clear ver',
  NULL,
  '4543112865465',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  're_1_100_type_89_base_jabber',
  're 1/100 type 89 base jabber',
  NULL,
  '4573102553799',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 're'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_hyaku_shiki_ver_2_0_mechanical_clear_ver',
  'mg 1/100 hyaku shiki ver 2 0 mechanical clear ver',
  NULL,
  '4549660222538',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_astray_gold_frame_special_coating_ver',
  'mg 1/100 astray gold frame special coating ver',
  NULL,
  '4549660210436',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_msm_07s_zgok',
  'mg 1/100 msm 07s zgok',
  NULL,
  '5245158988021',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1/144_ms_09r_rick_dom',
  'hg-1/144-ms-09r-rick-dom',
  NULL,
  '4543112410374',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_avalanche_exia_dash',
  'mg 1/100 avalanche exia dash',
  NULL,
  '4549660299776',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'anno_domini'),
  (SELECT series_id from series WHERE access_name = '00'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_gundam_tr_1_hazel_kai_sheild_booster_set',
  'mg 1/100 gundam tr 1 hazel kai sheild booster set',
  NULL,
  '4659875403264',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_FA_78_2_heavy_rollout_color_ver',
  'hg 1/144 FA 78 2 heavy rollout color ver',
  NULL,
  '4549660283263',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_crossbone_x2',
  'hg 1/144 crossbone x2',
  NULL,
  '6967739482148',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_00_qant_trans_am_mode_special_coating_ver',
  'mg 1/100 00 qant trans am mode special coating ver',
  NULL,
  '4549660283232',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_rx_0_unicorn_destroy_mode_deactive_clear_ver',
  'hg 1/144 rx 0 unicorn destroy mode deactive clear ver',
  NULL,
  '4543112909664',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_tc_80pr_pale_riderground_heavy_equipment_type_extra_finish_ver',
  'hg 1/144 tc 80pr pale riderground heavy equipment type extra finish ver',
  NULL,
  '4549660119531',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'hg_1_144_astray_blue_frame_second_l_metallic_clear_ver',
  'hg 1/144 astray blue frame second l metallic clear ver',
  NULL,
  '4543112852472',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'cosmic_era'),
  (SELECT series_id from series WHERE access_name = 'seed_destiny'),
  (SELECT product_line_id from product_lines WHERE short_name = 'hg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/144'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_astray_turn_red',
  'mg 1/100 astray turn red',
  NULL,
  '4549660248095',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'cosmic_era'),
  (SELECT series_id from series WHERE access_name = 'seed'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'mg_1_100_tallgeese_ew_special_coating_ver',
  'mg 1/100 tallgeese ew special coating ver',
  NULL,
  '4549660196198',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
),
(
  'sazabi_ver_ka_mechanical_clear_ver',
  'sazabi-ver-ka-mechanical-clear-ver',
  NULL,
  '4549660119784',
  'usa_gundam',
  NULL,
  (SELECT timeline_id from timelines WHERE access_name = 'None'),
  (SELECT series_id from series WHERE access_name = 'None'),
  (SELECT product_line_id from product_lines WHERE short_name = 'mg'),
  (SELECT manufacturer_id from manufacturers WHERE access_name = 'bandai'),
  (SELECT scale_id from scales WHERE scale_value = '1/100'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  (SELECT user_id from users WHERE user_name = 'initial_user')
);