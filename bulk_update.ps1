﻿# Import active directory module for running AD cmdlets
Import-Module activedirectory
  
#Store the data from ADUsers.csv in the $ADUsers variable

$csv = Import-CSV C:\Users\safwan.forde\Desktop\Bulk\bulkupdate.csv ##Use location where you stored the csv

ForEach($user in $csv)
{

                    #####    Fields Listed below. Replace -officephone with any of the following    #####
                    #####    fields listed below. Create a header in the CSV(like telephone) and    #####
                    #####    use that as a reference. EX: -givenName $user.firstname                #####


#-SamAccountName #-UserPrincipalName #-givenName #-Surname #-Enabled #-DisplayName 
#-Name #Path #-City #-Office #-Company #-State #-StreetAddress #-Description 
#-emailAddress #-Manager #-Title #-Department # -AccountPassword (convertto-securestring $Password -AsPlainText -Force) -ChangePasswordAtLogon $False

 
     Set-ADUser $user.userprincipalname  -officephone $user.telephone


}
