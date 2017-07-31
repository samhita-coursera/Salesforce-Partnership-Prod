<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Check_Nonprofit_Box</fullName>
        <field>Nonprofit__c</field>
        <literalValue>1</literalValue>
        <name>Check Nonprofit Box</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Degrees</fullName>
        <description>Write value of Email Address -&gt; Email</description>
        <field>Email</field>
        <formula>Email_Address__c</formula>
        <name>Email (Degrees)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Owner_Update</fullName>
        <description>Lead Owner Update for Degree Lead</description>
        <field>OwnerId</field>
        <lookupValue>UIUC_MCSDS</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Lead Owner Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_record_type_update</fullName>
        <field>Lead_Record_Type_Hidden__c</field>
        <formula>&quot;B2B&quot;</formula>
        <name>Lead record type update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Name_of_the_Lead_Record_Type</fullName>
        <field>Lead_Record_Type_Hidden__c</field>
        <formula>&quot;B2B&quot;</formula>
        <name>Name of the Lead Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Govt_Boolean</fullName>
        <description>Checks the &apos;Govt&apos; box on Lead if the email contains &apos;govt&apos;</description>
        <field>Government__c</field>
        <literalValue>1</literalValue>
        <name>Update Govt Boolean</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RecordType_2</fullName>
        <field>Lead_Record_Type_Oppty_Hidden__c</field>
        <formula>&quot;B2B&quot;</formula>
        <name>Update RecordType 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_lead_field_status</fullName>
        <field>Status</field>
        <literalValue>New</literalValue>
        <name>Update lead field status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_lead_status</fullName>
        <field>Status</field>
        <literalValue>Nurturing</literalValue>
        <name>Update lead status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_lead_with_Approval_status</fullName>
        <description>Mark the &quot;Is Approved by IP Manager&quot; checkbox true</description>
        <field>Is_Approved_by_IP_Manager__c</field>
        <literalValue>1</literalValue>
        <name>Update lead with Approval status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_website</fullName>
        <field>Website</field>
        <formula>right(Email,len(Email)-find(&quot;@&quot;,Email,1))</formula>
        <name>Update website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Check if Lead is Govt</fullName>
        <actions>
            <name>Update_Govt_Boolean</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Email</field>
            <operation>contains</operation>
            <value>.gov</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Create Open Task with New Lead%3A LATAM</fullName>
        <actions>
            <name>Reachout_new_lead_from_website_LATAM</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>equals</operation>
            <value>Inbound: Website</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Government__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Nonprofit__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.X2016_Geo_Territory__c</field>
            <operation>equals</operation>
            <value>LATAM</value>
        </criteriaItems>
        <description>Creates and assigns a new task when an inbound lead comes from the website -&gt; for LATAM</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Email %28Degrees%29</fullName>
        <actions>
            <name>Email_Degrees</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3</booleanFilter>
        <criteriaItems>
            <field>Lead.OwnerId</field>
            <operation>equals</operation>
            <value>UIUC - MCSDS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.OwnerId</field>
            <operation>equals</operation>
            <value>UIUC - iMBA</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Email_Address__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Copy value of Email Address field -&gt; Email</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>University of Illinois</fullName>
        <actions>
            <name>Lead_Owner_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Partner_Name__c</field>
            <operation>contains</operation>
            <value>University of Illinois at Urbana-Champaign</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Program_Name__c</field>
            <operation>contains</operation>
            <value>Master of Computer Science in Data Science</value>
        </criteriaItems>
        <description>Routing to University of Illinois Queue with masters in data science</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead Status</fullName>
        <actions>
            <name>Update_lead_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.ezwf__Easy_Workflow__c</field>
            <operation>contains</operation>
            <value>Reachout: new lead from website</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Non-profit Checkbox</fullName>
        <actions>
            <name>Check_Nonprofit_Box</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Notes__c</field>
            <operation>contains</operation>
            <value>We are a nonprofit/501c3</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Government__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>If the web lead self-identified as a nonprofit, then check the nonprofit box</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update website via email</fullName>
        <actions>
            <name>Update_website</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Website</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Use the email to guess the corporate website for the lead.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Reachout_new_lead_from_website_LATAM</fullName>
        <assignedTo>nisha@coursera.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Replace these with your comments once you&apos;ve reached out to the prospect :)</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Lead.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Open</status>
        <subject>Reachout: new lead from website</subject>
    </tasks>
</Workflow>
