-- /////////////////////////////////////////////////////////////////////////////////////////////////
-- .:DRAGONSETH:. 
--
-- Script drops MuOnline,Ranking,BattleCore,Events Databases for you :)
-- 
-- /////////////////////////////////////////////////////////////////////////////////////////////////
 
 --//Kills Connection To Databases
 alter database MuOnline set single_user with rollback immediate
 alter database Ranking set single_user with rollback immediate
 alter database Events set single_user with rollback immediate
 alter database BattleCore set single_user with rollback immediate


--//Deletes Databases
DROP DATABASE MuOnline;
DROP DATABASE Ranking;
DROP DATABASE Events;
DROP DATABASE BattleCore;
