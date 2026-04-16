/**
 * auth.ts — Authentication & session management
 * Replace with your actual auth implementation.
 */

interface User {
  id: string
  email: string
  name: string
}

let _currentUser: User | null = null

export const auth = {
  /**
   * Log in with email and password, returns a session token.
   */
  async login(email: string, password: string): Promise<string> {
    // Replace with your auth logic (JWT, OAuth, etc.)
    console.log(`Logging in: ${email}`, password)
    throw new Error('Not implemented — replace with your auth logic')
  },

  /**
   * Log out and clear the current session.
   */
  async logout(): Promise<void> {
    _currentUser = null
  },

  /**
   * Returns the currently authenticated user, or null.
   */
  currentUser(): User | null {
    return _currentUser
  },
}
