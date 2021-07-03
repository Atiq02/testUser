CREATE TABLE [dbo].[role_children] (
    [role_id]        VARCHAR (128) NOT NULL,
    [parent_role_id] VARCHAR (128) NOT NULL,
    CONSTRAINT [PK_RoleChild] PRIMARY KEY CLUSTERED ([role_id] ASC, [parent_role_id] ASC),
    CONSTRAINT [FK_RoleChild_roles] FOREIGN KEY ([role_id]) REFERENCES [dbo].[roles] ([id]),
    CONSTRAINT [FK_RoleChild_roles1] FOREIGN KEY ([parent_role_id]) REFERENCES [dbo].[roles] ([id])
);

