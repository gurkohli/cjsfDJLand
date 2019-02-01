<?php

$ldapConn = ldap_connect('192.168.0.227');

// Set some ldap options for talking to AD
ldap_set_option($ldapConn, LDAP_OPT_PROTOCOL_VERSION, 3);
ldap_set_option($ldapConn, LDAP_OPT_REFERRALS, 0);

//this is the LDAP admin account with access
$adminUsername = 'CJSFRADIO\cbourne';
$adminPassword = 'user*77^55';


// Bind as a domain admin if they've set it up
$ldap_bind = ldap_bind($ldapConn, $adminUsername, $adminPassword);

//example path for searching
$search = ldap_search($ldapConn, "ou=CJSF_Staff,ou=Domain Objects,dc=csjfradio,dc=local", "(cn=*)");

//example get command
$info = ldap_get_entries($ldapConn, $search);

echo 'ldap conn';
var_dump($ldapConn);

echo 'ldap bind';
var_dump($ldap_bind);

echo 'seach var';
var_dump($search);

echo 'search info';
var_dump($info);

ldap_unbind($ldapConn);

