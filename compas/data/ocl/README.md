This directory can be used to add custom OCL Files to the validation process.

You can use subdirectories like `SemanticConstraints` as RiseClipse is doing.
And there is a special filter that when you create a directory `FileSpecifics`.
In this directory you can create for instance a directory `CID` to put constraints specific for an SCL File Type.
Known types are `SSD`, `IID`, `ICD`, `SCD`, `CID`, `SED`, `ISD`, `STD`.

For instance,

```
compas/data
└── ocl
    ├── FileSpecifics
    │         └── CID
    │             └── Busbar.ocl
    ├── README.md
    └── SemanticConstraints
        └── Busbar.ocl
```
