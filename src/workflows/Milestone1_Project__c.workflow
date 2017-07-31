<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Timestamp_date_Projects</fullName>
        <field>Next_Steps_Notes_Last_Updated__c</field>
        <formula>NOW()</formula>
        <name>Timestamp date - Projects</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Original_Deadline_Field</fullName>
        <field>Original_Deadline__c</field>
        <formula>Deadline__c</formula>
        <name>Update Original Deadline Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_prior_notes</fullName>
        <field>Prior_Notes_Automatically_updated__c</field>
        <formula>&quot;[&quot;+TEXT(TODAY())+ &quot;]: &quot;+PRIORVALUE(  Next_Steps_Current_Notes__c  )+BR()+ 
PRIORVALUE(  Prior_Notes_Automatically_updated__c  )</formula>
        <name>Update prior notes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_status</fullName>
        <field>Initiative_Status__c</field>
        <literalValue>Not Started</literalValue>
        <name>Update status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
