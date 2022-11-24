<!--
SPDX-FileCopyrightText: 2021 Alliander N.V.

SPDX-License-Identifier: Apache-2.0
-->

# CoMPAS - (Co)nfiguration (M)odules for (P)ower industry (A)utomation (S)ystems

For information about CoMPAS go to this [site](https://com-pas.github.io/).

## Release notes

### Release 0.15.0

Next release for testing the CoMPAS System with all components.
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version v0.26.0.2):
  - Use Websocket for Data Service to create/update retrieve SCL Files;
  - See details in [OpenSCD Release notes (V0.26.0)](https://github.com/openscd/open-scd/releases/tag/v0.26.0);
- [CIM Mapping Service](https://github.com/com-pas/compas-cim-mapping) (Version 0.10.1):
  - Updated libraries to the latest versions;
- [SCL Auto Alignment Service](https://github.com/com-pas/compas-scl-auto-alignment) (Version 0.4.0):
  - Updated libraries to the latest versions;
- [SCL Validator Service](https://github.com/com-pas/compas-scl-validator) (Version 0.6.1):
  - Improvement in handling Websocket requests; 
  - Updated libraries to the latest versions;
- [SCL Data Service](https://github.com/com-pas/compas-scl-data-service) (Version 0.12.2):
  - Added Websocket endpoint to create/update/retrieve SCL Files, handling large files;
  - Updated libraries to the latest versions;

### Release 0.14.2

Next release for testing the CoMPAS System with all components.
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.25.0.0):
  - See details in [OpenSCD Release notes (V0.25.0)](https://github.com/openscd/open-scd/releases/tag/v0.25.0);

### Release 0.14.1

Next release for testing the CoMPAS System with all components.
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.24.0.4):
  - Save current project as version to an existing SCL File in CoMPAS;
  - Switch to other base image (Bitnami) for container image;

### Release 0.14.0

Next release for testing the CoMPAS System with all components.
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.24.0.3):
  - Filter (on labels) when opening project;
- [SCL Validator Service](https://github.com/com-pas/compas-scl-validator) (Version 0.4.4):
  - Added CoMPAS XSD to validated CoMPAS private elements;
  - Updated libraries to the latest versions;
- [SCL Data Service](https://github.com/com-pas/compas-scl-data-service) (Version 0.11.1):
  - Improved performance PostgreSQL implementation regarding labels;
  - Updated libraries to the latest versions;

### Release 0.13.0

Next release for testing the CoMPAS System with all components.
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.24.0.2):
  - Add Labels when saving SCL File to CoMPAS;
  - See details in [OpenSCD Release notes (V0.24.0)](https://github.com/openscd/open-scd/releases/tag/v0.24.0);
- [CIM Mapping Service](https://github.com/com-pas/compas-cim-mapping) (Version 0.9.2):
  - Updated libraries to the latest versions;
- [SCL Auto Alignment Service](https://github.com/com-pas/compas-scl-auto-alignment) (Version 0.3.1):
  - Updated libraries to the latest versions;
- [SCL Validator Service](https://github.com/com-pas/compas-scl-validator) (Version 0.4.3):
  - Updated libraries to the latest versions;
- [SCL Data Service](https://github.com/com-pas/compas-scl-data-service) (Version 0.11.0):
  - Return labels by Listing SCL Files per SCL Type;
  - Updated libraries to the latest versions;

### Release 0.12.0

Next release for testing the CoMPAS System with all components.
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.23.0.0):
  - Processing validation message from SCL Validator Service;
  - See details in [OpenSCD Release notes (V0.23.0)](https://github.com/openscd/open-scd/releases/tag/v0.23.0);
- [SCL Validator Service](https://github.com/com-pas/compas-scl-validator) (Version 0.4.2):
  - Process validation messages from XSD Validation to be processed better by frontend;
  - Updated libraries to the latest versions;

### Release 0.11.0

Next release for testing the CoMPAS System with all components.
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.22.0.0):
  - Processing validation message from SCL Validator Service; 
  - See details in [OpenSCD Release notes (V0.22.0)](https://github.com/openscd/open-scd/releases/tag/v0.22.0);
- [SCL Validator Service](https://github.com/com-pas/compas-scl-validator) (Version 0.4.1):
  - Process validation messages from RiseClipse to be processed better by frontend;
  - Updated libraries to the latest versions;

### Release 0.10.0

Next release for testing the CoMPAS System with all components.
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.21.0.0):
  - Export IED Parameters to CSV File;
  - On IED Template Project from CoMPAS backend service;
  - See details in [OpenSCD Release notes (V0.21.0)](https://github.com/openscd/open-scd/releases/tag/v0.21.0);
  - See details in [OpenSCD Release notes (V0.20.0)](https://github.com/openscd/open-scd/releases/tag/v0.20.0);
- [SCL Data Service](https://github.com/com-pas/compas-scl-data-service) (Version 0.10.0):
  - Upgrade to JDK 17;
  - Updated libraries to the latest versions;
- [SCL Auto Alignment Service](https://github.com/com-pas/compas-scl-auto-alignment) (Version 0.3.0):
  - Upgrade to JDK 17;
  - Group equipment from Bay when calculating X/Y Coordinates;
  - Updated libraries to the latest versions;
- [CIM Mapping Service](https://github.com/com-pas/compas-cim-mapping) (Version 0.9.1):
  - Updated libraries to the latest versions;
- [SCL Validator Service](https://github.com/com-pas/compas-scl-validator) (Version 0.4.0):
  - Upgrade to JDK 17;
  - Updated libraries to the latest versions;

### Release 0.9.0

Next release for testing the CoMPAS System with all components.
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.19.0.0):
  - Show Who/When/What information for the versions in CoMPAS;  
  - See details in [OpenSCD Release notes (V0.19.0)](https://github.com/openscd/open-scd/releases/tag/v0.19.0);
  - See details in [OpenSCD Release notes (V0.18.0)](https://github.com/openscd/open-scd/releases/tag/v0.18.0);
- [SCL Data Service](https://github.com/com-pas/compas-scl-data-service) (Version 0.9.9):
  - Return Who/When/What information when returning versions;
  - Updated libraries to the latest versions;
- [SCL Auto Alignment Service](https://github.com/com-pas/compas-scl-auto-alignment) (Version 0.2.5):
  - Updated libraries to the latest versions;
- [CIM Mapping Service](https://github.com/com-pas/compas-cim-mapping) (Version 0.9.0):
  - Upgrade to JDK 17; 
  - Updated libraries to the latest versions;
- [SCL Validator Service](https://github.com/com-pas/compas-scl-validator) (Version 0.3.0):
  - Latest OCL Rules for SCL from RiseClipse are included;
  - Updated libraries to the latest versions;

### Release 0.8.0

Next release for testing the CoMPAS System with all components.
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.16.0.0):
  - See details in [OpenSCD Release notes](https://github.com/openscd/open-scd/releases/tag/v0.16.0);
- [SCL Data Service](https://github.com/com-pas/compas-scl-data-service) (Version 0.9.6):
  - Updated libraries to the latest versions;
- [SCL Auto Alignment Service](https://github.com/com-pas/compas-scl-auto-alignment) (Version 0.2.4):
  - Updated libraries to the latest versions;
- [CIM Mapping Service](https://github.com/com-pas/compas-cim-mapping) (Version 0.8.7):
  - Updated libraries to the latest versions;
- [SCL Validator Service](https://github.com/com-pas/compas-scl-validator) (Version 0.2.0):
  - Updated libraries to the latest versions;

### Release 0.7.0

Next release for testing the CoMPAS System with all components.
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.15.0.0):
  - Save as... menu option;
  - Rename the name of the SCL File (CoMPAS);
  - Small fixes and improvements in editors and wizards;
  - See details in [OpenSCD Release notes](https://github.com/openscd/open-scd/releases/tag/v0.15.0);
- [SCL Data Service](https://github.com/com-pas/compas-scl-data-service) (Version 0.9.5):
  - Small bugfixes;
  - Updated libraries to the latest versions;
- [SCL Auto Alignment Service](https://github.com/com-pas/compas-scl-auto-alignment) (Version 0.2.3):
  - Small bugfixes; 
  - Updated libraries to the latest versions;
- [CIM Mapping Service](https://github.com/com-pas/compas-cim-mapping) (Version 0.8.6):
  - Small bugfixes;
  - Updated libraries to the latest versions;
  - Temporary disabled native image;
- [SCL Validator Service](https://github.com/com-pas/compas-scl-validator) (Version 0.1.4):
  - Small bugfixes;
  - Updated libraries to the latest versions;

### Release 0.6.0

Next release for testing the CoMPAS System with all components.
- [SCL Validator Service](https://github.com/com-pas/compas-scl-validator) (Version 0.1.2):
  - Validation using the XSD; 
  - Validation using OCL Files;
  - Facilitate automatic loading of NSDoc Files in OpenSCD; 
  - Updated libraries to the latest versions;
- [SCL Auto Alignment Service](https://github.com/com-pas/compas-scl-auto-alignment) (Version 0.2.2):
  - Updated libraries to the latest versions;
- [CIM Mapping Service](https://github.com/com-pas/compas-cim-mapping) (Version 0.8.4):
  - Updated libraries to the latest versions;
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.12.0.2):
  - Automatic loading of NSDoc Files from SCL Validator Service;
  - Added CoMPAS Validation using the SCL Validator Service;

### Release 0.5.0

Next release for testing the CoMPAS System with all components.
- [SCL Data Service](https://github.com/com-pas/compas-scl-data-service) (Version 0.9.4):
  - Updated libraries to the latest versions;
- [SCL Auto Alignment Service](https://github.com/com-pas/compas-scl-auto-alignment) (Version 0.2.1):
  - Updated libraries to the latest versions;
- [CIM Mapping Service](https://github.com/com-pas/compas-cim-mapping) (Version 0.8.3):
  - Updated libraries to the latest versions;
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.12.0.0):
  - See details in [OpenSCD Release notes](https://github.com/openscd/open-scd/releases/tag/v0.12.0);
  
### Release 0.3.0

Next release for testing the CoMPAS System with all components.
- [SCL Data Service](https://github.com/com-pas/compas-scl-data-service) (Version 0.9.3):
  - Updated libraries to the latest versions;
- [SCL Auto Alignment Service](https://github.com/com-pas/compas-scl-auto-alignment) (Version 0.2.0):
  - Updated libraries to the latest versions;
  - Calculated position of bays and powertransformers; 
- [CIM Mapping Service](https://github.com/com-pas/compas-cim-mapping) (Version 0.8.1):
  - Updated libraries to the latest versions;
  - Changed the SparQL for querying Substations;
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.9.0):
  - Loading nsdoc files through settings;
  - Add basic wizard for ReportControl;
  - Add wizard for sampledvaluecontrol/smv;
  - See details in [OpenSCD Release notes](https://github.com/openscd/open-scd/releases/tag/v0.9.0);

### Release 0.2.0

Next release for testing the CoMPAS System with all components.
- [SCL Data Service](https://github.com/com-pas/compas-scl-data-service) (Version 0.9.2):  
  - Updated libraries to the latest versions;
  - Centralized the SCL Types to CoMPAS Common Library;
- [SCL Auto Alignment Service](https://github.com/com-pas/compas-scl-auto-alignment) (Version 0.1.0):  
  - Updated libraries to the latest versions;
  - Replace the RawGraphBuilder with custom GraphBuilder for CoMPAS;
- [CIM Mapping Service](https://github.com/com-pas/compas-cim-mapping) (Version 0.8.0):  
  - Updated libraries to the latest versions;
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.8.2):   
  - New IED Editor;
  - Small improvements in the Single Line Diagram Editor;
  - Allow updating X/Y coordinates in SLD for Busbar/ConductingEquipment/PowerTransformer;
  - Show SampledValueControl for IED and whole project;

### Release 0.1.0

First release for testing the CoMPAS System with all components.
- [SCL Data Service](https://github.com/com-pas/compas-scl-data-service) (Version 0.9.1):  
  Microservice to store all types of SCL Files in a PostgreSQL or BaseX Database, supporting the following file types:
  - SSD (Substation Specification Description);
  - IID (IED Instance Description);
  - ICD (IED Capability Description);
  - SCD (Substation Configuration Description);
  - CID (Configured IED Description);
  - SED (System Exchange Description);
  - ISD (IED Specification Description);
  - STD (System Template Definition);
  
  Store multiple version of a specific SCL File. Every time an update is done a new versions is saved.
  This way changes in the SCL Files can be monitored and compared.  
  The microservice is secured using JWT (Json Web Tokens) for accessing the service. This can be incorporated with SSO Service. 
  Access to the SCL Data Service can be configured using roles, for every file type there are 4 roles (CRUD).
- [SCL Auto Alignment Service](https://github.com/com-pas/compas-scl-auto-alignment) (Version 0.0.2):  
  Microservice to enrich an existing SCL Files with X and Y coordinates that will be used by the SLD Editor from OpenSCD.  
  The microservice is secured using JWT (Json Web Tokens) for accessing the service. This can be incorporated with SSO Service.
- [CIM Mapping Service](https://github.com/com-pas/compas-cim-mapping) (Version 0.7.7):  
  Microservice to convert IEC CIM and IEC 61850. The mapping is done according to the specification described in 
  the MAPPING.md in the repository.  
  The microservice is secured using JWT (Json Web Tokens) for accessing the service. This can be incorporated with SSO Service.
- [OpenSCD CoMPAS Edition](https://github.com/com-pas/compas-open-scd) (Version 0.8.0):   
  Frontend Application to edit SCL Files in a internet browser. The CoMPAS Edition is a fork of the Open Source Project 
  [OpenSCD](https://github.com/openscd/open-scd/).  
  The CoMPAS Edition has some modification and extensions to work with the Microservices from the CoMPAS Ecosystem:
  - Open SCL Files from both CoMPAS and Filesystem;
  - Save SCL Files to both CoMPAS and Filesystem;
  - Merge SCL Files from both CoMPAS and Filesystem;
  - Update substations from both CoMPAS and Filesystem;
  - Merge IED from both CoMPAS and Filesystem;
  - Editor to manage the different versions in CoMPAS of a specific SCL File;
  - Compare different versions from CoMPAS of a specific SCL File;
  - Start a new project using the CIM Mapping Service;
  - Auto align one or more substations using the SCL Auto Alignment Service;
  - Display username from Microservices; 
