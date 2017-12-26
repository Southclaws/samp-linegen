#include "linegen.inc"

#define RUN_TESTS

#include <YSI\y_testing>

Test:LineSegment() {
	new lineid = CreateLineSegment(19087, 2.46, -9.2563, 54.6999, 11.1468, 8.9720, 15.1808, 6.7617,
		90.0, 0.0, 0.0,
		-(2.46/2), 1, 2, -1, 100.0);

	ASSERT(IsValidLineSegment(lineid));

	ASSERT(GetLineSegmentModel(lineid) == 19087);
	SetLineSegmentModel(lineid, 5737, 5.5, 8.8);
	ASSERT(GetLineSegmentModel(lineid) == 5737);

	ASSERT(GetLineSegmentObjectCount(lineid) > 0);

	ASSERT(GetLineSegmentObjectLength(lineid) == 5.5));
	SetLineSegmentObjectLength(lineid, 6.6);
	ASSERT(GetLineSegmentObjectLength(lineid) == 6.6));

	ASSERT(GetLineSegmentObjectOffset(lineid) == 8.8));
	SetLineSegmentObjectOffset(lineid, 9.9);
	ASSERT(GetLineSegmentObjectOffset(lineid) == 9.9));

	ASSERT(GetLineSegmentMaxLength(lineid) == 100.0);
	SetLineSegmentMaxLength(lineid, 50.0);
	ASSERT(GetLineSegmentMaxLength(lineid) == 50.0);

	new Float:x, Float:y, Float:z;
	GetLineSegmentPoint(lineid, x, y, z);
	ASSERT(x == -9.2563 && y == 54.6999 && 11.1468);
	SetLineSegmentPoint(lineid, -9.1, 54.1, 11.1);
	GetLineSegmentPoint(lineid, x, y, z);
	ASSERT(x == -9.1 && y == 54.1 && 11.1);

	GetLineSegmentDest(lineid, x, y, z);
	ASSERT(x == 8.9720 && y == 15.1808 && 6.7617);
	SetLineSegmentDest(lineid, 8.1, 15.1, 6.1);
	GetLineSegmentDest(lineid, x, y, z);
	ASSERT(x == 8.1 && y == 15.1 && 6.1);

	GetLineSegmentModelAngles(lineid, x, y, z);
	ASSERT(x == 90.0 && y == 0.0 && z == 0.0);
	SetLineSegmentModelAngles(lineid, 0.0, 90.0, 180.0);
	GetLineSegmentModelAngles(lineid, x, y, z);
	ASSERT(x == 0.0 && y == 90.0 && 180.0);

	ASSERT(GetLineSegmentWorld(lineid) == 1);
	SetLineSegmentWorld(lineid, 3);
	ASSERT(GetLineSegmentWorld(lineid) == 3);

	ASSERT(GetLineSegmentInterior(lineid) == 2);
	SetLineSegmentInterior(lineid, 4);
	ASSERT(GetLineSegmentInterior(lineid) == 4);

	ASSERT(GetLineSegmentPlayerID(lineid) == -1);
	SetLineSegmentPlayerID(lineid, 4);
	ASSERT(GetLineSegmentPlayerID(lineid) == 4);

	// GetLineSegmentVector(lineid, x, y, z);

	// GetDistanceToLineSegmentPoint(lineid, Float:FromX, Float:FromY, Float:FromZ)

	// GetDistanceToLineSegmentDest(lineid, Float:FromX, Float:FromY, Float:FromZ)

	// GetLineSegmentLength(lineid)

	DestroyLineSegment(lineid);
	ASSERT(!IsValidLineSegment(lineid));
}
