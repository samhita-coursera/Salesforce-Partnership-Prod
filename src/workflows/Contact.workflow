<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Prior_notes_update</fullName>
        <field>Log_of_Prior_Notes__c</field>
        <formula>&quot;[&quot;+TEXT(TODAY())+ &quot;]: &quot;+PRIORVALUE( Notes__c )+BR()+ 
PRIORVALUE(  Log_of_Prior_Notes__c )</formula>
        <name>Prior notes update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Contact_Record_Type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Partnerships</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Contact Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Main_Track</fullName>
        <field>X2016_Conference_Registered_Main__c</field>
        <literalValue>1</literalValue>
        <name>Update Main Track</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_notes_timestamp</fullName>
        <field>Contact_Notes_Timestamp__c</field>
        <formula>NOW()</formula>
        <name>Update notes timestamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Contact RecordType by Account Record Type</fullName>
        <actions>
            <name>Update_Contact_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Partnerships</value>
        </criteriaItems>
        <description>Assigns the Contact Record Type based on associated Account Record Type</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Timestamp Notes on Contact</fullName>
        <actions>
            <name>Prior_notes_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_notes_timestamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Records and timestamps previous notes on the contact</description>
        <formula>and(len( Notes__c  )&gt;0, 
ISCHANGED(Notes__c) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update 2016 Main Conf %28if Strategy or Research%29</fullName>
        <actions>
            <name>Update_Main_Track</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 or 2) and 3</booleanFilter>
        <criteriaItems>
            <field>Contact.X2016_Conference_Registered_Research__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.X2016_Conference_Registered_Strategy__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.X2016_Conference_Registered_Main__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Update the 2016 main conference tag if the 2016 strategy/research tracks are checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
