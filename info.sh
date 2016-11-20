#!/bin/sh

echo "{"
echo "  \"name\": \"short-arms\","
echo "  \"version\": \"`gitversion -showvariable MajorMinorPatch`\","
echo "  \"title\": \"Short Arms\","
echo "  \"author\": \"Eregrith\","
echo "  \"contact\": \"eregrith@gmail.com\","
echo "  \"description\": \"A useful mechanical arm that drops things on the closest side of transporter belts\","
echo "  \"factorio_version\": \"0.14\","
echo "  \"dependencies\": [ \"base >= 0.4.1\" ]"
echo "}"