<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>UpdateName</fullName>
        <field>Name</field>
        <formula>Account.Name + &apos;: &apos; + Name</formula>
        <name>Update Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateOldValue</fullName>
        <field>Amount</field>
        <formula>IF(PRIORVALUE(Amount) != null, PRIORVALUE(Amount), 0)</formula>
        <name>Update Old Value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Opportunity Naming Convention</fullName>
        <actions>
            <name>UpdateName</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>NOT(CONTAINS(Name, Account.Name))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Old Amount</fullName>
        <actions>
            <name>UpdateOldValue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
