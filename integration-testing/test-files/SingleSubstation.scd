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
</SCL>