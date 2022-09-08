

<!-- Add useful information to your short description that explains what the product is, why a user wants to install and use it, and any additional details the user needs to get started. The following information is an example. Make sure you update this section accordingly. -->

Server Migration for IBM Cloud tool will help customer their journey to the IBM Cloud practically seamless. This self-service tool can be consumed by customers to migrate their virtual servers to IBM Cloud VPC. This tool can be used by engineers, architects or support team from any of the Global service integrators (GSI), system integrators (SI). This tool will help the clients who want to leverage IBM Cloud native capabilities and modernize their infrastructure by migrating to IBM Cloud from on-premise datacenter. This tool is completely simplified, automated and saves time, cost and effort for server migration.

In IBM Cloud, you can launch the IBM Cloud Server Migration from Catalog and get all the scripts for migration from the Catalog Appliance server.


## Before you begin

<!-- List any prereqs including required permissions, capacity requirements, etc. The following information is an example. Make sure you update this section accordingly. -->

* Launch the IBM Cloud Server Migration from the [catalog](https://cloud.ibm.com/catalog). 
* Provide required parameters to launch the appliance server.
* Ensure that all the scripts are available in ‘migration-diy’ folder.

## Security and compliance controls 

<!-- (Optional) List controls that you want to appear in your product's About information. Only controls that are supported by Security and Compliance Center and formatted correctly appear in the Manage compliance tab during onboarding.

To include controls with your product's information, make sure that the controls are listed in one table. The table must include the following: 


- A Profile column
- An ID column


You can include more columns in the table; however, this information might be overwritten or excluded. 


The following information is an example. Make sure you update this section accordingly.--> 

Server Migration for IBM Cloud meet the following controls.


| Profile | ID |
|---------|----|
| None | N/A |

## Required resources

<!-- The following information is an example. Make sure you update this section accordingly. -->

To run the software, the following resources are required:

  * IBM Cloud VPC VSI
  * Schematics
  * Custom Images
  * Cloud Object Storage


## Installing the software

<!-- It is recommended to not include the large table of configuration parameters that are listed on the Create page. -->
1. Preparing Appliance for migration 

* Search for “Server Migration for IBM Cloud” 
* Login to VPC Virtual server which is ordered from IBM Cloud Catalog.
* Provide the required parameters. 

2. Running Appliance for migration 

*	Login to the server 
*	Change the directory to /migration/  
*	Run appliance.sh 
*	Provide the IP address intent to migrate  --> “Enter the IP address of the server your intended to migrate” 
* Choose to migrate from VMware/classic --> “Choose VMware ESXi or IBM Cloud classic” 
* Directory and config will be created and script execution stops --> Please fill the config file then re-run the script  
* Say “y” for the question	--> Do you want to continue already started migration [Default y] 
*	Appliance will check for all required permission and validate the config file. 
*	If config file is valid and all required permission present, then appliance will create ssh key 
*	Copy the ssh key and paste in authorized file in user’s home directory under .ssh 
*	And then answer “y” for ssh copied question    -->    Have you copied the ssh public key content and insert in ssh/authorized file, please confirm" 
*	Appliance will run pre-check on source machine.


### Production configuration

<!-- Add additional H3 level headings as needed for sections that apply to IBM Cloud such as network policy, persistence, cluster topologies, etc.

-->
1. Back up your source virtual machine that you plan to migrate.
2. You need an existing IBM Cloud VPC environment.
3. VM’s must be configured to use BIOS boot mode. UEFI boot mode is not supported
4. The primary disk(Operating System) should not exceed 99 GB.
5. Must have at-least one network adapter configured with auto.
6. Make sure to have connection to VMware/classic from VPC.
7. IBM Cloud Object Storage if you don't have one. 

## Upgrading to a new version

<!-- Information about how a user can upgrade to a new version when it's available. The following information is an example. Make sure you update this section accordingly. -->

When a new version of a Server Migration for IBM Cloud is available, you're alerted in your Schematics workspace. To upgrade to a new version, complete the following steps:

1. Go to the **Menu** > **Schematics**.
2. Select your workspace name. 
3. Click **Settings**. In the Summary section, your version number is displayed. 
4. Click **Update**.
5. Select a version, and click **Update**.

## Uninstalling the software

<!-- Information about how a user can uninstall this product. The following information is an example. Make sure you update this section accordingly. -->

Complete the following steps to uninstall a Server Migration for IBM Cloud from your account. 

1. Go to the **Menu** > **Schematics**.
2. Select your workspace name. 
3. Click **Actions** > **Destroy resources**. All resources in your workspace are deleted.
4. Click **Update**.
5. To delete your workspace, click **Actions** > **Delete workspace**.




