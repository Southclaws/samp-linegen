# Line.inc

![http://img.shields.io/badge/SA%3AMP-0.3z-green.svg](http://img.shields.io/badge/SA%3AMP-0.3z-green.svg)![http://img.shields.io/gittip/Southclaw.svg](http://img.shields.io/gittip/Southclaw.svg)

[![Donate](https://www.paypalobjects.com/en_GB/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=M7WJU7YN8PKGQ) Support the development of this library by donating. I can put more time into adding new features!

Generates a line of objects between start point and destination. Useful for ziplines, tunnels, police tape, funky infinite neon strips, etc.


# Dependencies

- [YSI/y_iterate - Y_Less](http://github.com/Y-Less/YSI)
- [Streamer Plugin - Incognito](http://github.com/samp-incognito/samp-streamer-plugin)


# Resources


## Constants

- ```MAX_LINE```: Line segment creation limit.
- ```MAX_OBJECTS_PER_LINE```: Maximum number of objects per line segment.
- ```INVALID_LINE_SEGMENT_ID```: Invalid ID for use with validity checks.


## Functions

- ```CreateLineSegment(modelid, Float:objlength, Float:PointX, Float:PointY, Float:PointZ, Float:DestX, Float:DestY, Float:DestZ, Float:RotX = 0.0, Float:RotY = 0.0, Float:RotZ = 0.0, Float:objlengthoffset = 0.0, worldid = -1, interiorid = -1, playerid = -1, Float:maxlength = 100.0)```: Creates a line segment consisting of objects of the specified model ID, rotation values, intervals and other properties. Can be set to be visible in a specific world, interior and to a specific player.
- ```DestroyLineSegment(lineid)```: Destroys a line segment and frees up the ID for use.
- ```IsValidLineSegment(lineid)```: Returns if a line segment ID is valid line segment that exists.
- ```GetLineSegmentModel(lineid)```: Returns the model used by a line segment.
- ```SetLineSegmentModel(lineid, modelid, Float:objlength, Float:objlengthoffset)```: Sets a line segment model ID and updates objects accordingly.
- ```GetLineSegmentObjectCount(lineid)```: Returns the amount of objects used by the line segment.
- ```GetLineSegmentObjectLength(lineid)```: Returns the set length of model used for the line segment.
- ```SetLineSegmentObjectLength(lineid, Float:objlength)```: Sets the length of the model used by the line segment which affects the spacing.
- ```GetLineSegmentObjectOffset(lineid)```: Returns the offset along the line at which objects are created.
- ```SetLineSegmentObjectOffset(lineid, Float:objlengthoffset)```: Sets the offset along the line at which objects are created.
- ```GetLineSegmentMaxLength(lineid)```: Returns the maximum length a line segment can be.
- ```SetLineSegmentMaxLength(lineid, Float:maxlength)```: Sets the maximum length of a line segment.
- ```GetLineSegmentPoint(lineid, &Float:PointX, &Float:PointY, &Float:PointZ)```: Gets the start point of a line segment.
- ```SetLineSegmentPoint(lineid, Float:PointX, Float:PointY, Float:PointZ)```: Sets the start point of a line segment.
- ```GetLineSegmentDest(lineid, &Float:DestX, &Float:DestY, &Float:DestZ)```: Gets the end point of a line segment.
- ```SetLineSegmentDest(lineid, Float:DestX, Float:DestY, Float:DestZ)```: Sets the end point of a line segment.
- ```GetLineSegmentModelAngles(lineid, &Float:RotX, &Float:RotY, &Float:RotZ)```: Gets the object rotation angles.
- ```SetLineSegmentModelAngles(lineid, Float:RotX, Float:RotY, Float:RotZ)```: Sets the object rotation angles.
- ```GetLineSegmentWorld(lineid)```: Gets the virtual world in which the line segment is visible (-1 for all worlds).
- ```SetLineSegmentWorld(lineid, world)```: Sets the virtual world in which the line segment is visible (-1 for all worlds).
- ```GetLineSegmentInterior(lineid)```: Gets the interior in which the line segment is visible (-1 for all interiors).
- ```SetLineSegmentInterior(lineid, interior)```: Sets the interior in which the line segment is visible (-1 for all interiors).
- ```GetLineSegmentPlayerID(lineid)```: Gets the player ID that the line segment is visible to (-1 for all players).
- ```SetLineSegmentPlayerID(lineid, playerid)```: Sets the player ID that the line segment is visible to (-1 for all players).
- ```GetLineSegmentVector(lineid, &Float:x, &Float:y, &Float:z)```: Returns the 3D direction vector of the line segment.
- ```GetDistanceToLineSegmentPoint(lineid, Float:FromX, Float:FromY, Float:FromZ)```: Returns the distance to the line segment start point.
- ```GetDistanceToLineSegmentDest(lineid, Float:FromX, Float:FromY, Float:FromZ)```: Returns the distance to the line segment end point.
- ```GetLineSegmentLength(lineid)```: Returns the overall length of the line segment.
