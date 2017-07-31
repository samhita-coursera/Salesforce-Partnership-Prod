<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Opportunity_Closed_Won_Email_Alert_to_ParMas</fullName>
        <description>Opportunity Closed Won Email Alert to ParMas</description>
        <protected>false</protected>
        <recipients>
            <recipient>gdubois@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>nisha@coursera.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/ParMa_Closed_Won_Opportunity_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>Assign_Vertical_by_Campaign</fullName>
        <field>Vertical_v2__c</field>
        <formula>TEXT(Campaign.Vertical__c)</formula>
        <name>Assign Vertical by Campaign</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Exclude_from_RFP_Check</fullName>
        <field>Exclude_from_RFP_Process__c</field>
        <literalValue>1</literalValue>
        <name>Exclude from RFP Check</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_Last_Updater</fullName>
        <field>Next_Steps_Last_Updated_By__c</field>
        <formula>LastModifiedBy.Alias</formula>
        <name>Log Last Updater</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Mark_Account_as_Rejected</fullName>
        <description>If the opportunity to launch new Industry Partner account gets closed-lost, then mark the corresponding account as Rejected</description>
        <field>Is_Account_Rejected__c</field>
        <literalValue>1</literalValue>
        <name>Mark Account as Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Move_Content_Strategy_Review_to_Allow</fullName>
        <field>Content_Strategy_Reviewed__c</field>
        <literalValue>Allowed</literalValue>
        <name>Move Content Strategy Review to Allow</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Move_Content_Strategy_Review_to_Approve</fullName>
        <description>Moves &quot;Content Strategy Reviewed&quot; to &apos;Approve&apos; from &apos;Allow&apos;</description>
        <field>Content_Strategy_Reviewed__c</field>
        <literalValue>Approved</literalValue>
        <name>Move Content Strategy Review to Approve</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Notes_around_Loss</fullName>
        <description>Copies in the approver notes from the loss</description>
        <field>Notes_details_on_loss__c</field>
        <formula>&quot;Rejected by CS manager after pre-proposal submitted stage&quot;</formula>
        <name>Notes around Loss</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pre_Proposal_Approved</fullName>
        <description>Status is updated when a pre-proposal is approved</description>
        <field>StageName</field>
        <literalValue>Pre-Proposal Approved</literalValue>
        <name>Pre-Proposal Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Reason_for_Loss</fullName>
        <description>Updates reason for loss, if rejected</description>
        <field>Rejected_internally__c</field>
        <literalValue>1</literalValue>
        <name>Reason for Loss</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Impact_Launch_Cycle</fullName>
        <description>Opportunities associated with a Social Impact Campaign automatically assigned May 2017 launch cycle.</description>
        <field>Launch_Cycle__c</field>
        <literalValue>May 2017 - Social Impact</literalValue>
        <name>Social Impact Launch Cycle</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Submit_Pre_Proposal</fullName>
        <description>This updates the &apos;Stage&apos; field to &apos;Pre-Proposal Submitted (Round 1)&apos;</description>
        <field>StageName</field>
        <literalValue>Pre-Proposal Submitted (Round 1)</literalValue>
        <name>Submit Pre-Proposal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Timestamp</fullName>
        <field>Next_Steps_Last_Updated__c</field>
        <formula>NOW()</formula>
        <name>Timestamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Account_Tier</fullName>
        <field>X2016_B2B_Tier__c</field>
        <literalValue>Experimental (Reactive)</literalValue>
        <name>Update Account Tier</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Account_as_Active</fullName>
        <description>Set account as active</description>
        <field>Active__c</field>
        <literalValue>1</literalValue>
        <name>Update Account as Active</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Content_Strategy_Review_Field</fullName>
        <field>Content_Strategy_Reviewed__c</field>
        <literalValue>Allowed</literalValue>
        <name>Update Content Strategy Review Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Content_Strategy_Review_Field_R</fullName>
        <description>Content Strategy result if rejected</description>
        <field>Content_Strategy_Reviewed__c</field>
        <literalValue>Rejected</literalValue>
        <name>Update Content Strategy Review Field (R)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Next_Step_reflect_Approval</fullName>
        <description>Updates &apos;Next Steps&apos; to document when the deal was approved.</description>
        <field>NextStep</field>
        <formula>&quot;Internal: Deal terms reviewed/approved&quot;</formula>
        <name>Update Next Step reflect Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Next_Step_reflect_Rejected</fullName>
        <description>Next step rejected documentation</description>
        <field>NextStep</field>
        <formula>&quot;Internal: deal terms not approved&quot;</formula>
        <name>Update Next Step reflect Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Oppty_Record_Type_1</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Partnerships_Opportunity</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Oppty Record Type 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Prior_Steps</fullName>
        <field>Prior_Steps_Auto_tracked__c</field>
        <formula>&quot;[&quot;+TEXT(TODAY())+&quot; (update by &quot;+PRIORVALUE( Next_Steps_Last_Updated_By__c )+&quot;)]: &quot;
