#if !defined(using_map_DATUM)

	#include "torch_announcements.dm"
	#include "torch_antagonism.dm"
	#include "torch_areas.dm"
	#include "torch_elevator.dm"
	#include "torch_events.dm"
	#include "torch_holodecks.dm"
	#include "torch_lobby.dm"
	#include "torch_machinery.dm"
	#include "torch_map_templates.dm"
	#include "torch_npcs.dm"
	#include "torch_overmap.dm"
	#include "torch_presets.dm"
	#include "torch_procs.dm"
	#include "torch_ranks.dm"
//	#include "torch_security_state.dm" //Modular overwrite for alert level lighting.
	#include "torch_setup.dm"
	#include "torch_shuttles.dm"
	#include "torch_submaps.dm"
	#include "torch_turfs.dm"
	#include "torch_unit_testing.dm"

	#include "datums/uniforms.dm"
	#include "datums/uniforms_expedition.dm"
//	#include "datums/uniforms_fleet.dm" //Modular overwrite. Go check modular_boh for the NTEF version!
	#include "datums/game_modes/torch_traitor.dm"
	#include "datums/game_modes/torch_revolution.dm"
	#include "datums/game_modes/torch_siege.dm"
	#include "datums/game_modes/torch_meteor.dm"
	#include "datums/game_modes/torch_uprising.dm"
	#include "datums/reports/command.dm"
	#include "datums/reports/corporate.dm"
	#include "datums/reports/exploration.dm"
	#include "datums/reports/medical.dm"
	#include "datums/reports/robotics.dm"
	#include "datums/reports/science.dm"
	#include "datums/reports/security.dm"
	#include "datums/reports/solgov.dm"
	#include "datums/reports/deck.dm"
	#include "datums/shackle_law_sets.dm"
	#include "datums/supplypacks/security.dm"
	#include "datums/supplypacks/science.dm"
	#include "datums/department_exploration.dm"

	#include "game/antagonist/outsider/deathsquad.dm"
	#include "game/antagonist/outsider/ert.dm"
	#include "game/antagonist/outsider/foundation.dm"
	#include "game/antagonist/outsider/mercenary.dm"
	#include "game/antagonist/outsider/raider.dm"

	#include "items/cards_ids.dm"
	#include "items/encryption_keys.dm"
	#include "items/headsets.dm"
	#include "items/items.dm"
	#include "items/machinery.dm"
	#include "items/manuals.dm"
	#include "items/stamps.dm"
	#include "items/uniform_vendor.dm"
	#include "items/rigs.dm"
	#include "items/solbanner.dm"
	#include "items/explo_shotgun.dm"
	#include "items/mecha.dm"
	#include "items/summarydocuments.dm"

/*	#include "items/clothing/ec_skillbadges.dm"		//Modular Vesta overwrite. Check modular_boh for these files!
	#include "items/clothing/solgov-accessory.dm"
	#include "items/clothing/solgov-armor.dm"
	#include "items/clothing/solgov-feet.dm"
	#include "items/clothing/solgov-hands.dm"
	#include "items/clothing/solgov-head.dm"
	#include "items/clothing/solgov-suit.dm"
	#include "items/clothing/solgov-under.dm"
	#include "items/clothing/terran-accessory.dm"
	#include "items/clothing/terran-feet.dm"
	#include "items/clothing/terran-hands.dm"
	#include "items/clothing/terran-head.dm"
	#include "items/clothing/terran-suit.dm"
	#include "items/clothing/terran-under.dm" */

	#include "items/weapon/storage/wallets.dm"

	#include "job/torch_access.dm"
	#include "job/torch_jobs.dm"
	#include "job/command_jobs.dm"
	#include "job/corporate_jobs.dm"
	#include "job/engineering_jobs.dm"
	#include "job/exploration_jobs.dm"
	#include "job/medical_jobs.dm"
	#include "job/misc_jobs.dm"
	#include "job/research_jobs.dm"
	#include "job/security_jobs.dm"
	#include "job/service_jobs.dm"
	#include "job/supply_jobs.dm"

	#include "job/outfits/torch_outfits.dm"
	#include "job/outfits/command_outfits.dm"
	#include "job/outfits/corporate_outfits.dm"
	#include "job/outfits/engineering_outfits.dm"
	#include "job/outfits/exploration_outfits.dm"
	#include "job/outfits/medical_outfits.dm"
	#include "job/outfits/misc_outfits.dm"
	#include "job/outfits/research_outfits.dm"
	#include "job/outfits/security_outfits.dm"
	#include "job/outfits/service_outfits.dm"
	#include "job/outfits/supply_outfits.dm"
	#include "job/outfits/unused_outfits.dm"

	#include "language/human/euro.dm"
	#include "language/human/misc/spacer.dm"

	#include "machinery/apc_shuttle.dm"
	#include "machinery/faxmachine.dm"
	#include "machinery/keycard authentication.dm"
	#include "machinery/suit_storage.dm"

	#include "robot/module_flying_surveyor.dm"

	#include "structures/signs.dm"
	#include "structures/closets.dm"
	#include "structures/closets/closet_appearances.dm"
	#include "structures/closets/command.dm"
	#include "structures/closets/engineering.dm"
	#include "structures/closets/medical.dm"
	#include "structures/closets/misc.dm"
	#include "structures/closets/research.dm"
	#include "structures/closets/security.dm"
	#include "structures/closets/services.dm"
	#include "structures/closets/supply.dm"
	#include "structures/closets/exploration.dm"

	#include "loadout/_defines.dm"
