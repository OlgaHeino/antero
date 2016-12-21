ALTER PROCEDURE dbo.p_lataa_f_amk_talous_2_tase AS

TRUNCATE TABLE ANTERO_DW.dbo.f_amk_talous_2_tase

INSERT INTO dbo.f_amk_talous_2_tase
           (d_amk_id
           ,tilikausi
           ,aineistotyyppi
           ,kehmenot
           ,aineetoi
           ,liikear
           ,muupmeno
           ,ahennakk
           ,maavesi
           ,rakennus
           ,koneet
           ,muuainh
           ,ennakesk
           ,osuuskon
           ,saamikon
           ,osuusoyy
           ,saamioyy
           ,muutosak
           ,muutsaam
           ,okrvarat
           ,aineet
           ,keskener
           ,valmiit
           ,muuvom
           ,voennakk
           ,pmyyntis
           ,pskonser
           ,psoyyrit
           ,plainas
           ,plveros
           ,pmuuts
           ,psiirtos
           ,lmyyntis
           ,lskonser
           ,lsoyyrit
           ,llainas
           ,llveros
           ,lmuuts
           ,lsiirtos
           ,raposuus
           ,raposakk
           ,muuarvop
           ,rahatps
           ,vastaava
           ,osakepaa
           ,arvonkr
           ,kayvanar
           ,okarahas
           ,msirahas
           ,vaprahas
           ,edtilvo
           ,tkvoitto
           ,opoyht
           ,tpskerty
           ,elakvara
           ,verovara
           ,mpakvara
           ,ppaaomal
           ,pjvelkal
           ,pvvelkal
           ,plrahala
           ,pelakel
           ,psaadute
           ,postovel
           ,prveksel
           ,pvkonser
           ,pvoyyrit
           ,plverove
           ,pmuutvel
           ,psiirtov
           ,lpaaomal
           ,ljvelkal
           ,lvvelkal
           ,llrahala
           ,lelakel
           ,lsaadute
           ,lostovel
           ,lrveksel
           ,lvkonser
           ,lvoyyrit
           ,llverove
           ,lmuutvel
           ,lsiirtov
           ,vastatta
           ,okrsijyh
           ,okrrahas
           ,okrosakk
           ,okrmuuap
           ,okrrjaps
           ,okrmuutv
           ,kompperusalvm
           ,saadalvkomp
           ,alvsaavel
           ,source)
SELECT d1.id AS d_amk_id
	  ,TILIK
      ,Aineistotyyppi_osa_1
      ,KEHMENOT
      ,AINEETOI
      ,LIIKEAR
      ,MUUPMENO
      ,AHENNAKK
      ,MAAVESI
      ,RAKENNUS
      ,KONEET
      ,MUUAINH
      ,ENNAKESK
      ,OSUUSKON
      ,SAAMIKON
      ,OSUUSOYY
      ,SAAMIOYY
      ,MUUTOSAK
      ,MUUTSAAM
      ,OKRVARAT
      ,AINEET
      ,KESKENER
      ,VALMIIT
      ,MUUVOM
      ,VOENNAKK
      ,PMYYNTIS
      ,PSKONSER
      ,PSOYYRIT
      ,PLAINAS
      ,PLVEROS
      ,PMUUTS
      ,PSIIRTOS
      ,LMYYNTIS
      ,LSKONSER
      ,LSOYYRIT
      ,LLAINAS
      ,LLVEROS
      ,LMUUTS
      ,LSIIRTOS
      ,RAPOSUUS
      ,RAPOSAKK
      ,MUUARVOP
      ,RAHATPS
      ,VASTAAVA
      ,OSAKEPAA
      ,ARVONKR
      ,KAYVANAR
      ,OKARAHAS
      ,MSIRAHAS
      ,VAPRAHAS
      ,EDTILVO
      ,TKVOITTO
      ,OPOYHT
      ,TPSKERTY
      ,ELAKVARA
      ,VEROVARA
      ,MPAKVARA
      ,PPAAOMAL
      ,PJVELKAL
      ,PVVELKAL
      ,PLRAHALA
      ,PELAKEL
      ,PSAADUTE
      ,POSTOVEL
      ,PRVEKSEL
      ,PVKONSER
      ,PVOYYRIT
      ,PLVEROVE
      ,PMUUTVEL
      ,PSIIRTOV
      ,LPAAOMAL
      ,LJVELKAL
      ,LVVELKAL
      ,LLRAHALA
      ,LELAKEL
      ,LSAADUTE
      ,LOSTOVEL
      ,LRVEKSEL
      ,LVKONSER
      ,LVOYYRIT
      ,LLVEROVE
      ,LMUUTVEL
      ,LSIIRTOV
      ,VASTATTA
      ,OKRSIJYH
      ,OKRRAHAS
      ,OKROSAKK
      ,OKRMUUAP
      ,OKRRJAPS
      ,OKRMUUTV
      ,KOMPPERUSALVM
      ,SAADALVKOMP
      ,ALVSAAVEL
      ,'ETL: p_lataa_f_amk_talous_2_tase' AS source
  FROM ANTERO_SA.dbo.SA_SUORAT_AMK_TALOUS_2_tase f
  INNER JOIN ANTERO_DW.dbo.d_amk d1 ON f.AMK_koodi = d1.amk_tunnus