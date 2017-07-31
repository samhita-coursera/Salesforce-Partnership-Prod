<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Assign_Corporate_B2B</fullName>
        <field>Type</field>
        <literalValue>B2B: Corporate</literalValue>
        <name>Assign Corporate B2B</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Govt_checklist_update</fullName>
        <field>Government__c</field>
        <literalValue>1</literalValue>
        <name>Govt checklist update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Govt</fullName>
        <field>Government__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Govt</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Nonprofit</fullName>
        <field>Nonprofit__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Nonprofit</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_if_picklist_Nonprofit</fullName>
        <description>Uncheck nonprofit if picklist is chosen</description>
        <field>Nonprofit__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck if picklist - Nonprofit</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_if_picklist_is_chosen</fullName>
        <description>Make sure govt is unchecked</description>
        <field>Government__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck if picklist is chosen</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_2016_territory_account_Govt</fullName>
        <field>Type</field>
        <literalValue>B2B: Government</literalValue>
        <name>Update 2016 territory account -&gt; Govt</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_2016_territory_field</fullName>
        <description>Updates to India</description>
        <field>X2016_B2B_Territory1__c</field>
        <literalValue>India</literalValue>
        <name>Update 2016 territory field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_2016_territory_field_Nonprofit</fullName>
        <field>Type</field>
        <literalValue>B2B: Nonprofit</literalValue>
        <name>Update 2016 territory field -&gt; Nonprofit</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Employee_field</fullName>
        <field>NumberOfEmployees</field>
        <formula>if(Hidden_Employee_Range_from_Lead__c=&quot;1-10&quot;,10,
if(Hidden_Employee_Range_from_Lead__c=&quot;11-50&quot;,50,
if(Hidden_Employee_Range_from_Lead__c=&quot;51-150&quot;,150,
if(Hidden_Employee_Range_from_Lead__c=&quot;151-500&quot;,500,
if(Hidden_Employee_Range_from_Lead__c=&quot;501-1000&quot;,1000,
if(Hidden_Employee_Range_from_Lead__c=&quot;1001-5000&quot;,5000,
10000))))))</formula>
        <name>Update Employee # field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Territory_to_NAMER</fullName>
        <field>X2016_B2B_Territory1__c</field>
        <literalValue>NAMER</literalValue>
        <name>Update Territory to NAMER</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_checklist_if_Picklist_is_chosen</fullName>
        <field>Nonprofit__c</field>
        <literalValue>1</literalValue>
        <name>Update checklist if Picklist - Nonprofit</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
</Workflow>
