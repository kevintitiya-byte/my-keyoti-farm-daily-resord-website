[README.md](https://github.com/user-attachments/files/34493861/README.md)
# Keyoti Poultry Farm Log

Daily record page for Keyoti Poultry Farm (Isa Brown layers): flock, eggs, feed and water, egg sales (cash or Paybill), trays collected and in store, trends.

## Files
- `index.html` the whole app (single file, no build step)
- `supabase-setup.sql` creates the records table and access rules

## Setup (shared records for workers)
1. Create a free Supabase project and run `supabase-setup.sql` in the SQL Editor.
2. In Authentication, turn off new user sign-ups, then add each worker (and the owner) with email and password, with "Auto Confirm User" ticked.
3. The Project URL and publishable key are already set near the top of the script in `index.html`. Never put the secret or service_role key there.
4. Push to GitHub and turn on Settings > Pages (branch `main`).

Without those two values, the page saves in the one browser only.
Hen-day rate = eggs collected / closing birds x 100. One tray = 30 eggs.
