/*
  ================================
  Membuat Database dan Skema
  ================================
  Tujuan :
    Script ini bertujuan untuk membuat database baru dengan nama 'DataWarehouse' setelah mengecek jika databasenya sudah ada.
    Jika terdapat database dengan nama yang sama maka akan dihapus dan dibuat ulang.
  
*/
  
Use master;
GO

-- Menghapus dan membuat ulang database'Datawarehouse'
CREATE DATABASE DataWarehouse;
IF EXIST (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
  BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
  END;
GO

-- Membuate database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO
  
use DataWarehouse;

-- Membuat Schema
CREATE SCHEMA bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA gold;
GO
