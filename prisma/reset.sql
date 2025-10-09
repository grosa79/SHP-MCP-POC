-- Reset completo del database PostgreSQL
-- Cancella tutte le tabelle e ricrea lo schema

-- Drop delle tabelle nell'ordine corretto (rispettando le foreign keys)
DROP TABLE IF EXISTS "Message" CASCADE;
DROP TABLE IF EXISTS "Conversation" CASCADE;
DROP TABLE IF EXISTS "CustomerAccountUrl" CASCADE;
DROP TABLE IF EXISTS "CustomerToken" CASCADE;
DROP TABLE IF EXISTS "CodeVerifier" CASCADE;
DROP TABLE IF EXISTS "Session" CASCADE;
DROP TABLE IF EXISTS "_prisma_migrations" CASCADE;

-- Ricrea schema da zero (viene fatto automaticamente da Prisma)