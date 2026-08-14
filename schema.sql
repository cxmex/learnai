-- Paper Academy — progress tracking table
-- Run this in Supabase SQL Editor

create table if not exists academy_progress (
  email      text not null,
  module     text not null,
  completed  jsonb default '[]',
  updated_at timestamptz default now(),
  primary key (email, module)
);

alter table academy_progress enable row level security;

create policy "public_select" on academy_progress for select using (true);
create policy "public_insert" on academy_progress for insert with check (true);
create policy "public_update" on academy_progress for update using (true);
