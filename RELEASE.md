<!--
SPDX-FileCopyrightText: 2021 Alliander N.V.

SPDX-License-Identifier: Apache-2.0
-->

# CoMPAS - (Co)nfiguration (M)odules for (P)ower industry (A)utomation (S)ystems

For information about CoMPAS go to this [site](https://com-pas.github.io/).

## Release notes

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
