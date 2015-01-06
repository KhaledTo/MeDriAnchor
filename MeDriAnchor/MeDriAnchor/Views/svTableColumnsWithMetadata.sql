﻿
CREATE VIEW [MeDriAnchor].[svTableColumnsWithMetadata]
AS
SELECT [DBTableColumnID]
      ,[DBTableID]
      ,[DBTableColumnName]
      ,[IsDatetimeComparison]
      ,[IsAnchor]
      ,[AnchorMnemonic]
      ,[AnchorMnemonicRef]
      ,[IsAttribute]
      ,[AttributeMnemonic]
      ,[IsHistorised]
      ,[HistorisedTimeRange]
      ,[IsKnot]
      ,[KnotMnemonic]
      ,[KnotJoinColumn]
      ,[AttributeMnemonicRef]
      ,[GenerateID]
      ,[IsReportable]
      ,[RoleName]
      ,[RoleNameRef]
      ,[CreateNCIndexInDWH]
      ,[PKColumn]
      ,[PKName]
      ,[PKClustered]
      ,[PKColOrdinal]
      ,[PKDescOrder]
      ,[IdentityColumn]
      ,[ColPosition]
      ,[DataType]
      ,[NumericPrecision]
      ,[NumericScale]
      ,[CharMaxLength]
      ,[IsNullable]
      ,[IsComputedCol]
      ,[IsMaterialisedColumn]
      ,[MaterialisedColumnFunction]
      ,[TestColumnFunction]
      ,[IsActive]
  FROM [MeDriAnchor].[DBTableColumn]
  WHERE (([IsAnchor] = 1 OR [IsAttribute] = 1 OR [IsKnot] = 1
	OR [KnotMnemonic] <> '' OR [AttributeMnemonic] <> '' OR [AnchorMnemonic] <>''
	OR [AnchorMnemonicRef] <> '' OR [AttributeMnemonicRef] <> ''))
	OR ([DBTableColumnID] IN
	  (
	  SELECT [DBTableColumnID]
	  FROM [MeDriAnchor].[DBTableColumn]
	  )
	);
