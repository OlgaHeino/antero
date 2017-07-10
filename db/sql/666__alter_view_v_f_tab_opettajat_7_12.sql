USE [VipunenTK]
GO

/****** Object:  View [dbo].[v_f_tab_opettajat_7_12]    Script Date: 10.7.2017 15:53:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




ALTER view [dbo].[v_f_tab_opettajat_7_12] as

Select
      [Tilastovuosi] = f.tilastointivuosi
	  ,[Oppilaitoksen opetuskieli] = d1.opetuskieli 
	  ,[Kelpoisuus kunnossa] = d17.kylla_ei
	  ,[Opettajan eniten opettama ala] = case d24.koulutusala2002 when 'Yleissivistävä koulutus' then 'Maahanmuuttajien opetus' else coalesce(d24.koulutusala2002,'Ei opetusta') end
      ,[Opettajan eniten opettama aine] = d25.aine
	  ,[Työsuhteen luonne] = d26.tyosuhteen_luonne
	  ,[Koko-/osa-aikainen] = d36.koko_osa_aikainen
	  ,[Osa-aikaisuuden syy] = d37.syy
	  ,[Pedagogiset opinnot puuttuvat] = d38.kylla_ei
	  ,[Tutkinto puuttuu] = d39.kylla_ei
      --,[Opettajan koulutus] = d26.koulutus
      --,[a_oppil] 
      --,[Koulutuksen järjestäjän koko (ei oppisopimus)] = d27.koko
      --,[Koulutuksen järjestäjän koko (oppisopimus)] = d28.koko
      --,[Koulutuksen järjestäjän kieli] = d29.kieli
      --,[Koulutuksen järjestäjän maakunta] = d30.maakunta
	  ,[Oppilaitostyyppi] = (select top 1 oppilaitostyyppi from dbo.d_oppilaitoksen_taustatiedot where oppilaitostyyppikoodi=f.oppilaitostyyppi_id)
      ,[Oppilaitoksen maakunta] = d31.maakunta
	  ,[Oppilaitoksen sijaintikunnan kuntaryhmitys] = (select top 1 kuntaryhma from dbo.d_alueluokitus where kuntaryhma_koodi=f.oppilaitoksen_kuntaryhmitys)
	  ,[Tehtävätyyppi] = d32.tehtavatyyppi
	  ,[Ikäryhmä] = d33.ika5v
	  ,[Sukupuoli] = d34.sukupuoli

	  --Ruotsi
	  ,[Statistikår] = f.tilastointivuosi
	  ,[Läroanstaltens undervisningsspråk] = d1.opetuskieli_SV
	  ,[Opettajan eniten opettama alaSV] = case d24.koulutusala2002 when 'Yleissivistävä koulutus' then 'Utbildning för invandrare' else coalesce(d24.koulutusala2002_SV,'Ingen undervisning') end
      ,[Opettajan eniten opettama aineSV] = d25.aine_SV
	  ,[Läroanstaltstyp] = (select top 1 oppilaitostyyppi_SV from dbo.d_oppilaitoksen_taustatiedot where oppilaitostyyppikoodi=f.oppilaitostyyppi_id)
      ,[Läroanstaltens landskap] = d31.maakunta_SV
	  ,[Läroanstaltens kommungruppering] = (select top 1 kuntaryhma_SV from dbo.d_alueluokitus where kuntaryhma_koodi=f.oppilaitoksen_kuntaryhmitys)
	  ,[Uppgiftstyp] = d32.tehtavatyyppi_SV
	  ,[Åldersgrupp] = d33.ika5v_SV
	  ,[Kön] = d34.sukupuoli_SV

	  --Englanti
      ,[Statistical year] = f.tilastointivuosi
	  ,[Language of the institution] = d1.opetuskieli_EN
	  ,[Teacher's primary field] = case d24.koulutusala2002 when 'Yleissivistävä koulutus' then 'Immigrant education' else coalesce(d24.koulutusala2002_EN,'No teaching') end
      ,[Teacher's primary subject] = d25.aine_EN
	  ,[Type of institution] = (select top 1 oppilaitostyyppi_EN from dbo.d_oppilaitoksen_taustatiedot where oppilaitostyyppikoodi=f.oppilaitostyyppi_id)
      ,[Region of institution] = d31.maakunta_EN
	  ,[Municipality type of institution] = (select top 1 kuntaryhma_EN from dbo.d_alueluokitus where kuntaryhma_koodi=f.oppilaitoksen_kuntaryhmitys)
	  ,[Type of task] = d32.tehtavatyyppi_EN
	  ,[Age group] = d33.ika5v_EN
	  ,[Gender] = d34.sukupuoli_EN

	  --koodit
	   ,[Koodit Oppil. maakunta] = d31.maakunta_koodi
	   ,[Koodit Koulutusala] = d24.koulutusala2002_koodi
 
	  --järjestyskentät
	  ,[Opetuskieli järjestys]= d1.jarjestys
	  ,[Opettajan ala järjestys] = d24.jarjestys_koulutusala2002
	  ,[Opettajan aine järjestys] = d25.jarjestys
	  --,[Koul järj koko ei oppis järjestys] = d27.jarjestys
	  --,[Koul järj koko oppis järjestys] = d28.jarjestys
	  --,[Koul järj kieli järjestys] = d29.jarjestys
	  --,[Koul järj maakunta järjestys] = d30.jarjestys_maakunta
	  ,[Oppilaitostyyppi järjestys] = (select top 1 jarjestys_oppilaitostyyppi from dbo.d_oppilaitoksen_taustatiedot where oppilaitostyyppikoodi=f.oppilaitostyyppi_id)
	  ,[Oppilaitoksen maakunta järjestys] = d31.jarjestys_maakunta
	  ,[Oppilaitoksen kuntaryhmä järjestys] = (select top 1 jarjestys_kuntaryhma from dbo.d_alueluokitus where kuntaryhma_koodi=f.oppilaitoksen_kuntaryhmitys)
	  ,[Tehtävätyyppi järjestys] = d32.jarjestys
	  ,[Ikä järjestys] = d33.jarjestys_ika5v
	  ,[Sukupuoli järjestys] = d34.jarjestys
	  ,[työsuhteen luonne järjestys] = d26.jarjestys

      
FROM [dbo].[f_Opettajat_vapaa_sivistystyo_kelpoisuus_aine] f
LEFT JOIN dbo.d_opetuskieli2 d1 on d1.id=f.oppilaitoksen_kieli_id
LEFT JOIN dbo.d_kylla_ei d17 on d17.id=f.kelpoisuus_kunnossa_id
LEFT JOIN dbo.d_koulutusluokitus d24 on d24.id=f.opettajan_eniten_opettama_ala_id
LEFT JOIN dbo.d_opettajat_aine_vst d25 on d25.id=f.opettajan_eniten_opettama_aine_id
LEFT JOIN dbo.d_alueluokitus d31 on d31.id=f.oppilaitoksen_maakunta_id
LEFT JOIN dbo.d_opettajan_tehtavatyyppi_vapaassa_sivistystyossa d32 on d32.id=f.tehtavatyyppi_id
LEFT JOIN dbo.d_ika d33 on d33.id=f.ika_id
LEFT JOIN dbo.d_sukupuoli d34 on d34.id=f.sukupuoli_id
LEFT JOIN dbo.d_opettajat_tyosuhteen_luonne d26 on d26.id=f.tyosuhteen_luonne_id
LEFT JOIN dbo.d_opettajat_koko_osa_aikainen d36 on d36.id=f.koko_osa_aikainen_id
LEFT JOIN dbo.d_opettajat_osa_aikaisuuden_syy d37 on d37.id=f.osa_aikaisuuden_syy_id
LEFT JOIN dbo.d_kylla_ei d38 on d38.id=f.pedagogiset_opinnot_puuttuu_id
LEFT JOIN dbo.d_kylla_ei d39 on d39.id=f.tutkinto_puuttuu_id








GO

USE [ANTERO]

