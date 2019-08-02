<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>UnassignedLeads</fullName>
        <description>Unassigned Leads</description>
        <protected>false</protected>
        <recipients>
            <recipient>bubba@revature.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>PublicTemplates/UnassignedLeads</template>
    </alerts>
    <rules>
        <fullName>Unassigned Lead</fullName>
        <actions>
            <name>UnassignedLeads</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>( NumberOfDaysNeglected__c == 0) &amp;&amp; (Owner:Queue.QueueName == &apos;Unassigned Lead Queue&apos;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
