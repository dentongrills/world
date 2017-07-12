#include "NPC.h"
#include "Player.h"
#include "PVP.h"
#include "Rules/Rules.h"

extern RuleManager rule_manager;

int16 Player::GetFame() {
	return GetInfoStruct()->fame;
}

void Player::SetFame(sint16 value) {
	if (value < 0) {
		GetInfoStruct()->fame = 0;
	} else {
		GetInfoStruct()->fame = value;
	}
}

bool PVP::CanAttack(Player* attacker, Spawn* target)
{
	if (PVP::IsEnabled()) {
		Entity* entity_target = static_cast<Entity*>(target);

		if (target->IsPet())
			entity_target =  static_cast<NPC*>(target)->GetOwner();

		// Alignment of 0 is currently "neutral"
		// Not attackable by either - only meant for GM, perhaps.
		if (entity_target->GetAlignment() == 0)
			return false;

		return (attacker->GetAlignment() != entity_target->GetAlignment());
	} else {
		return false;
	}
}

//5 points for a kill of the same rank (solo), 10 points for a kill of a rank higher (solo) and loss would be the same

string PVP::GetRank(Player* player)
{
	string title = "";
	
	if (!PVP::IsEnabled())
		return title;

	int16 fame = player->GetFame();

	if (fame >= 750) {
		title = "Dreadnaught";
	} else if (fame >= 500) {
		title = "Champion";
	} else if (fame >= 350) {
		title = "Destroyer";
	} else if (fame >= 200) {
		title = "Slayer";
	} else if (fame >= 100) {
		title = "Hunter";
	}

	return title;
}

int PVP::GetRankIndex(Player* player) {
	const char* rank = PVP::GetRank(player).c_str();

	if (strcmp(rank, "Dreadnaught")) {
		return 5;
	} else if (strcmp(rank, "Champion")) {
		return 4;
	} else if (strcmp(rank, "Destroyer")) {
		return 3;
	} else if (strcmp(rank, "Slayer")) {
		return 2;
	} else if (strcmp(rank, "Hunter")) {
		return 1;
	} else {
		return 0;
	}
}

bool PVP::IsEnabled()
{
	return rule_manager.GetGlobalRule(R_PVP, AllowPVP)->GetBool();
}