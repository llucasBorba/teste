# Meu Closet

Aplicação Next.js + Supabase para catalogar roupas pessoais.

## Rodando localmente

1. Instale Node.js 20+.
2. Rode `npm install`.
3. Copie `.env.example` para `.env.local` e preencha `NEXT_PUBLIC_SUPABASE_URL` e `NEXT_PUBLIC_SUPABASE_ANON_KEY`.
4. No SQL Editor do Supabase, execute `supabase/schema.sql`.
5. Rode `npm run dev`.

## Funcionalidades

- Cadastro de peças
- Edição e exclusão
- Busca por nome, marca e cor
- Filtro por categoria
- Estatísticas do closet
- Foto por URL
- Layout responsivo e minimalista

> Para produção, adicione autenticação e policies RLS por usuário antes de disponibilizar o catálogo publicamente.
