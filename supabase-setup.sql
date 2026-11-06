-- Keyoti farm log: run once in Supabase > SQL Editor
create table if not exists public.records (
  coll text not null,
  id text not null,
  data jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (coll, id)
);

alter table public.records enable row level security;

create policy "staff read"   on public.records for select to authenticated using (true);
create policy "staff insert" on public.records for insert to authenticated with check (true);
create policy "staff update" on public.records for update to authenticated using (true) with check (true);
create policy "staff delete" on public.records for delete to authenticated using (true);

alter publication supabase_realtime add table public.records;
