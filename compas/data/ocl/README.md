<!--
SPDX-FileCopyrightText: 2021 Alliander N.V.

SPDX-License-Identifier: Apache-2.0
-->

This directory can be used to add custom OCL Files to the validation process.

You can use subdirectories like `SemanticConstraints` as RiseClipse is doing. And there is a special directory 
`FileSpecifics`. In this directory mostly file specific rules are added. There are functions that can be used
in the OCL Rules to determine the type of file, like `isInICDFile()`.

For instance,

```
compas/data
└── ocl
    ├── FileSpecifics
    │   └── Busbar.ocl
    ├── README.md
    └── SemanticConstraints
        └── Busbar.ocl
```