//	#include "loadout/loadout_accessories.dm"
	#include "loadout/loadout_ec_skillbadges.dm"
	#include "loadout/loadout_eyes.dm"
	#include "loadout/loadout_gloves.dm"
	#include "loadout/loadout_head.dm"
	#include "loadout/loadout_shoes.dm"
	#include "loadout/loadout_storage.dm"
	#include "loadout/loadout_suit.dm"
	#include "loadout/loadout_uniform.dm"
	#include "loadout/loadout_xeno.dm"
	#include "loadout/~defines.dm"

	#include "torch1_deck5.dmm"
	#include "torch2_deck4.dmm"
	#include "torch3_deck3.dmm"
	#include "torch4_deck2.dmm"
	#include "torch5_deck1.dmm"
	#include "torch6_bridge.dmm"
	#include "z1_admin.dmm"
	#include "z2_transit.dmm"

	#include "../away/empty.dmm"
	#include "../away/ascent/ascent.dm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/icarus/icarus.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/voxship/voxship.dm"
	#include "../away/skrellscoutship/skrellscoutship.dm"
	#include "../away/meatstation/meatstation.dm"
	#include "../away/miningstation/miningstation.dm"
	#include "../away/scavver/scavver_gantry.dm"
	#include "../away/verne/verne.dm"

	#include "../../code/datums/music_tracks/chasing_time.dm"

//###########################################################################################################
//# VESTA.BAY ################# ADDS FILES MANDATORY WHENEVER THE TORCH MAP IS CALLED #######################
//###########################################################################################################

	#include "../../modular_boh/code/game/ranks/vesta_ranks.dm"
	#include "../../modular_boh/code/game/structures/closets/closets.dm"
	#include "../../modular_boh/code/items/cards_ids.dm"
	#include "../../modular_boh/code/items/clothing/boh_under.dm"
	#include "../../modular_boh/code/modules/datums/uniforms_marine_corps.dm"
	#include "../../modular_boh/code/modules/jobs/jobs.dm"
	#include "../../modular_boh/code/modules/jobs/torch_jobs_vesta.dm"
	#include "../../modular_boh/code/modules/jobs/outfits/vesta_outfits.dm"
	#include "../../modular_boh/code/modules/modular_computer/card.dm"
	#include "../../modular_boh/code/items/clothing/ec_skillbadges.dm"
	#include "../../modular_boh/code/items/clothing/solgov-accessory.dm"
	#include "../../modular_boh/code/items/clothing/solgov-armor.dm"
	#include "../../modular_boh/code/items/clothing/solgov-feet.dm"
	#include "../../modular_boh/code/items/clothing/solgov-hands.dm"
	#include "../../modular_boh/code/items/clothing/solgov-head.dm"
	#include "../../modular_boh/code/items/clothing/solgov-suit.dm"
	#include "../../modular_boh/code/items/clothing/solgov-under.dm"
	#include "../../modular_boh/code/items/clothing/terran-accessory.dm"
	#include "../../modular_boh/code/items/clothing/terran-feet.dm"
	#include "../../modular_boh/code/items/clothing/terran-hands.dm"
	#include "../../modular_boh/code/items/clothing/terran-head.dm"
	#include "../../modular_boh/code/items/clothing/terran-suit.dm"
	#include "../../modular_boh/code/items/clothing/terran-under.dm"
  	#include "../../modular_boh/maps/boh_areas.dm"
	#include "../../modular_boh/loadouts/custom_loadouts.dm"
	#include "../../modular_boh/loadouts/custom_loadouts_helpers.dm"
	#include "../../modular_boh/code/modules/torch_security_state.dm"
	#include "../../modular_boh/code/modules/culture_descriptor/culture/cultures_human.dm"
	#include "../../modular_boh/code/modules/culture_descriptor/faction/factions_human.dm"
	#include "../../modular_boh/code/modules/culture_descriptor/location/locations_human.dm"
	#include "../../modular_boh/code/modules/mob/language/human/gaian.dm"
	#include "../../modular_boh/code/modules/culture_descriptor/culture/cultures_ipc.dm"
	#include "../../modular_boh/code/game/loadout/loadout_accessories.dm"
//###########################################################################################################
//# VESTA.BAY ################# ADDS FILES MANDATORY WHENEVER THE TORCH MAP IS CALLED #######################
//###########################################################################################################

	#define using_map_DATUM /datum/map/torch

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Torch

#endif

