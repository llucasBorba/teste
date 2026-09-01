create extension if not exists pgcrypto;

create table if not exists public.clothing (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  category text not null,
  color text not null,
  size text,
  brand text,
  image_url text,
  created_at timestamptz not null default now()
);

alter table public.clothing enable row level security;

-- MVP sem autenticação: permite o catálogo para o cliente público.
-- Ao adicionar login, substitua estas policies por regras baseadas em auth.uid().
drop policy if exists "public read clothing" on public.clothing;
drop policy if exists "public insert clothing" on public.clothing;
drop policy if exists "public update clothing" on public.clothing;
drop policy if exists "public delete clothing" on public.clothing;

create policy "public read clothing" on public.clothing for select using (true);
create policy "public insert clothing" on public.clothing for insert with check (true);
create policy "public update clothing" on public.clothing for update using (true) with check (true);
create policy "public delete clothing" on public.clothing for delete using (true);

create index if not exists clothing_category_idx on public.clothing(category);
create index if not exists clothing_created_at_idx on public.clothing(created_at desc);
