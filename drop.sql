--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
--select * from pg_stat_activity where datname = 'mattermost';

REVOKE CONNECT ON DATABASE mattermost FROM public;
--
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'mattermost' -- ← change this to your DB
  AND pid <> pg_backend_pid();

DROP DATABASE mattermost;