+PRIORVALUE(NextStep)+BR()+
PRIORVALUE( Prior_Steps_Auto_tracked__c)</formula>
        <name>Update Prior Steps</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Sales_Channel_1</fullName>
        <field>Sales_Channel__c</field>
        <literalValue>Direct</literalValue>
        <name>Update Sales Channel 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Source_1</fullName>
        <field>LeadSource</field>
        <literalValue>Inbound: Website</literalValue>
        <name>Update Source 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Stage_to_Lost</fullName>
        <description>Updates stage to Lost/dropped</description>
        <field>StageName</field>
        <literalValue>Lost/dropped</literalValue>
        <name>Update Stage to Lost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_approved_discount_field</fullName>
        <description>Checks the discount approved field</description>
        <field>Discount_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Update approved discount field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_pricing_terms_approved_field</fullName>
        <description>Checks the &quot;deal terms approved&quot; field once the approver has reviewed.</description>
        <field>Deal_Terms_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Update pricing/terms approved field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Assign Vertical to Opportunity from Campaign</fullName>
        <actions>
            <name>Assign_Vertical_by_Campaign</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.CampaignId</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Closed Lost New Industry Partner</fullName>
        <actions>
            <name>Mark_Account_as_Rejected</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost,Closed / Lost or Dormant</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>New Industry Partner Opportunity</value>
        </criteriaItems>
        <description>Rule to update related account&apos;s Is Rejected flag to true if the opportunity for new industry partner is Closed-Lost</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Closed Won Opportunity</fullName>
        <actions>
            <name>Opportunity_Closed_Won_Email_Alert_to_ParMas</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed / Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>University Core Opportunity</value>
        </criteriaItems>
        <description>To send email notification to ParMas once opportunity is closed/won</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set the Industry Account Active once Opportunity is Closed Won</fullName>
        <actions>
            <name>Update_Account_as_Active</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed / Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>New Industry Partner Opportunity</value>
        </criteriaItems>
        <description>Mark the Industry Partner Account as Active if the new industry partner opportunity is closed-won</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Social Impact Launch Cycle</fullName>
        <actions>
            <name>Social_Impact_Launch_Cycle</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3</booleanFilter>
        <criteriaItems>
            <field>Opportunity.CampaignId</field>
            <operation>equals</operation>
            <value>Diversity and Inclusion</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.CampaignId</field>
            <operation>equals</operation>
            <value>Social Justice</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.CampaignId</field>
            <operation>equals</operation>
            <value>Sustainable Development</value>
        </criteriaItems>
        <description>If Opportunity is part of Social Impact Initiative, automatically assign May 2017 - Social Impact launch cycle.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Timestamp Next Step</fullName>
        <actions>
            <name>Log_Last_Updater</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timestamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Prior_Steps</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Timestamps when the next steps were last updated</description>
        <formula>and(len( NextStep )&gt;0,
 ISCHANGED(NextStep) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Opportunity Record Type based on Account Record Type</fullName>
        <actions>
            <name>Update_Oppty_Record_Type_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Partnerships</value>
        </criteriaItems>
        <description>If the opportunity is created under an Account Record Type = Partnerships, then make sure the opportunity is for Partnerships</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
