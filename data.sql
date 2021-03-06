--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: abilities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.abilities (
    id integer NOT NULL,
    ability text,
    ability_description text
);


--
-- Name: abilities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.abilities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: abilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.abilities_id_seq OWNED BY public.abilities.id;


--
-- Name: egg_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.egg_groups (
    id integer NOT NULL,
    egg_group text
);


--
-- Name: egg_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.egg_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: egg_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.egg_groups_id_seq OWNED BY public.egg_groups.id;


--
-- Name: games; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.games (
    id integer NOT NULL,
    game text
);


--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: legendaries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.legendaries (
    id integer NOT NULL,
    legendary_status text
);


--
-- Name: legendaries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.legendaries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: legendaries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.legendaries_id_seq OWNED BY public.legendaries.id;


--
-- Name: pokemon; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pokemon (
    id integer NOT NULL,
    pokedex_number integer,
    pokemon_name text,
    is_legendary integer,
    type1_id integer,
    type2_id integer,
    ability1_id integer,
    ability2_id integer,
    hidden_ability integer,
    health integer,
    attack integer,
    defense integer,
    special_attack integer,
    special_defense integer,
    speed integer,
    region_id integer,
    catch_rate numeric,
    male_percent numeric,
    game_id integer,
    egg_group1_id integer,
    egg_group2_id integer
);


--
-- Name: pokemon_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pokemon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pokemon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pokemon_id_seq OWNED BY public.pokemon.id;


--
-- Name: regions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.regions (
    id integer NOT NULL,
    region text
);


--
-- Name: regions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.regions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;


--
-- Name: types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.types (
    id integer NOT NULL,
    pokemon_type text
);


--
-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;


--
-- Name: abilities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.abilities ALTER COLUMN id SET DEFAULT nextval('public.abilities_id_seq'::regclass);


--
-- Name: egg_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egg_groups ALTER COLUMN id SET DEFAULT nextval('public.egg_groups_id_seq'::regclass);


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Name: legendaries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legendaries ALTER COLUMN id SET DEFAULT nextval('public.legendaries_id_seq'::regclass);


--
-- Name: pokemon id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pokemon ALTER COLUMN id SET DEFAULT nextval('public.pokemon_id_seq'::regclass);


--
-- Name: regions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);


--
-- Name: types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);


--
-- Data for Name: abilities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.abilities (id, ability, ability_description) FROM stdin;
0	overgrow	powers_up_grass-type_moves_when_the_pok??mon's_hp_is_low.
1	blaze	powers_up_fire-type_moves_when_the_pok??mon's_hp_is_low._
2	torrent	powers_up_water-type_moves_when_the_pok??mon's_hp_is_low._
3	rattled	dark-_ghost-_and_bug-type_moves_scare_the_pok??mon_and_boost_its_speed_stat.
4	punk_rock	boosts_the_power_of_sound-based_moves._the_pok??mon_also_takes_half_the_damage_from_these_kinds_of_moves.
5	poison_point	contact_with_the_pok??mon_may_poison_the_attacker.
6	rivalry	becomes_competitive_and_deals_more_damage_to_pok??mon_of_the_same_gender_but_deals_less_to_pok??mon_of_the_opposite_gender.
7	shed_skin	the_pok??mon_may_heal_its_own_status_conditions_by_shedding_its_skin.
8	compound_eyes	the_pok??mon's_compound_eyes_boost_its_accuracy.
9	no_guard	the_pok??mon_employs_no-guard_tactics_to_ensure_incoming_and_outgoing_attacks_always_land.
10	swarm	powers_up_bug-type_moves_when_the_pok??mon's_hp_is_low.
11	limber	its_limber_body_protects_the_pok??mon_from_paralysis.
12	shield_dust	this_pok??mon's_dust_blocks_the_additional_effects_of_attacks_taken.
13	hydration	heals_status_conditions_if_it's_raining.
14	inner_focus	the_pok??mon's_intensely_focused_and_that_protects_the_pok??mon_from_flinching.
15	unseen_fist	the_pok??mon_can_deal_damage_with_moves_that_make_physical_contact_even_if_the_target_is_protected.
16	unnerve	unnerves_opposing_pok??mon_and_makes_them_unable_to_eat_berries.
17	synchronize	the_attacker_will_receive_the_same_status_condition_if_it_inflicts_a_burn_poison_or_paralysis_to_the_pok??mon.
18	pressure	by_putting_pressure_on_the_opposing_pok??mon_it_raises_their_pp_usage.
19	magnet_pull	prevents_steel-type_pok??mon_from_escaping_using_its_magnetic_force.
20	soundproof	soundproofing_gives_the_pok??mon_full_immunity_to_all_sound-based_moves.
21	cute_charm	contact_with_the_pok??mon_may_cause_infatuation.
22	flash_fire	powers_up_the_pok??mon's_fire-type_moves_if_it's_hit_by_one.
23	chlorophyll	boosts_the_pok??mon's_speed_stat_in_harsh_sunlight._
24	effect_spore	contact_with_the_pok??mon_may_inflict_poison_sleep_or_paralysis_on_its_attacker.
25	sand_veil	boosts_the_pok??mon's_evasiveness_in_a_sandstorm.
26	keen_eye	keen_eyes_prevent_other_pok??mon_from_lowering_this_pok??mon's_accuracy.
27	run_away	enables_a_sure_getaway_from_wild_pok??mon.
28	intimidate	the_pok??mon_intimidates_opposing_pok??mon_upon_entering_battle_lowering_their_attack_stat.
29	static	the_pok??mon_is_charged_with_static_electricity_so_contact_with_it_may_cause_paralysis.
30	pickup	the_pok??mon_may_pick_up_the_item_an_opposing_pok??mon_used_during_a_battle._it_may_pick_up_items_outside_of_battle_too.
31	battle_armor	hard_armor_protects_the_pok??mon_from_critical_hits.
32	damp	prevents_the_use_of_explosive_moves_such_as_self-destruct_by_dampening_its_surroundings.
33	rock_head	protects_the_pok??mon_from_recoil_damage.
34	own_tempo	this_pok??mon_has_its_own_tempo_and_that_prevents_it_from_becoming_confused.
35	levitate	by_floating_in_the_air_the_pok??mon_receives_full_immunity_to_all_ground-type_moves.
36	lightning_rod	the_pok??mon_draws_in_all_electric-type_moves._instead_of_being_hit_by_electric-type_moves_it_boosts_its_sp._atk.
37	natural_cure	all_status_conditions_heal_when_the_pok??mon_switches_out.
38	early_bird	the_pok??mon_awakens_from_sleep_twice_as_fast_as_other_pok??mon.
39	swift_swim	boosts_the_pok??mon's_speed_stat_in_rain.
40	illuminate	raises_the_likelihood_of_meeting_wild_pok??mon_by_illuminating_the_surroundings.
41	oblivious	the_pok??mon_is_oblivious_and_that_keeps_it_from_being_infatuated_or_falling_for_taunts.
42	flame_body	contact_with_the_pok??mon_may_burn_the_attacker.
43	hyper_cutter	the_pok??mon's_proud_of_its_powerful_pincers._they_prevent_other_pok??mon_from_lowering_its_attack_stat.
44	water_absorb	restores_hp_if_hit_by_a_water-type_move_instead_of_taking_damage.
45	volt_absorb	restores_hp_if_hit_by_an_electric-type_move_instead_of_taking_damage.
46	trace	when_it_enters_a_battle_the_pok??mon_copies_an_opposing_pok??mon's_ability.
47	immunity	the_immune_system_of_the_pok??mon_prevents_it_from_getting_poisoned.
48	insomnia	the_pok??mon_is_suffering_from_insomnia_and_cannot_fall_asleep.
49	hustle	boosts_the_attack_stat_but_lowers_accuracy.
50	thick_fat	the_pok??mon_is_protected_by_a_layer_of_thick_fat_which_halves_the_damage_taken_from_fire-_and_ice-type_moves._
51	sturdy	it_cannot_be_knocked_out_with_one_hit._one-hit_ko_moves_cannot_knock_it_out_either.
52	speed_boost	its_speed_stat_is_boosted_every_turn.
53	shadow_tag	this_pok??mon_steps_on_the_opposing_pok??mon's_shadow_to_prevent_it_from_escaping.
54	serene_grace	boosts_the_likelihood_of_additional_effects_occurring_when_attacking.
55	guts	it's_so_gutsy_that_having_a_status_condition_boosts_the_pok??mon's_attack_stat.
56	magma_armor	the_pok??mon_is_covered_with_hot_magma_which_prevents_the_pok??mon_from_becoming_frozen.
57	suction_cups	this_pok??mon_uses_suction_cups_to_stay_in_one_spot_to_negate_all_moves_and_items_that_force_switching_out.
58	vital_spirit	the_pok??mon_is_full_of_vitality_and_that_prevents_it_from_falling_asleep.
59	sand_stream	the_pok??mon_summons_a_sandstorm_when_it_enters_a_battle.
60	truant	the_pok??mon_can't_use_a_move_if_it_had_used_a_move_on_the_previous_turn.
61	wonder_guard	its_mysterious_power_only_lets_supereffective_moves_hit_the_pok??mon.
62	pure_power	using_its_pure_power_the_pok??mon_doubles_its_attack_stat.
63	plus	boosts_the_sp._atk_stat_of_the_pok??mon_if_an_ally_with_the_plus_or_minus_ability_is_also_in_battle.
64	minus	boosts_the_sp._atk_stat_of_the_pok??mon_if_an_ally_with_the_plus_or_minus_ability_is_also_in_battle.
65	liquid_ooze	the_oozed_liquid_has_a_strong_stench_which_damages_attackers_using_any_draining_move.
66	rough_skin	this_pok??mon_inflicts_damage_with_its_rough_skin_to_the_attacker_on_contact.
67	water_veil	the_pok??mon_is_covered_with_a_water_veil_which_prevents_the_pok??mon_from_getting_a_burn.
68	white_smoke	the_pok??mon_is_protected_by_its_white_smoke_which_prevents_other_pok??mon_from_lowering_its_stats.
69	marvel_scale	the_pok??mon's_marvelous_scales_boost_the_defense_stat_if_it_has_a_status_condition.
70	forecast	the_pok??mon_transforms_with_the_weather_to_change_its_type_to_water_fire_or_ice.
71	color_change	the_pok??mon's_type_becomes_the_type_of_the_move_used_on_it.
72	shell_armor	a_hard_shell_protects_the_pok??mon_from_critical_hits.
73	clear_body	prevents_other_pok??mon's_moves_or_abilities_from_lowering_the_pok??mon's_stats.
74	drizzle	the_pok??mon_makes_it_rain_when_it_enters_a_battle.
75	drought	turns_the_sunlight_harsh_when_the_pok??mon_enters_a_battle.
76	air_lock	eliminates_the_effects_of_weather.
77	simple	the_stat_changes_the_pok??mon_receives_are_doubled.
78	mold_breaker	moves_can_be_used_on_the_target_regardless_of_its_abilities.
79	anticipation	the_pok??mon_can_sense_an_opposing_pok??mon's_dangerous_moves.
80	honey_gather	the_pok??mon_may_gather_honey_after_a_battle.
81	flower_gift	boosts_the_attack_and_sp._def_stats_of_itself_and_allies_in_harsh_sunlight.
82	sticky_hold	items_held_by_the_pok??mon_are_stuck_fast_and_cannot_be_removed_by_other_pok??mon.
83	technician	powers_up_the_pok??mon's_weaker_moves.
84	aftermath	damages_the_attacker_if_it_contacts_the_pok??mon_with_a_finishing_hit.
85	stench	by_releasing_stench_when_attacking_this_pok??mon_may_cause_the_target_to_flinch.
86	steadfast	the_pok??mon's_determination_boosts_the_speed_stat_each_time_the_pok??mon_flinches.
87	snow_warning	the_pok??mon_summons_a_hailstorm_when_it_enters_a_battle.
88	motor_drive	boosts_its_speed_stat_if_hit_by_an_electric-type_move_instead_of_taking_damage.
89	leaf_guard	prevents_status_conditions_in_harsh_sunlight.
90	snow_cloak	boosts_evasiveness_in_a_hailstorm.
91	adaptability	powers_up_moves_of_the_same_type_as_the_pok??mon.
92	slow_start	for_five_turns_the_pok??mon's_attack_and_speed_stats_are_halved.
93	bad_dreams	reduces_the_hp_of_sleeping_opposing_pok??mon.
94	multitype	changes_the_pok??mon's_type_to_match_the_plate_or_z-crystal_it_holds.
95	victory_star	boosts_the_accuracy_of_its_allies_and_itself.
96	gluttony	makes_the_pok??mon_eat_a_held_berry_when_its_hp_drops_to_half_or_less_which_is_sooner_than_usual.
97	forewarn	when_it_enters_a_battle_the_pok??mon_can_tell_one_of_the_moves_an_opposing_pok??mon_has.
98	big_pecks	protects_the_pok??mon_from_defense-lowering_effects.
99	unaware	when_attacking_the_pok??mon_ignores_the_target_pok??mon's_stat_changes.
100	sand_rush	boosts_the_pok??mon's_speed_stat_in_a_sandstorm.
101	healer	sometimes_heals_an_ally's_status_condition.
102	prankster	gives_priority_to_a_status_move.
103	reckless	powers_up_moves_that_have_recoil_damage.
104	sheer_force	removes_additional_effects_to_increase_the_power_of_moves_when_attacking.
105	wonder_skin	makes_status_moves_more_likely_to_miss.
106	mummy	contact_with_the_pok??mon_changes_the_attacker's_ability_to_mummy.
107	solid_rock	reduces_the_power_of_supereffective_attacks_taken.
108	defeatist	halves_the_pok??mon's_attack_and_sp._atk_stats_when_its_hp_becomes_half_or_less.
109	illusion	comes_out_disguised_as_the_pok??mon_in_the_party's_last_spot.
110	frisk	when_it_enters_a_battle_the_pok??mon_can_check_an_opposing_pok??mon's_held_item.
111	overcoat	protects_the_pok??mon_from_things_like_sand_hail_and_powder.
112	ice_body	the_pok??mon_gradually_regains_hp_in_a_hailstorm.
113	iron_barbs	inflicts_damage_on_the_attacker_upon_contact_with_iron_barbs.
114	telepathy	anticipates_an_ally's_attack_and_dodges_it.
115	iron_fist	powers_up_punching_moves.
116	defiant	boosts_the_pok??mon's_attack_stat_sharply_when_its_stats_are_lowered.
117	justified	being_hit_by_a_dark-type_move_boosts_the_attack_stat_of_the_pok??mon_for_justice.
118	turboblaze	moves_can_be_used_on_the_target_regardless_of_its_abilities.
119	teravolt	moves_can_be_used_on_the_target_regardless_of_its_abilities.
120	sand_force	boosts_the_power_of_rock-_ground-_and_steel-type_moves_in_a_sandstorm.
121	download	compares_an_opposing_pok??mon's_defense_and_sp._def_stats_before_raising_its_own_attack_or_sp._atk_stat???whichever_will_be_more_effective.
122	flower_veil	ally_grass-type_pok??mon_are_protected_from_status_conditions_and_the_lowering_of_their_stats.
123	sap_sipper	boosts_the_attack_stat_if_hit_by_a_grass-type_move_instead_of_taking_damage.
124	fur_coat	halves_the_damage_from_physical_moves.
125	stance_change	the_pok??mon_changes_its_form_to_blade_forme_when_it_uses_an_attack_move_and_changes_to_shield_forme_when_it_uses_king's_shield.
126	sweet_veil	prevents_itself_and_ally_pok??mon_from_falling_asleep.
127	tough_claws	powers_up_moves_that_make_direct_contact._
128	mega_launcher	powers_up_aura_and_pulse_moves._
129	dry_skin	restores_hp_in_rain_or_when_hit_by_water-type_moves._reduces_hp_in_harsh_sunlight_and_increases_the_damage_received_from_fire-type_moves.
130	strong_jaw	the_pok??mon's_strong_jaw_boosts_the_power_of_its_biting_moves.
131	refrigerate	normal-type_moves_become_ice-type_moves._the_power_of_those_moves_is_boosted_a_little.
132	cheek_pouch	restores_hp_as_well_when_the_pok??mon_eats_a_berry.
133	fairy_aura	powers_up_each_pok??mon's_fairy-type_moves.
134	dark_aura	powers_up_each_pok??mon's_dark-type_moves.
135	aura_break	the_effects_of_aura_abilities_are_reversed_to_lower_the_power_of_affected_moves.
136	magician	the_pok??mon_steals_the_held_item_of_a_pok??mon_it_hits_with_a_move.
137	stakeout	doubles_the_damage_dealt_to_the_target's_replacement_if_the_target_switches_out.
138	battery	powers_up_ally_pok??mon's_special_moves.
139	dancer	when_another_pok??mon_uses_a_dance_move_it_can_use_a_dance_move_following_it_regardless_of_its_speed.
140	schooling	when_it_has_a_lot_of_hp_the_pok??mon_forms_a_powerful_school._it_stops_schooling_when_its_hp_is_low.__doesn't_work_until_level_20.
141	merciless	the_pok??mon's_attacks_become_critical_hits_if_the_target_is_poisoned.
142	water_bubble	lowers_the_power_of_fire-type_moves_done_to_the_pok??mon_and_prevents_the_pok??mon_from_getting_a_burn.
143	corrosion	the_pok??mon_can_poison_the_target_even_if_it's_a_steel_or_poison_type.
144	fluffy	halves_the_damage_taken_from_moves_that_make_direct_contact_but_doubles_that_of_fire-type_moves.
145	receiver	the_pok??mon_copies_the_ability_of_a_defeated_ally.
146	wimp_out	the_pok??mon_cowardly_switches_out_when_its_hp_becomes_half_or_less.
147	emergency_exit	the_pok??mon_sensing_danger_switches_out_when_its_hp_becomes_half_or_less.
148	water_compaction	boosts_the_pok??mon's_defense_stat_sharply_when_hit_by_a_water-type_move.
149	innards_out	damages_the_attacker_landing_the_finishing_hit_by_the_amount_equal_to_its_last_hp.
150	rks_system	changes_the_pok??mon's_type_to_match_the_memory_disc_it_holds.
151	shields_down	when_its_hp_becomes_half_or_less_the_pok??mon's_shell_breaks_and_it_becomes_aggressive.
152	comatose	it's_always_drowsing_and_will_never_wake_up._it_can_attack_without_waking_up.
153	disguise	once_per_battle_the_shroud_that_covers_the_pok??mon_can_protect_it_from_an_attack.
154	dazzling	surprises_the_opposing_pok??mon_making_it_unable_to_attack_using_priority_moves.
155	berserk	boosts_the_pok??mon's_sp._atk_stat_when_it_takes_a_hit_that_causes_its_hp_to_become_half_or_less.
156	steelworker	powers_up_steel-type_moves.
157	bulletproof	protects_the_pok??mon_from_some_ball_and_bomb_moves.
158	electric_surge	turns_the_ground_into_electric_terrain_when_the_pok??mon_enters_a_battle.
159	psychic_surge	turns_the_ground_into_psychic_terrain_when_the_pok??mon_enters_a_battle.
160	grassy_surge	turns_the_ground_into_grassy_terrain_when_the_pok??mon_enters_a_battle.
161	misty_surge	turns_the_ground_into_misty_terrain_when_the_pok??mon_enters_a_battle.
162	full_metal_body	prevents_other_pok??mon's_moves_or_abilities_from_lowering_the_pok??mon's_stats.
163	shadow_shield	reduces_the_amount_of_damage_the_pok??mon_takes_while_its_hp_is_full.
164	beast_boost	the_pok??mon_boosts_its_most_proficient_stat_each_time_it_knocks_out_a_pok??mon.
165	prism_armor	reduces_the_power_of_supereffective_attacks_taken.
166	soul-heart	boosts_its_sp._atk_stat_every_time_a_pok??mon_faints.
167	tangled_feet	raises_evasiveness_if_the_pok??mon_is_confused.
168	weak_armor	physical_attacks_to_the_pok??mon_lower_its_defense_stat_but_sharply_raise_its_speed_stat.
169	power_spot	just_being_next_to_the_pok??mon_powers_up_moves.
170	light_metal	halves_the_pok??mon's_weight.
171	hunger_switch	the_pok??mon_changes_its_form_alternating_between_its_full_belly_mode_and_hangry_mode_after_the_end_of_each_turn.
172	intrepid_sword	boosts_the_pok??mon's_attack_stat_when_the_pok??mon_enters_a_battle.
173	dauntless_shield	boosts_the_pok??mon's_defense_stat_when_the_pok??mon_enters_a_battle.
174	wandering_spirit	the_pok??mon_exchanges_abilities_with_a_pok??mon_that_hits_it_with_a_move_that_makes_direct_contact.
175	ice_face	the_pok??mon's_ice_head_can_take_a_physical_attack_as_a_substitute_but_the_attack_also_changes_the_pok??mon's_appearance._the_ice_will_be_restored_when_it_hails.
176	cotton_down	when_the_pok??mon_is_hit_by_an_attack_it_scatters_cotton_fluff_around_and_lowers_the_speed_stat_of_all_pok??mon_except_itself.
177	ball_fetch	if_the_pok??mon_is_not_holding_an_item_it_will_fetch_the_poke_ball_from_the_first_failed_throw_of_the_battle.
178	steam_engine	boosts_the_pok??mon's_speed_stat_drastically_if_hit_by_a_fire-_or_water-type_move.
179	ripen	ripens_berries_and_doubles_their_effect.
180	sand_spit	the_pok??mon_creates_a_sandstorm_when_it's_hit_by_an_attack.
181	gulp_missile	when_the_pok??mon_uses_surf_or_dive_it_will_come_back_with_prey._when_it_takes_damage_it_will_spit_out_the_prey_to_attack.
182	transistor	powers_up_electric-type_moves.
183	dragon's_maw	powers_up_dragon-type_moves.
184	chilling_neigh	when_the_pok??mon_knocks_out_a_target_it_utters_a_chilling_neigh_which_boosts_its_attack_stat.
185	grim_neigh	when_the_pok??mon_knocks_out_a_target_it_utters_a_terrifying_neigh_which_boosts_its_special_attack_stat.
186	NULL	NULL
187	magic_bounce	reflects_status_moves_instead_of_getting_hit_by_them.
188	magic_guard	the_pok??mon_only_takes_damage_from_attacks.
189	competitive	boosts_the_sp._atk_stat_sharply_when_a_stat_is_lowered.
190	tinted_lens	the_pok??mon_can_use_not_very_effective_moves_to_deal_regular_damage.
191	arena_trap	prevents_opposing_pok??mon_from_fleeing.
192	cloud_nine	eliminates_the_effects_of_weather.
193	scrappy	the_pok??mon_can_hit_ghost-type_pok??mon_with_normal-_and_fighting-type_moves.
194	sniper	powers_up_moves_if_they_become_critical_hits_when_attacking.
195	filter	reduces_the_power_of_supereffective_attacks_taken.
196	anger_point	the_pok??mon_is_angered_when_it_takes_a_critical_hit_and_that_maxes_its_attack_stat.
197	huge_power	doubles_the_pok??mon's_attack_stat.
198	solar_power	boosts_the_sp._atk_stat_in_harsh_sunlight_but_hp_decreases_every_turn.
199	super_luck	the_pok??mon_is_so_lucky_that_the_critical-hit_ratios_of_its_moves_are_boosted.
200	quick_feet	boosts_the_speed_stat_if_the_pok??mon_has_a_status_condition.
201	rain_dish	the_pok??mon_gradually_regains_hp_in_rain._
202	poison_heal	restores_hp_if_the_pok??mon_is_poisoned_instead_of_losing_hp.
203	normalize	all_the_pok??mon's_moves_become_normal_type._the_power_of_those_moves_is_boosted_a_little.
204	stall	the_pok??mon_moves_after_all_other_pok??mon_do.
205	storm_drain	draws_in_all_water-type_moves._instead_of_being_hit_by_water-type_moves_it_boosts_its_sp._atk.
206	unburden	boosts_the_speed_stat_if_the_pok??mon's_held_item_is_used_or_lost.
207	klutz	the_pok??mon_can't_use_any_held_items.
208	heatproof	the_heatproof_body_of_the_pok??mon_halves_the_damage_from_fire-type_moves_that_hit_it.
209	regenerator	restores_a_little_hp_when_withdrawn_from_battle.
210	poison_touch	may_poison_a_target_when_the_pok??mon_makes_contact.
211	infiltrator	passes_through_the_opposing_pok??mon's_barrier_substitute_and_the_like_and_strikes.
212	moxie	the_pok??mon_shows_moxie_and_that_boosts_the_attack_stat_after_knocking_out_any_pok??mon.
213	cursed_body	may_disable_a_move_used_on_the_pok??mon.
214	slush_rush	boosts_the_pok??mon's_speed_stat_in_a_hailstorm.
215	contrary	makes_stat_changes_have_an_opposite_effect.
216	power_construct	other_cells_gather_to_aid_when_its_hp_becomes_half_or_less._then_the_pok??mon_changes_its_form_to_complete_forme.
217	skill_link	maximizes_the_number_of_times_multistrike_moves_hit.
218	stamina	boosts_the_defense_stat_when_hit_by_an_attack.
219	queenly_majesty	its_majesty_pressures_the_opposing_pok??mon_making_it_unable_to_attack_using_priority_moves.
220	triage	gives_priority_to_a_healing_move.
221	screen_cleaner	when_the_pok??mon_enters_a_battle_the_effects_of_light_screen_reflect_and_aurora_veil_are_nullified_for_both_opposing_and_ally_pok??mon.
222	heavy_metal	doubles_the_pok??mon's_weight.
223	imposter	the_pok??mon_transforms_itself_into_the_pok??mon_it's_facing.
224	analytic	boosts_move_power_when_the_pok??mon_moves_last.
225	friend_guard	reduces_damage_done_to_allies.
226	steely_spirit	powers_up_ally_pok??mon's_steel-type_moves.
227	harvest	may_create_another_berry_after_one_is_used.
228	multiscale	reduces_the_amount_of_damage_the_pok??mon_takes_while_its_hp_is_full.
229	pickpocket	steals_an_item_from_an_attacker_that_made_direct_contact.
230	moody	raises_one_stat_sharply_and_lowers_another_every_turn.
231	toxic_boost	powers_up_physical_attacks_when_the_pok??mon_is_poisoned.
232	protean	changes_the_pok??mon's_type_to_the_type_of_the_move_it's_about_to_use.
233	flare_boost	powers_up_special_attacks_when_the_pok??mon_is_burned.
234	symbiosis	the_pok??mon_passes_its_item_to_an_ally_that_has_used_up_an_item.
235	zen_mode	changes_the_pok??mon's_shape_when_hp_is_half_or_less.
236	gale_wings	gives_priority_to_flying-type_moves_when_the_pok??mon's_hp_is_full.
237	grass_pelt	boosts_the_pok??mon's_defense_stat_on_grassy_terrain.
238	aroma_veil	protects_itself_and_its_allies_from_attacks_that_limit_their_move_choices.
239	pixilate	normal-type_moves_become_fairy-type_moves._the_power_of_those_moves_is_boosted_a_little.
240	gooey	contact_with_the_pok??mon_lowers_the_attacker's_speed_stat.
241	long_reach	the_pok??mon_uses_its_moves_without_making_contact_with_the_target.
242	liquid_voice	all_sound-based_moves_become_water-type_moves.
243	perish_body	when_hit_by_a_move_that_makes_direct_contact_the_pok??mon_and_the_attacker_will_faint_after_three_turns_unless_they_switch_out_of_battle.
244	stalwart	ignores_the_effects_of_opposing_pok??mon's_abilities_and_moves_that_draw_in_moves.
245	libero	changes_the_pok??mon's_type_to_the_type_of_the_move_it's_about_to_use.
246	mirror_armor	bounces_back_only_the_stat-lowering_effects_that_the_pok??mon_receives.
247	ice_scales	the_pok??mon_is_protected_by_ice_scales_which_halve_the_damage_taken_from_special_moves.
248	propeller_tail	ignores_the_effects_of_opposing_pok??mon's_abilities_and_moves_that_draw_in_moves.
\.


