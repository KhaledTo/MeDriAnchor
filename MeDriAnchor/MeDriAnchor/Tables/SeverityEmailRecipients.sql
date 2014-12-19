﻿
CREATE TABLE [MeDriAnchor].[SeverityEmailRecipients] (
    [SeverityID]       TINYINT         IDENTITY (1, 1) NOT NULL,
    [DistributionList] NVARCHAR (2000) NOT NULL,
    CONSTRAINT [PK_SeverityEmailRecipients] PRIMARY KEY CLUSTERED ([SeverityID] ASC) ON [MeDriAnchor_Current],
    CONSTRAINT [FK_SeverityEmailRecipients_Severity] FOREIGN KEY ([SeverityID]) REFERENCES [MeDriAnchor].[Severity] ([SeverityID])
);






GO
CREATE TRIGGER [MeDriAnchor].[atrSeverityEmailRecipients_Update]
GO
CREATE TRIGGER [MeDriAnchor].[atrSeverityEmailRecipients_Insert]
GO
CREATE TRIGGER [MeDriAnchor].[atrSeverityEmailRecipients_Delete]