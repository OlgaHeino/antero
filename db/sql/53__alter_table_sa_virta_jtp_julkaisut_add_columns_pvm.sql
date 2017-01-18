IF NOT EXISTS (
  select * from INFORMATION_SCHEMA.COLUMNS
  where TABLE_SCHEMA='sa' and TABLE_NAME='sa_virta_jtp_julkaisut'
  and COLUMN_NAME='muutospvm'
) BEGIN
ALTER TABLE sa.sa_virta_jtp_julkaisut ADD muutospvm varchar(50) null
END

IF NOT EXISTS (
  select * from INFORMATION_SCHEMA.COLUMNS
  where TABLE_SCHEMA='sa' and TABLE_NAME='sa_virta_jtp_julkaisut'
  and COLUMN_NAME='luontipvm'
) BEGIN
ALTER TABLE sa.sa_virta_jtp_julkaisut ADD luontipvm varchar(50) null
END