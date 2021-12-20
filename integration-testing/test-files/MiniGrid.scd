<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<!--
SPDX-FileCopyrightText: 2021 Alliander N.V.

SPDX-License-Identifier: Apache-2.0
-->
<SCL xmlns="http://www.iec.ch/61850/2003/SCL" version="2007" revision="B" release="4">
	<Header id="927a5b77-5461-454e-a657-cc28aef2c7c6" version="0.0.1" revision=""/>
	<Substation name="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4" desc="Sub1">
		<PowerTransformer type="PTR" name="T4">
			<TransformerWinding type="PTW" name="T4_3">
				<Terminal name="T4_0" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T4_0/CONNECTIVITY_NODE78" cNodeName="CONNECTIVITY_NODE78"/>
			</TransformerWinding>
			<TransformerWinding type="PTW" name="T4_2">
				<Terminal name="T4_1" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T4_1/CONNECTIVITY_NODE81" cNodeName="CONNECTIVITY_NODE81"/>
			</TransformerWinding>
			<TransformerWinding type="PTW" name="T4_1">
				<Terminal name="T4_2" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T4_2/CONNECTIVITY_NODE85" cNodeName="CONNECTIVITY_NODE85"/>
				<TapChanger type="LTC" name="T4"/>
			</TransformerWinding>
		</PowerTransformer>
		<PowerTransformer type="PTR" name="T3" desc="Trafo-5">
			<TransformerWinding type="PTW" name="T3_1">
				<Terminal name="T3_0" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T3_0/CONNECTIVITY_NODE88" cNodeName="CONNECTIVITY_NODE88"/>
				<TapChanger type="LTC" name="T3"/>
			</TransformerWinding>
			<TransformerWinding type="PTW" name="T3_2">
				<Terminal name="T3_1" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T3_1/CONNECTIVITY_NODE91" cNodeName="CONNECTIVITY_NODE91"/>
			</TransformerWinding>
			<TransformerWinding type="PTW" name="T3_3">
				<Terminal name="T3_2" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T3_2/CONNECTIVITY_NODE95" cNodeName="CONNECTIVITY_NODE95"/>
			</TransformerWinding>
		</PowerTransformer>
		<VoltageLevel name="S1 380kV">
			<Voltage unit="V" multiplier="k">380.0</Voltage>
			<Bay name="BUSBAR10">
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BUSBAR10/CONNECTIVITY_NODE82" name="CONNECTIVITY_NODE82"/>
			</Bay>
			<Bay name="BAY_T4_2">
				<ConductingEquipment type="CBR" name="BREAKER25">
					<Terminal name="T4_2_ADDB1" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T4_2/CONNECTIVITY_NODE83" cNodeName="CONNECTIVITY_NODE83"/>
					<Terminal name="T4_2_ADDB2" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T4_2/CONNECTIVITY_NODE84" cNodeName="CONNECTIVITY_NODE84"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR49">
					<Terminal name="T4_2_ADD_DSC11" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BUSBAR10/CONNECTIVITY_NODE82" cNodeName="CONNECTIVITY_NODE82"/>
					<Terminal name="T4_2_ADD_DSC12" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T4_2/CONNECTIVITY_NODE83" cNodeName="CONNECTIVITY_NODE83"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR50">
					<Terminal name="T4_2_ADD_DSC21" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T4_2/CONNECTIVITY_NODE84" cNodeName="CONNECTIVITY_NODE84"/>
					<Terminal name="T4_2_ADD_DSC22" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T4_2/CONNECTIVITY_NODE85" cNodeName="CONNECTIVITY_NODE85"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T4_2/CONNECTIVITY_NODE83" name="CONNECTIVITY_NODE83"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T4_2/CONNECTIVITY_NODE84" name="CONNECTIVITY_NODE84"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T4_2/CONNECTIVITY_NODE85" name="CONNECTIVITY_NODE85"/>
			</Bay>
			<Bay name="BAY_T3_0">
				<ConductingEquipment type="CBR" name="BREAKER26">
					<Terminal name="T3_0_ADDB1" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T3_0/CONNECTIVITY_NODE86" cNodeName="CONNECTIVITY_NODE86"/>
					<Terminal name="T3_0_ADDB2" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T3_0/CONNECTIVITY_NODE87" cNodeName="CONNECTIVITY_NODE87"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR51">
					<Terminal name="T3_0_ADD_DSC11" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BUSBAR10/CONNECTIVITY_NODE82" cNodeName="CONNECTIVITY_NODE82"/>
					<Terminal name="T3_0_ADD_DSC12" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T3_0/CONNECTIVITY_NODE86" cNodeName="CONNECTIVITY_NODE86"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR52">
					<Terminal name="T3_0_ADD_DSC21" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T3_0/CONNECTIVITY_NODE87" cNodeName="CONNECTIVITY_NODE87"/>
					<Terminal name="T3_0_ADD_DSC22" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T3_0/CONNECTIVITY_NODE88" cNodeName="CONNECTIVITY_NODE88"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T3_0/CONNECTIVITY_NODE86" name="CONNECTIVITY_NODE86"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T3_0/CONNECTIVITY_NODE87" name="CONNECTIVITY_NODE87"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_T3_0/CONNECTIVITY_NODE88" name="CONNECTIVITY_NODE88"/>
			</Bay>
			<Bay name="BAY_68-116_0">
				<ConductingEquipment type="CBR" name="BREAKER29">
					<Terminal name="68-116_0_ADDB1" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_68-116_0/CONNECTIVITY_NODE96" cNodeName="CONNECTIVITY_NODE96"/>
					<Terminal name="68-116_0_ADDB2" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_68-116_0/CONNECTIVITY_NODE97" cNodeName="CONNECTIVITY_NODE97"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR57">
					<Terminal name="68-116_0_ADD_DSC11" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BUSBAR10/CONNECTIVITY_NODE82" cNodeName="CONNECTIVITY_NODE82"/>
					<Terminal name="68-116_0_ADD_DSC12" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_68-116_0/CONNECTIVITY_NODE96" cNodeName="CONNECTIVITY_NODE96"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR58">
					<Terminal name="68-116_0_ADD_DSC21" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_68-116_0/CONNECTIVITY_NODE97" cNodeName="CONNECTIVITY_NODE97"/>
					<Terminal name="68-116_0_ADD_DSC22" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_68-116_0/CONNECTIVITY_NODE98" cNodeName="CONNECTIVITY_NODE98"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_68-116_0/CONNECTIVITY_NODE96" name="CONNECTIVITY_NODE96"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_68-116_0/CONNECTIVITY_NODE97" name="CONNECTIVITY_NODE97"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 380kV/BAY_68-116_0/CONNECTIVITY_NODE98" name="CONNECTIVITY_NODE98"/>
			</Bay>
		</VoltageLevel>
		<VoltageLevel name="S1 30kV">
			<Voltage unit="V" multiplier="k">30.0</Voltage>
			<Bay name="BUSBAR9">
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BUSBAR9/CONNECTIVITY_NODE75" name="CONNECTIVITY_NODE75"/>
			</Bay>
			<Bay name="BUSBAR11">
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BUSBAR11/CONNECTIVITY_NODE92" name="CONNECTIVITY_NODE92"/>
			</Bay>
			<Bay name="BAY_T4_0">
				<ConductingEquipment type="CBR" name="BREAKER23">
					<Terminal name="T4_0_ADDB1" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T4_0/CONNECTIVITY_NODE76" cNodeName="CONNECTIVITY_NODE76"/>
					<Terminal name="T4_0_ADDB2" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T4_0/CONNECTIVITY_NODE77" cNodeName="CONNECTIVITY_NODE77"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR45">
					<Terminal name="T4_0_ADD_DSC11" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BUSBAR9/CONNECTIVITY_NODE75" cNodeName="CONNECTIVITY_NODE75"/>
					<Terminal name="T4_0_ADD_DSC12" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T4_0/CONNECTIVITY_NODE76" cNodeName="CONNECTIVITY_NODE76"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR46">
					<Terminal name="T4_0_ADD_DSC21" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T4_0/CONNECTIVITY_NODE77" cNodeName="CONNECTIVITY_NODE77"/>
					<Terminal name="T4_0_ADD_DSC22" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T4_0/CONNECTIVITY_NODE78" cNodeName="CONNECTIVITY_NODE78"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T4_0/CONNECTIVITY_NODE76" name="CONNECTIVITY_NODE76"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T4_0/CONNECTIVITY_NODE77" name="CONNECTIVITY_NODE77"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T4_0/CONNECTIVITY_NODE78" name="CONNECTIVITY_NODE78"/>
			</Bay>
			<Bay name="BAY_T3_2">
				<ConductingEquipment type="CBR" name="BREAKER28">
					<Terminal name="T3_2_ADDB1" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T3_2/CONNECTIVITY_NODE93" cNodeName="CONNECTIVITY_NODE93"/>
					<Terminal name="T3_2_ADDB2" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T3_2/CONNECTIVITY_NODE94" cNodeName="CONNECTIVITY_NODE94"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR55">
					<Terminal name="T3_2_ADD_DSC11" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BUSBAR11/CONNECTIVITY_NODE92" cNodeName="CONNECTIVITY_NODE92"/>
					<Terminal name="T3_2_ADD_DSC12" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T3_2/CONNECTIVITY_NODE93" cNodeName="CONNECTIVITY_NODE93"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR56">
					<Terminal name="T3_2_ADD_DSC21" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T3_2/CONNECTIVITY_NODE94" cNodeName="CONNECTIVITY_NODE94"/>
					<Terminal name="T3_2_ADD_DSC22" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T3_2/CONNECTIVITY_NODE95" cNodeName="CONNECTIVITY_NODE95"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T3_2/CONNECTIVITY_NODE93" name="CONNECTIVITY_NODE93"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T3_2/CONNECTIVITY_NODE94" name="CONNECTIVITY_NODE94"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 30kV/BAY_T3_2/CONNECTIVITY_NODE95" name="CONNECTIVITY_NODE95"/>
			</Bay>
		</VoltageLevel>
		<VoltageLevel name="S1 110kV">
			<Voltage unit="V" multiplier="k">110.0</Voltage>
			<Bay name="BUSBAR6">
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BUSBAR6/CONNECTIVITY_NODE24" name="CONNECTIVITY_NODE24"/>
			</Bay>
			<Bay name="BAY_L1_0">
				<ConductingEquipment type="CBR" name="BREAKER7">
					<Terminal name="L1_0_ADDB1" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L1_0/CONNECTIVITY_NODE25" cNodeName="CONNECTIVITY_NODE25"/>
					<Terminal name="L1_0_ADDB2" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L1_0/CONNECTIVITY_NODE26" cNodeName="CONNECTIVITY_NODE26"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR13">
					<Terminal name="L1_0_ADD_DSC11" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BUSBAR6/CONNECTIVITY_NODE24" cNodeName="CONNECTIVITY_NODE24"/>
					<Terminal name="L1_0_ADD_DSC12" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L1_0/CONNECTIVITY_NODE25" cNodeName="CONNECTIVITY_NODE25"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR14">
					<Terminal name="L1_0_ADD_DSC21" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L1_0/CONNECTIVITY_NODE26" cNodeName="CONNECTIVITY_NODE26"/>
					<Terminal name="L1_0_ADD_DSC22" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L1_0/CONNECTIVITY_NODE27" cNodeName="CONNECTIVITY_NODE27"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L1_0/CONNECTIVITY_NODE25" name="CONNECTIVITY_NODE25"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L1_0/CONNECTIVITY_NODE26" name="CONNECTIVITY_NODE26"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L1_0/CONNECTIVITY_NODE27" name="CONNECTIVITY_NODE27"/>
			</Bay>
			<Bay name="BAY_L3_a_0">
				<ConductingEquipment type="CBR" name="BREAKER11">
					<Terminal name="L3_a_0_ADDB1" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_a_0/CONNECTIVITY_NODE37" cNodeName="CONNECTIVITY_NODE37"/>
					<Terminal name="L3_a_0_ADDB2" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_a_0/CONNECTIVITY_NODE38" cNodeName="CONNECTIVITY_NODE38"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR21">
					<Terminal name="L3_a_0_ADD_DSC11" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BUSBAR6/CONNECTIVITY_NODE24" cNodeName="CONNECTIVITY_NODE24"/>
					<Terminal name="L3_a_0_ADD_DSC12" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_a_0/CONNECTIVITY_NODE37" cNodeName="CONNECTIVITY_NODE37"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR22">
					<Terminal name="L3_a_0_ADD_DSC21" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_a_0/CONNECTIVITY_NODE38" cNodeName="CONNECTIVITY_NODE38"/>
					<Terminal name="L3_a_0_ADD_DSC22" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_a_0/CONNECTIVITY_NODE39" cNodeName="CONNECTIVITY_NODE39"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_a_0/CONNECTIVITY_NODE37" name="CONNECTIVITY_NODE37"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_a_0/CONNECTIVITY_NODE38" name="CONNECTIVITY_NODE38"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_a_0/CONNECTIVITY_NODE39" name="CONNECTIVITY_NODE39"/>
			</Bay>
			<Bay name="BAY_L3_b_0">
				<ConductingEquipment type="CBR" name="BREAKER13">
					<Terminal name="L3_b_0_ADDB1" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_b_0/CONNECTIVITY_NODE43" cNodeName="CONNECTIVITY_NODE43"/>
					<Terminal name="L3_b_0_ADDB2" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_b_0/CONNECTIVITY_NODE44" cNodeName="CONNECTIVITY_NODE44"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR25">
					<Terminal name="L3_b_0_ADD_DSC11" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BUSBAR6/CONNECTIVITY_NODE24" cNodeName="CONNECTIVITY_NODE24"/>
					<Terminal name="L3_b_0_ADD_DSC12" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_b_0/CONNECTIVITY_NODE43" cNodeName="CONNECTIVITY_NODE43"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR26">
					<Terminal name="L3_b_0_ADD_DSC21" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_b_0/CONNECTIVITY_NODE44" cNodeName="CONNECTIVITY_NODE44"/>
					<Terminal name="L3_b_0_ADD_DSC22" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_b_0/CONNECTIVITY_NODE45" cNodeName="CONNECTIVITY_NODE45"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_b_0/CONNECTIVITY_NODE43" name="CONNECTIVITY_NODE43"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_b_0/CONNECTIVITY_NODE44" name="CONNECTIVITY_NODE44"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_L3_b_0/CONNECTIVITY_NODE45" name="CONNECTIVITY_NODE45"/>
			</Bay>
			<Bay name="BAY_T4_1">
				<ConductingEquipment type="CBR" name="BREAKER24">
					<Terminal name="T4_1_ADDB1" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T4_1/CONNECTIVITY_NODE79" cNodeName="CONNECTIVITY_NODE79"/>
					<Terminal name="T4_1_ADDB2" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T4_1/CONNECTIVITY_NODE80" cNodeName="CONNECTIVITY_NODE80"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR47">
					<Terminal name="T4_1_ADD_DSC11" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BUSBAR6/CONNECTIVITY_NODE24" cNodeName="CONNECTIVITY_NODE24"/>
					<Terminal name="T4_1_ADD_DSC12" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T4_1/CONNECTIVITY_NODE79" cNodeName="CONNECTIVITY_NODE79"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR48">
					<Terminal name="T4_1_ADD_DSC21" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T4_1/CONNECTIVITY_NODE80" cNodeName="CONNECTIVITY_NODE80"/>
					<Terminal name="T4_1_ADD_DSC22" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T4_1/CONNECTIVITY_NODE81" cNodeName="CONNECTIVITY_NODE81"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T4_1/CONNECTIVITY_NODE79" name="CONNECTIVITY_NODE79"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T4_1/CONNECTIVITY_NODE80" name="CONNECTIVITY_NODE80"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T4_1/CONNECTIVITY_NODE81" name="CONNECTIVITY_NODE81"/>
			</Bay>
			<Bay name="BAY_T3_1">
				<ConductingEquipment type="CBR" name="BREAKER27">
					<Terminal name="T3_1_ADDB1" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T3_1/CONNECTIVITY_NODE89" cNodeName="CONNECTIVITY_NODE89"/>
					<Terminal name="T3_1_ADDB2" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T3_1/CONNECTIVITY_NODE90" cNodeName="CONNECTIVITY_NODE90"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR53">
					<Terminal name="T3_1_ADD_DSC11" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BUSBAR6/CONNECTIVITY_NODE24" cNodeName="CONNECTIVITY_NODE24"/>
					<Terminal name="T3_1_ADD_DSC12" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T3_1/CONNECTIVITY_NODE89" cNodeName="CONNECTIVITY_NODE89"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR54">
					<Terminal name="T3_1_ADD_DSC21" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T3_1/CONNECTIVITY_NODE90" cNodeName="CONNECTIVITY_NODE90"/>
					<Terminal name="T3_1_ADD_DSC22" connectivityNode="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T3_1/CONNECTIVITY_NODE91" cNodeName="CONNECTIVITY_NODE91"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T3_1/CONNECTIVITY_NODE89" name="CONNECTIVITY_NODE89"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T3_1/CONNECTIVITY_NODE90" name="CONNECTIVITY_NODE90"/>
				<ConnectivityNode pathName="_af9a4ae3-ba2e-4c34-8e47-5af894ee20f4/S1 110kV/BAY_T3_1/CONNECTIVITY_NODE91" name="CONNECTIVITY_NODE91"/>
			</Bay>
		</VoltageLevel>
	</Substation>
	<Substation name="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9" desc="Sub2">
		<PowerTransformer type="PTR" name="T2" desc="Trafo-3">
			<TransformerWinding type="PTW" name="T2_1">
				<Terminal name="T2_0" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_T2_0/CONNECTIVITY_NODE63" cNodeName="CONNECTIVITY_NODE63"/>
			</TransformerWinding>
			<TransformerWinding type="PTW" name="T2_2">
				<Terminal name="T2_1" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 10kV/BAY_T2_1/CONNECTIVITY_NODE67" cNodeName="CONNECTIVITY_NODE67"/>
			</TransformerWinding>
		</PowerTransformer>
		<VoltageLevel name="S2 10kV">
			<Voltage unit="V" multiplier="k">10.0</Voltage>
			<Bay name="BUSBAR7">
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 10kV/BUSBAR7/CONNECTIVITY_NODE64" name="CONNECTIVITY_NODE64"/>
			</Bay>
			<Bay name="BAY_T2_1">
				<ConductingEquipment type="CBR" name="BREAKER20">
					<Terminal name="T2_1_ADDB1" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 10kV/BAY_T2_1/CONNECTIVITY_NODE65" cNodeName="CONNECTIVITY_NODE65"/>
					<Terminal name="T2_1_ADDB2" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 10kV/BAY_T2_1/CONNECTIVITY_NODE66" cNodeName="CONNECTIVITY_NODE66"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR39">
					<Terminal name="T2_1_ADD_DSC11" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 10kV/BUSBAR7/CONNECTIVITY_NODE64" cNodeName="CONNECTIVITY_NODE64"/>
					<Terminal name="T2_1_ADD_DSC12" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 10kV/BAY_T2_1/CONNECTIVITY_NODE65" cNodeName="CONNECTIVITY_NODE65"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR40">
					<Terminal name="T2_1_ADD_DSC21" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 10kV/BAY_T2_1/CONNECTIVITY_NODE66" cNodeName="CONNECTIVITY_NODE66"/>
					<Terminal name="T2_1_ADD_DSC22" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 10kV/BAY_T2_1/CONNECTIVITY_NODE67" cNodeName="CONNECTIVITY_NODE67"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 10kV/BAY_T2_1/CONNECTIVITY_NODE65" name="CONNECTIVITY_NODE65"/>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 10kV/BAY_T2_1/CONNECTIVITY_NODE66" name="CONNECTIVITY_NODE66"/>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 10kV/BAY_T2_1/CONNECTIVITY_NODE67" name="CONNECTIVITY_NODE67"/>
			</Bay>
		</VoltageLevel>
		<VoltageLevel name="S2 110kV">
			<Voltage unit="V" multiplier="k">110.0</Voltage>
			<Bay name="BUSBAR5">
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BUSBAR5/CONNECTIVITY_NODE20" name="CONNECTIVITY_NODE20"/>
			</Bay>
			<Bay name="BAY_L4_1">
				<ConductingEquipment type="CBR" name="BREAKER6">
					<Terminal name="L4_1_ADDB1" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L4_1/CONNECTIVITY_NODE21" cNodeName="CONNECTIVITY_NODE21"/>
					<Terminal name="L4_1_ADDB2" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L4_1/CONNECTIVITY_NODE22" cNodeName="CONNECTIVITY_NODE22"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR11">
					<Terminal name="L4_1_ADD_DSC11" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BUSBAR5/CONNECTIVITY_NODE20" cNodeName="CONNECTIVITY_NODE20"/>
					<Terminal name="L4_1_ADD_DSC12" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L4_1/CONNECTIVITY_NODE21" cNodeName="CONNECTIVITY_NODE21"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR12">
					<Terminal name="L4_1_ADD_DSC21" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L4_1/CONNECTIVITY_NODE22" cNodeName="CONNECTIVITY_NODE22"/>
					<Terminal name="L4_1_ADD_DSC22" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L4_1/CONNECTIVITY_NODE23" cNodeName="CONNECTIVITY_NODE23"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L4_1/CONNECTIVITY_NODE21" name="CONNECTIVITY_NODE21"/>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L4_1/CONNECTIVITY_NODE22" name="CONNECTIVITY_NODE22"/>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L4_1/CONNECTIVITY_NODE23" name="CONNECTIVITY_NODE23"/>
			</Bay>
			<Bay name="BAY_L1_1">
				<ConductingEquipment type="CBR" name="BREAKER8">
					<Terminal name="L1_1_ADDB1" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L1_1/CONNECTIVITY_NODE28" cNodeName="CONNECTIVITY_NODE28"/>
					<Terminal name="L1_1_ADDB2" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L1_1/CONNECTIVITY_NODE29" cNodeName="CONNECTIVITY_NODE29"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR15">
					<Terminal name="L1_1_ADD_DSC11" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BUSBAR5/CONNECTIVITY_NODE20" cNodeName="CONNECTIVITY_NODE20"/>
					<Terminal name="L1_1_ADD_DSC12" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L1_1/CONNECTIVITY_NODE28" cNodeName="CONNECTIVITY_NODE28"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR16">
					<Terminal name="L1_1_ADD_DSC21" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L1_1/CONNECTIVITY_NODE29" cNodeName="CONNECTIVITY_NODE29"/>
					<Terminal name="L1_1_ADD_DSC22" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L1_1/CONNECTIVITY_NODE30" cNodeName="CONNECTIVITY_NODE30"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L1_1/CONNECTIVITY_NODE28" name="CONNECTIVITY_NODE28"/>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L1_1/CONNECTIVITY_NODE29" name="CONNECTIVITY_NODE29"/>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L1_1/CONNECTIVITY_NODE30" name="CONNECTIVITY_NODE30"/>
			</Bay>
			<Bay name="BAY_L2_0">
				<ConductingEquipment type="CBR" name="BREAKER9">
					<Terminal name="L2_0_ADDB1" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L2_0/CONNECTIVITY_NODE31" cNodeName="CONNECTIVITY_NODE31"/>
					<Terminal name="L2_0_ADDB2" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L2_0/CONNECTIVITY_NODE32" cNodeName="CONNECTIVITY_NODE32"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR17">
					<Terminal name="L2_0_ADD_DSC11" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BUSBAR5/CONNECTIVITY_NODE20" cNodeName="CONNECTIVITY_NODE20"/>
					<Terminal name="L2_0_ADD_DSC12" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L2_0/CONNECTIVITY_NODE31" cNodeName="CONNECTIVITY_NODE31"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR18">
					<Terminal name="L2_0_ADD_DSC21" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L2_0/CONNECTIVITY_NODE32" cNodeName="CONNECTIVITY_NODE32"/>
					<Terminal name="L2_0_ADD_DSC22" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L2_0/CONNECTIVITY_NODE33" cNodeName="CONNECTIVITY_NODE33"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L2_0/CONNECTIVITY_NODE31" name="CONNECTIVITY_NODE31"/>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L2_0/CONNECTIVITY_NODE32" name="CONNECTIVITY_NODE32"/>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_L2_0/CONNECTIVITY_NODE33" name="CONNECTIVITY_NODE33"/>
			</Bay>
			<Bay name="BAY_T2_0">
				<ConductingEquipment type="CBR" name="BREAKER19">
					<Terminal name="T2_0_ADDB1" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_T2_0/CONNECTIVITY_NODE61" cNodeName="CONNECTIVITY_NODE61"/>
					<Terminal name="T2_0_ADDB2" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_T2_0/CONNECTIVITY_NODE62" cNodeName="CONNECTIVITY_NODE62"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR37">
					<Terminal name="T2_0_ADD_DSC11" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BUSBAR5/CONNECTIVITY_NODE20" cNodeName="CONNECTIVITY_NODE20"/>
					<Terminal name="T2_0_ADD_DSC12" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_T2_0/CONNECTIVITY_NODE61" cNodeName="CONNECTIVITY_NODE61"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR38">
					<Terminal name="T2_0_ADD_DSC21" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_T2_0/CONNECTIVITY_NODE62" cNodeName="CONNECTIVITY_NODE62"/>
					<Terminal name="T2_0_ADD_DSC22" connectivityNode="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_T2_0/CONNECTIVITY_NODE63" cNodeName="CONNECTIVITY_NODE63"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_T2_0/CONNECTIVITY_NODE61" name="CONNECTIVITY_NODE61"/>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_T2_0/CONNECTIVITY_NODE62" name="CONNECTIVITY_NODE62"/>
				<ConnectivityNode pathName="_3f64f4e2-adfe-4d12-b082-68e7fe4b11c9/S2 110kV/BAY_T2_0/CONNECTIVITY_NODE63" name="CONNECTIVITY_NODE63"/>
			</Bay>
		</VoltageLevel>
	</Substation>
	<Substation name="_974565b1-ac55-4901-9f48-afc7ef5486df" desc="Sub3">
		<PowerTransformer type="PTR" name="T1" desc="Trafo-4">
			<TransformerWinding type="PTW" name="T1_2">
				<Terminal name="T1_0" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 21kV/BAY_T1_0/CONNECTIVITY_NODE71" cNodeName="CONNECTIVITY_NODE71"/>
				<TapChanger type="LTC" name="T1"/>
			</TransformerWinding>
			<TransformerWinding type="PTW" name="T1_1">
				<Terminal name="T1_1" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_T1_1/CONNECTIVITY_NODE74" cNodeName="CONNECTIVITY_NODE74"/>
			</TransformerWinding>
		</PowerTransformer>
		<VoltageLevel name="S3 21kV">
			<Voltage unit="V" multiplier="k">21.0</Voltage>
			<Bay name="BUSBAR8">
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 21kV/BUSBAR8/CONNECTIVITY_NODE68" name="CONNECTIVITY_NODE68"/>
			</Bay>
			<Bay name="BAY_T1_0">
				<ConductingEquipment type="CBR" name="BREAKER21">
					<Terminal name="T1_0_ADDB1" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 21kV/BAY_T1_0/CONNECTIVITY_NODE69" cNodeName="CONNECTIVITY_NODE69"/>
					<Terminal name="T1_0_ADDB2" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 21kV/BAY_T1_0/CONNECTIVITY_NODE70" cNodeName="CONNECTIVITY_NODE70"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR41">
					<Terminal name="T1_0_ADD_DSC11" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 21kV/BUSBAR8/CONNECTIVITY_NODE68" cNodeName="CONNECTIVITY_NODE68"/>
					<Terminal name="T1_0_ADD_DSC12" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 21kV/BAY_T1_0/CONNECTIVITY_NODE69" cNodeName="CONNECTIVITY_NODE69"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR42">
					<Terminal name="T1_0_ADD_DSC21" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 21kV/BAY_T1_0/CONNECTIVITY_NODE70" cNodeName="CONNECTIVITY_NODE70"/>
					<Terminal name="T1_0_ADD_DSC22" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 21kV/BAY_T1_0/CONNECTIVITY_NODE71" cNodeName="CONNECTIVITY_NODE71"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 21kV/BAY_T1_0/CONNECTIVITY_NODE69" name="CONNECTIVITY_NODE69"/>
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 21kV/BAY_T1_0/CONNECTIVITY_NODE70" name="CONNECTIVITY_NODE70"/>
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 21kV/BAY_T1_0/CONNECTIVITY_NODE71" name="CONNECTIVITY_NODE71"/>
			</Bay>
		</VoltageLevel>
		<VoltageLevel name="S3 110kV">
			<Voltage unit="V" multiplier="k">110.0</Voltage>
			<Bay name="BUSBAR2">
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BUSBAR2/CONNECTIVITY_NODE5" name="CONNECTIVITY_NODE5"/>
			</Bay>
			<Bay name="BAY_L5_1">
				<ConductingEquipment type="CBR" name="BREAKER2">
					<Terminal name="L5_1_ADDB1" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L5_1/CONNECTIVITY_NODE6" cNodeName="CONNECTIVITY_NODE6"/>
					<Terminal name="L5_1_ADDB2" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L5_1/CONNECTIVITY_NODE7" cNodeName="CONNECTIVITY_NODE7"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR3">
					<Terminal name="L5_1_ADD_DSC11" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BUSBAR2/CONNECTIVITY_NODE5" cNodeName="CONNECTIVITY_NODE5"/>
					<Terminal name="L5_1_ADD_DSC12" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L5_1/CONNECTIVITY_NODE6" cNodeName="CONNECTIVITY_NODE6"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR4">
					<Terminal name="L5_1_ADD_DSC21" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L5_1/CONNECTIVITY_NODE7" cNodeName="CONNECTIVITY_NODE7"/>
					<Terminal name="L5_1_ADD_DSC22" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L5_1/CONNECTIVITY_NODE8" cNodeName="CONNECTIVITY_NODE8"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L5_1/CONNECTIVITY_NODE6" name="CONNECTIVITY_NODE6"/>
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L5_1/CONNECTIVITY_NODE7" name="CONNECTIVITY_NODE7"/>
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L5_1/CONNECTIVITY_NODE8" name="CONNECTIVITY_NODE8"/>
			</Bay>
			<Bay name="BAY_L2_1">
				<ConductingEquipment type="CBR" name="BREAKER10">
					<Terminal name="L2_1_ADDB1" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L2_1/CONNECTIVITY_NODE34" cNodeName="CONNECTIVITY_NODE34"/>
					<Terminal name="L2_1_ADDB2" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L2_1/CONNECTIVITY_NODE35" cNodeName="CONNECTIVITY_NODE35"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR19">
					<Terminal name="L2_1_ADD_DSC11" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BUSBAR2/CONNECTIVITY_NODE5" cNodeName="CONNECTIVITY_NODE5"/>
					<Terminal name="L2_1_ADD_DSC12" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L2_1/CONNECTIVITY_NODE34" cNodeName="CONNECTIVITY_NODE34"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR20">
					<Terminal name="L2_1_ADD_DSC21" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L2_1/CONNECTIVITY_NODE35" cNodeName="CONNECTIVITY_NODE35"/>
					<Terminal name="L2_1_ADD_DSC22" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L2_1/CONNECTIVITY_NODE36" cNodeName="CONNECTIVITY_NODE36"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L2_1/CONNECTIVITY_NODE34" name="CONNECTIVITY_NODE34"/>
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L2_1/CONNECTIVITY_NODE35" name="CONNECTIVITY_NODE35"/>
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_L2_1/CONNECTIVITY_NODE36" name="CONNECTIVITY_NODE36"/>
			</Bay>
			<Bay name="BAY_T1_1">
				<ConductingEquipment type="CBR" name="BREAKER22">
					<Terminal name="T1_1_ADDB1" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_T1_1/CONNECTIVITY_NODE72" cNodeName="CONNECTIVITY_NODE72"/>
					<Terminal name="T1_1_ADDB2" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_T1_1/CONNECTIVITY_NODE73" cNodeName="CONNECTIVITY_NODE73"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR43">
					<Terminal name="T1_1_ADD_DSC11" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BUSBAR2/CONNECTIVITY_NODE5" cNodeName="CONNECTIVITY_NODE5"/>
					<Terminal name="T1_1_ADD_DSC12" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_T1_1/CONNECTIVITY_NODE72" cNodeName="CONNECTIVITY_NODE72"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR44">
					<Terminal name="T1_1_ADD_DSC21" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_T1_1/CONNECTIVITY_NODE73" cNodeName="CONNECTIVITY_NODE73"/>
					<Terminal name="T1_1_ADD_DSC22" connectivityNode="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_T1_1/CONNECTIVITY_NODE74" cNodeName="CONNECTIVITY_NODE74"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_T1_1/CONNECTIVITY_NODE72" name="CONNECTIVITY_NODE72"/>
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_T1_1/CONNECTIVITY_NODE73" name="CONNECTIVITY_NODE73"/>
				<ConnectivityNode pathName="_974565b1-ac55-4901-9f48-afc7ef5486df/S3 110kV/BAY_T1_1/CONNECTIVITY_NODE74" name="CONNECTIVITY_NODE74"/>
			</Bay>
		</VoltageLevel>
	</Substation>
	<Substation name="_d6056127-34f1-43a9-b029-23fddb913bd5" desc="Sub4">
		<PowerTransformer type="PTR" name="T5" desc="Trafo-1">
			<TransformerWinding type="PTW" name="T5_1">
				<Terminal name="T5_0" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T5_0/CONNECTIVITY_NODE51" cNodeName="CONNECTIVITY_NODE51"/>
			</TransformerWinding>
			<TransformerWinding type="PTW" name="T5_2">
				<Terminal name="T5_1" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T5_1/CONNECTIVITY_NODE54" cNodeName="CONNECTIVITY_NODE54"/>
			</TransformerWinding>
		</PowerTransformer>
		<PowerTransformer type="PTR" name="T6" desc="Trafo-2">
			<TransformerWinding type="PTW" name="T6_1">
				<Terminal name="T6_0" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T6_0/CONNECTIVITY_NODE57" cNodeName="CONNECTIVITY_NODE57"/>
			</TransformerWinding>
			<TransformerWinding type="PTW" name="T6_2">
				<Terminal name="T6_1" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T6_1/CONNECTIVITY_NODE60" cNodeName="CONNECTIVITY_NODE60"/>
			</TransformerWinding>
		</PowerTransformer>
		<VoltageLevel name="S4 10kV">
			<Voltage unit="V" multiplier="k">10.0</Voltage>
			<Bay name="BUSBAR3">
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BUSBAR3/CONNECTIVITY_NODE9" name="CONNECTIVITY_NODE9"/>
			</Bay>
			<Bay name="BAY_L6_0">
				<ConductingEquipment type="CBR" name="BREAKER3">
					<Terminal name="L6_0_ADDB1" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_L6_0/CONNECTIVITY_NODE10" cNodeName="CONNECTIVITY_NODE10"/>
					<Terminal name="L6_0_ADDB2" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_L6_0/CONNECTIVITY_NODE11" cNodeName="CONNECTIVITY_NODE11"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR5">
					<Terminal name="L6_0_ADD_DSC11" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BUSBAR3/CONNECTIVITY_NODE9" cNodeName="CONNECTIVITY_NODE9"/>
					<Terminal name="L6_0_ADD_DSC12" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_L6_0/CONNECTIVITY_NODE10" cNodeName="CONNECTIVITY_NODE10"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR6">
					<Terminal name="L6_0_ADD_DSC21" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_L6_0/CONNECTIVITY_NODE11" cNodeName="CONNECTIVITY_NODE11"/>
					<Terminal name="L6_0_ADD_DSC22" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_L6_0/CONNECTIVITY_NODE12" cNodeName="CONNECTIVITY_NODE12"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_L6_0/CONNECTIVITY_NODE10" name="CONNECTIVITY_NODE10"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_L6_0/CONNECTIVITY_NODE11" name="CONNECTIVITY_NODE11"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_L6_0/CONNECTIVITY_NODE12" name="CONNECTIVITY_NODE12"/>
			</Bay>
			<Bay name="BAY_T5_1">
				<ConductingEquipment type="CBR" name="BREAKER16">
					<Terminal name="T5_1_ADDB1" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T5_1/CONNECTIVITY_NODE52" cNodeName="CONNECTIVITY_NODE52"/>
					<Terminal name="T5_1_ADDB2" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T5_1/CONNECTIVITY_NODE53" cNodeName="CONNECTIVITY_NODE53"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR31">
					<Terminal name="T5_1_ADD_DSC11" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BUSBAR3/CONNECTIVITY_NODE9" cNodeName="CONNECTIVITY_NODE9"/>
					<Terminal name="T5_1_ADD_DSC12" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T5_1/CONNECTIVITY_NODE52" cNodeName="CONNECTIVITY_NODE52"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR32">
					<Terminal name="T5_1_ADD_DSC21" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T5_1/CONNECTIVITY_NODE53" cNodeName="CONNECTIVITY_NODE53"/>
					<Terminal name="T5_1_ADD_DSC22" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T5_1/CONNECTIVITY_NODE54" cNodeName="CONNECTIVITY_NODE54"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T5_1/CONNECTIVITY_NODE52" name="CONNECTIVITY_NODE52"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T5_1/CONNECTIVITY_NODE53" name="CONNECTIVITY_NODE53"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T5_1/CONNECTIVITY_NODE54" name="CONNECTIVITY_NODE54"/>
			</Bay>
			<Bay name="BAY_T6_1">
				<ConductingEquipment type="CBR" name="BREAKER18">
					<Terminal name="T6_1_ADDB1" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T6_1/CONNECTIVITY_NODE58" cNodeName="CONNECTIVITY_NODE58"/>
					<Terminal name="T6_1_ADDB2" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T6_1/CONNECTIVITY_NODE59" cNodeName="CONNECTIVITY_NODE59"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR35">
					<Terminal name="T6_1_ADD_DSC11" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BUSBAR3/CONNECTIVITY_NODE9" cNodeName="CONNECTIVITY_NODE9"/>
					<Terminal name="T6_1_ADD_DSC12" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T6_1/CONNECTIVITY_NODE58" cNodeName="CONNECTIVITY_NODE58"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR36">
					<Terminal name="T6_1_ADD_DSC21" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T6_1/CONNECTIVITY_NODE59" cNodeName="CONNECTIVITY_NODE59"/>
					<Terminal name="T6_1_ADD_DSC22" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T6_1/CONNECTIVITY_NODE60" cNodeName="CONNECTIVITY_NODE60"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T6_1/CONNECTIVITY_NODE58" name="CONNECTIVITY_NODE58"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T6_1/CONNECTIVITY_NODE59" name="CONNECTIVITY_NODE59"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 10kV/BAY_T6_1/CONNECTIVITY_NODE60" name="CONNECTIVITY_NODE60"/>
			</Bay>
		</VoltageLevel>
		<VoltageLevel name="S4 110kV">
			<Voltage unit="V" multiplier="k">110.0</Voltage>
			<Bay name="BUSBAR1">
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BUSBAR1/CONNECTIVITY_NODE1" name="CONNECTIVITY_NODE1"/>
			</Bay>
			<Bay name="BAY_L5_0">
				<ConductingEquipment type="CBR" name="BREAKER1">
					<Terminal name="L5_0_ADDB1" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L5_0/CONNECTIVITY_NODE2" cNodeName="CONNECTIVITY_NODE2"/>
					<Terminal name="L5_0_ADDB2" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L5_0/CONNECTIVITY_NODE3" cNodeName="CONNECTIVITY_NODE3"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR1">
					<Terminal name="L5_0_ADD_DSC11" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BUSBAR1/CONNECTIVITY_NODE1" cNodeName="CONNECTIVITY_NODE1"/>
					<Terminal name="L5_0_ADD_DSC12" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L5_0/CONNECTIVITY_NODE2" cNodeName="CONNECTIVITY_NODE2"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR2">
					<Terminal name="L5_0_ADD_DSC21" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L5_0/CONNECTIVITY_NODE3" cNodeName="CONNECTIVITY_NODE3"/>
					<Terminal name="L5_0_ADD_DSC22" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L5_0/CONNECTIVITY_NODE4" cNodeName="CONNECTIVITY_NODE4"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L5_0/CONNECTIVITY_NODE2" name="CONNECTIVITY_NODE2"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L5_0/CONNECTIVITY_NODE3" name="CONNECTIVITY_NODE3"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L5_0/CONNECTIVITY_NODE4" name="CONNECTIVITY_NODE4"/>
			</Bay>
			<Bay name="BAY_L4_0">
				<ConductingEquipment type="CBR" name="BREAKER5">
					<Terminal name="L4_0_ADDB1" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L4_0/CONNECTIVITY_NODE17" cNodeName="CONNECTIVITY_NODE17"/>
					<Terminal name="L4_0_ADDB2" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L4_0/CONNECTIVITY_NODE18" cNodeName="CONNECTIVITY_NODE18"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR9">
					<Terminal name="L4_0_ADD_DSC11" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BUSBAR1/CONNECTIVITY_NODE1" cNodeName="CONNECTIVITY_NODE1"/>
					<Terminal name="L4_0_ADD_DSC12" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L4_0/CONNECTIVITY_NODE17" cNodeName="CONNECTIVITY_NODE17"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR10">
					<Terminal name="L4_0_ADD_DSC21" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L4_0/CONNECTIVITY_NODE18" cNodeName="CONNECTIVITY_NODE18"/>
					<Terminal name="L4_0_ADD_DSC22" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L4_0/CONNECTIVITY_NODE19" cNodeName="CONNECTIVITY_NODE19"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L4_0/CONNECTIVITY_NODE17" name="CONNECTIVITY_NODE17"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L4_0/CONNECTIVITY_NODE18" name="CONNECTIVITY_NODE18"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L4_0/CONNECTIVITY_NODE19" name="CONNECTIVITY_NODE19"/>
			</Bay>
			<Bay name="BAY_L3_a_1">
				<ConductingEquipment type="CBR" name="BREAKER12">
					<Terminal name="L3_a_1_ADDB1" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_a_1/CONNECTIVITY_NODE40" cNodeName="CONNECTIVITY_NODE40"/>
					<Terminal name="L3_a_1_ADDB2" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_a_1/CONNECTIVITY_NODE41" cNodeName="CONNECTIVITY_NODE41"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR23">
					<Terminal name="L3_a_1_ADD_DSC11" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BUSBAR1/CONNECTIVITY_NODE1" cNodeName="CONNECTIVITY_NODE1"/>
					<Terminal name="L3_a_1_ADD_DSC12" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_a_1/CONNECTIVITY_NODE40" cNodeName="CONNECTIVITY_NODE40"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR24">
					<Terminal name="L3_a_1_ADD_DSC21" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_a_1/CONNECTIVITY_NODE41" cNodeName="CONNECTIVITY_NODE41"/>
					<Terminal name="L3_a_1_ADD_DSC22" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_a_1/CONNECTIVITY_NODE42" cNodeName="CONNECTIVITY_NODE42"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_a_1/CONNECTIVITY_NODE40" name="CONNECTIVITY_NODE40"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_a_1/CONNECTIVITY_NODE41" name="CONNECTIVITY_NODE41"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_a_1/CONNECTIVITY_NODE42" name="CONNECTIVITY_NODE42"/>
			</Bay>
			<Bay name="BAY_L3_b_1">
				<ConductingEquipment type="CBR" name="BREAKER14">
					<Terminal name="L3_b_1_ADDB1" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_b_1/CONNECTIVITY_NODE46" cNodeName="CONNECTIVITY_NODE46"/>
					<Terminal name="L3_b_1_ADDB2" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_b_1/CONNECTIVITY_NODE47" cNodeName="CONNECTIVITY_NODE47"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR27">
					<Terminal name="L3_b_1_ADD_DSC11" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BUSBAR1/CONNECTIVITY_NODE1" cNodeName="CONNECTIVITY_NODE1"/>
					<Terminal name="L3_b_1_ADD_DSC12" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_b_1/CONNECTIVITY_NODE46" cNodeName="CONNECTIVITY_NODE46"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR28">
					<Terminal name="L3_b_1_ADD_DSC21" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_b_1/CONNECTIVITY_NODE47" cNodeName="CONNECTIVITY_NODE47"/>
					<Terminal name="L3_b_1_ADD_DSC22" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_b_1/CONNECTIVITY_NODE48" cNodeName="CONNECTIVITY_NODE48"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_b_1/CONNECTIVITY_NODE46" name="CONNECTIVITY_NODE46"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_b_1/CONNECTIVITY_NODE47" name="CONNECTIVITY_NODE47"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_L3_b_1/CONNECTIVITY_NODE48" name="CONNECTIVITY_NODE48"/>
			</Bay>
			<Bay name="BAY_T5_0">
				<ConductingEquipment type="CBR" name="BREAKER15">
					<Terminal name="T5_0_ADDB1" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T5_0/CONNECTIVITY_NODE49" cNodeName="CONNECTIVITY_NODE49"/>
					<Terminal name="T5_0_ADDB2" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T5_0/CONNECTIVITY_NODE50" cNodeName="CONNECTIVITY_NODE50"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR29">
					<Terminal name="T5_0_ADD_DSC11" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BUSBAR1/CONNECTIVITY_NODE1" cNodeName="CONNECTIVITY_NODE1"/>
					<Terminal name="T5_0_ADD_DSC12" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T5_0/CONNECTIVITY_NODE49" cNodeName="CONNECTIVITY_NODE49"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR30">
					<Terminal name="T5_0_ADD_DSC21" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T5_0/CONNECTIVITY_NODE50" cNodeName="CONNECTIVITY_NODE50"/>
					<Terminal name="T5_0_ADD_DSC22" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T5_0/CONNECTIVITY_NODE51" cNodeName="CONNECTIVITY_NODE51"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T5_0/CONNECTIVITY_NODE49" name="CONNECTIVITY_NODE49"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T5_0/CONNECTIVITY_NODE50" name="CONNECTIVITY_NODE50"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T5_0/CONNECTIVITY_NODE51" name="CONNECTIVITY_NODE51"/>
			</Bay>
			<Bay name="BAY_T6_0">
				<ConductingEquipment type="CBR" name="BREAKER17">
					<Terminal name="T6_0_ADDB1" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T6_0/CONNECTIVITY_NODE55" cNodeName="CONNECTIVITY_NODE55"/>
					<Terminal name="T6_0_ADDB2" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T6_0/CONNECTIVITY_NODE56" cNodeName="CONNECTIVITY_NODE56"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR33">
					<Terminal name="T6_0_ADD_DSC11" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BUSBAR1/CONNECTIVITY_NODE1" cNodeName="CONNECTIVITY_NODE1"/>
					<Terminal name="T6_0_ADD_DSC12" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T6_0/CONNECTIVITY_NODE55" cNodeName="CONNECTIVITY_NODE55"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR34">
					<Terminal name="T6_0_ADD_DSC21" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T6_0/CONNECTIVITY_NODE56" cNodeName="CONNECTIVITY_NODE56"/>
					<Terminal name="T6_0_ADD_DSC22" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T6_0/CONNECTIVITY_NODE57" cNodeName="CONNECTIVITY_NODE57"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T6_0/CONNECTIVITY_NODE55" name="CONNECTIVITY_NODE55"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T6_0/CONNECTIVITY_NODE56" name="CONNECTIVITY_NODE56"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_T6_0/CONNECTIVITY_NODE57" name="CONNECTIVITY_NODE57"/>
			</Bay>
			<Bay name="BAY_71-73_0">
				<ConductingEquipment type="CBR" name="BREAKER30">
					<Terminal name="71-73_0_ADDB1" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_71-73_0/CONNECTIVITY_NODE100" cNodeName="CONNECTIVITY_NODE100"/>
					<Terminal name="71-73_0_ADDB2" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_71-73_0/CONNECTIVITY_NODE101" cNodeName="CONNECTIVITY_NODE101"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR59">
					<Terminal name="71-73_0_ADD_DSC11" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BUSBAR1/CONNECTIVITY_NODE1" cNodeName="CONNECTIVITY_NODE1"/>
					<Terminal name="71-73_0_ADD_DSC12" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_71-73_0/CONNECTIVITY_NODE100" cNodeName="CONNECTIVITY_NODE100"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR60">
					<Terminal name="71-73_0_ADD_DSC21" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_71-73_0/CONNECTIVITY_NODE101" cNodeName="CONNECTIVITY_NODE101"/>
					<Terminal name="71-73_0_ADD_DSC22" connectivityNode="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_71-73_0/CONNECTIVITY_NODE102" cNodeName="CONNECTIVITY_NODE102"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_71-73_0/CONNECTIVITY_NODE100" name="CONNECTIVITY_NODE100"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_71-73_0/CONNECTIVITY_NODE101" name="CONNECTIVITY_NODE101"/>
				<ConnectivityNode pathName="_d6056127-34f1-43a9-b029-23fddb913bd5/S4 110kV/BAY_71-73_0/CONNECTIVITY_NODE102" name="CONNECTIVITY_NODE102"/>
			</Bay>
		</VoltageLevel>
	</Substation>
	<Substation name="_b3e5b4de-b74d-43b4-8db9-784302a12acf" desc="Sub5">
		<VoltageLevel name="S5 10kV">
			<Voltage unit="V" multiplier="k">10.0</Voltage>
			<Bay name="BUSBAR4">
				<ConnectivityNode pathName="_b3e5b4de-b74d-43b4-8db9-784302a12acf/S5 10kV/BUSBAR4/CONNECTIVITY_NODE13" name="CONNECTIVITY_NODE13"/>
			</Bay>
			<Bay name="BAY_L6_1">
				<ConductingEquipment type="CBR" name="BREAKER4">
					<Terminal name="L6_1_ADDB1" connectivityNode="_b3e5b4de-b74d-43b4-8db9-784302a12acf/S5 10kV/BAY_L6_1/CONNECTIVITY_NODE14" cNodeName="CONNECTIVITY_NODE14"/>
					<Terminal name="L6_1_ADDB2" connectivityNode="_b3e5b4de-b74d-43b4-8db9-784302a12acf/S5 10kV/BAY_L6_1/CONNECTIVITY_NODE15" cNodeName="CONNECTIVITY_NODE15"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR7">
					<Terminal name="L6_1_ADD_DSC11" connectivityNode="_b3e5b4de-b74d-43b4-8db9-784302a12acf/S5 10kV/BUSBAR4/CONNECTIVITY_NODE13" cNodeName="CONNECTIVITY_NODE13"/>
					<Terminal name="L6_1_ADD_DSC12" connectivityNode="_b3e5b4de-b74d-43b4-8db9-784302a12acf/S5 10kV/BAY_L6_1/CONNECTIVITY_NODE14" cNodeName="CONNECTIVITY_NODE14"/>
				</ConductingEquipment>
				<ConductingEquipment type="DIS" name="DISCONNECTOR8">
					<Terminal name="L6_1_ADD_DSC21" connectivityNode="_b3e5b4de-b74d-43b4-8db9-784302a12acf/S5 10kV/BAY_L6_1/CONNECTIVITY_NODE15" cNodeName="CONNECTIVITY_NODE15"/>
					<Terminal name="L6_1_ADD_DSC22" connectivityNode="_b3e5b4de-b74d-43b4-8db9-784302a12acf/S5 10kV/BAY_L6_1/CONNECTIVITY_NODE16" cNodeName="CONNECTIVITY_NODE16"/>
				</ConductingEquipment>
				<ConnectivityNode pathName="_b3e5b4de-b74d-43b4-8db9-784302a12acf/S5 10kV/BAY_L6_1/CONNECTIVITY_NODE14" name="CONNECTIVITY_NODE14"/>
				<ConnectivityNode pathName="_b3e5b4de-b74d-43b4-8db9-784302a12acf/S5 10kV/BAY_L6_1/CONNECTIVITY_NODE15" name="CONNECTIVITY_NODE15"/>
				<ConnectivityNode pathName="_b3e5b4de-b74d-43b4-8db9-784302a12acf/S5 10kV/BAY_L6_1/CONNECTIVITY_NODE16" name="CONNECTIVITY_NODE16"/>
			</Bay>
		</VoltageLevel>
	</Substation>
</SCL>