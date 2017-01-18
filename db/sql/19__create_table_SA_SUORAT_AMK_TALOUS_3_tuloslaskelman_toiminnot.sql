IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'sa.SA_SUORAT_AMK_TALOUS_3_tuloslaskelman_toiminnot') AND type in (N'U'))
BEGIN
CREATE TABLE sa.SA_SUORAT_AMK_TALOUS_3_tuloslaskelman_toiminnot(
  TILIK int NULL,
  AMK nvarchar(50) NULL,
  AMK_koodi nvarchar(5) NULL,
  PTTOIMINTO nvarchar(50) NULL,
  PTTUOTOT bigint NULL,
  PTPRAHOITUS bigint NULL,
  PTTUETAVU bigint NULL,
  PTMAKKORV bigint NULL,
  PTMUULIIKE bigint NULL,
  PTMUUTUOT bigint NULL,
  PKULUTYHT bigint NULL,
  PKMATPAL bigint NULL,
  PKHENKILOSTO bigint NULL,
  PKPOISTO bigint NULL,
  PKMUUTKULU bigint NULL,
  POSUUSYKU bigint NULL,
  AMK_2 nvarchar(255) NULL,
  TILIK_2 nvarchar(255) NULL,
  LTTOIMINTO nvarchar(50) NULL,
  LTTUOTOT bigint NULL,
  LTPRAHOITUS bigint NULL,
  LTTUETAVU bigint NULL,
  LTMAKKORV bigint NULL,
  LTMUULIIKE bigint NULL,
  LTMUUTUOT bigint NULL,
  LKULUTYHT bigint NULL,
  LKMATPAL bigint NULL,
  LKHENKILOSTO bigint NULL,
  LKPOISTO bigint NULL,
  LKMUUTKULU bigint NULL,
  LOSUUSYKU bigint NULL,
  AMK_koodi_2 nvarchar(255) NULL,
  AMK_3 nvarchar(255) NULL,
  TILIK_3 nvarchar(255) NULL,
  YTTOIMINTO nvarchar(50) NULL,
  YTTUOTOT bigint NULL,
  YTPRAHOITUS bigint NULL,
  YTTUETAVU bigint NULL,
  YTMAKKORV bigint NULL,
  YTMUULIIKE bigint NULL,
  YTMUUTUOT bigint NULL,
  YKULUTYHT bigint NULL,
  YKMATPAL bigint NULL,
  YKHENKILOSTO bigint NULL,
  YKPOISTO bigint NULL,
  YKMUUTKULU bigint NULL,
  YOSUUSYKU bigint NULL,
  AMK_koodi_3 nvarchar(255) NULL,
  OSA_3 float NULL,
  OSA float NULL,
  OSA_2 float NULL,
  CHECKSUM_AMK_TALOUS_3_TULOSLASKELMAN_TOIMINNOT int NULL,
  IMP_CREATED_DATE datetime NULL,
  IMP_UPDATED_DATE datetime NULL,
  IMP_CREATED_BY nvarchar(255) NULL,
  IMP_DELETED_DATE datetime NULL
)
END