<?xml version="1.0" encoding="utf-8"?>
<!--
SPDX-FileCopyrightText: 2021 Alliander N.V.

SPDX-License-Identifier: Apache-2.0
-->
<SCL xmlns="http://www.iec.ch/61850/2003/SCL" version="2007" revision="B" release="4">
	<Header id="project"/>
	<Substation name="Substation 1">
		<VoltageLevel name="Voltage 110kV" nomFreq="50" numPhases="3">
			<Voltage unit="V" multiplier="k">110</Voltage>
			<Bay name="Bay 1">
				<ConductingEquipment name="CB1" type="CBR"/>
			</Bay>
		</VoltageLevel>
	</Substation>
</SCL>