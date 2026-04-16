/**
 * database.ts — Database connection and query helpers
 * Replace with your actual database client (e.g. pg, Prisma, Drizzle).
 */

export const db = {
  /**
   * Execute a SELECT query and return rows.
   */
  async query<T = unknown>(sql: string, params: unknown[] = []): Promise<T[]> {
    // Replace with your DB client, e.g.:
    // return pool.query(sql, params).then(r => r.rows)
    console.log('Query:', sql, params)
    throw new Error('Not implemented — replace with your database client')
  },

  /**
   * Execute an INSERT / UPDATE / DELETE statement.
   */
  async execute(sql: string, params: unknown[] = []): Promise<void> {
    console.log('Execute:', sql, params)
    throw new Error('Not implemented — replace with your database client')
  },
}
