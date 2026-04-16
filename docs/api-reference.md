# API Reference

> Replace this file with your project's actual API documentation.

## Overview

This file documents the public API surface of the project.

## Conventions

- All endpoints return JSON
- Authentication via Bearer token in the `Authorization` header
- Errors follow the format: `{ "error": "message", "code": "ERROR_CODE" }`

## Services

### `api.ts`

Core HTTP client and request utilities.

```typescript
import { api } from './services/api'

// Example usage
const data = await api.get('/endpoint')
const result = await api.post('/endpoint', { body })
```

### `auth.ts`

Authentication and session management.

```typescript
import { auth } from './services/auth'

const token = await auth.login(email, password)
await auth.logout()
const user = auth.currentUser()
```

### `database.ts`

Database connection and query helpers.

```typescript
import { db } from './services/database'

const rows = await db.query('SELECT * FROM users WHERE id = ?', [id])
await db.execute('INSERT INTO ...', [...params])
```

---

> 📝 Update this file as your project's API evolves.
