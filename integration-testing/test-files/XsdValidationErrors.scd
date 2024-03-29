<?xml version="1.0" encoding="UTF-8"?>
<!-- SPDX-FileCopyrightText: 2020 RTE FRANCE -->
<!-- -->
<!-- SPDX-License-Identifier: Apache-2.0 -->

<SCL xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.iec.ch/61850/2003/SCL" version="2007" revision="B" release="4">
    <Header id="f9283708-bf4f-412c-a1d6-f947b9ac3000" version="1.0.0" revision="Revision" toolID="toolID" nameStructure="IEDName"/>
    <IED name="IED_NAME">
        <AccessPoint name="AP_NAME">
            <Server>
                <Authentication/>
                <LDevice inst="LDPO">
                    <LN0 lnType="LN2" lnClass="LLN0" inst="">
                        <Inputs>
                            <ExtRef intAddr="INTADDR" pDO="DO1" desc="DESC1"/>
                            <ExtRef intAddr="INTADDR" pDO="DO2" desc="DESC2"/>
                        </Inputs>
                    </LN0>
                    <LN lnType="LN1" lnClass="PIOC" inst="1">
                        <Inputs>
                            <ExtRef intAddr="INTADDR" pDO="DO1" desc="DESC1"/>
                            <ExtRef intAddr="INTADDR" pDO="DO2" desc="DESC2"/>
                        </Inputs>
                    </LN>
                    <LN lnType="LN1" lnClass="PIOC" inst="2">
                        <Inputs>
                            <ExtRef intAddr="INTADDR" pDO="DO1" desc="DESC1"/>
                            <ExtRef intAddr="INTADDR" pDO="DO2" desc="DESC2"/>
                        </Inputs>
                    </LN>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <DataTypeTemplates>
        <LNodeType lnClass="LLN0" id="LN2">
            <DO name="Beh" transient="false"/>
            <DO name="FACntRs" type="DO2" transient="true"/>
            <DO name="StrVal" type="DO3" transient="false"/>
        </LNodeType>
        <LNodeType lnClass="PIOC" id="LN1">
            <DO name="Beh" type="DO1" transient="false"/>
            <DO type="DO2" transient="true"/>
            <DO name="StrVal" type="DO3" transient="false"/>
        </LNodeType>
        <DOType cdc="WYE" id="DO1">
            <DA fc="DC" dchg="false" qchg="false" dupd="false" name="dataNs" bType="VisString255">
                <Val>IEC 61850-7-3:2007B</Val>
            </DA>
            <DA fc="CF" dchg="true" qchg="false" dupd="false" name="smpRate" bType="INT32U"/>
        </DOType>
        <DOType cdc="WYE" id="DO2">
            <SDO name="phsBHar" type="DO4"/>
            <DA fc="CF" dchg="true" qchg="false" dupd="true" name="angRef" bType="Enum" type="PhaseAngleReferenceKind"/>
        </DOType>
        <DOType cdc="WYE" id="DO3">
            <SDO name="neutHar" type="DO4"/>
            <DA fc="CF" dchg="true" qchg="false" dupd="false" name="smpRate" bType="INT32U"/>
            <DA fc="ST" dchg="false" qchg="false" dupd="false" name="origin" bType="Struct" type="DA3"/>
        </DOType>
        <DOType cdc="WYE" id="DO4">
            <DA fc="DC" dchg="false" qchg="false" dupd="false" name="configRev" bType="VisString255" valKind="RO" valImport="false"/>
        </DOType>
        <DAType id="DA1">
            <BDA name="operTm" bType="Timestamp"/>
            <BDA bType="Struct" type="DA3"/>
            <ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
        </DAType>
        <DAType id="DA2">
            <BDA name="T" bType="Timestamp"/>
            <BDA name="ctlVal" bType="Enum" type="RecCycModKind"/>
            <ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
        </DAType>
        <DAType id="DA3">
            <BDA bType="Check"/>
            <BDA name="Test" bType="BOOLEAN"/>
            <ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
        </DAType>
        <EnumType id="RecCycModKind">
            <EnumVal ord="1">Completed</EnumVal>
            <EnumVal ord="2">Cancelled</EnumVal>
            <EnumVal ord="3">New adjustments</EnumVal>
            <EnumVal ord="4">AnotherValue</EnumVal>
        </EnumType>
        <EnumType id="PhaseAngleReferenceKind">
            <EnumVal ord="0">Va</EnumVal>
            <EnumVal ord="1">Vb</EnumVal>
            <EnumVal ord="2">Vc</EnumVal>
            <EnumVal ord="3">Aa</EnumVal>
            <EnumVal ord="4">Ab</EnumVal>
            <EnumVal ord="5">Ac</EnumVal>
            <EnumVal ord="6">Vab</EnumVal>
            <EnumVal ord="7">Vbc</EnumVal>
            <EnumVal ord="8">Vca</EnumVal>
            <EnumVal ord="9">AnotherValue</EnumVal>
        </EnumType>
    </DataTypeTemplates>
</SCL>