/**
 * validators.ts — Common input validation utilities
 */

export function isEmail(value: string): boolean {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value)
}

export function isNonEmpty(value: string): boolean {
  return value.trim().length > 0
}

export function isPositiveNumber(value: number): boolean {
  return typeof value === 'number' && value > 0 && isFinite(value)
}

export function isValidUrl(value: string): boolean {
  try {
    new URL(value)
    return true
  } catch {
    return false
  }
}
