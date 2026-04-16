/**
 * types/index.ts — Shared TypeScript types and interfaces
 * Add your project-specific types here.
 */

export interface ApiResponse<T> {
  data: T
  success: boolean
  message?: string
}

export interface ApiError {
  error: string
  code: string
  statusCode: number
}

export interface PaginatedResponse<T> {
  data: T[]
  total: number
  page: number
  perPage: number
  hasMore: boolean
}

export type Nullable<T> = T | null
export type Optional<T> = T | undefined
export type ID = string