--
-- Data for Name: egg_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.egg_groups (id, egg_group) FROM stdin;
0	amorphous
1	bug
2	ditto
3	dragon
4	fairy
5	field
6	flying
7	grass
8	human-like
9	mineral
10	monster
11	undiscovered
12	water_1
13	water_2
14	water_3
15	NULL
\.


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.games (id, game) FROM stdin;
0	black_/_white
1	diamond_/_pearl
2	gold_/_silver_/_crystal
3	let's_go_pikachu_/_let's_go_eevee
4	red_/_blue_/_yellow
5	ruby_/_sapphire
6	sun_/_moon
7	sword_/_shield
8	ultra_sun_/_ultra_moon
9	x_/_y
\.


--
-- Data for Name: legendaries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.legendaries (id, legendary_status) FROM stdin;
0	NULL
1	legendary
2	mythical
3	sub-legendary
\.


--
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pokemon (id, pokedex_number, pokemon_name, is_legendary, type1_id, type2_id, ability1_id, ability2_id, hidden_ability, health, attack, defense, special_attack, special_defense, speed, region_id, catch_rate, male_percent, game_id, egg_group1_id, egg_group2_id) FROM stdin;
0	1	bulbasaur	0	10	14	0	186	23	45	49	49	65	0	45	5	45	87.5	4	10	7
1	2	ivysaur	0	10	14	0	186	23	60	62	63	80	0	60	5	45	87.5	4	10	7
2	3	venusaur	0	10	14	0	186	23	80	82	83	100	0	80	5	45	87.5	4	10	7
3	4	charmander	0	7	0	1	186	198	39	52	43	50	0	65	5	45	87.5	4	10	3
4	5	charmeleon	0	7	0	1	186	198	58	64	58	65	0	80	5	45	87.5	4	10	3
5	6	charizard	0	7	8	1	186	198	78	84	78	85	0	100	5	45	87.5	4	10	3
6	7	squirtle	0	18	0	2	186	201	44	48	65	50	0	43	5	45	87.5	4	10	12
7	8	wartortle	0	18	0	2	186	201	59	63	80	65	0	58	5	45	87.5	4	10	12
8	9	blastoise	0	18	0	2	186	201	79	83	100	85	0	78	5	45	87.5	4	10	12
9	848	toxel	0	4	14	3	29	207	40	38	35	54	35	40	1	75	50.0	7	11	15
10	849	toxtricity	0	4	14	4	63	83	75	98	70	114	70	75	1	45	50.0	7	8	15
11	30	nidorina	0	14	0	5	6	49	70	62	67	55	0	56	5	120	0.0	4	11	15
12	31	nidoqueen	0	14	11	5	6	104	90	92	87	75	85	76	5	45	0.0	4	11	15
13	392	infernape	0	7	6	1	186	115	76	104	71	104	71	108	6	45	87.5	1	5	8
14	403	shinx	0	4	0	6	28	55	45	65	34	40	34	45	6	235	50.0	1	5	15
15	404	luxio	0	4	0	6	28	55	60	85	49	60	49	60	6	120	50.0	1	5	15
16	405	luxray	0	4	0	6	28	55	80	120	79	95	79	70	6	45	50.0	1	5	15
17	11	metapod	0	1	0	7	186	186	50	20	55	25	0	30	5	120	50.0	4	1	15
18	12	butterfree	0	1	8	8	186	190	60	45	50	90	80	70	5	45	50.0	4	1	15
19	679	honedge	0	17	9	9	186	186	45	80	100	35	37	28	4	180	50.0	9	9	15
20	680	doublade	0	17	9	9	186	186	59	110	150	45	49	35	4	90	50.0	9	9	15
21	15	beedrill	0	1	14	10	186	194	65	90	40	45	80	75	5	45	50.0	4	1	15
22	132	ditto	0	13	0	11	186	223	48	48	48	48	0	48	5	35	0.0	4	2	15
23	14	kakuna	0	1	14	7	186	186	45	25	50	25	0	35	5	120	50.0	4	1	15
24	13	weedle	0	1	14	12	186	27	40	35	30	20	0	50	5	255	50.0	4	1	15
25	10	caterpie	0	1	0	12	186	27	45	30	35	20	0	45	5	255	50.0	4	1	15
26	29	nidoran_f	0	14	0	5	6	49	55	47	52	40	0	41	5	235	0.0	4	10	5
27	390	chimchar	0	7	0	1	186	115	44	58	44	58	44	61	6	45	87.5	1	5	8
28	391	monferno	0	7	6	1	186	115	64	78	52	78	52	81	6	45	87.5	1	5	8
29	489	phione	2	18	0	13	186	186	80	80	80	80	80	80	6	30	0.0	1	12	4
30	490	manaphy	2	18	0	13	186	186	100	100	100	100	100	100	6	3	0.0	1	12	4
31	891	kubfu	3	6	0	14	186	186	60	90	60	53	50	72	1	3	87.5	7	11	15
32	892	urshifu	3	6	2	15	186	186	100	130	100	63	60	97	1	3	87.5	7	11	15
33	898	calyrex	1	15	10	16	186	186	100	80	80	80	80	80	1	3	0.0	7	11	15
34	151	mew	2	15	0	17	186	186	100	100	100	100	0	100	5	45	0.0	4	11	15
35	150	mewtwo	1	15	0	18	186	16	106	110	90	154	0	130	5	3	0.0	4	11	15
36	81	magnemite	0	4	17	19	51	224	25	35	70	95	0	45	5	190	0.0	4	9	15
37	100	voltorb	0	4	0	20	29	84	40	30	50	55	0	100	5	190	0.0	4	9	15
38	32	nidoran_m	0	14	0	5	6	49	46	57	40	40	0	50	5	235	100.0	4	10	5
39	33	nidorino	0	14	0	5	6	49	61	72	57	55	0	65	5	120	100.0	4	10	5
40	34	nidoking	0	14	11	5	6	104	81	102	77	85	75	85	5	45	100.0	4	10	5
41	173	cleffa	0	5	0	21	187	225	50	25	28	45	55	15	3	150	25.0	2	11	15
42	35	clefairy	0	5	0	21	188	225	70	45	48	60	0	35	5	150	25.0	4	4	15
43	36	clefable	0	5	0	21	188	99	95	70	73	95	90	60	5	25	25.0	4	4	15
44	37	vulpix	0	7	0	22	186	75	38	41	40	65	0	65	5	190	25.0	4	5	15
45	38	ninetales	0	7	0	22	186	75	73	76	75	100	0	100	5	75	25.0	4	5	15
46	174	igglybuff	0	13	5	21	189	225	90	30	15	40	20	15	3	170	25.0	2	11	15
47	39	jigglypuff	0	13	5	21	189	225	115	45	20	25	0	20	5	170	25.0	4	4	15
48	40	wigglytuff	0	13	5	21	189	110	140	70	45	85	50	45	5	50	25.0	4	4	15
49	41	zubat	0	14	8	14	186	211	40	45	35	40	0	55	5	255	50.0	4	6	15
50	42	golbat	0	14	8	14	186	211	75	80	70	75	0	95	5	90	50.0	4	6	15
51	169	crobat	0	14	8	14	186	211	85	90	80	70	80	130	3	90	50.0	2	6	15
52	43	oddish	0	10	14	23	186	27	45	50	55	75	0	30	5	255	50.0	4	7	15
53	44	gloom	0	10	14	23	186	85	60	65	70	85	0	40	5	120	50.0	4	7	15
54	45	vileplume	0	10	14	23	186	24	75	80	85	110	90	50	5	45	50.0	4	7	15
55	182	bellossom	0	10	0	23	186	101	75	80	95	90	100	50	3	45	50.0	2	7	15
56	46	paras	0	1	10	24	129	32	35	70	55	55	0	25	5	190	50.0	4	1	7
57	47	parasect	0	1	10	24	129	32	60	95	80	80	0	30	5	75	50.0	4	1	7
58	48	venonat	0	1	14	8	190	27	60	55	50	40	0	45	5	190	50.0	4	1	15
59	49	venomoth	0	1	14	12	190	105	70	65	60	90	0	90	5	75	50.0	4	1	15
60	50	diglett	0	11	0	25	191	120	10	55	25	45	0	95	5	255	50.0	4	5	15
61	51	dugtrio	0	11	0	25	191	120	35	100	50	50	70	120	5	50	50.0	4	5	15
62	16	pidgey	0	13	8	26	167	98	40	45	40	35	0	56	5	255	50.0	4	6	15
63	17	pidgeotto	0	13	8	26	167	98	63	60	55	50	0	71	5	120	50.0	4	6	15
64	18	pidgeot	0	13	8	26	167	98	83	80	75	70	70	101	5	45	50.0	4	6	15
65	19	rattata	0	13	0	27	55	49	30	56	35	25	0	72	5	255	50.0	4	5	15
66	20	raticate	0	13	0	27	55	49	55	81	60	50	0	97	5	127	50.0	4	5	15
67	21	spearow	0	13	8	26	186	194	40	60	30	31	0	70	5	255	50.0	4	6	15
68	22	fearow	0	13	8	26	186	194	65	90	65	61	0	100	5	90	50.0	4	6	15
69	23	ekans	0	14	0	28	7	16	35	60	44	40	0	55	5	255	50.0	4	5	3
70	24	arbok	0	14	0	28	7	16	60	95	69	65	79	80	5	90	50.0	4	5	3
71	172	pichu	0	4	0	29	186	36	20	40	15	35	35	60	3	190	50.0	2	11	15
72	25	pikachu	0	4	0	29	186	36	35	55	40	50	0	90	5	190	50.0	4	5	4
73	26	raichu	0	4	0	29	186	36	60	90	55	90	80	110	5	75	50.0	4	5	4
74	27	sandshrew	0	11	0	25	186	100	50	75	85	30	0	40	5	255	50.0	4	5	15
75	28	sandslash	0	11	0	25	186	100	75	100	110	55	0	65	5	90	50.0	4	5	15
76	52	meowth	0	13	0	30	83	16	40	45	35	40	0	90	5	255	50.0	4	5	15
77	863	perrserker	0	17	0	31	127	226	70	110	100	50	60	50	1	90	50.0	7	5	15
78	53	persian	0	13	0	11	83	16	65	70	60	65	0	115	5	90	50.0	4	5	15
79	54	psyduck	0	18	0	32	192	39	50	52	48	50	0	55	5	190	50.0	4	12	5
80	101	electrode	0	4	0	20	29	84	60	50	70	80	80	150	5	60	0.0	4	9	15
81	102	exeggcute	0	10	15	23	186	227	60	40	80	60	0	40	5	90	50.0	4	7	15
82	103	exeggutor	0	10	15	23	186	227	95	95	85	125	75	55	5	45	50.0	4	7	15
83	104	cubone	0	11	0	33	36	31	50	50	95	40	0	35	5	190	50.0	4	10	15
84	105	marowak	0	11	0	33	36	31	60	80	110	50	0	45	5	75	50.0	4	10	15
85	106	hitmonlee	0	6	0	11	103	206	50	120	53	35	0	87	5	45	100.0	4	8	15
86	107	hitmonchan	0	6	0	26	115	14	50	105	79	35	0	76	5	45	100.0	4	8	15
87	108	lickitung	0	13	0	34	41	192	90	55	75	60	0	30	5	45	50.0	4	10	15
88	109	koffing	0	14	0	35	186	186	40	65	95	60	0	35	5	190	50.0	4	0	15
89	110	weezing	0	14	0	35	186	186	65	90	120	85	0	60	5	60	50.0	4	0	15
90	111	rhyhorn	0	11	16	36	33	103	80	85	95	30	0	25	5	120	50.0	4	10	5
91	112	rhydon	0	11	16	36	33	103	105	130	120	45	0	40	5	60	50.0	4	10	5
92	113	chansey	0	13	0	37	54	101	250	5	5	105	0	50	5	30	0.0	4	4	15
93	114	tangela	0	10	0	23	89	209	65	55	115	100	0	60	5	45	50.0	4	7	15
94	115	kangaskhan	0	13	0	38	193	14	105	95	80	40	0	90	5	45	0.0	4	10	15
95	116	horsea	0	18	0	39	194	32	30	40	70	70	0	60	5	225	50.0	4	12	3
96	117	seadra	0	18	0	5	194	32	55	65	95	95	0	85	5	75	50.0	4	12	3
97	118	goldeen	0	18	0	39	67	36	45	67	60	50	0	63	5	225	50.0	4	13	15
98	119	seaking	0	18	0	39	67	36	80	92	65	80	0	68	5	60	50.0	4	13	15
99	120	staryu	0	18	0	40	37	224	30	45	55	70	0	85	5	225	0.0	4	14	15
100	121	starmie	0	18	15	40	37	224	60	75	85	100	0	115	5	60	0.0	4	14	15
101	122	mr._mime	0	15	5	20	195	83	40	45	65	100	0	90	5	45	50.0	4	8	15
102	123	scyther	0	1	8	10	83	86	70	110	80	55	0	105	5	45	50.0	4	1	15
103	124	jynx	0	12	15	41	97	129	65	50	35	95	0	95	5	45	0.0	4	8	15
104	125	electabuzz	0	4	0	29	186	58	65	83	57	85	0	105	5	45	75.0	4	8	15
105	126	magmar	0	7	0	42	186	58	65	95	57	85	0	93	5	45	75.0	4	8	15
106	127	pinsir	0	1	0	43	78	212	65	125	100	55	0	85	5	45	50.0	4	1	15
107	128	tauros	0	13	0	28	196	104	75	100	95	70	0	110	5	45	100.0	4	5	15
108	129	magikarp	0	18	0	39	186	3	20	10	55	20	0	80	5	255	50.0	4	13	3
109	130	gyarados	0	18	8	28	186	212	95	125	79	100	0	81	5	45	50.0	4	13	3
110	131	lapras	0	18	12	44	72	13	130	85	80	95	0	60	5	45	50.0	4	10	12
111	133	eevee	0	13	0	27	91	79	55	55	50	65	0	55	5	45	87.5	4	5	15
112	134	vaporeon	0	18	0	44	186	13	130	65	60	110	0	65	5	45	87.5	4	5	15
113	135	jolteon	0	4	0	45	186	200	65	65	60	110	0	130	5	45	87.5	4	5	15
114	136	flareon	0	7	0	22	186	55	65	130	60	110	0	65	5	45	87.5	4	5	15
115	137	porygon	0	13	0	46	121	224	65	60	70	75	0	40	5	45	0.0	4	9	15
116	138	omanyte	0	16	18	39	72	168	35	40	100	90	0	35	5	45	87.5	4	12	14
117	139	omastar	0	16	18	39	72	168	70	60	125	115	0	55	5	45	87.5	4	12	14
118	140	kabuto	0	16	18	39	31	168	30	80	90	45	0	55	5	45	87.5	4	12	14
119	141	kabutops	0	16	18	39	31	168	60	115	105	70	0	80	5	45	87.5	4	12	14
120	142	aerodactyl	0	16	8	33	18	16	80	105	65	60	0	130	5	45	87.5	4	6	15
121	143	snorlax	0	13	0	47	50	96	160	110	65	65	0	30	5	25	87.5	4	10	15
122	144	articuno	3	12	8	18	186	90	90	85	100	125	0	85	5	3	0.0	4	11	15
123	145	zapdos	3	4	8	18	186	29	90	90	85	125	0	100	5	3	0.0	4	11	15
124	146	moltres	3	7	8	18	186	42	90	100	90	125	0	90	5	3	0.0	4	11	15
125	147	dratini	0	3	0	7	186	69	41	64	45	50	0	50	5	45	50.0	4	12	3
126	148	dragonair	0	3	0	7	186	69	61	84	65	70	0	70	5	45	50.0	4	12	3
127	149	dragonite	0	3	8	14	186	228	91	134	95	100	0	80	5	45	50.0	4	12	3
128	152	chikorita	0	10	0	0	186	89	45	49	65	49	65	45	3	45	87.5	2	10	7
129	153	bayleef	0	10	0	0	186	89	60	62	80	63	80	60	3	45	87.5	2	10	7
130	154	meganium	0	10	0	0	186	89	80	82	100	83	100	80	3	45	87.5	2	10	7
131	155	cyndaquil	0	7	0	1	186	22	39	52	43	60	50	65	3	45	87.5	2	5	15
132	156	quilava	0	7	0	1	186	22	58	64	58	80	65	80	3	45	87.5	2	5	15
133	157	typhlosion	0	7	0	1	186	22	78	84	78	109	85	100	3	45	87.5	2	5	15
134	158	totodile	0	18	0	2	186	104	50	65	64	44	48	43	3	45	87.5	2	10	12
135	159	croconaw	0	18	0	2	186	104	65	80	80	59	63	58	3	45	87.5	2	10	12
136	160	feraligatr	0	18	0	2	186	104	85	105	100	79	83	78	3	45	87.5	2	10	12
137	161	sentret	0	13	0	27	26	110	35	46	34	35	45	20	3	255	50.0	2	5	15
138	162	furret	0	13	0	27	26	110	85	76	64	45	55	90	3	90	50.0	2	5	15
139	163	hoothoot	0	13	8	48	26	190	60	30	30	36	56	50	3	255	50.0	2	6	15
140	164	noctowl	0	13	8	48	26	190	100	50	50	86	96	70	3	90	50.0	2	6	15
141	165	ledyba	0	1	8	10	38	3	40	20	30	40	80	55	3	255	50.0	2	1	15
142	166	ledian	0	1	8	10	38	115	55	35	50	55	110	85	3	90	50.0	2	1	15
143	167	spinarak	0	1	14	10	48	194	40	60	40	40	40	30	3	255	50.0	2	1	15
144	168	ariados	0	1	14	10	48	194	70	90	70	60	70	40	3	90	50.0	2	1	15
145	170	chinchou	0	18	4	45	40	44	75	38	38	56	56	67	3	190	50.0	2	13	15
146	171	lanturn	0	18	4	45	40	44	125	58	58	76	76	67	3	75	50.0	2	13	15
147	175	togepi	0	5	0	49	54	199	35	20	65	40	65	20	3	190	87.5	2	11	15
148	176	togetic	0	5	8	49	54	199	55	40	85	80	105	40	3	75	87.5	2	6	4
149	177	natu	0	15	8	17	38	187	40	50	45	70	45	70	3	190	50.0	2	6	15
150	178	xatu	0	15	8	17	38	187	65	75	70	95	70	95	3	75	50.0	2	6	15
151	179	mareep	0	4	0	29	186	63	55	40	40	65	45	35	3	235	50.0	2	10	5
152	180	flaaffy	0	4	0	29	186	63	70	55	55	80	60	45	3	120	50.0	2	10	5
153	181	ampharos	0	4	0	29	186	63	90	75	85	115	90	55	3	45	50.0	2	10	5
154	183	marill	0	18	5	50	197	123	70	20	50	20	50	40	3	190	50.0	2	12	4
155	184	azumarill	0	18	5	50	197	123	100	50	80	60	80	50	3	75	50.0	2	12	4
156	185	sudowoodo	0	16	0	51	33	3	70	110	115	30	65	30	3	65	50.0	2	9	15
157	186	politoed	0	18	0	44	32	74	90	75	75	90	100	70	3	45	50.0	2	12	15
158	187	hoppip	0	10	8	23	89	211	35	35	40	35	55	50	3	255	50.0	2	4	7
159	188	skiploom	0	10	8	23	89	211	55	45	50	45	65	80	3	120	50.0	2	4	7
160	189	jumpluff	0	10	8	23	89	211	75	55	70	55	95	110	3	45	50.0	2	4	7
161	190	aipom	0	13	0	27	30	217	55	70	55	40	55	85	3	45	50.0	2	5	15
162	191	sunkern	0	10	0	23	198	38	30	30	30	30	30	30	3	235	50.0	2	7	15
163	192	sunflora	0	10	0	23	198	38	75	75	55	105	85	30	3	120	50.0	2	7	15
164	193	yanma	0	1	8	52	8	110	65	65	45	75	45	95	3	75	50.0	2	1	15
165	194	wooper	0	18	11	32	44	99	55	45	45	25	25	15	3	255	50.0	2	12	5
166	195	quagsire	0	18	11	32	44	99	95	85	85	65	65	35	3	90	50.0	2	12	5
167	196	espeon	0	15	0	17	186	187	65	65	60	130	95	110	3	45	87.5	2	5	15
168	197	umbreon	0	2	0	17	186	14	95	65	110	60	130	65	3	45	87.5	2	5	15
169	198	murkrow	0	2	8	48	199	102	60	85	42	85	42	91	3	30	50.0	2	6	15
170	199	slowking	0	18	15	41	34	209	95	75	80	100	110	30	3	70	50.0	2	10	12
171	200	misdreavus	0	9	0	35	186	186	60	60	60	85	85	85	3	45	50.0	2	0	15
172	201	unown	0	15	0	35	186	186	48	72	48	72	48	48	3	225	0.0	2	11	15
173	202	wobbuffet	0	15	0	53	186	114	190	33	58	33	58	33	3	45	50.0	2	0	15
174	203	girafarig	0	13	15	14	38	123	70	80	65	90	65	85	3	60	50.0	2	5	15
175	204	pineco	0	1	0	51	186	111	50	65	90	35	35	15	3	190	50.0	2	1	15
176	205	forretress	0	1	17	51	186	111	75	90	140	60	60	40	3	75	50.0	2	1	15
177	206	dunsparce	0	13	0	54	27	3	100	70	70	65	65	45	3	190	50.0	2	5	15
178	207	gligar	0	11	8	43	25	47	65	75	105	35	65	85	3	60	50.0	2	1	15
179	208	steelix	0	17	11	33	51	104	75	85	200	55	65	30	3	25	50.0	2	9	15
180	209	snubbull	0	5	0	28	27	3	60	80	50	40	40	30	3	190	25.0	2	5	4
181	210	granbull	0	5	0	28	200	3	90	120	75	60	60	45	3	75	25.0	2	5	4
182	211	qwilfish	0	18	14	5	39	28	65	95	85	55	55	85	3	45	50.0	2	13	15
183	212	scizor	0	1	17	10	83	170	70	130	100	55	80	65	3	25	50.0	2	1	15
184	213	shuckle	0	1	16	51	96	215	20	10	230	10	230	5	3	190	50.0	2	1	15
185	214	heracross	0	1	6	10	55	212	80	125	75	40	95	85	3	45	50.0	2	1	15
186	215	sneasel	0	2	12	14	26	229	55	95	55	35	75	115	3	60	50.0	2	5	15
187	216	teddiursa	0	13	0	30	200	80	60	80	50	50	50	40	3	120	50.0	2	5	15
188	217	ursaring	0	13	0	55	200	16	90	130	75	75	75	55	3	60	50.0	2	5	15
189	218	slugma	0	7	0	56	42	168	40	40	40	70	40	20	3	190	50.0	2	0	15
190	219	magcargo	0	7	16	56	42	168	60	50	120	90	80	30	3	75	50.0	2	0	15
191	220	swinub	0	12	11	41	90	50	50	50	40	30	30	50	3	225	50.0	2	5	15
192	221	piloswine	0	12	11	41	90	50	100	100	80	60	60	50	3	75	50.0	2	5	15
193	222	corsola	0	18	16	49	37	209	65	55	95	65	95	35	3	60	25.0	2	12	14
194	223	remoraid	0	18	0	49	194	230	35	65	35	65	35	65	3	190	50.0	2	12	13
195	224	octillery	0	18	0	57	194	230	75	105	75	105	75	45	3	75	50.0	2	12	13
196	225	delibird	0	12	8	58	186	48	45	55	45	65	45	75	3	45	50.0	2	12	5
197	226	mantine	0	18	8	39	44	67	85	40	70	80	140	70	3	25	50.0	2	12	15
198	227	skarmory	0	17	8	26	51	168	65	80	140	40	70	70	3	25	50.0	2	6	15
199	228	houndour	0	2	7	38	22	16	45	60	30	80	50	65	3	120	50.0	2	5	15
200	229	houndoom	0	2	7	38	22	16	75	90	50	110	80	95	3	45	50.0	2	5	15
201	230	kingdra	0	18	3	39	194	32	75	95	95	95	95	85	3	45	50.0	2	12	3
202	231	phanpy	0	11	0	30	186	25	90	60	60	40	40	40	3	120	50.0	2	5	15
203	232	donphan	0	11	0	51	186	25	90	120	120	60	60	50	3	60	50.0	2	5	15
204	233	porygon2	0	13	0	46	121	224	85	80	90	105	95	60	3	45	0.0	2	9	15
205	234	stantler	0	13	0	28	110	123	73	95	62	85	65	85	3	45	50.0	2	5	15
206	235	smeargle	0	13	0	34	83	230	55	20	35	20	45	75	3	45	50.0	2	5	15
207	236	tyrogue	0	6	0	55	86	58	35	35	35	35	35	35	3	75	100.0	2	11	15
208	237	hitmontop	0	6	0	28	83	86	50	95	95	35	110	70	3	45	100.0	2	8	15
209	238	smoochum	0	12	15	41	97	13	45	30	15	85	65	65	3	45	0.0	2	11	15
210	239	elekid	0	4	0	29	186	58	45	63	37	65	55	95	3	45	75.0	2	11	15
211	240	magby	0	7	0	42	186	58	45	75	37	70	55	83	3	45	75.0	2	11	15
212	241	miltank	0	13	0	50	193	123	95	80	105	40	70	100	3	45	0.0	2	5	15
213	242	blissey	0	13	0	37	54	101	255	10	10	75	135	55	3	30	0.0	2	4	15
214	243	raikou	3	4	0	18	186	186	90	85	75	115	100	115	3	3	0.0	2	11	15
215	244	entei	3	7	0	18	186	14	115	115	85	90	75	100	3	3	0.0	2	11	15
216	245	suicune	3	18	0	18	186	14	100	75	115	90	115	85	3	3	0.0	2	11	15
217	246	larvitar	0	16	11	55	186	25	50	64	50	45	50	41	3	45	50.0	2	10	15
218	247	pupitar	0	16	11	7	186	186	70	84	70	65	70	51	3	45	50.0	2	10	15
219	248	tyranitar	0	16	2	59	186	16	100	134	110	95	100	61	3	45	50.0	2	10	15
220	249	lugia	1	15	8	18	186	228	106	90	130	90	154	110	3	3	0.0	2	11	15
221	250	ho-oh	1	7	8	18	186	209	106	130	90	110	154	90	3	3	0.0	2	11	15
222	251	celebi	2	15	10	37	186	186	100	100	100	100	100	100	3	45	0.0	2	11	15
223	252	treecko	0	10	0	0	186	206	40	45	35	65	55	70	2	45	87.5	5	10	3
224	253	grovyle	0	10	0	0	186	206	50	65	45	85	65	95	2	45	87.5	5	10	3
225	254	sceptile	0	10	0	0	186	206	70	85	65	105	85	120	2	45	87.5	5	10	3
226	255	torchic	0	7	0	1	186	52	45	60	40	70	50	45	2	45	87.5	5	5	15
227	256	combusken	0	7	6	1	186	52	60	85	60	85	60	55	2	45	87.5	5	5	15
228	257	blaziken	0	7	6	1	186	52	80	120	70	110	70	80	2	45	87.5	5	5	15
229	258	mudkip	0	18	0	2	186	32	50	70	50	50	50	40	2	45	87.5	5	10	12
230	259	marshtomp	0	18	11	2	186	32	70	85	70	60	70	50	2	45	87.5	5	10	12
231	260	swampert	0	18	11	2	186	32	100	110	90	85	90	60	2	45	87.5	5	10	12
232	261	poochyena	0	2	0	27	200	3	35	55	35	30	30	35	2	255	50.0	5	5	15
233	262	mightyena	0	2	0	28	200	212	70	90	70	60	60	70	2	127	50.0	5	5	15
234	263	zigzagoon	0	13	0	30	96	200	38	30	41	30	41	60	2	255	50.0	5	5	15
235	264	linoone	0	13	0	30	96	200	78	70	61	50	61	100	2	90	50.0	5	5	15
236	265	wurmple	0	1	0	12	186	27	45	45	35	20	30	20	2	255	50.0	5	1	15
237	266	silcoon	0	1	0	7	186	186	50	35	55	25	25	15	2	120	50.0	5	1	15
238	267	beautifly	0	1	8	10	186	6	60	70	50	100	50	65	2	45	50.0	5	1	15
239	268	cascoon	0	1	0	7	186	186	50	35	55	25	25	15	2	120	50.0	5	1	15
240	269	dustox	0	1	14	12	186	8	60	50	70	50	90	65	2	45	50.0	5	1	15
241	270	lotad	0	18	10	39	201	34	40	30	30	40	50	30	2	255	50.0	5	12	7
242	271	lombre	0	18	10	39	201	34	60	50	50	60	70	50	2	120	50.0	5	12	7
243	272	ludicolo	0	18	10	39	201	34	80	70	70	90	100	70	2	45	50.0	5	12	7
244	273	seedot	0	10	0	23	38	229	40	40	50	30	30	30	2	255	50.0	5	5	7
245	274	nuzleaf	0	10	2	23	38	229	70	70	40	60	40	60	2	120	50.0	5	5	7
246	275	shiftry	0	10	2	23	38	229	90	100	60	90	60	80	2	45	50.0	5	4	7
247	276	taillow	0	13	8	55	186	193	40	55	30	30	30	85	2	200	50.0	5	6	15
248	277	swellow	0	13	8	55	186	193	60	85	60	75	50	125	2	45	50.0	5	6	15
249	278	wingull	0	18	8	26	13	201	40	30	30	55	30	85	2	190	50.0	5	12	6
250	279	pelipper	0	18	8	26	74	201	60	50	100	95	70	65	2	45	50.0	5	12	6
251	280	ralts	0	15	5	17	46	114	28	25	25	45	35	40	2	235	50.0	5	8	0
252	281	kirlia	0	15	5	17	46	114	38	35	35	65	55	50	2	120	50.0	5	8	0
253	282	gardevoir	0	15	5	17	46	114	68	65	65	125	115	80	2	45	50.0	5	8	0
254	283	surskit	0	1	18	39	186	201	40	30	32	50	52	65	2	200	50.0	5	12	1
255	284	masquerain	0	1	8	28	186	16	70	60	62	100	82	80	2	75	50.0	5	12	1
256	285	shroomish	0	10	0	24	202	200	60	40	60	40	60	35	2	255	50.0	5	4	7
257	286	breloom	0	10	6	24	202	83	60	130	80	60	60	70	2	90	50.0	5	4	7
258	287	slakoth	0	13	0	60	186	186	60	60	60	35	35	30	2	255	50.0	5	5	15
259	288	vigoroth	0	13	0	58	186	186	80	80	80	55	55	90	2	120	50.0	5	5	15
260	289	slaking	0	13	0	60	186	186	150	160	100	95	65	100	2	45	50.0	5	5	15
261	290	nincada	0	1	11	8	186	27	31	45	90	30	30	40	2	255	50.0	5	1	15
262	291	ninjask	0	1	8	52	186	211	61	90	45	50	50	160	2	120	50.0	5	1	15
263	292	shedinja	0	1	9	61	186	186	1	90	45	30	30	40	2	45	0.0	5	9	15
264	293	whismur	0	13	0	20	186	3	64	51	23	51	23	28	2	190	50.0	5	10	5
265	294	loudred	0	13	0	20	186	193	84	71	43	71	43	48	2	120	50.0	5	10	5
266	295	exploud	0	13	0	20	186	193	104	91	63	91	73	68	2	45	50.0	5	10	5
267	296	makuhita	0	6	0	50	55	104	72	60	30	20	30	25	2	180	75.0	5	8	15
268	297	hariyama	0	6	0	50	55	104	144	120	60	40	60	50	2	200	75.0	5	8	15
269	298	azurill	0	13	5	50	197	123	50	20	40	20	40	20	2	150	25.0	5	11	15
270	299	nosepass	0	16	0	51	19	120	30	45	135	45	90	30	2	255	50.0	5	9	15
271	300	skitty	0	13	0	21	203	105	50	45	45	35	35	50	2	255	25.0	5	5	4
272	301	delcatty	0	13	0	21	203	105	70	65	65	55	55	90	2	60	25.0	5	5	4
273	302	sableye	0	2	9	26	204	102	50	75	75	65	65	50	2	45	50.0	5	8	15
274	303	mawile	0	17	5	43	28	104	50	85	85	55	55	50	2	45	50.0	5	5	4
275	304	aron	0	17	16	51	33	222	50	70	100	40	40	30	2	180	50.0	5	10	15
276	305	lairon	0	17	16	51	33	222	60	90	140	50	50	40	2	90	50.0	5	10	15
277	306	aggron	0	17	16	51	33	222	70	110	180	60	60	50	2	45	50.0	5	10	15
278	307	meditite	0	6	15	62	186	114	30	40	55	40	55	60	2	180	50.0	5	8	15
279	308	medicham	0	6	15	62	186	114	60	60	75	60	75	80	2	90	50.0	5	8	15
280	309	electrike	0	4	0	29	36	64	40	45	40	65	40	65	2	120	50.0	5	5	15
281	310	manectric	0	4	0	29	36	64	70	75	60	105	60	105	2	45	50.0	5	5	15
282	311	plusle	0	4	0	63	186	36	60	50	40	85	75	95	2	200	50.0	5	4	15
283	312	minun	0	4	0	64	186	45	60	40	50	75	85	95	2	200	50.0	5	4	15
284	313	volbeat	0	1	0	40	10	102	65	73	75	47	85	85	2	150	100.0	5	1	8
285	314	illumise	0	1	0	41	190	102	65	47	75	73	85	85	2	150	0.0	5	1	8
286	315	roselia	0	10	14	37	5	89	50	60	45	100	80	65	2	150	50.0	5	4	7
287	316	gulpin	0	14	0	65	82	96	70	43	53	43	53	40	2	225	50.0	5	0	15
288	317	swalot	0	14	0	65	82	96	100	73	83	73	83	55	2	75	50.0	5	0	15
289	318	carvanha	0	18	2	66	186	52	45	90	20	65	20	65	2	225	50.0	5	13	15
290	319	sharpedo	0	18	2	66	186	52	70	120	40	95	40	95	2	60	50.0	5	13	15
291	320	wailmer	0	18	0	67	41	18	130	70	35	70	35	60	2	125	50.0	5	5	13
292	321	wailord	0	18	0	67	41	18	170	90	45	90	45	60	2	60	50.0	5	5	13
293	322	numel	0	7	11	41	77	34	60	60	40	65	45	35	2	255	50.0	5	5	15
294	323	camerupt	0	7	11	56	107	196	70	100	70	105	75	40	2	150	50.0	5	5	15
295	324	torkoal	0	7	0	68	75	72	70	85	140	85	70	20	2	90	50.0	5	5	15
296	325	spoink	0	15	0	50	34	96	60	25	35	70	80	60	2	255	50.0	5	5	15
297	326	grumpig	0	15	0	50	34	96	80	45	65	90	110	80	2	60	50.0	5	5	15
298	327	spinda	0	13	0	34	167	215	60	60	60	60	60	60	2	255	50.0	5	5	8
299	328	trapinch	0	11	0	43	191	104	45	100	45	45	45	10	2	255	50.0	5	1	3
300	329	vibrava	0	11	3	35	186	186	50	70	50	50	50	70	2	120	50.0	5	1	3
301	330	flygon	0	11	3	35	186	186	80	100	80	80	80	100	2	45	50.0	5	1	3
302	331	cacnea	0	10	0	25	186	44	50	85	40	85	40	35	2	190	50.0	5	7	8
303	332	cacturne	0	10	2	25	186	44	70	115	60	115	60	55	2	60	50.0	5	7	8
304	333	swablu	0	13	8	37	186	192	45	40	60	40	75	50	2	255	50.0	5	6	3
305	334	altaria	0	3	8	37	186	192	75	70	90	70	105	80	2	45	50.0	5	6	3
306	335	zangoose	0	13	0	47	186	231	73	115	60	60	60	90	2	90	50.0	5	5	15
307	336	seviper	0	14	0	7	186	211	73	100	60	100	60	65	2	90	50.0	5	5	3
308	337	lunatone	0	16	15	35	186	186	90	55	65	95	85	70	2	45	0.0	5	9	15
309	338	solrock	0	16	15	35	186	186	90	95	85	55	65	70	2	45	0.0	5	9	15
310	339	barboach	0	18	11	41	79	13	50	48	43	46	41	60	2	190	50.0	5	13	15
311	340	whiscash	0	18	11	41	79	13	110	78	73	76	71	60	2	75	50.0	5	13	15
312	341	corphish	0	18	0	43	72	91	43	80	65	50	35	35	2	205	50.0	5	12	14
313	342	crawdaunt	0	18	2	43	72	91	63	120	85	90	55	55	2	155	50.0	5	12	14
314	343	baltoy	0	11	15	35	186	186	40	40	55	40	70	55	2	255	0.0	5	9	15
315	344	claydol	0	11	15	35	186	186	60	70	105	70	120	75	2	90	0.0	5	9	15
316	345	lileep	0	16	10	57	186	205	66	41	77	61	87	23	2	45	87.5	5	14	15
317	346	cradily	0	16	10	57	186	205	86	81	97	81	107	43	2	45	87.5	5	14	15
318	347	anorith	0	16	1	31	186	39	45	95	50	40	50	75	2	45	87.5	5	14	15
319	348	armaldo	0	16	1	31	186	39	75	125	100	70	80	45	2	45	87.5	5	14	15
320	349	feebas	0	18	0	39	41	91	20	15	20	10	55	80	2	255	50.0	5	12	3
321	350	milotic	0	18	0	69	189	21	95	60	79	100	125	81	2	60	50.0	5	12	3
322	351	castform	0	13	0	70	186	186	70	70	70	70	70	70	2	45	50.0	5	4	0
323	352	kecleon	0	13	0	71	186	232	60	90	70	60	120	40	2	200	50.0	5	5	15
324	353	shuppet	0	9	0	48	110	213	44	75	35	63	33	45	2	225	50.0	5	0	15
325	354	banette	0	9	0	48	110	213	64	115	65	83	63	65	2	45	50.0	5	0	15
326	355	duskull	0	9	0	35	186	110	20	40	90	30	90	25	2	190	50.0	5	0	15
327	356	dusclops	0	9	0	18	186	110	40	70	130	60	130	25	2	90	50.0	5	0	15
328	357	tropius	0	10	8	23	198	227	99	68	83	72	87	51	2	200	50.0	5	10	7
329	358	chimecho	0	15	0	35	186	186	75	50	80	95	90	65	2	45	50.0	5	0	15
330	359	absol	0	2	0	18	199	117	65	130	60	75	60	75	2	30	50.0	5	5	15
331	360	wynaut	0	15	0	53	186	114	95	23	48	23	48	23	2	125	50.0	5	11	15
332	361	snorunt	0	12	0	14	112	230	50	50	50	50	50	50	2	190	50.0	5	4	9
333	362	glalie	0	12	0	14	112	230	80	80	80	80	80	80	2	75	50.0	5	4	9
334	363	spheal	0	12	18	50	112	41	70	40	50	55	50	25	2	255	50.0	5	12	5
335	364	sealeo	0	12	18	50	112	41	90	60	70	75	70	45	2	120	50.0	5	12	5
336	365	walrein	0	12	18	50	112	41	110	80	90	95	90	65	2	45	50.0	5	12	5
337	366	clamperl	0	18	0	72	186	3	35	64	85	74	55	32	2	255	50.0	5	12	15
338	367	huntail	0	18	0	39	186	67	55	104	105	94	75	52	2	60	50.0	5	12	15
339	368	gorebyss	0	18	0	39	186	13	55	84	105	114	75	52	2	60	50.0	5	12	15
340	369	relicanth	0	18	16	39	33	51	100	90	130	45	65	55	2	25	87.5	5	12	13
341	370	luvdisc	0	18	0	39	186	13	43	30	55	40	65	97	2	225	25.0	5	13	15
342	371	bagon	0	3	0	33	186	104	45	75	60	40	30	50	2	45	50.0	5	3	15
343	372	shelgon	0	3	0	33	186	111	65	95	100	60	50	50	2	45	50.0	5	3	15
344	373	salamence	0	3	8	28	186	212	95	135	80	110	80	100	2	45	50.0	5	3	15
345	374	beldum	0	17	15	73	186	170	40	55	80	35	60	30	2	3	100.0	5	9	15
346	375	metang	0	17	15	73	186	170	60	75	100	55	80	50	2	3	100.0	5	9	15
347	376	metagross	0	17	15	73	186	170	80	135	130	95	90	70	2	3	100.0	5	9	15
348	377	regirock	3	16	0	73	186	51	80	100	200	50	100	50	2	3	0.0	5	11	15
349	378	regice	3	12	0	73	186	112	80	50	100	100	200	50	2	3	0.0	5	11	15
350	379	registeel	3	17	0	73	186	170	80	75	150	75	150	50	2	3	0.0	5	11	15
351	380	latias	3	3	15	35	186	186	80	80	90	110	130	110	2	3	0.0	5	11	15
352	381	latios	3	3	15	35	186	186	80	90	80	130	110	110	2	3	100.0	5	11	15
353	382	kyogre	1	18	0	74	186	186	100	100	90	150	140	90	2	3	0.0	5	11	15
354	383	groudon	1	11	0	75	186	186	100	150	140	100	90	90	2	3	0.0	5	11	15
355	384	rayquaza	1	3	8	76	186	186	105	150	90	150	90	95	2	45	0.0	5	11	15
356	385	jirachi	2	17	15	54	186	186	100	100	100	100	100	100	2	3	0.0	5	11	15
357	386	deoxys	2	15	0	18	186	186	50	150	50	150	50	150	2	3	0.0	5	11	15
358	387	turtwig	0	10	0	0	186	72	55	68	64	45	55	31	6	45	87.5	1	10	7
359	388	grotle	0	10	0	0	186	72	75	89	85	55	65	36	6	45	87.5	1	10	7
360	389	torterra	0	10	11	0	186	72	95	109	105	75	85	56	6	45	87.5	1	10	7
361	393	piplup	0	18	0	2	186	116	53	51	53	61	56	40	6	45	87.5	1	12	5
362	394	prinplup	0	18	0	2	186	116	64	66	68	81	76	50	6	45	87.5	1	12	5
363	395	empoleon	0	18	17	2	186	116	84	86	88	111	101	60	6	45	87.5	1	12	5
364	396	starly	0	13	8	26	186	103	40	55	30	30	30	60	6	255	50.0	1	6	15
365	397	staravia	0	13	8	28	186	103	55	75	50	40	40	80	6	120	50.0	1	6	15
366	398	staraptor	0	13	8	28	186	103	85	120	70	50	60	100	6	45	50.0	1	6	15
367	399	bidoof	0	13	0	77	99	230	59	45	40	35	40	31	6	255	50.0	1	12	5
368	400	bibarel	0	13	18	77	99	230	79	85	60	55	60	71	6	127	50.0	1	12	5
369	401	kricketot	0	1	0	7	186	27	37	25	41	25	41	25	6	255	50.0	1	1	15
370	402	kricketune	0	1	0	10	186	83	77	85	51	55	51	65	6	45	50.0	1	1	15
371	406	budew	0	10	14	37	5	89	40	30	35	50	70	55	6	255	50.0	1	11	15
372	407	roserade	0	10	14	37	5	83	60	70	65	125	105	90	6	75	50.0	1	4	7
373	408	cranidos	0	16	0	78	186	104	67	125	40	30	30	58	6	45	87.5	1	10	15
374	409	rampardos	0	16	0	78	186	104	97	165	60	65	50	58	6	45	87.5	1	10	15
375	410	shieldon	0	16	17	51	186	20	30	42	118	42	88	30	6	45	87.5	1	10	15
376	411	bastiodon	0	16	17	51	186	20	60	52	168	47	138	30	6	45	87.5	1	10	15
377	412	burmy	0	1	0	7	186	111	40	29	45	29	45	36	6	120	50.0	1	1	15
378	413	wormadam	0	1	10	79	186	111	60	59	85	79	105	36	6	45	0.0	1	1	15
379	414	mothim	0	1	8	10	186	190	70	94	50	94	50	66	6	45	100.0	1	1	15
380	415	combee	0	1	8	80	186	49	30	30	42	30	42	70	6	120	87.5	1	1	15
381	416	vespiquen	0	1	8	18	186	16	70	80	102	80	102	40	6	45	0.0	1	1	15
382	417	pachirisu	0	4	0	27	30	45	60	45	70	45	90	95	6	200	50.0	1	5	4
383	418	buizel	0	18	0	39	186	67	55	65	35	60	30	85	6	190	50.0	1	12	5
384	419	floatzel	0	18	0	39	186	67	85	105	55	85	50	115	6	75	50.0	1	12	5
385	420	cherubi	0	10	0	23	186	186	45	35	45	62	53	35	6	190	50.0	1	4	7
386	421	cherrim	0	10	0	81	186	186	70	60	70	87	78	85	6	75	50.0	1	4	7
387	422	shellos	0	18	0	82	205	120	76	48	48	57	62	34	6	190	50.0	1	12	0
388	423	gastrodon	0	18	11	82	205	120	111	83	68	92	82	39	6	75	50.0	1	12	0
389	424	ambipom	0	13	0	83	30	217	75	100	66	60	66	115	6	45	50.0	1	5	15
390	425	drifloon	0	9	8	84	206	233	90	50	34	60	44	70	6	125	50.0	1	0	15
391	426	drifblim	0	9	8	84	206	233	150	80	44	90	54	80	6	60	50.0	1	0	15
392	427	buneary	0	13	0	27	207	11	55	66	44	44	56	85	6	190	50.0	1	5	8
393	428	lopunny	0	13	0	21	207	11	65	76	84	54	96	105	6	60	50.0	1	5	8
394	429	mismagius	0	9	0	35	186	186	60	60	60	105	105	105	6	45	50.0	1	0	15
395	430	honchkrow	0	2	8	48	199	212	100	125	52	105	52	71	6	30	50.0	1	6	15
396	431	glameow	0	13	0	11	34	26	49	55	42	42	37	85	6	190	25.0	1	5	15
397	432	purugly	0	13	0	50	34	116	71	82	64	64	59	112	6	75	25.0	1	5	15
398	433	chingling	0	15	0	35	186	186	45	30	50	65	50	45	6	120	50.0	1	11	15
399	434	stunky	0	14	2	85	84	26	63	63	47	41	41	74	6	225	50.0	1	5	15
400	435	skuntank	0	14	2	85	84	26	103	93	67	71	61	84	6	60	50.0	1	5	15
401	436	bronzor	0	17	15	35	208	222	57	24	86	24	86	23	6	255	0.0	1	9	15
402	437	bronzong	0	17	15	35	208	222	67	89	116	79	116	33	6	90	0.0	1	9	15
403	438	bonsly	0	16	0	51	33	3	50	80	95	10	45	10	6	255	50.0	1	11	15
404	439	mime_jr.	0	15	5	20	195	83	20	25	45	70	90	60	6	145	50.0	1	11	15
405	440	happiny	0	13	0	37	54	225	100	5	5	15	65	30	6	130	0.0	1	11	15
406	441	chatot	0	13	8	26	167	98	76	65	45	92	42	91	6	30	50.0	1	6	15
407	442	spiritomb	0	9	2	18	186	211	50	92	108	92	108	35	6	100	50.0	1	0	15
408	443	gible	0	3	11	25	186	66	58	70	45	40	45	42	6	45	50.0	1	10	3
409	444	gabite	0	3	11	25	186	66	68	90	65	50	55	82	6	45	50.0	1	10	3
410	445	garchomp	0	3	11	25	186	66	108	130	95	80	85	102	6	45	50.0	1	10	3
411	446	munchlax	0	13	0	30	50	96	135	85	40	40	85	5	6	50	87.5	1	11	15
412	447	riolu	0	6	0	86	14	102	40	70	40	35	40	60	6	75	87.5	1	11	15
413	448	lucario	0	6	17	86	14	117	70	110	70	115	70	90	6	45	87.5	1	5	8
414	449	hippopotas	0	11	0	59	186	120	68	72	78	38	42	32	6	140	50.0	1	5	15
415	450	hippowdon	0	11	0	59	186	120	108	112	118	68	72	47	6	60	50.0	1	5	15
416	451	skorupi	0	14	1	31	194	26	40	50	90	30	55	65	6	120	50.0	1	1	14
417	452	drapion	0	14	2	31	194	26	70	90	110	60	75	95	6	45	50.0	1	1	14
418	453	croagunk	0	14	6	79	129	210	48	61	40	61	40	50	6	140	50.0	1	8	15
419	454	toxicroak	0	14	6	79	129	210	83	106	65	86	65	85	6	75	50.0	1	8	15
420	455	carnivine	0	10	0	35	186	186	74	100	72	90	72	46	6	200	50.0	1	7	15
421	456	finneon	0	18	0	39	205	67	49	49	56	49	61	66	6	190	50.0	1	13	15
422	457	lumineon	0	18	0	39	205	67	69	69	76	69	86	91	6	75	50.0	1	13	15
423	458	mantyke	0	18	8	39	44	67	45	20	50	60	120	50	6	25	50.0	1	11	15
424	459	snover	0	10	12	87	186	20	60	62	50	62	60	40	6	120	50.0	1	10	7
425	460	abomasnow	0	10	12	87	186	20	90	92	75	92	85	60	6	60	50.0	1	10	7
426	461	weavile	0	2	12	18	186	229	70	120	65	45	85	125	6	45	50.0	1	5	15
427	462	magnezone	0	4	17	19	51	224	70	70	115	130	90	60	6	30	0.0	1	9	15
428	463	lickilicky	0	13	0	34	41	192	110	85	95	80	95	50	6	30	50.0	1	10	15
429	464	rhyperior	0	11	16	36	107	103	115	140	130	55	55	40	6	30	50.0	1	10	5
430	465	tangrowth	0	10	0	23	89	209	100	100	125	110	50	50	6	30	50.0	1	7	15
431	466	electivire	0	4	0	88	186	58	75	123	67	95	85	95	6	30	75.0	1	8	15
432	467	magmortar	0	7	0	42	186	58	75	95	67	125	95	83	6	30	75.0	1	8	15
433	468	togekiss	0	5	8	49	54	199	85	50	95	120	115	80	6	30	87.5	1	6	4
434	469	yanmega	0	1	8	52	190	110	86	76	86	116	56	95	6	30	50.0	1	1	15
435	470	leafeon	0	10	0	89	186	23	65	110	130	60	65	95	6	45	87.5	1	5	15
436	471	glaceon	0	12	0	90	186	112	65	60	110	130	95	65	6	45	87.5	1	5	15
437	472	gliscor	0	11	8	43	25	202	75	95	125	45	75	95	6	30	50.0	1	1	15
438	473	mamoswine	0	12	11	41	90	50	110	130	80	70	60	80	6	50	50.0	1	5	15
439	474	porygon-z	0	13	0	91	121	224	85	80	70	135	75	90	6	30	0.0	1	9	15
440	475	gallade	0	15	6	86	186	117	68	125	65	65	115	80	6	45	100.0	1	8	0
441	476	probopass	0	16	17	51	19	120	60	55	145	75	150	40	6	60	50.0	1	9	15
442	477	dusknoir	0	9	0	18	186	110	45	100	135	65	135	45	6	45	50.0	1	0	15
443	478	froslass	0	12	9	90	186	213	70	80	70	80	70	110	6	75	0.0	1	4	9
444	479	rotom	0	4	9	35	186	186	50	50	77	95	77	91	6	45	0.0	1	0	15
445	480	uxie	3	15	0	35	186	186	75	75	130	75	130	95	6	3	0.0	1	11	15
446	481	mesprit	3	15	0	35	186	186	80	105	105	105	105	80	6	3	0.0	1	11	15
447	482	azelf	3	15	0	35	186	186	75	125	70	125	70	115	6	3	0.0	1	11	15
448	483	dialga	1	17	3	18	186	114	100	120	120	150	100	90	6	3	0.0	1	11	15
449	484	palkia	1	18	3	18	186	114	90	120	100	150	120	100	6	3	0.0	1	11	15
450	485	heatran	3	7	17	22	186	42	91	90	106	130	106	77	6	3	50.0	1	11	15
451	486	regigigas	3	13	0	92	186	186	110	160	110	80	110	100	6	3	0.0	1	11	15
452	487	giratina	1	9	3	18	186	114	150	100	120	100	120	90	6	3	0.0	1	11	15
453	488	cresselia	3	15	0	35	186	186	120	70	120	75	130	85	6	3	0.0	1	11	15
454	491	darkrai	2	2	0	93	186	186	70	90	90	135	90	125	6	3	0.0	1	11	15
455	492	shaymin	2	10	0	37	186	186	100	100	100	100	100	100	6	45	0.0	1	11	15
456	493	arceus	2	13	0	94	186	186	120	120	120	120	120	120	6	3	0.0	1	11	15
457	494	victini	2	15	7	95	186	186	100	100	100	100	100	100	7	3	0.0	0	11	15
458	765	oranguru	0	13	15	14	114	234	90	60	80	90	110	60	0	45	50.0	6	5	15
459	495	snivy	0	10	0	0	186	215	45	45	55	45	55	63	7	45	87.5	0	5	7
460	496	servine	0	10	0	0	186	215	60	60	75	60	75	83	7	45	87.5	0	5	7
461	497	serperior	0	10	0	0	186	215	75	75	95	75	95	113	7	45	87.5	0	5	7
462	498	tepig	0	7	0	1	186	50	65	63	45	45	45	45	7	45	87.5	0	5	15
463	499	pignite	0	7	6	1	186	50	90	93	55	70	55	55	7	45	87.5	0	5	15
464	500	emboar	0	7	6	1	186	103	110	123	65	100	65	65	7	45	87.5	0	5	15
465	501	oshawott	0	18	0	2	186	72	55	55	45	63	45	45	7	45	87.5	0	5	15
466	502	dewott	0	18	0	2	186	72	75	75	60	83	60	60	7	45	87.5	0	5	15
467	503	samurott	0	18	0	2	186	72	95	100	85	108	70	70	7	45	87.5	0	5	15
468	504	patrat	0	13	0	27	26	224	45	55	39	35	39	42	7	255	50.0	0	5	15
469	505	watchog	0	13	0	40	26	224	60	85	69	60	69	77	7	255	50.0	0	5	15
470	506	lillipup	0	13	0	58	30	27	45	60	45	25	45	55	7	255	50.0	0	5	15
471	507	herdier	0	13	0	28	100	193	65	80	65	35	65	60	7	120	50.0	0	5	15
472	508	stoutland	0	13	0	28	100	193	85	110	90	45	90	80	7	45	50.0	0	5	15
473	509	purrloin	0	2	0	11	206	102	41	50	37	50	37	66	7	255	50.0	0	5	15
474	510	liepard	0	2	0	11	206	102	64	88	50	88	50	106	7	90	50.0	0	5	15
475	511	pansage	0	10	0	96	186	0	50	53	48	53	48	64	7	190	87.5	0	5	15
476	512	simisage	0	10	0	96	186	0	75	98	63	98	63	101	7	75	87.5	0	5	15
477	513	pansear	0	7	0	96	186	1	50	53	48	53	48	64	7	190	87.5	0	5	15
478	514	simisear	0	7	0	96	186	1	75	98	63	98	63	101	7	75	87.5	0	5	15
479	515	panpour	0	18	0	96	186	2	50	53	48	53	48	64	7	190	87.5	0	5	15
480	516	simipour	0	18	0	96	186	2	75	98	63	98	63	101	7	75	87.5	0	5	15
481	517	munna	0	15	0	97	17	114	76	25	45	67	55	24	7	190	50.0	0	5	15
482	518	musharna	0	15	0	97	17	114	116	55	85	107	95	29	7	75	50.0	0	5	15
483	519	pidove	0	13	8	98	199	6	50	55	50	36	30	43	7	255	50.0	0	6	15
484	520	tranquill	0	13	8	98	199	6	62	77	62	50	42	65	7	120	50.0	0	6	15
485	521	unfezant	0	13	8	98	199	6	80	115	80	65	55	93	7	45	50.0	0	6	15
486	522	blitzle	0	4	0	36	88	123	45	60	32	50	32	76	7	190	50.0	0	5	15
487	523	zebstrika	0	4	0	36	88	123	75	100	63	80	63	116	7	75	50.0	0	5	15
488	524	roggenrola	0	16	0	51	168	120	55	75	85	25	25	15	7	255	50.0	0	9	15
489	525	boldore	0	16	0	51	168	120	70	105	105	50	40	20	7	120	50.0	0	9	15
490	526	gigalith	0	16	0	51	59	120	85	135	130	60	80	25	7	45	50.0	0	9	15
491	527	woobat	0	15	8	99	207	77	65	45	43	55	43	72	7	190	50.0	0	5	6
492	528	swoobat	0	15	8	99	207	77	67	57	55	77	55	114	7	45	50.0	0	5	6
493	529	drilbur	0	11	0	100	120	78	60	85	40	30	45	68	7	120	50.0	0	5	15
494	530	excadrill	0	11	17	100	120	78	110	135	60	50	65	88	7	60	50.0	0	5	15
495	531	audino	0	13	0	101	209	207	103	60	86	60	86	50	7	255	50.0	0	4	15
496	532	timburr	0	6	0	55	104	115	75	80	55	25	35	35	7	180	75.0	0	8	15
497	533	gurdurr	0	6	0	55	104	115	85	105	85	40	50	40	7	90	75.0	0	8	15
498	534	conkeldurr	0	6	0	55	104	115	105	140	95	55	65	45	7	45	75.0	0	8	15
499	535	tympole	0	18	0	39	13	44	50	50	40	50	40	64	7	255	50.0	0	12	15
500	536	palpitoad	0	18	11	39	13	44	75	65	55	65	55	69	7	120	50.0	0	12	15
501	537	seismitoad	0	18	11	39	210	44	105	95	75	85	75	74	7	45	50.0	0	12	15
502	538	throh	0	6	0	55	14	78	120	100	85	30	85	45	7	45	100.0	0	8	15
503	539	sawk	0	6	0	51	14	78	75	125	75	30	75	85	7	45	100.0	0	8	15
504	540	sewaddle	0	1	10	10	23	111	45	53	70	40	60	42	7	255	50.0	0	1	15
505	541	swadloon	0	1	10	89	23	111	55	63	90	50	80	42	7	120	50.0	0	1	15
506	542	leavanny	0	1	10	10	23	111	75	103	80	70	80	92	7	45	50.0	0	1	15
507	543	venipede	0	1	14	5	10	52	30	45	59	30	39	57	7	255	50.0	0	1	15
508	544	whirlipede	0	1	14	5	10	52	40	55	99	40	79	47	7	120	50.0	0	1	15
509	545	scolipede	0	1	14	5	10	52	60	100	89	55	69	112	7	45	50.0	0	1	15
510	546	cottonee	0	10	5	102	211	23	40	27	60	37	50	66	7	190	50.0	0	7	4
511	547	whimsicott	0	10	5	102	211	23	60	67	85	77	75	116	7	75	50.0	0	7	4
512	548	petilil	0	10	0	23	34	89	45	35	50	70	50	30	7	190	0.0	0	7	15
513	549	lilligant	0	10	0	23	34	89	70	60	75	110	75	90	7	75	0.0	0	7	15
514	55	golduck	0	18	0	32	192	39	80	82	78	80	0	85	5	75	50.0	4	12	5
515	550	basculin	0	18	0	103	91	78	70	92	65	80	55	98	7	25	50.0	0	13	15
516	551	sandile	0	11	2	28	212	196	50	72	35	35	35	65	7	180	50.0	0	5	15
517	552	krokorok	0	11	2	28	212	196	60	82	45	45	45	74	7	90	50.0	0	5	15
518	553	krookodile	0	11	2	28	212	196	95	117	80	65	70	92	7	45	50.0	0	5	15
519	554	darumaka	0	7	0	49	186	14	70	90	45	15	45	50	7	120	50.0	0	5	15
520	555	darmanitan	0	7	0	104	186	235	105	140	55	30	55	95	7	60	50.0	0	5	15
521	556	maractus	0	10	0	44	23	205	75	86	67	106	67	60	7	255	50.0	0	7	15
522	557	dwebble	0	1	16	51	72	168	50	65	85	35	35	55	7	190	50.0	0	1	9
523	558	crustle	0	1	16	51	72	168	70	105	125	65	75	45	7	75	50.0	0	1	9
524	559	scraggy	0	2	6	7	212	28	50	75	70	35	70	48	7	180	50.0	0	5	3
525	56	mankey	0	6	0	58	196	116	40	80	35	35	0	70	5	190	50.0	4	5	15
526	560	scrafty	0	2	6	7	212	28	65	90	115	45	115	58	7	90	50.0	0	5	3
527	561	sigilyph	0	15	8	105	188	190	72	58	80	103	80	97	7	45	50.0	0	6	15
528	562	yamask	0	9	0	106	186	186	38	30	85	55	65	30	7	190	50.0	0	9	0
529	563	cofagrigus	0	9	0	106	186	186	58	50	145	95	105	30	7	90	50.0	0	9	0
530	564	tirtouga	0	18	16	107	51	39	54	78	103	53	45	22	7	45	87.5	0	12	14
531	565	carracosta	0	18	16	107	51	39	74	108	133	83	65	32	7	45	87.5	0	12	14
532	566	archen	0	16	8	108	186	186	55	112	45	74	45	70	7	45	87.5	0	6	14
533	567	archeops	0	16	8	108	186	186	75	140	65	112	65	110	7	45	87.5	0	6	14
534	568	trubbish	0	14	0	85	82	84	50	50	62	40	62	65	7	190	50.0	0	9	15
535	569	garbodor	0	14	0	85	168	84	80	95	82	60	82	75	7	60	50.0	0	9	15
536	57	primeape	0	6	0	58	196	116	65	105	60	60	0	95	5	75	50.0	4	5	15
537	570	zorua	0	2	0	109	186	186	40	65	40	80	40	65	7	75	87.5	0	5	15
538	571	zoroark	0	2	0	109	186	186	60	105	60	120	60	105	7	45	87.5	0	5	15
539	572	minccino	0	13	0	21	83	217	55	50	40	40	40	75	7	255	25.0	0	5	15
540	573	cinccino	0	13	0	21	83	217	75	95	60	65	60	115	7	60	25.0	0	5	15
541	574	gothita	0	15	0	110	189	53	45	30	50	55	65	45	7	200	25.0	0	8	15
542	575	gothorita	0	15	0	110	189	53	60	45	70	75	85	55	7	100	25.0	0	8	15
543	576	gothitelle	0	15	0	110	189	53	70	55	95	95	110	65	7	50	25.0	0	8	15
544	577	solosis	0	15	0	111	188	209	45	30	40	105	50	20	7	200	50.0	0	0	15
545	578	duosion	0	15	0	111	188	209	65	40	50	125	60	30	7	100	50.0	0	0	15
546	579	reuniclus	0	15	0	111	188	209	110	65	75	125	85	30	7	50	50.0	0	0	15
547	58	growlithe	0	7	0	28	22	117	55	70	45	50	0	60	5	190	75.0	4	5	15
548	580	ducklett	0	18	8	26	98	13	62	44	50	44	50	55	7	190	50.0	0	12	6
549	581	swanna	0	18	8	26	98	13	75	87	63	87	63	98	7	45	50.0	0	12	6
550	582	vanillite	0	12	0	112	90	168	36	50	50	65	60	44	7	255	50.0	0	9	15
551	583	vanillish	0	12	0	112	90	168	51	65	65	80	75	59	7	120	50.0	0	9	15
552	584	vanilluxe	0	12	0	112	87	168	71	95	85	110	95	79	7	45	50.0	0	9	15
553	585	deerling	0	13	10	23	123	54	60	60	50	40	50	75	7	190	50.0	0	5	15
554	586	sawsbuck	0	13	10	23	123	54	80	100	70	60	70	95	7	75	50.0	0	5	15
555	587	emolga	0	4	8	29	186	88	55	75	60	75	60	103	7	200	50.0	0	5	15
556	588	karrablast	0	1	0	10	7	9	50	75	45	40	45	60	7	200	50.0	0	1	15
557	589	escavalier	0	1	17	10	72	111	70	135	105	60	105	20	7	75	50.0	0	1	15
558	59	arcanine	0	7	0	28	22	117	90	110	80	80	0	95	5	75	75.0	4	5	15
559	590	foongus	0	10	14	24	186	209	69	55	45	55	55	15	7	190	50.0	0	7	15
560	591	amoonguss	0	10	14	24	186	209	114	85	70	85	80	30	7	75	50.0	0	7	15
561	592	frillish	0	18	9	44	213	32	55	40	50	65	85	40	7	190	50.0	0	0	15
562	593	jellicent	0	18	9	44	213	32	100	60	70	85	105	60	7	60	50.0	0	0	15
563	594	alomomola	0	18	0	101	13	209	165	75	80	40	45	65	7	75	50.0	0	12	13
564	595	joltik	0	1	4	8	16	10	50	47	50	57	50	65	7	190	50.0	0	1	15
565	596	galvantula	0	1	4	8	16	10	70	77	60	97	60	108	7	75	50.0	0	1	15
566	597	ferroseed	0	10	17	113	186	186	44	50	91	24	86	10	7	255	50.0	0	7	9
567	598	ferrothorn	0	10	17	113	186	79	74	94	131	54	116	20	7	90	50.0	0	7	9
568	599	klink	0	17	0	63	64	73	40	55	70	45	60	30	7	130	0.0	0	9	15
569	60	poliwag	0	18	0	44	32	39	40	50	40	40	0	90	5	255	50.0	4	12	15
570	600	klang	0	17	0	63	64	73	60	80	95	70	85	50	7	60	0.0	0	9	15
571	601	klinklang	0	17	0	63	64	73	60	100	115	70	85	90	7	30	0.0	0	9	15
572	602	tynamo	0	4	0	35	186	186	35	55	40	45	40	60	7	190	50.0	0	0	15
573	603	eelektrik	0	4	0	35	186	186	65	85	70	75	70	40	7	60	50.0	0	0	15
574	604	eelektross	0	4	0	35	186	186	85	115	80	105	80	50	7	30	50.0	0	0	15
575	605	elgyem	0	15	0	114	17	224	55	55	55	85	55	30	7	255	50.0	0	8	15
576	606	beheeyem	0	15	0	114	17	224	75	75	75	125	95	40	7	90	50.0	0	8	15
577	607	litwick	0	9	7	22	42	211	50	30	55	65	55	20	7	190	50.0	0	0	15
578	608	lampent	0	9	7	22	42	211	60	40	60	95	60	55	7	90	50.0	0	0	15
579	609	chandelure	0	9	7	22	42	211	60	55	90	145	90	80	7	45	50.0	0	0	15
580	61	poliwhirl	0	18	0	44	32	39	65	65	65	50	0	90	5	120	50.0	4	12	15
581	610	axew	0	3	0	6	78	16	46	87	60	30	40	57	7	75	50.0	0	10	3
582	611	fraxure	0	3	0	6	78	16	66	117	70	40	50	67	7	60	50.0	0	10	3
583	612	haxorus	0	3	0	6	78	16	76	147	90	60	70	97	7	45	50.0	0	10	3
584	613	cubchoo	0	12	0	90	214	3	55	70	40	60	40	40	7	120	50.0	0	5	15
585	614	beartic	0	12	0	90	214	39	95	130	80	70	80	50	7	60	50.0	0	5	15
586	615	cryogonal	0	12	0	35	186	186	80	50	50	95	135	105	7	25	0.0	0	9	15
587	616	shelmet	0	1	0	13	72	111	50	40	85	40	65	25	7	200	50.0	0	1	15
588	617	accelgor	0	1	0	13	82	206	80	70	40	100	60	145	7	75	50.0	0	1	15
589	618	stunfisk	0	11	4	29	11	25	109	66	84	81	99	32	7	75	50.0	0	12	0
590	619	mienfoo	0	6	0	14	209	103	45	85	50	55	50	65	7	180	50.0	0	5	8
591	62	poliwrath	0	18	6	44	32	39	90	95	95	70	90	70	5	45	50.0	4	12	15
592	620	mienshao	0	6	0	14	209	103	65	125	60	95	60	105	7	45	50.0	0	5	8
593	621	druddigon	0	3	0	66	104	78	77	120	90	60	90	48	7	45	50.0	0	3	10
594	622	golett	0	11	9	115	207	9	59	74	50	35	50	35	7	190	0.0	0	9	15
595	623	golurk	0	11	9	115	207	9	89	124	80	55	80	55	7	90	0.0	0	9	15
596	624	pawniard	0	2	17	116	14	18	45	85	70	40	40	60	7	120	50.0	0	8	15
597	625	bisharp	0	2	17	116	14	18	65	125	100	60	70	70	7	45	50.0	0	8	15
598	626	bouffalant	0	13	0	103	123	20	95	110	95	40	95	55	7	45	50.0	0	5	15
599	627	rufflet	0	13	8	26	104	49	70	83	50	37	50	60	7	190	100.0	0	6	15
600	628	braviary	0	13	8	26	104	116	100	123	75	57	75	80	7	60	100.0	0	6	15
601	629	vullaby	0	2	8	98	111	168	70	55	75	45	65	60	7	190	0.0	0	6	15
602	63	abra	0	15	0	17	14	188	25	20	15	105	0	90	5	200	75.0	4	8	15
603	630	mandibuzz	0	2	8	98	111	168	110	65	105	55	95	80	7	60	0.0	0	6	15
604	631	heatmor	0	7	0	96	22	68	85	97	66	105	66	65	7	90	50.0	0	5	15
605	632	durant	0	1	17	10	49	60	58	109	112	48	48	109	7	90	50.0	0	1	15
606	633	deino	0	2	3	49	186	186	52	65	50	45	50	38	7	45	50.0	0	3	15
607	634	zweilous	0	2	3	49	186	186	72	85	70	65	70	58	7	45	50.0	0	3	15
608	635	hydreigon	0	2	3	35	186	186	92	105	90	125	90	98	7	45	50.0	0	3	15
609	636	larvesta	0	1	7	42	186	10	55	85	55	50	55	60	7	45	50.0	0	1	15
610	637	volcarona	0	1	7	42	186	10	85	60	65	135	105	100	7	15	50.0	0	1	15
611	638	cobalion	3	17	6	117	186	186	91	90	129	90	72	108	7	3	0.0	0	11	15
612	639	terrakion	3	16	6	117	186	186	91	129	90	72	90	108	7	3	0.0	0	11	15
613	64	kadabra	0	15	0	17	14	188	40	35	30	120	0	105	5	100	75.0	4	8	15
614	640	virizion	3	10	6	117	186	186	91	90	72	90	129	108	7	3	0.0	0	11	15
615	641	tornadus	3	8	0	102	186	116	79	115	70	125	80	111	7	3	100.0	0	11	15
616	642	thundurus	3	4	8	102	186	116	79	115	70	125	80	111	7	3	100.0	0	11	15
617	643	reshiram	1	3	7	118	186	186	100	120	100	150	120	90	7	3	0.0	0	11	15
618	644	zekrom	1	3	4	119	186	186	100	150	120	120	100	90	7	3	0.0	0	11	15
619	645	landorus	3	11	8	120	186	104	89	125	90	115	80	101	7	3	100.0	0	11	15
620	646	kyurem	1	3	12	18	186	186	125	130	90	130	90	95	7	3	0.0	0	11	15
621	647	keldeo	2	18	6	117	186	186	91	72	90	129	90	108	7	3	0.0	0	11	15
622	648	meloetta	2	13	15	54	186	186	100	77	77	128	128	90	7	3	0.0	0	11	15
623	649	genesect	2	1	17	121	186	186	71	120	95	120	95	99	7	3	0.0	0	11	15
624	65	alakazam	0	15	0	17	14	188	55	50	45	135	95	120	5	50	75.0	4	8	15
625	650	chespin	0	10	0	0	186	157	56	61	65	48	45	38	4	45	87.5	9	5	15
626	651	quilladin	0	10	0	0	186	157	61	78	95	56	58	57	4	45	87.5	9	5	15
627	652	chesnaught	0	10	6	0	186	157	88	107	122	74	75	64	4	45	87.5	9	5	15
628	653	fennekin	0	7	0	1	186	136	40	45	40	62	60	60	4	45	87.5	9	5	15
629	654	braixen	0	7	0	1	186	136	59	59	58	90	70	73	4	45	87.5	9	5	15
630	655	delphox	0	7	15	1	186	136	75	69	72	114	100	104	4	45	87.5	9	5	15
631	656	froakie	0	18	0	2	186	232	41	56	40	62	44	71	4	45	87.5	9	12	15
632	657	frogadier	0	18	0	2	186	232	54	63	52	83	56	97	4	45	87.5	9	12	15
633	658	greninja	0	18	2	2	186	232	72	95	67	103	71	122	4	45	87.5	9	12	15
634	659	bunnelby	0	13	0	30	132	197	38	36	38	32	36	57	4	255	50.0	9	5	15
635	66	machop	0	6	0	55	9	86	70	80	50	35	0	35	5	180	75.0	4	8	15
636	660	diggersby	0	13	11	30	132	197	85	56	77	50	77	78	4	127	50.0	9	5	15
637	661	fletchling	0	13	8	98	186	236	45	50	43	40	38	62	4	255	50.0	9	6	15
638	662	fletchinder	0	7	8	42	186	236	62	73	55	56	52	84	4	120	50.0	9	6	15
639	663	talonflame	0	7	8	42	186	236	78	81	71	74	69	126	4	45	50.0	9	6	15
640	664	scatterbug	0	1	0	12	8	225	38	35	40	27	25	35	4	255	50.0	9	1	15
641	665	spewpa	0	1	0	7	186	225	45	22	60	27	30	29	4	120	50.0	9	1	15
642	666	vivillon	0	1	8	12	8	225	80	52	50	90	50	89	4	45	50.0	9	1	15
643	667	litleo	0	7	13	6	16	212	62	50	58	73	54	72	4	220	12.5	9	5	15
644	668	pyroar	0	7	13	6	16	212	86	68	72	109	66	106	4	65	12.5	9	5	15
645	669	flab??b??	0	5	0	122	186	234	44	38	39	61	79	42	4	225	0.0	9	4	15
646	67	machoke	0	6	0	55	9	86	80	100	70	50	0	45	5	90	75.0	4	8	15
647	670	floette	0	5	0	122	186	234	54	45	47	75	98	52	4	120	0.0	9	4	15
648	671	florges	0	5	0	122	186	234	78	65	68	112	154	75	4	45	0.0	9	4	15
649	672	skiddo	0	10	0	123	186	237	66	65	48	62	57	52	4	200	50.0	9	5	15
650	673	gogoat	0	10	0	123	186	237	123	100	62	97	81	68	4	45	50.0	9	5	15
651	674	pancham	0	6	0	115	78	193	67	82	62	46	48	43	4	220	50.0	9	5	8
652	675	pangoro	0	6	2	115	78	193	95	124	78	69	71	58	4	65	50.0	9	5	8
653	676	furfrou	0	13	0	124	186	186	75	80	60	65	90	102	4	160	50.0	9	5	15
654	677	espurr	0	15	0	26	211	34	62	48	54	63	60	68	4	190	50.0	9	5	15
655	678	meowstic	0	15	0	26	211	102	74	48	76	83	81	104	4	75	100.0	9	5	15
656	68	machamp	0	6	0	55	9	86	90	130	80	65	0	55	5	45	75.0	4	8	15
657	681	aegislash	0	17	9	125	186	186	60	50	140	50	140	60	4	45	50.0	9	9	15
658	682	spritzee	0	5	0	101	186	238	78	52	60	63	65	23	4	200	50.0	9	4	15
659	683	aromatisse	0	5	0	101	186	238	101	72	72	99	89	29	4	140	50.0	9	4	15
660	684	swirlix	0	5	0	126	186	206	62	48	66	59	57	49	4	200	50.0	9	4	15
661	685	slurpuff	0	5	0	126	186	206	82	80	86	85	75	72	4	140	50.0	9	4	15
662	686	inkay	0	2	15	57	215	211	53	54	53	37	46	45	4	190	50.0	9	12	13
663	687	malamar	0	2	15	57	215	211	86	92	88	68	75	73	4	80	50.0	9	12	13
664	688	binacle	0	16	18	127	194	229	42	52	67	39	56	50	4	120	50.0	9	14	15
665	689	barbaracle	0	16	18	127	194	229	72	105	115	54	86	68	4	45	50.0	9	14	15
666	69	bellsprout	0	10	14	23	186	96	50	75	35	70	0	40	5	255	50.0	4	7	15
667	690	skrelp	0	14	18	5	210	91	50	60	60	60	60	30	4	225	50.0	9	12	3
668	691	dragalge	0	14	3	5	210	91	65	75	90	97	123	44	4	55	50.0	9	12	3
669	692	clauncher	0	18	0	128	186	186	50	53	62	58	63	44	4	225	50.0	9	12	14
670	693	clawitzer	0	18	0	128	186	186	71	73	88	120	89	59	4	55	50.0	9	12	14
671	694	helioptile	0	4	13	129	25	198	44	38	33	61	43	70	4	190	50.0	9	10	3
672	695	heliolisk	0	4	13	129	25	198	62	55	52	109	94	109	4	75	50.0	9	10	3
673	696	tyrunt	0	16	3	130	186	51	58	89	77	45	45	48	4	45	87.5	9	10	3
674	697	tyrantrum	0	16	3	130	186	33	82	121	119	69	59	71	4	45	87.5	9	10	3
675	698	amaura	0	16	12	131	186	87	77	59	50	67	63	46	4	45	87.5	9	10	15
676	699	aurorus	0	16	12	131	186	87	123	77	72	99	92	58	4	45	87.5	9	10	15
677	70	weepinbell	0	10	14	23	186	96	65	90	50	85	0	55	5	120	50.0	4	7	15
678	700	sylveon	0	5	0	21	186	239	95	65	65	110	130	60	4	45	87.5	9	5	15
679	701	hawlucha	0	6	8	11	206	78	78	92	75	74	63	118	4	100	50.0	9	6	8
680	702	dedenne	0	4	5	132	30	63	67	58	57	81	67	101	4	180	50.0	9	5	4
681	703	carbink	0	16	5	73	186	51	50	50	150	50	150	50	4	60	0.0	9	4	9
682	704	goomy	0	3	0	123	13	240	45	50	35	55	75	40	4	45	50.0	9	3	15
683	705	sliggoo	0	3	0	123	13	240	68	75	53	83	113	60	4	45	50.0	9	3	15
684	706	goodra	0	3	0	123	13	240	90	100	70	110	150	80	4	45	50.0	9	3	15
685	707	klefki	0	17	5	102	186	136	57	80	91	80	87	75	4	75	50.0	9	9	15
686	708	phantump	0	9	10	37	110	227	43	70	48	50	60	38	4	120	50.0	9	7	0
687	709	trevenant	0	9	10	37	110	227	85	110	76	65	82	56	4	60	50.0	9	7	0
688	71	victreebel	0	10	14	23	186	96	80	105	65	100	70	70	5	45	50.0	4	7	15
689	710	pumpkaboo	0	9	10	30	110	48	49	66	70	44	55	51	4	120	50.0	9	0	15
690	711	gourgeist	0	9	10	30	110	48	65	90	122	58	75	84	4	60	50.0	9	0	15
691	712	bergmite	0	12	0	34	112	51	55	69	85	32	35	28	4	190	50.0	9	10	9
692	713	avalugg	0	12	0	34	112	51	95	117	184	44	46	28	4	55	50.0	9	10	9
693	714	noibat	0	8	3	110	211	114	40	30	35	45	40	55	4	190	50.0	9	6	3
694	715	noivern	0	8	3	110	211	114	85	70	80	97	80	123	4	45	50.0	9	6	3
695	716	xerneas	1	5	0	133	186	186	126	131	95	131	98	99	4	45	0.0	9	11	15
696	717	yveltal	1	2	8	134	186	186	126	131	95	131	98	99	4	45	0.0	9	11	15
697	718	zygarde	1	3	11	135	216	186	108	100	121	81	95	95	4	3	0.0	9	11	15
698	719	diancie	2	16	5	73	186	186	50	100	150	100	150	50	4	3	0.0	9	11	15
699	72	tentacool	0	18	14	73	65	201	40	40	35	100	0	70	5	190	50.0	4	14	15
700	720	hoopa	2	15	9	136	186	186	80	110	60	150	130	70	4	3	0.0	9	11	15
701	721	volcanion	2	7	18	44	186	186	80	110	120	130	90	70	4	3	0.0	9	11	15
702	722	rowlet	0	10	8	0	186	241	68	55	55	50	50	40	0	45	87.5	6	6	15
703	723	dartrix	0	10	8	0	186	241	78	75	75	70	70	52	0	45	87.5	6	6	15
704	724	decidueye	0	10	9	0	186	241	78	107	75	100	100	70	0	45	87.5	6	6	15
705	725	litten	0	7	0	1	186	28	45	65	40	60	40	70	0	45	87.5	6	5	15
706	726	torracat	0	7	0	1	186	28	65	85	50	80	50	90	0	45	87.5	6	5	15
707	727	incineroar	0	7	2	1	186	28	95	115	90	80	90	60	0	45	87.5	6	5	15
708	728	popplio	0	18	0	2	186	242	50	54	54	66	56	40	0	45	87.5	6	12	5
709	729	brionne	0	18	0	2	186	242	60	69	69	91	81	50	0	45	87.5	6	12	5
710	73	tentacruel	0	18	14	73	65	201	80	70	65	120	0	100	5	60	50.0	4	14	15
711	730	primarina	0	18	5	2	186	242	80	74	74	126	116	60	0	45	87.5	6	12	5
712	731	pikipek	0	13	8	26	217	30	35	75	30	30	30	65	0	255	50.0	6	6	15
713	732	trumbeak	0	13	8	26	217	30	55	85	50	40	50	75	0	120	50.0	6	6	15
714	733	toucannon	0	13	8	26	217	104	80	120	75	75	75	60	0	45	50.0	6	6	15
715	734	yungoos	0	13	0	137	130	91	48	70	30	30	30	45	0	255	50.0	6	5	15
716	735	gumshoos	0	13	0	137	130	91	88	110	60	55	60	45	0	127	50.0	6	5	15
717	736	grubbin	0	1	0	10	186	186	47	62	45	55	45	46	0	255	50.0	6	1	15
718	737	charjabug	0	1	4	138	186	186	57	82	95	55	75	36	0	120	50.0	6	1	15
719	738	vikavolt	0	1	4	35	186	186	77	70	90	145	75	43	0	45	50.0	6	1	15
720	739	crabrawler	0	6	0	43	115	196	47	82	57	42	47	63	0	225	50.0	6	14	15
721	74	geodude	0	16	11	33	51	25	40	80	100	30	0	20	5	255	50.0	4	9	15
722	740	crabominable	0	6	12	43	115	196	97	132	77	62	67	43	0	60	50.0	6	14	15
723	741	oricorio	0	7	8	139	186	186	75	70	70	98	70	93	0	45	25.0	6	6	15
724	742	cutiefly	0	1	5	80	12	126	40	45	40	55	40	84	0	190	50.0	6	1	4
725	743	ribombee	0	1	5	80	12	126	60	55	60	96	70	124	0	75	50.0	6	1	4
726	744	rockruff	0	16	0	26	58	86	45	65	40	30	40	60	0	190	50.0	6	5	15
727	745	lycanroc	0	16	0	26	100	86	75	115	65	55	65	112	0	90	50.0	6	5	15
728	746	wishiwashi	0	18	0	140	186	186	45	20	20	25	25	40	0	60	50.0	6	13	15
729	747	mareanie	0	14	18	141	11	209	50	53	62	43	52	45	0	190	50.0	6	12	15
730	748	toxapex	0	14	18	141	11	209	50	63	152	53	142	35	0	75	50.0	6	12	15
731	749	mudbray	0	11	0	34	218	14	70	100	70	45	55	45	0	190	50.0	6	5	15
732	75	graveler	0	16	11	33	51	25	55	95	115	45	0	35	5	120	50.0	4	9	15
733	750	mudsdale	0	11	0	34	218	14	100	125	100	55	85	35	0	60	50.0	6	5	15
734	751	dewpider	0	18	1	142	186	44	38	40	52	40	72	27	0	200	50.0	6	12	1
735	752	araquanid	0	18	1	142	186	44	68	70	92	50	132	42	0	100	50.0	6	12	1
736	753	fomantis	0	10	0	89	186	215	40	55	35	50	35	35	0	190	50.0	6	7	15
737	754	lurantis	0	10	0	89	186	215	70	105	90	80	90	45	0	75	50.0	6	7	15
738	755	morelull	0	10	5	40	24	201	40	35	55	65	75	15	0	190	50.0	6	7	15
739	756	shiinotic	0	10	5	40	24	201	60	45	80	90	100	30	0	75	50.0	6	7	15
740	757	salandit	0	14	7	143	186	41	48	44	40	71	40	77	0	120	87.5	6	10	3
741	758	salazzle	0	14	7	143	186	41	68	64	60	111	60	117	0	45	0.0	6	10	3
742	759	stufful	0	13	6	144	207	21	70	75	50	45	50	50	0	140	50.0	6	5	15
743	76	golem	0	16	11	33	51	25	80	120	130	55	65	45	5	45	50.0	4	9	15
744	760	bewear	0	13	6	144	207	16	120	125	80	55	60	60	0	70	50.0	6	5	15
745	761	bounsweet	0	10	0	89	41	126	42	30	38	30	38	32	0	235	0.0	6	7	15
746	762	steenee	0	10	0	89	41	126	52	40	48	40	48	62	0	120	0.0	6	7	15
747	763	tsareena	0	10	0	89	219	126	72	120	98	50	98	72	0	45	0.0	6	7	15
748	764	comfey	0	5	0	122	220	37	51	52	90	82	110	100	0	60	25.0	6	7	15
749	766	passimian	0	6	0	145	186	116	100	120	90	40	60	80	0	45	50.0	6	5	15
750	767	wimpod	0	1	18	146	186	186	25	35	40	20	30	80	0	90	50.0	6	1	14
751	768	golisopod	0	1	18	147	186	186	75	125	140	60	90	40	0	45	50.0	6	1	14
752	769	sandygast	0	9	11	148	186	25	55	55	80	70	45	15	0	140	50.0	6	0	15
753	77	ponyta	0	7	0	27	22	42	50	85	55	65	0	90	5	190	50.0	4	5	15
754	770	palossand	0	9	11	148	186	25	85	75	110	100	75	35	0	60	50.0	6	0	15
755	771	pyukumuku	0	18	0	149	186	99	55	60	130	30	130	5	0	60	50.0	6	12	15
756	772	type_null	3	13	0	31	186	186	95	95	95	95	95	59	0	3	0.0	6	11	15
757	773	silvally	3	13	0	150	186	186	95	95	95	95	95	95	0	3	0.0	6	11	15
758	774	minior	0	16	8	151	186	186	60	60	100	60	100	60	0	30	0.0	6	9	15
759	775	komala	0	13	0	152	186	186	65	115	65	75	95	65	0	45	50.0	6	5	15
760	776	turtonator	0	7	3	72	186	186	60	78	135	91	85	36	0	70	50.0	6	10	3
761	777	togedemaru	0	4	17	113	36	51	65	98	63	40	73	96	0	180	50.0	6	5	4
762	778	mimikyu	0	9	5	153	186	186	55	90	80	50	105	96	0	45	50.0	6	0	15
763	779	bruxish	0	18	15	154	130	105	68	105	70	70	70	92	0	80	50.0	6	13	15
764	78	rapidash	0	7	0	27	22	42	65	100	70	80	0	105	5	60	50.0	4	5	15
765	780	drampa	0	13	3	155	123	192	78	60	85	135	91	36	0	70	50.0	6	10	3
766	781	dhelmise	0	9	10	156	186	186	70	131	100	86	90	40	0	25	0.0	6	9	15
767	782	jangmo-o	0	3	0	157	20	111	45	55	65	45	45	45	0	45	50.0	6	3	15
768	783	hakamo-o	0	3	6	157	20	111	55	75	90	65	70	65	0	45	50.0	6	3	15
769	784	kommo-o	0	3	6	157	20	111	75	110	125	100	105	85	0	45	50.0	6	3	15
770	785	tapu_koko	3	4	5	158	186	114	70	115	85	95	75	130	0	3	0.0	6	11	15
771	786	tapu_lele	3	15	5	159	186	114	70	85	75	130	115	95	0	3	0.0	6	11	15
772	787	tapu_bulu	3	10	5	160	186	114	70	130	115	85	95	75	0	3	0.0	6	11	15
773	788	tapu_fini	3	18	5	161	186	114	70	75	115	95	130	85	0	3	0.0	6	11	15
774	789	cosmog	1	15	0	99	186	186	43	29	31	29	31	37	0	45	0.0	6	11	15
775	79	slowpoke	0	18	15	41	34	209	90	65	65	40	0	15	5	190	50.0	4	10	12
776	790	cosmoem	1	15	0	51	186	186	43	29	131	29	131	37	0	45	0.0	6	11	15
777	791	solgaleo	1	15	17	162	186	186	137	137	107	113	89	97	0	45	0.0	6	11	15
778	792	lunala	1	15	9	163	186	186	137	113	89	137	107	97	0	45	0.0	6	11	15
779	793	nihilego	3	16	14	164	186	186	109	53	47	127	131	103	0	45	0.0	6	11	15
780	794	buzzwole	3	1	6	164	186	186	107	139	139	53	53	79	0	45	0.0	6	11	15
781	795	pheromosa	3	1	6	164	186	186	71	137	37	137	37	151	0	45	0.0	6	11	15
782	796	xurkitree	3	4	0	164	186	186	83	89	71	173	71	83	0	45	0.0	6	11	15
783	797	celesteela	3	17	8	164	186	186	97	101	103	107	101	61	0	45	0.0	6	11	15
784	798	kartana	3	10	17	164	186	186	59	181	131	59	31	109	0	45	0.0	6	11	15
785	799	guzzlord	3	2	3	164	186	186	223	101	53	97	53	43	0	45	0.0	6	11	15
786	80	slowbro	0	18	15	41	34	209	95	75	110	80	0	30	5	75	50.0	4	10	12
787	800	necrozma	1	15	0	165	186	186	97	107	101	127	89	79	0	255	0.0	6	11	15
788	801	magearna	2	17	5	166	186	186	80	95	115	130	115	65	0	3	0.0	6	11	15
789	802	marshadow	2	6	9	83	186	186	90	125	80	90	90	125	0	3	0.0	6	11	15
790	803	poipole	3	14	0	164	186	186	67	73	67	73	67	73	0	45	0.0	8	11	15
791	804	naganadel	3	14	3	164	186	186	73	73	73	127	73	121	0	45	0.0	8	11	15
792	805	stakataka	3	16	17	164	186	186	61	131	211	53	101	13	0	30	0.0	8	11	15
793	806	blacephalon	3	7	9	164	186	186	53	127	53	151	79	107	0	30	0.0	8	11	15
794	807	zeraora	2	4	0	45	186	186	88	112	75	102	80	143	0	3	0.0	8	11	15
795	808	meltan	2	17	0	19	186	186	46	65	65	55	35	34	0	3	0.0	3	11	15
796	809	melmetal	2	17	0	115	186	186	135	143	143	80	65	34	0	3	0.0	3	11	15
797	82	magneton	0	4	17	19	51	224	50	60	95	120	0	70	5	60	0.0	4	9	15
798	83	farfetch'd	0	13	8	26	14	116	52	90	55	58	62	60	5	45	50.0	4	6	5
799	84	doduo	0	13	8	27	38	167	35	85	45	35	0	75	5	190	50.0	4	6	15
800	85	dodrio	0	13	8	27	38	167	60	110	70	60	60	110	5	45	50.0	4	6	15
801	86	seel	0	18	0	50	13	112	65	45	55	70	0	45	5	190	50.0	4	12	5
802	87	dewgong	0	18	12	50	13	112	90	70	80	95	0	70	5	75	50.0	4	12	5
803	88	grimer	0	14	0	85	82	210	80	80	50	40	0	25	5	190	50.0	4	0	15
804	89	muk	0	14	0	85	82	210	105	105	75	65	0	50	5	75	50.0	4	0	15
805	90	shellder	0	18	0	72	217	111	30	65	100	45	0	40	5	190	50.0	4	14	15
806	91	cloyster	0	18	0	72	217	111	50	95	180	85	0	70	5	60	50.0	4	14	15
807	92	gastly	0	9	14	35	186	186	30	35	30	100	0	80	5	190	50.0	4	0	15
808	93	haunter	0	9	14	35	186	186	45	50	45	115	0	95	5	90	50.0	4	0	15
809	94	gengar	0	9	14	35	186	186	60	65	60	130	0	110	5	45	50.0	4	0	15
810	95	onix	0	16	11	33	51	168	35	45	160	30	0	70	5	45	50.0	4	9	15
811	96	drowzee	0	15	0	48	97	14	60	48	45	90	0	42	5	190	50.0	4	8	15
812	97	hypno	0	15	0	48	97	14	85	73	70	115	0	67	5	75	50.0	4	8	15
813	98	krabby	0	18	0	43	72	104	30	105	90	25	0	50	5	225	50.0	4	14	15
814	99	kingler	0	18	0	43	72	104	55	130	115	50	0	75	5	60	50.0	4	14	15
815	866	mr._rime	0	12	15	167	221	112	80	85	75	110	100	70	1	45	50.0	7	8	15
816	870	falinks	0	6	0	31	186	116	60	100	100	70	60	75	1	45	0.0	7	4	9
817	864	cursola	0	9	0	168	186	243	60	95	50	145	130	30	1	30	25.0	7	12	14
818	865	sirfetch'd	0	6	0	86	186	193	62	135	95	68	82	65	1	45	50.0	7	6	5
819	874	stonjourner	0	16	0	169	186	186	100	125	135	20	20	70	1	60	50.0	7	9	15
820	880	dracozolt	0	4	3	45	49	100	90	100	90	80	70	75	1	45	0.0	7	11	15
821	882	dracovish	0	18	3	44	130	100	90	90	100	70	80	75	1	45	0.0	7	11	15
822	881	arctozolt	0	4	12	45	29	214	90	100	90	90	80	55	1	45	0.0	7	11	15
823	883	arctovish	0	18	12	44	112	214	90	90	100	80	90	55	1	45	0.0	7	11	15
824	884	duraludon	0	17	3	170	222	244	70	95	115	120	50	85	1	45	50.0	7	9	3
825	871	pincurchin	0	4	0	36	186	158	48	101	95	91	85	15	1	75	50.0	7	12	0
826	877	morpeko	0	4	2	171	186	186	58	95	58	70	58	97	1	180	50.0	7	5	4
827	810	grookey	0	10	0	0	186	160	50	65	50	40	40	65	1	45	87.5	7	5	7
828	811	thwackey	0	10	0	0	186	160	70	85	70	55	60	80	1	45	87.5	7	5	7
829	812	rillaboom	0	10	0	0	186	160	100	125	90	60	70	85	1	45	87.5	7	5	7
830	813	scorbunny	0	7	0	1	186	245	50	71	40	40	40	69	1	45	87.5	7	5	8
831	814	raboot	0	7	0	1	186	245	65	86	50	55	60	94	1	45	87.5	7	5	8
832	815	cinderace	0	7	0	1	186	245	80	116	75	65	75	119	1	45	87.5	7	5	8
833	816	sobble	0	18	0	2	186	194	50	40	40	70	40	70	1	45	87.5	7	12	5
834	817	drizzile	0	18	0	2	186	194	65	60	55	95	55	90	1	45	87.5	7	12	5
835	818	inteleon	0	18	0	2	186	194	70	85	65	125	65	120	1	45	87.5	7	12	5
836	888	zacian	1	5	0	172	186	186	92	130	115	80	115	138	1	10	0.0	7	11	15
837	889	zamazenta	1	6	0	173	186	186	92	130	115	80	115	138	1	10	0.0	7	11	15
838	890	eternatus	1	14	3	18	186	186	140	85	95	145	95	130	1	255	0.0	7	11	15
839	819	skwovet	0	13	0	132	186	96	70	55	55	35	35	25	1	255	50.0	7	5	15
840	820	greedent	0	13	0	132	186	96	120	95	95	55	75	20	1	90	50.0	7	5	15
841	867	runerigus	0	11	9	174	186	186	58	95	145	50	105	30	1	90	50.0	7	9	0
842	862	obstagoon	0	2	13	103	55	116	93	90	101	60	81	95	1	45	50.0	7	5	15
843	821	rookidee	0	8	0	26	16	98	38	47	35	33	35	57	1	255	50.0	7	6	15
844	822	corvisquire	0	8	0	26	16	98	68	67	55	43	55	77	1	120	50.0	7	6	15
845	823	corviknight	0	8	17	18	16	246	98	87	105	53	85	67	1	45	50.0	7	6	15
846	885	dreepy	0	3	9	73	211	213	28	60	30	40	30	82	1	45	50.0	7	0	3
847	886	drakloak	0	3	9	73	211	213	68	80	50	60	50	102	1	45	50.0	7	0	3
848	887	dragapult	0	3	9	73	211	213	88	120	75	100	75	142	1	45	50.0	7	0	3
849	878	cufant	0	17	0	104	186	222	72	80	49	40	49	40	1	190	50.0	7	5	9
850	879	copperajah	0	17	0	104	186	222	122	130	69	80	69	30	1	90	50.0	7	5	9
851	876	indeedee	0	15	13	14	17	159	60	65	55	105	95	95	1	30	100.0	7	4	15
852	875	eiscue	0	12	0	175	186	186	75	80	110	65	90	50	1	60	50.0	7	12	5
853	872	snom	0	12	1	12	186	247	30	25	35	45	30	20	1	190	50.0	7	1	15
854	873	frosmoth	0	12	1	12	186	247	70	65	60	125	90	65	1	75	50.0	7	1	15
855	868	milcery	0	5	0	126	186	238	45	40	40	50	61	34	1	200	0.0	7	4	0
856	869	alcremie	0	5	0	126	186	238	65	60	75	110	121	64	1	100	0.0	7	4	0
857	824	blipbug	0	1	0	10	8	114	25	20	20	25	45	45	1	255	50.0	7	1	15
858	825	dottler	0	1	15	10	8	114	50	35	80	50	90	30	1	120	50.0	7	1	15
859	826	orbeetle	0	1	15	10	110	114	60	45	110	80	120	90	1	45	50.0	7	1	15
860	827	nickit	0	2	0	27	206	137	40	28	28	47	52	50	1	255	50.0	7	5	15
861	828	thievul	0	2	0	27	206	137	70	58	58	87	92	90	1	127	50.0	7	5	15
862	829	gossifleur	0	10	0	176	209	24	40	40	60	40	60	10	1	190	50.0	7	7	15
863	830	eldegoss	0	10	0	176	209	24	60	50	90	80	120	60	1	75	50.0	7	7	15
864	831	wooloo	0	13	0	144	27	157	42	40	55	40	45	48	1	255	50.0	7	5	15
865	832	dubwool	0	13	0	144	86	157	72	80	100	60	90	88	1	127	50.0	7	5	15
866	833	chewtle	0	18	0	130	72	39	50	64	50	38	38	44	1	255	50.0	7	10	12
867	834	drednaw	0	18	16	130	72	39	90	115	90	48	68	74	1	75	50.0	7	10	12
868	835	yamper	0	4	0	177	186	3	59	45	50	40	50	26	1	255	50.0	7	5	15
869	836	boltund	0	4	0	130	186	189	69	90	60	90	60	121	1	45	50.0	7	5	15
870	837	rolycolt	0	16	0	178	208	22	30	40	50	40	50	30	1	255	50.0	7	9	15
871	838	carkol	0	16	7	178	42	22	80	60	90	60	70	50	1	120	50.0	7	9	15
872	839	coalossal	0	16	7	178	42	22	110	80	120	80	90	30	1	45	50.0	7	9	15
873	840	applin	0	10	3	179	96	157	40	40	80	40	40	20	1	255	50.0	7	7	3
874	841	flapple	0	10	3	179	96	49	70	110	80	95	60	70	1	45	50.0	7	7	3
875	842	appletun	0	10	3	179	96	50	110	85	80	100	80	30	1	45	50.0	7	7	3
876	843	silicobra	0	11	0	180	7	25	52	57	75	35	50	46	1	255	50.0	7	5	3
877	844	sandaconda	0	11	0	180	7	25	72	107	125	65	70	71	1	120	50.0	7	5	3
878	845	cramorant	0	8	18	181	186	186	70	85	55	85	95	85	1	45	50.0	7	12	6
879	846	arrokunda	0	18	0	39	186	248	41	63	40	40	30	66	1	255	50.0	7	13	15
880	847	barraskewda	0	18	0	39	186	248	61	123	60	60	50	136	1	60	50.0	7	13	15
881	850	sizzlipede	0	7	1	22	68	42	50	65	45	50	50	45	1	190	50.0	7	1	15
882	851	centiskorch	0	7	1	22	68	42	100	115	65	90	90	65	1	75	50.0	7	1	15
883	852	clobbopus	0	6	0	11	186	83	50	68	60	50	50	32	1	180	50.0	7	12	8
884	853	grapploct	0	6	0	11	186	83	80	118	90	70	80	42	1	45	50.0	7	12	8
885	854	sinistea	0	9	0	168	186	213	40	45	45	74	54	50	1	120	0.0	7	9	0
886	855	polteageist	0	9	0	168	186	213	60	65	65	134	114	70	1	60	0.0	7	9	0
887	856	hatenna	0	15	0	101	79	187	42	30	45	56	53	39	1	235	0.0	7	4	15
888	857	hattrem	0	15	0	101	79	187	57	40	65	86	73	49	1	120	0.0	7	4	15
889	858	hatterene	0	15	5	101	79	187	57	90	95	136	103	29	1	45	0.0	7	4	15
890	859	impidimp	0	2	5	102	110	229	45	45	30	55	40	50	1	255	100.0	7	4	8
891	860	morgrem	0	2	5	102	110	229	65	60	45	75	55	70	1	120	100.0	7	4	8
892	861	grimmsnarl	0	2	5	102	110	229	95	120	65	95	75	60	1	45	100.0	7	4	8
893	893	zarude	2	2	10	89	186	186	105	120	105	70	95	105	1	3	0.0	7	11	15
894	894	regieleki	3	4	0	182	186	186	80	100	50	100	50	200	1	3	0.0	7	11	15
895	895	regidrago	3	3	0	183	186	186	200	100	50	100	50	80	1	3	0.0	7	11	15
896	896	glastrier	3	12	0	184	186	186	100	145	130	65	110	30	1	3	0.0	7	11	15
897	897	spectrier	3	9	0	185	186	186	100	65	60	145	80	130	1	3	0.0	7	11	15
\.


--
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.regions (id, region) FROM stdin;
0	alola
1	galar
2	hoenn
3	johto
4	kalos
5	kanto
6	sinnoh
7	unova
\.


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.types (id, pokemon_type) FROM stdin;
0	NULL
1	bug
2	dark
3	dragon
4	electric
5	fairy
6	fighting
7	fire
8	flying
9	ghost
10	grass
11	ground
12	ice
13	normal
14	poison
15	psychic
16	rock
17	steel
18	water
\.


--
-- Name: abilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.abilities_id_seq', 1, false);


--
-- Name: egg_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.egg_groups_id_seq', 1, false);


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.games_id_seq', 1, false);


--
-- Name: legendaries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.legendaries_id_seq', 1, false);


--
-- Name: pokemon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pokemon_id_seq', 1, false);


--
-- Name: regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.regions_id_seq', 1, false);


--
-- Name: types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.types_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

