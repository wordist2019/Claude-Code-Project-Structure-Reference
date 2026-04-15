# /bootstrap — Scaffold New Module

Generate a new module with the standard project structure.

## Instructions

Ask the user for:
1. Module name (e.g. `payments`, `notifications`)
2. Module type (service / component / utility)
3. Whether tests should be generated

Then scaffold:
```
src/
└── {module-name}/
    ├── index.ts          # Public exports
    ├── {module}.service.ts
    ├── {module}.types.ts
    └── {module}.utils.ts

tests/unit/
└── {module-name}/
    └── {module}.test.ts
```

Follow all conventions in CLAUDE.md.

## Usage

```
/bootstrap
/bootstrap payments
/bootstrap notifications --no-tests
```
