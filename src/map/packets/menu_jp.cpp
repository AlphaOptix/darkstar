/*
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

#include "menu_jp.h"

#include "../entities/charentity.h"
#include "../entities/battleentity.h"
#include "../utils/charutils.h"
#include "../job_points.h"

CMenuJobPointsPacket::CMenuJobPointsPacket(CCharEntity* PChar) 
{

  #define PACKET_DATA_OFFSET 0x0C
  #define PACKET_DATA_SIZE 0x06 //Size in number of uint8

	this->type = 0x63;
	this->size = 0x9c;

  JobPoints_t * job_points = PChar->PJobPoints->GetAllJobPoints();
	
	ref<uint8>(0x04) = 0x05; //JP Data Type
	ref<uint8>(0x06) = 0x98;

  ref<uint8>(0x08) = 0x1; // 0x0 for no access, 0x1 for access
  ref<uint8>(0x0A) = 0x0;

  // Start at 1 since first job will always be 0
  for (uint8 i=1; i < MAX_JOBTYPE; i++) {
    JobPoints_t * current_job = &job_points[i];
    uint16 offset = PACKET_DATA_OFFSET + (PACKET_DATA_SIZE * i);
    ref<uint16>(offset) = current_job->capacity_points;
    ref<uint16>(offset + 2) = current_job->job_points;
    ref<uint16>(offset + 4) = current_job->job_points_spent;
  }
}




//0x63, 0x06, 0x88, 0x41, 0x02, 0x00, 0x08, 0x00, 0xD3, 0x03, 0x03, 0x60