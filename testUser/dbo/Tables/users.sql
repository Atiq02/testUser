CREATE TABLE [dbo].[users] (
    [id]                             VARCHAR (128) NOT NULL,
    [email]                          VARCHAR (128) NOT NULL,
    [name]                           VARCHAR (128) NOT NULL,
    [password]                       VARCHAR (128) NOT NULL,
    [reset_pwd_token]                VARCHAR (255) NULL,
    [reset_token_expire_on]          DATETIME2 (7) NULL,
    [has_to_change_password]         BIT           CONSTRAINT [DF_users_has_to_change_password] DEFAULT ((1)) NOT NULL,
    [password_reset_token]           VARCHAR (128) NULL,
    [password_reset_token_expire_on] DATETIME      NULL,
    CONSTRAINT [PK__users__3213E83FAE05FFB0] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [UK6dotkott2kjsp8vw4d0m25fb7] UNIQUE NONCLUSTERED ([email] ASC)
);

