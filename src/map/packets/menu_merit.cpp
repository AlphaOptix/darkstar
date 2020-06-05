﻿/*
===========================================================================

  Copyright (c) 2010-2015 Darkstar Dev Teams

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/

  This file is part of DarkStar-server source code.

===========================================================================
*/
#include "../../common/socket.h"
#include "menu_merit.h"

#include "../entities/charentity.h"
#include "../utils/charutils.h"
#include "../utils/blueutils.h"


CMenuMeritPacket::CMenuMeritPacket(CCharEntity* PChar) 
{
	this->type = 0x63;

	uint16 meritFlags = 0x0000;

	if (PChar->jobs.job[PChar->GetMJob()] >= 75 && charutils::hasKeyItem(PChar, 606))			// keyitem Limit Breaker
	{
		// set merit points enabled flag
		meritFlags |= 0x2000;

		if (PChar->MeritMode)
		{
			//set merit mode flag
			meritFlags |= 0x8000;
		}

		if ((PChar->jobs.job[PChar->GetMJob()] >= PChar->jobs.genkai && PChar->jobs.exp[PChar->GetMJob()] == charutils::GetExpNEXTLevel(PChar->jobs.job[PChar->GetMJob()]) - 1) 
			|| PChar->MeritMode)
		{
			// set capped exp flag
			meritFlags |= 0x4000;
		}
	}

	uint8 addlBluPoints = std::clamp<uint8>(blueutils::GetTotalBlueMagicPoints(PChar) - 55, 0, map_config.max_blu_points);
	uint8 meritPoints = PChar->PMeritPoints->GetMeritPoints();
	uint16 bluPoints = (addlBluPoints) << 7;
	uint16 pointsData = meritFlags + bluPoints + meritPoints;

	// ver 30200217_0 first packet
	
	this->size = 0x10;
	
	memset(data + 4, 0, sizeof(PACKET_SIZE - 4));
	
	ref<uint8>(0x04) = 0x02;
	ref<uint8>(0x06) = 0x0C;	
	ref<uint16>(0x0A) = pointsData;
    ref<uint8>(0x0C) = map_config.max_merit_points + PChar->PMeritPoints->GetMeritValue(MERIT_MAX_MERIT, PChar);

    PChar->pushPacket(new CBasicPacket(*this));

	// ver 30121205_4 second packet

    this->size = 0x6E;

	memset(data + 4, 0, sizeof(PACKET_SIZE -4));

    uint8 packet[] = 
    {
		0x03, 0x00, 0xD8
    };

	memcpy(data+(0x04), &packet, sizeof(packet));
	PChar->pushPacket(new CBasicPacket(*this));

	// ver 30130319_5 third packet

	this->size = 0x44;

	memset(data + 4, 0, sizeof(PACKET_SIZE -4));

	uint8 packet2[] = 
	{
		0x04, 0x00, 0x84
	};
	memcpy(data+(0x04), &packet2, sizeof(packet2));
}




//0x63, 0x06, 0x88, 0x41, 0x02, 0x00, 0x08, 0x00, 0xD3, 0x03, 0x03, 0x60