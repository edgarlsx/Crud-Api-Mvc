IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pessoa]'))
	DROP TABLE [dbo].[Pessoa]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Pessoa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [varchar](11) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Sexo] [int] NULL,
	[Idade] [int] NULL,
	[Ativo] [bit] NULL,
 CONSTRAINT [PK_Pessoa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

--------------------------------- Procedure-------------------------------------------------------

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InserirPessoa]'))
	DROP TABLE [dbo].[Pessoa]
GO

CREATE PROCEDURE sp_InserirPessoa 
	@CPF varchar(15), 
	@Nome varchar(15), 
	@Sexo int, 
	@Idade Int, 
	@Ativo bit

AS
BEGIN

insert into Pessoa Values(@CPF, @Nome, @Sexo, @Idade, @Ativo)

END
GO
