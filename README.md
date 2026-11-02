# PowerShell SysAdmin

Utilidades PowerShell para tareas administrativas repetibles en entornos Windows.

## Objetivo

Publicar scripts pequeños, claros y auditables que sirvan para inventario, chequeos operativos y generación de reportes.

## Estructura sugerida

```text
powershell-sysadmin/
├── scripts/
│   ├── Get-SystemInventory.ps1
│   ├── Test-ServiceHealth.ps1
│   └── Get-EventLogSummary.ps1
├── docs/
│   └── usage.md
└── README.md
```

## Estándares

- Incluir `Get-Help` y ejemplos de uso en cada script.
- Usar `-WhatIf` en tareas que puedan modificar el sistema.
- Separar lectura, validación y cambios.
- Reportar errores de forma explícita y no ocultar fallas.
- No publicar nombres de dominio, usuarios, rutas compartidas o datos de equipos reales.
