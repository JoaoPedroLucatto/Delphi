unit UClasse_Consulta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ENumEd,
  StdCtrls, Buttons, DBCtrls, Mask, DBGrids, DB, DBTables, ExtCtrls;

function AbreFormNovoRegistro(Formulario, TipoUso: string): Boolean;

procedure AbreModuloPrincipal(Formulario: string);
procedure AbreModuloCemiterio(Formulario: string);

procedure AbreModuloAgua(Formulario: string);
procedure AbreModuloAtendimento(Formulario: string);
procedure AbreModuloCVAF(Formulario: string);
procedure AbreModuloDiversas(Formulario: string);
procedure AbreModuloEscola(Formulario: string);
procedure AbreModuloFinanceiro(Formulario: string);
procedure AbreModuloFrenteCaixa(Formulario: string);
procedure AbreModuloImobiliario(Formulario, TipoUso: string);
procedure AbreModuloJuridico(Formulario: string);
procedure AbreModuloMobiliario(Formulario: string);
procedure AbreModuloRural(Formulario: string);
procedure AbreModuloServicos(Formulario: string);
procedure AbreModuloTesouraria(Formulario: string);

implementation

uses
  Funcoes, TrataErros,
{$IFDEF MODULO_PRINCIPAL}
  UCadLogradouros, UCadCidades, UCadBairros, UCadReceitas, UCadBancos,
  UCadContribuintes, UCadTPLogr, UCadTitLogra, UCadTPHistoricos,
  UCadFichas,
{$ENDIF}
{$IFDEF MODULO_CEMITERIO}
  UCadContribuintes, UCadLogradouros, UCadCidades, UCadBairros, UCadTPMortes,
  UCadCartorio, UCadTerrenoCemi, UCadTPTumulos, UCadTTerreno, UCadObitos,
  UCadTPSepultamento, UCadReligioes, UCadFunerarias, UCadVelorios, UCadCemiterios,
  UCadCausaMortis, UCadSepultamentos,
{$ENDIF}
{$IFDEF MODULO_AGUA}
  UCadContribuintes, UCadLogradouros, UCadCalendario,
  UCadCidades, UCadBairros, UCadTPEntrega, UCadReceitas, UCadBancos,
  UCadTPLogr, UCadTitLogra, UCadTPMaterial, UCadTPEsgoto, UCadPadraoLeit,
  UCadTipoHidro, UCadSituHidro, UCadFontes, UCadReservatorios, UCadCobraca,
  UCadTPFaturamento, UCadTPRefatura, UCadAgenteCampo, UCadLacre,
  UGSetores, UCadHidro, UCadQuimicos, UCadTipoBombas, UCadBombas,
  UCadSituacao, UCadTPOrgaoPub, UCadTabCalculo, UCadTabMultas, UCadFiscais,
  UCadTipoOS, UCadTPSolicitante, UCadTPPrestador, UCadPrestadorAG,
  UCadTPServico, UCadImpedOS, UCadTPConvenio, UCadConveniosAG, UCadDistritos,
  UCadUnMedida, UCadTPLacre, UGSetorE,
{$ENDIF}
{$IFDEF MODULO_ATENDIMENTO}
  UCadTabCNAE, UCadContribuintes,
  UCadBairros, UCadLogradouros, UCadClass, UCadReceitas, UCadGeral,
  UCadCidades, UCadFiscais, UCadTabMultas, UClasse_Principal,
  UCadEscritorio, UCadAtividade, UCadGrafica, UCadTPLogr, UCadDistrito,
  UCadTitLogra, UCadTipoAlvara, UCadHidro, UCadTipoOS, UCadPrestadorAG,
  UCadTPSolicitante, UCadTPPrestador, UCadConveniosAG, UCadTPConvenio,
  UCadImpedOS, UCadTPServico, UCadSubTextos, UCadTabCalculo, UCadSituacao,
  UCadCobraca, UCadResponsavelObra, UCadAtivDesdoCNAE, UCadCartorio,
  UCadTextoGeral, UCadTipoDocumento, UCadLoteamento, UCadOperacaoITBI,
{$ENDIF}
{$IFDEF MODULO_CVAF}
  // nao tinha nada
{$ENDIF}
{$IFDEF MODULO_DIVERSAS}
  UCadClass, UCadSetorVenc,
  UCadBairros, UCadLogradouros, UCadCidades, UCadContribuintes,
  UCadTabMultas, UCadFiscais, UCadReceitas, UCadTabCalculo, UClasse_Principal,
  UCadTipoAlvara, UCadSubTextos, UCadTipoDocumento, UCadValCertidoes,
  UCadCartorio, UCadResponsavelObra, UCadClaConst, UCadClaTerre, UCadEntregador, UCadOcorrencia,
  UCadOperacaoITBI, UCadTextoGeral, UCadTabCalcITBI,
{$ENDIF}
{$IFDEF MODULO_ESCOLA}
  UCadLogradouros, UCadCidades, UCadBairros,
  UCadReceitas, UCadBancos, UCadContribuintes, UCadTPLogr,
  UCadTitLogra, UCadTPHistoricos, UCadEscolas, UCadCursos, UCadVeicEsc,
  UCadMotEsc,
{$ENDIF}
{$IFDEF MODULO_FINANCEIRO}
  UCadBairros, UCadLogradouros, UCustas, UCadLoteamento,
  UCadCidades, UCadContribuintes, UCadReceitas, UCadBancos, UCadLotes,
  UAJCadLivrosDA, UCadAJSituacaoes, UCadTipoProc, UCadAreaProc, UCadCategoria,
  UClasse_PesqPrin, UCadTextoGeral, UCadCartorio, UCadComarca, UCadForum,
  UCadAgentes,
{$ENDIF}
{$IFDEF MODULO_FRENTECAIXA}
  // nada
{$ENDIF}
{$IFDEF MODULO_IMOBILIARIO}
  UCadCodCob, UCadBairros,
  UCadLogradouros, UCadCidades, UCadCartorio, UCadContribuintes,
  UCadZonaEdif, UCadImoveis, UCadTPLogr, UCadTitLogra, UCadTPEntregaImv,
  UCadBancos, UCadDistrito, UCadMotivosIsencao, UCadValCertidoes,
  UCadLoteamento, UCadEmpredImob, UCadTipoDocumento, UCadCaractGerais, UCadTipoOS, UCadTextoGeral,
  UCadSetorVenc, UCadTPPrestador, UCadTPServico, UCadFiscais, UCadEntregador, UCadOcorrencia,
  UCadResponsavelObra, UCadReceitas, UCadOperacaoITBI,
{$ENDIF}
{$IFDEF MODULO_JURIDICO}
  UCadLogradouros, UCadCidades, UCadBairros,
  UCadReceitas, UCadBancos, UCadContribuintes, UCadTPLogr,
  UCadTitLogra, UCadTPHistoricos, UCadComarca, UCadForum, UCadTPRecurso,
  UCadSitCitacao, UCadAcordao, UCadAgentes, UCadBens, UCadPenhora, UCadCategoria,
  UCadLeiloes, UCadGarantia, UCadTipoProc, UCadAreaProc, UCadAJSituacaoes,
  UAJCadCargas,
{$ENDIF}
{$IFDEF MODULO_MOBILIARIO}
  UCadBairros, UCadLogradouros, UCadCidades,
  UCadEscritorio, UCadContribuintes, UCadAtividade, UCadReceitas,
  UCadBancos, UCadSetorVenc, UCadGrafica, UCadTabCNAE,
  UCadTPLogr, UCadTitLogra, UCadCalculo, UCadTipoAlvara, UCadTipoOS,
  UCadRestricaoHorarios, UCadDetalheHorarios, URelTipoRestricaoHorarios,
  UCadValCertidoes, UCadTPPrestador, UCadTPServico, UCadTipoDocFiscais,
  UCadResponsavelObra, UCadFiscais, UCadClass, UJCadCOSIF, UJCadDESIF,
  UCadSS, UCadAtivDesdoCNAE, UCadEntregador, UCadOcorrencia,
  UCadTipoNotPostura, UCadTabCalculo,
  UCadTipoDocumento, UCadTextoGeral, UCadTipoProcesso, UCadPrestadorAG,
  UCadTipoTramiteProcesso, UCadDocumentoProcesso,
{$ENDIF}
{$IFDEF MODULO_RURAL}
  UCadBairros, UCadLogradouros, UCadCidades,
  UCadContribuintes, UCadTabCalculo,
{$ENDIF}
{$IFDEF MODULO_SERVICOS}
  UCadContribuintes, UCadTPPrestador,
  UCadTPServico, UCadTPSolicitante, UCadReceitas, UCadTabMultas,
  UCadTipoNotPostura, URelSituacaoPostura, UCadSitPostura, UCadTextoGeral,
  UGNotificaPostura, UCadFiscais, UCadTipoDocumento, UCadDocumentos,
  UCadTipoDocFiscais, UCadPrestadorAG, UCadTipoOS, UConsVeiculosAG,
  UCadOcorrencia, UCadImpedOS, UCadResponsavelObra, UCadDocumentoProcesso, UCadEntrega, UCadEntregador,
{$ENDIF}
{$IFDEF MODULO_TESOURARIA}
  UCadTabCNAE, UCadContribuintes,
  UCadBairros, UCadLogradouros, UCadClass, UCadReceitas, UCadGeral,
  UCadCidades, UCadFiscais, UCadTabMultas,
  UCadEscritorio, UCadAtividade, UCadGrafica, UCadTPLogr,
  UCadTitLogra, UCadTipoAlvara, UCadHidro, UCadTipoOS, UCadPrestadorAG,
  UCadTPSolicitante, UCadTPPrestador, UCadConveniosAG, UCadTPConvenio,
  UCadImpedOS, UCadTPServico, UCadSubTextos, UCadTabCalculo, UCadSituacao,
  UCadCobraca, UCadResponsavelObra, UCadAtivDesdoCNAE, UCadCaixas, UCadImpressora,
{$ENDIF}
  UDM, UPrin;

function AbreFormNovoRegistro(Formulario, TipoUso: string): Boolean;
begin
  AbreModuloPrincipal(Formulario);
  AbreModuloCemiterio(Formulario);

  AbreModuloAgua(Formulario);
  AbreModuloAtendimento(Formulario);
  AbreModuloCVAF(Formulario);
  AbreModuloDiversas(Formulario);
  AbreModuloEscola(Formulario);
  AbreModuloFinanceiro(Formulario);
  AbreModuloFrenteCaixa(Formulario);
  AbreModuloImobiliario(Formulario, TipoUso);
  AbreModuloJuridico(Formulario);
  AbreModuloMobiliario(Formulario);
  AbreModuloRural(Formulario);
  AbreModuloServicos(Formulario);
  AbreModuloTesouraria(Formulario);

  Result := True;
end;

procedure AbreModuloPrincipal(Formulario: string);
begin
{$IFDEF MODULO_PRINCIPAL}
  if Formulario = 'FCadLogradouros' then begin
    Application.CreateForm(TFCadLogradouros, FCadLogradouros);

    if Dm.Permissao(FCadLogradouros, 'PRN_FCadLogradouros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadLogradouros.NovoAtend := 'NOVO';
      FCadLogradouros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLogradouros.Free;
  end;

  if Formulario = 'FCadCidades' then begin
    Application.CreateForm(TFCadCidades, FCadCidades);

    if Dm.Permissao(FCadCidades, 'PRN_FCadCidades', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadCidades.NovoAtend := 'NOVO';
      FCadCidades.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCidades.Free;
  end;

  if Formulario = 'FCadBairros' then begin
    Application.CreateForm(TFCadBairros, FCadBairros);

    if Dm.Permissao(FCadBairros, 'PRN_FCadBairros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadBairros.NovoAtend := 'NOVO';
      FCadBairros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBairros.Free;
  end;

  if Formulario = 'FCadReceitas' then begin
    Application.CreateForm(TFCadReceitas, FCadReceitas);
    if Dm.Permissao(FCadReceitas, 'PRN_FCadReceitas', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadReceitas.NovoAtend := 'NOVO';
      FCadReceitas.ShowModal
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadReceitas.Free;
  end;

  if Formulario = 'FCadBancos' then begin
    Application.CreateForm(TFCadBancos, FCadBancos);
    if Dm.Permissao(FCadBancos, 'PRN_FCadBancos', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadBancos.NovoAtend := 'NOVO';
      FCadBancos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBancos.Free;
  end;

  if Formulario = 'FCadContribuintes' then begin
    Application.CreateForm(TFCadContribuintes, FCadContribuintes);
    if Dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadContribuintes.NovoAtend := 'NOVO';
      FCadContribuintes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadContribuintes.Free;
  end;

  if (Formulario = 'FCadTPLogr') then begin
    Application.CreateForm(TFCadTPLogr, FCadTPLogr);

    if Dm.Permissao(FCadTPLogr, 'PRN_FCadTPLogr', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPLogr.NovoAtend := 'NOVO';
      FCadTPLogr.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPLogr.Free;
  end;

  if Formulario = 'FCadTitLogra' then begin
    Application.CreateForm(TFCadTitLogra, FCadTitLogra);
    if Dm.Permissao(FCadTitLogra, 'PRN_FCadTitLogra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTitLogra.NovoAtend := 'NOVO';
      FCadTitLogra.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTitLogra.Free;
  end;

  if Formulario = 'FCadTPHistoricos' then begin
    Application.CreateForm(TFCadTPHistoricos, FCadTPHistoricos);
    if Dm.Permissao(FCadTPHistoricos, 'PRN_FCadTPHistoricos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPHistoricos.NovoAtend := 'NOVO';
      FCadTPHistoricos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPHistoricos.Free;
  end;

  if Formulario = 'FCadFichas' then begin
    Application.CreateForm(TFCadFichas, FCadFichas);
    if Dm.Permissao(FCadFichas, 'PRN_FCadFichas', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadFichas.NovoAtend := 'NOVO';
      FCadFichas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadFichas.Free;
  end;

  if Formulario = 'FCadUsuarioSiaWeb' then begin
    Application.CreateForm(TFCadUsuarioSiaWeb, FCadUsuarioSiaWeb);
    if Dm.Permissao(FCadUsuarioSiaWeb, 'PRN_FCadUsuarioSiaWeb', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadUsuarioSiaWeb.NovoAtend := 'NOVO';
      FCadUsuarioSiaWeb.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadUsuarioSiaWeb.Free;
  end;

  if Formulario = 'FJCadUsuISSWeb' then begin
    Application.CreateForm(TFJCadUsuISSWeb, FJCadUsuISSWeb);
    if Dm.Permissao(FJCadUsuISSWeb, 'PRN_FJCadUsuISSWeb', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FJCadUsuISSWeb.NovoAtend := 'NOVO';
      FJCadUsuISSWeb.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FJCadUsuISSWeb.Free;
  end;

{$ENDIF}
end;

procedure AbreModuloCemiterio(Formulario: string);
begin
{$IFDEF MODULO_CEMITERIO}
  if Formulario = 'FCadContribuintes' then begin
    Application.CreateForm(TFCadContribuintes, FCadContribuintes);
    if Dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadContribuintes.NovoAtend := 'NOVO';
      FCadContribuintes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadContribuintes.Free;
  end;

  if Formulario = 'FCadLogradouros' then begin
    Application.CreateForm(TFCadLogradouros, FCadLogradouros);
    if Dm.Permissao(FCadLogradouros, 'PRN_FCadLogradouros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadLogradouros.NovoAtend := 'NOVO';
      FCadLogradouros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLogradouros.Free;
  end;

  if Formulario = 'FCadCidades' then begin
    Application.CreateForm(TFCadCidades, FCadCidades);
    if Dm.Permissao(FCadCidades, 'PRN_FCadCidades', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadCidades.NovoAtend := 'NOVO';
      FCadCidades.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCidades.Free;
  end;

  if Formulario = 'FCadBairros' then begin
    Application.CreateForm(TFCadBairros, FCadBairros);
    if Dm.Permissao(FCadBairros, 'PRN_FCadBairros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadBairros.NovoAtend := 'NOVO';
      FCadBairros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBairros.Free;
  end;

  if Formulario = 'FCadTPMortes' then begin
    Application.CreateForm(TFCadTPMortes, FCadTPMortes);
    if Dm.Permissao(FCadTPMortes, 'CEM_FCadTPMortes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPMortes.NovoAtend := 'NOVO';
      FCadTPMortes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPMortes.Free;
  end;

  if Formulario = 'FCadCartorio' then begin
    Application.CreateForm(TFCadCartorio, FCadCartorio);
    if Dm.Permissao(FCadCartorio, 'MOB_FCadCartorio', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCartorio.NovoAtend := 'NOVO';
      FCadCartorio.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCartorio.Free;
  end;

  if Formulario = 'FCadTerrenoCemi' then begin
    Application.CreateForm(TFCadTerrenoCemi, FCadTerrenoCemi);
    if Dm.Permissao(FCadTerrenoCemi, 'CEM_FCadTerrenoCemi', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTerrenoCemi.NovoAtend := 'NOVO';
      FCadTerrenoCemi.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTerrenoCemi.Free;
  end;

  if Formulario = 'FCadTTerreno' then begin
    Application.CreateForm(TFCadTTerreno, FCadTTerreno);
    if Dm.Permissao(FCadTTerreno, 'CEM_FCadTTerreno', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTTerreno.NovoAtend := 'NOVO';
      FCadTTerreno.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTTerreno.Free;
  end;

  if Formulario = 'FCadTPTumulos' then begin
    Application.CreateForm(TFCadTPTumulos, FCadTPTumulos);
    if Dm.Permissao(FCadTPTumulos, 'CEM_FCadTPTumulos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPTumulos.NovoAtend := 'NOVO';
      FCadTPTumulos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPTumulos.Free;
  end;

  if Formulario = 'FCadObitos' then begin
    Application.CreateForm(TFCadObitos, FCadObitos);
    if Dm.Permissao(FCadObitos, 'CEM_FCadObitos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadObitos.NovoAtend := 'NOVO';
      FCadObitos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadObitos.Free;
  end;

  if Formulario = 'FCadSepultamentos' then begin
    Application.CreateForm(TFCadSepultamentos, FCadSepultamentos);
    if Dm.Permissao(FCadSepultamentos, 'CEM_FCadSepultamentos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSepultamentos.NovoAtend := 'NOVO';
      FCadSepultamentos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSepultamentos.Free;
  end;

  if Formulario = 'FCadTPSepultamento' then begin
    Application.CreateForm(TFCadTPSepultamento, FCadTPSepultamento);
    if Dm.Permissao(FCadTPSepultamento, 'CEM_FCadTPSepultamento', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPSepultamento.NovoAtend := 'NOVO';
      FCadTPSepultamento.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPSepultamento.Free;
  end;

  if Formulario = 'FCadReligioes' then begin
    Application.CreateForm(TFCadReligioes, FCadReligioes);
    if Dm.Permissao(FCadReligioes, 'CEM_FCadReligioes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadReligioes.NovoAtend := 'NOVO';
      FCadReligioes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadReligioes.Free;
  end;

  if Formulario = 'FCadFunerarias' then begin
    Application.CreateForm(TFCadFunerarias, FCadFunerarias);
    if Dm.Permissao(FCadTPMortes, 'CEM_FCadFunerarias', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadFunerarias.NovoAtend := 'NOVO';
      FCadFunerarias.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadFunerarias.Free;
  end;

  if Formulario = 'FCadVelorios' then begin
    Application.CreateForm(TFCadVelorios, FCadVelorios);
    if Dm.Permissao(FCadTPMortes, 'CEM_FCadVelorios', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadVelorios.NovoAtend := 'NOVO';
      FCadVelorios.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadVelorios.Free;
  end;

  if Formulario = 'FCadCemiterios' then begin
    Application.CreateForm(TFCadCemiterios, FCadCemiterios);
    if Dm.Permissao(FCadTPMortes, 'CEM_FCadCemiterios', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCemiterios.NovoAtend := 'NOVO';
      FCadCemiterios.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCemiterios.Free;
  end;

  if Formulario = 'FCadCausaMortis' then begin
    Application.CreateForm(TFCadCausaMortis, FCadCausaMortis);
    if Dm.Permissao(FCadCausaMortis, 'CEM_FCadCausaMortis', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCausaMortis.NovoAtend := 'NOVO';
      FCadCausaMortis.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCausaMortis.Free;
  end;
{$ENDIF} // MODULO_CEMITERIO
end;

procedure AbreModuloAgua(Formulario: string);
begin
{$IFDEF MODULO_AGUA}
  if Formulario = 'FCadContribuintes' then begin
    Application.CreateForm(TFCadContribuintes, FCadContribuintes);
    if Dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadContribuintes.NovoAtend := 'NOVO';
      FCadContribuintes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadContribuintes.Free;
  end;

  if Formulario = 'FCadLogradouros' then begin
    Application.CreateForm(TFCadLogradouros, FCadLogradouros);
    if Dm.Permissao(FCadLogradouros, 'PRN_FCadLogradouros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadLogradouros.NovoAtend := 'NOVO';
      FCadLogradouros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLogradouros.Free;
  end;

  if Formulario = 'FCadCidades' then begin
    Application.CreateForm(TFCadCidades, FCadCidades);
    if Dm.Permissao(FCadCidades, 'PRN_FCadCidades', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadCidades.NovoAtend := 'NOVO';
      FCadCidades.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCidades.Free;
  end;

  if Formulario = 'FCadBairros' then begin
    Application.CreateForm(TFCadBairros, FCadBairros);
    if Dm.Permissao(FCadBairros, 'PRN_FCadBairros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadBairros.NovoAtend := 'NOVO';
      FCadBairros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBairros.Free;
  end;

  if Formulario = 'FCadReceitas' then begin
    Application.CreateForm(TFCadReceitas, FCadReceitas);
    if Dm.Permissao(FCadReceitas, 'PRN_FCadReceitas', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadReceitas.NovoAtend := 'NOVO';
      FCadReceitas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadReceitas.Free;
  end;

  if Formulario = 'FCadBancos' then begin
    Application.CreateForm(TFCadBancos, FCadBancos);
    if Dm.Permissao(FCadBancos, 'PRN_FCadBancos', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadBancos.NovoAtend := 'NOVO';
      FCadBancos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBancos.Free;
  end;

  if (Formulario = 'FCadTPLogr') or (Formulario = 'FCadTPEntregaImv') then begin
    Application.CreateForm(TFCadTPLogr, FCadTPLogr);
    if Dm.Permissao(FCadTPLogr, 'PRN_FCadTPLogr', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPLogr.NovoAtend := 'NOVO';
      FCadTPLogr.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPLogr.Free;
  end;

  if Formulario = 'FCadTitLogra' then begin
    Application.CreateForm(TFCadTitLogra, FCadTitLogra);
    if Dm.Permissao(FCadTitLogra, 'PRN_FCadTitLogra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTitLogra.NovoAtend := 'NOVO';
      FCadTitLogra.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTitLogra.Free;
  end;

  if Formulario = 'FCadTPEntrega' then begin
    Application.CreateForm(TFCadTPEntrega, FCadTPEntrega);
    if Dm.Permissao(FCadTPEntrega, 'AGU_FCadTPEntrega', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPEntrega.NovoAtend := 'NOVO';
      FCadTPEntrega.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPEntrega.Free;
  end;

  if Formulario = 'FCadTPMaterial' then begin
    Application.CreateForm(TFCadTPMaterial, FCadTPMaterial);
    if Dm.Permissao(FCadTPMaterial, 'AGU_FCadTPMaterial', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPMaterial.NovoAtend := 'NOVO';
      FCadTPMaterial.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPMaterial.Free;
  end;

  if Formulario = 'FCadTPEsgoto' then begin
    Application.CreateForm(TFCadTPEsgoto, FCadTPEsgoto);
    if Dm.Permissao(FCadTPEsgoto, 'AGU_FCadTPEsgoto', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPEsgoto.NovoAtend := 'NOVO';
      FCadTPEsgoto.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPEsgoto.Free;
  end;

  if Formulario = 'FCadTPEsgoto' then begin
    Application.CreateForm(TFCadTPEsgoto, FCadTPEsgoto);
    if Dm.Permissao(FCadTPEsgoto, 'AGU_FCadTPEsgoto', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPEsgoto.NovoAtend := 'NOVO';
      FCadTPEsgoto.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPEsgoto.Free;
  end;

  if Formulario = 'FCadPadraoLeit' then begin
    Application.CreateForm(TFCadPadraoLeit, FCadPadraoLeit);
    if Dm.Permissao(FCadPadraoLeit, 'AGU_FCadPadraoLeit', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadPadraoLeit.NovoAtend := 'NOVO';
      FCadPadraoLeit.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadPadraoLeit.Free;
  end;

  if Formulario = 'FCadTipoHidro' then begin
    Application.CreateForm(TFCadTipoHidro, FCadTipoHidro);
    if Dm.Permissao(FCadTipoHidro, 'AGU_FCadTipoHidro', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoHidro.NovoAtend := 'NOVO';
      FCadTipoHidro.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoHidro.Free;
  end;

  if Formulario = 'FCadSituHidro' then begin
    Application.CreateForm(TFCadSituHidro, FCadSituHidro);
    if Dm.Permissao(FCadSituHidro, 'AGU_FCadSituHidro', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSituHidro.NovoAtend := 'NOVO';
      FCadSituHidro.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSituHidro.Free;
  end;

  if Formulario = 'FCadFontes' then begin
    Application.CreateForm(TFCadFontes, FCadFontes);
    if Dm.Permissao(FCadFontes, 'AGU_FCadFontes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadFontes.NovoAtend := 'NOVO';
      FCadFontes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadFontes.Free;
  end;

  if Formulario = 'FCadReservatorios' then begin
    Application.CreateForm(TFCadReservatorios, FCadReservatorios);
    if Dm.Permissao(FCadReservatorios, 'AGU_FCadReservatorios', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadReservatorios.NovoAtend := 'NOVO';
      FCadReservatorios.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadReservatorios.Free;
  end;

  if Formulario = 'FCadCobranca' then begin
    Application.CreateForm(TFCadCobranca, FCadCobranca);
    if Dm.Permissao(FCadCobranca, 'AGU_FCadCobranca', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCobranca.NovoAtend := 'NOVO';
      FCadCobranca.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCobranca.Free;
  end;

  if Formulario = 'FTPFaturamento' then begin
    Application.CreateForm(TFTPFaturamento, FTPFaturamento);
    if Dm.Permissao(FTPFaturamento, 'AGU_FTPFaturamento', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FTPFaturamento.NovoAtend := 'NOVO';
      FTPFaturamento.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FTPFaturamento.Free;
  end;

  if Formulario = 'FCadTPRefatura' then begin
    Application.CreateForm(TFCadTPRefatura, FCadTPRefatura);
    if Dm.Permissao(FCadTPRefatura, 'AGU_FCadTPRefatura', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPRefatura.NovoAtend := 'NOVO';
      FCadTPRefatura.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPRefatura.Free;
  end;

  if Formulario = 'FCadHidro' then begin
    Application.CreateForm(TFCadHidro, FCadHidro);
    if Dm.Permissao(FCadHidro, 'AGU_FCadHidro', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadHidro.NovoAtend := 'NOVO';
      FCadHidro.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadHidro.Free;
  end;

  if Formulario = 'FCadAgenteCampo' then begin
    Application.CreateForm(TFCadAgenteCampo, FCadAgenteCampo);
    if Dm.Permissao(FCadAgenteCampo, 'AGU_FRelAgenteCampo', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadAgenteCampo.NovoAtend := 'NOVO';
      FCadAgenteCampo.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAgenteCampo.Free;
  end;

  if Formulario = 'FGSetores' then begin
    Application.CreateForm(TFGSetores, FGSetores);
    if Dm.Permissao(FGSetores, 'AGU_FGSetores', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FGSetores.NovoAtend := 'NOVO';
      FGSetores.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FGSetores.Free;
  end;

  if Formulario = 'FGSetorE' then begin
    Application.CreateForm(TFGSetorE, FGSetorE);
    if Dm.Permissao(FGSetores, 'AGU_FGSetorE', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FGSetorE.NovoAtend := 'NOVO';
      FGSetorE.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FGSetorE.Free;
  end;

  if Formulario = 'FCadQuimicos' then begin
    Application.CreateForm(TFCadQuimicos, FCadQuimicos);
    if Dm.Permissao(FCadQuimicos, 'AGU_FCadQuimicos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadQuimicos.NovoAtend := 'NOVO';
      FCadQuimicos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadQuimicos.Free;
  end;

  if Formulario = 'FCadCalendario' then begin
    Application.CreateForm(TFCadCalendario, FCadCalendario);
    if Dm.Permissao(FCadCalendario, 'AGU_FCadCalendario', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCalendario.NovoAtend := 'NOVO';
      FCadCalendario.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCalendario.Free;
  end;

  if Formulario = 'FCadTipoBombas' then begin
    Application.CreateForm(TFCadTipoBombas, FCadTipoBombas);
    if Dm.Permissao(FCadTipoBombas, 'AGU_FCadTipoBombas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoBombas.NovoAtend := 'NOVO';
      FCadTipoBombas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoBombas.Free;
  end;

  if Formulario = 'FCadBombas' then begin
    Application.CreateForm(TFCadBombas, FCadBombas);
    if Dm.Permissao(FCadBombas, 'AGU_FCadBombas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadBombas.NovoAtend := 'NOVO';
      FCadBombas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBombas.Free;
  end;

  if Formulario = 'FCadSituacao' then begin
    Application.CreateForm(TFCadSituacao, FCadSituacao);
    if Dm.Permissao(FCadSituacao, 'AGU_FCadSituacao', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSituacao.NovoAtend := 'NOVO';
      FCadSituacao.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSituacao.Free;
  end;

  if Formulario = 'FCadTPOrgaoPub' then begin
    Application.CreateForm(TFCadTPOrgaoPub, FCadTPOrgaoPub);
    if Dm.Permissao(FCadTPOrgaoPub, 'AGU_FCadTPOrgaoPub', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPOrgaoPub.NovoAtend := 'NOVO';
      FCadTPOrgaoPub.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPOrgaoPub.Free;
  end;

  if Formulario = 'FCadTabCalculo' then begin
    Application.CreateForm(TFCadTabCalculo, FCadTabCalculo);
    if Dm.Permissao(FCadTabCalculo, 'DIV_FCadTabCalculo', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTabCalculo.NovoAtend := 'NOVO';
      FCadTabCalculo.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabCalculo.Free;
  end;

  if Formulario = 'FCadTabMultas' then begin
    Application.CreateForm(TFCadTabMultas, FCadTabMultas);
    if Dm.Permissao(FCadTabMultas, 'DIV_FCadTabMultas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTabMultas.NovoAtend := 'NOVO';
      FCadTabMultas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabMultas.Free;
  end;

  if Formulario = 'FCadFiscais' then begin
    Application.CreateForm(TFCadFiscais, FCadFiscais);
    if Dm.Permissao(FCadFiscais, 'DIV_FCadFiscais', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadFiscais.NovoAtend := 'NOVO';
      FCadFiscais.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadFiscais.Free;
  end;

  if Formulario = 'FCadTipoOS' then begin
    Application.CreateForm(TFCadTipoOS, FCadTipoOS);
    if Dm.Permissao(FCadTipoOS, 'AGU_FRelTipoOs', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoOS.NovoAtend := 'NOVO';
      FCadTipoOS.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoOS.Free;
  end;

  if Formulario = 'FCadTPSolicitante' then begin
    Application.CreateForm(TFCadTPSolicitante, FCadTPSolicitante);
    if Dm.Permissao(FCadTPSolicitante, 'SRV_FRelTipoSolicitante', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPSolicitante.NovoAtend := 'NOVO';
      FCadTPSolicitante.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPSolicitante.Free;
  end;

  if Formulario = 'FCadTPPrestador' then begin
    Application.CreateForm(TFCadTPPrestador, FCadTPPrestador);
    if Dm.Permissao(FCadTPPrestador, 'SRV_FCadTPPrestador', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPPrestador.NovoAtend := 'NOVO';
      FCadTPPrestador.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPPrestador.Free;
  end;

  if Formulario = 'FCadPrestadorAG' then begin
    Application.CreateForm(TFCadPrestadorAG, FCadPrestadorAG);
    if Dm.Permissao(FCadPrestadorAG, 'SRV_FCadPrestadorAG', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadPrestadorAG.NovoAtend := 'NOVO';
      FCadPrestadorAG.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadPrestadorAG.Free;
  end;

  if Formulario = 'FCadTipoServico' then begin
    Application.CreateForm(TFCadTipoServico, FCadTipoServico);
    if Dm.Permissao(FCadTipoServico, 'SRV_FRelTipoServicos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoServico.NovoAtend := 'NOVO';
      FCadTipoServico.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoServico.Free;
  end;

  if Formulario = 'FCadImpedOS' then begin
    Application.CreateForm(TFCadImpedOS, FCadImpedOS);
    if Dm.Permissao(FCadImpedOS, 'SRV_FCadImpedOS', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadImpedOS.NovoAtend := 'NOVO';
      FCadImpedOS.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadImpedOS.Free;
  end;

  if Formulario = 'FCadTPConvenio' then begin
    Application.CreateForm(TFCadTPConvenio, FCadTPConvenio);
    if Dm.Permissao(FCadTPConvenio, 'AGU_FCadTPConvenio', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPConvenio.NovoAtend := 'NOVO';
      FCadTPConvenio.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPConvenio.Free;
  end;

  if Formulario = 'FCadConveniosAG' then begin
    Application.CreateForm(TFCadConveniosAG, FCadConveniosAG);
    if Dm.Permissao(FCadConveniosAG, 'AGU_FCadConveniosAG', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadConveniosAG.NovoAtend := 'NOVO';
      FCadConveniosAG.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadConveniosAG.Free;
  end;

  if Formulario = 'FCadDistritos' then begin
    Application.CreateForm(TFCadDistritos, FCadDistritos);
    if Dm.Permissao(FCadDistritos, 'AGU_FCadDistritos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadDistritos.NovoAtend := 'NOVO';
      FCadDistritos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadDistritos.Free;
  end;

  if Formulario = 'FCadLacres' then begin
    Application.CreateForm(TFCadLacres, FCadLacres);
    if Dm.Permissao(FCadLacres, 'AGU_FCadLacres', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadLacres.NovoAtend := 'NOVO';
      FCadLacres.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLacres.Free;
  end;

  if Formulario = 'FCadUnMedida' then begin
    Application.CreateForm(TFCadUnMedida, FCadUnMedida);
    if Dm.Permissao(FCadUnMedida, 'PRN_FCadUnMedida', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadUnMedida.NovoAtend := 'NOVO';
      FCadUnMedida.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadUnMedida.Free;
  end;

  if Formulario = 'FCadTPLacre' then begin
    Application.CreateForm(TFCadTPLacre, FCadTPLacre);
    if Dm.Permissao(FCadTPLacre, 'AGU_FCadTPLacre', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPLacre.NovoAtend := 'NOVO';
      FCadTPLacre.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPLacre.Free;
  end;
{$ENDIF}
end;

procedure AbreModuloAtendimento(Formulario: string);
begin
{$IFDEF MODULO_ATENDIMENTO}
  if Formulario = 'FCadAtivDesdoCNAE' then begin
    Application.CreateForm(TFCadAtivDesdoCNAE, FCadAtivDesdoCNAE);
    if Dm.Permissao(FCadAtivDesdoCNAE, 'MOB_FCadAtivDesdoCNAE', SIA_Empresa, SIA_Usuario, 'MOBILIARIO', SIA_Representante) then begin
      FCadAtivDesdoCNAE.NovoAtend := 'NOVO';
      FCadAtivDesdoCNAE.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAtivDesdoCNAE.Free;
  end;

  if Formulario = 'FCadContribuintes' then begin
    Application.CreateForm(TFCadContribuintes, FCadContribuintes);
    if Dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadContribuintes.NovoAtend := 'NOVO';
      FCadContribuintes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadContribuintes.Free;
  end;

  if Formulario = 'FCadBairros' then begin
    Application.CreateForm(TFCadBairros, FCadBairros);
    if Dm.Permissao(FCadBairros, 'PRN_FCadBairros', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadBairros.NovoAtend := 'NOVO';
      FCadBairros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBairros.Free;
  end;

  if Formulario = 'FCadCidades' then begin
    Application.CreateForm(TFCadCidades, FCadCidades);
    if Dm.Permissao(FCadCidades, 'PRN_FCadCidades', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCidades.NovoAtend := 'NOVO';
      FCadCidades.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCidades.Free;
  end;

  if Formulario = 'FCadLogradouros' then begin
    Application.CreateForm(TFCadLogradouros, FCadLogradouros);
    if Dm.Permissao(FCadLogradouros, 'PRN_FCadLogradouros', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadLogradouros.NovoAtend := 'NOVO';
      FCadLogradouros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLogradouros.Free;
  end;

  if Formulario = 'FCadClass' then begin
    Application.CreateForm(TFCadClass, FCadClass);
    if Dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadClass.NovoAtend := 'NOVO';
      FCadClass.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadClass.Free;
  end;

  if Formulario = 'FCadReceitas' then begin
    Application.CreateForm(TFCadReceitas, FCadReceitas);
    if Dm.Permissao(FCadReceitas, 'PRN_FCadReceitas', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadReceitas.NovoAtend := 'NOVO';
      FCadReceitas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadReceitas.Free;
  end;

  if Formulario = 'FCadDiversas' then begin
    Application.CreateForm(TFCadDiversas, FCadDiversas);
    if Dm.Permissao(FCadDiversas, 'DIV_FCadDiversas', SIA_Empresa, SIA_Usuario, 'DIVERSAS', SIA_Representante) then begin
      FCadDiversas.NovoAtend := 'NOVO';
      FCadDiversas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadDiversas.Free;
  end;

  if Formulario = 'FCadFiscais' then begin
    Application.CreateForm(TFCadFiscais, FCadFiscais);
    if Dm.Permissao(FCadFiscais, 'DIV_FCadFiscais', SIA_Empresa, SIA_Usuario, 'DIVERSAS', SIA_Representante) then begin
      FCadFiscais.NovoAtend := 'NOVO';
      FCadFiscais.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadFiscais.Free;
  end;

  if Formulario = 'FCadTabMultas' then begin
    Application.CreateForm(TFCadTabMultas, FCadTabMultas);
    if Dm.Permissao(FCadTabMultas, 'DIV_FCadTabMultas', SIA_Empresa, SIA_Usuario, 'DIVERSAS', SIA_Representante) then begin
      FCadTabMultas.NovoAtend := 'NOVO';
      FCadTabMultas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabMultas.Free;
  end;

  if Formulario = 'FCadAtividade' then begin
    Application.CreateForm(TFCadAtividade, FCadAtividade);
    if Dm.Permissao(FCadAtividade, 'MOB_FCadAtividade', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadAtividade.NovoAtend := 'NOVO';
      FCadAtividade.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAtividade.Free;
  end;

  if Formulario = 'FCadEscritorio' then begin
    Application.CreateForm(TFCadEscritorio, FCadEscritorio);
    if Dm.Permissao(FCadEscritorio, 'MOB_FCadEscritorio', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadEscritorio.NovoAtend := 'NOVO';
      FCadEscritorio.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadEscritorio.Free;
  end;

  if Formulario = 'FCadGrafica' then begin
    Application.CreateForm(TFCadGrafica, FCadGrafica);
    if Dm.Permissao(FCadGrafica, 'MOB_FCadGrafica', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadGrafica.NovoAtend := 'NOVO';
      FCadGrafica.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadGrafica.Free;
  end;

  if Formulario = 'FCadTPLogr' then begin
    Application.CreateForm(TFCadTPLogr, FCadTPLogr);
    if Dm.Permissao(FCadTPLogr, 'PRN_FCadTPLogr', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPLogr.NovoAtend := 'NOVO';
      FCadTPLogr.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPLogr.Free;
  end;

  if Formulario = 'FCadTitLogra' then begin
    Application.CreateForm(TFCadTitLogra, FCadTitLogra);
    if Dm.Permissao(FCadTitLogra, 'PRN_FCadTitLogra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTitLogra.NovoAtend := 'NOVO';
      FCadTitLogra.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTitLogra.Free;
  end;

  if Formulario = 'FCadTipoAlvara' then begin
    Application.CreateForm(TFCadTipoAlvara, FCadTipoAlvara);
    if Dm.Permissao(FCadTipoAlvara, 'DIV_FCadTipoAlvara', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoAlvara.NovoAtend := 'NOVO';
      FCadTipoAlvara.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoAlvara.Free;
  end;

  if Formulario = 'FCadHidro' then begin
    Application.CreateForm(TFCadHidro, FCadHidro);
    if Dm.Permissao(FCadHidro, 'AGU_FCadHidro', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadHidro.NovoAtend := 'NOVO';
      FCadHidro.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadHidro.Free;
  end;

  if Formulario = 'FCadTipoOS' then begin
    Application.CreateForm(TFCadTipoOS, FCadTipoOS);
    if Dm.Permissao(FCadTipoOS, 'AGU_FRelTipoOs', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoOS.NovoAtend := 'NOVO';
      FCadTipoOS.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoOS.Free;
  end;

  if Formulario = 'FCadTPSolicitante' then begin
    Application.CreateForm(TFCadTPSolicitante, FCadTPSolicitante);
    if Dm.Permissao(FCadTPSolicitante, 'SRV_FRelTipoSolicitante', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPSolicitante.NovoAtend := 'NOVO';
      FCadTPSolicitante.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPSolicitante.Free;
  end;

  if Formulario = 'FCadTPPrestador' then begin
    Application.CreateForm(TFCadTPPrestador, FCadTPPrestador);
    if Dm.Permissao(FCadTPPrestador, 'SRV_FCadTPPrestador', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPPrestador.NovoAtend := 'NOVO';
      FCadTPPrestador.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPPrestador.Free;
  end;

  if Formulario = 'FCadPrestadorAG' then begin
    Application.CreateForm(TFCadPrestadorAG, FCadPrestadorAG);
    if Dm.Permissao(FCadPrestadorAG, 'SRV_FCadPrestadorAG', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadPrestadorAG.NovoAtend := 'NOVO';
      FCadPrestadorAG.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadPrestadorAG.Free;
  end;

  if Formulario = 'FCadTipoServico' then begin
    Application.CreateForm(TFCadTipoServico, FCadTipoServico);
    if Dm.Permissao(FCadTipoServico, 'SRV_FRelTipoServicos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoServico.NovoAtend := 'NOVO';
      FCadTipoServico.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoServico.Free;
  end;

  if Formulario = 'FCadImpedOS' then begin
    Application.CreateForm(TFCadImpedOS, FCadImpedOS);
    if Dm.Permissao(FCadImpedOS, 'SRV_FCadImpedOS', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadImpedOS.NovoAtend := 'NOVO';
      FCadImpedOS.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadImpedOS.Free;
  end;

  if Formulario = 'FCadTPConvenio' then begin
    Application.CreateForm(TFCadTPConvenio, FCadTPConvenio);
    if Dm.Permissao(FCadTPConvenio, 'AGU_FCadTPConvenio', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPConvenio.NovoAtend := 'NOVO';
      FCadTPConvenio.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPConvenio.Free;
  end;

  if Formulario = 'FCadConveniosAG' then begin
    Application.CreateForm(TFCadConveniosAG, FCadConveniosAG);
    if Dm.Permissao(FCadConveniosAG, 'AGU_FCadConveniosAG', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadConveniosAG.NovoAtend := 'NOVO';
      FCadConveniosAG.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadConveniosAG.Free;
  end;

  if Formulario = 'FCadSubTextos' then begin
    Application.CreateForm(TFCadSubTextos, FCadSubTextos);
    if Dm.Permissao(FCadSubTextos, 'DIV_FCadSubTextos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSubTextos.NovoAtend := 'NOVO';
      FCadSubTextos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSubTextos.Free;
  end;

  if Formulario = 'FCadTabCalculo' then begin
    Application.CreateForm(TFCadTabCalculo, FCadTabCalculo);
    if Dm.Permissao(FCadTabCalculo, 'DIV_FCadTabCalculo', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTabCalculo.NovoAtend := 'NOVO';
      FCadTabCalculo.FCadTabCalculo.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabCalculo.Free;
  end;

  if Formulario = 'FCadSituacao' then begin
    Application.CreateForm(TFCadSituacao, FCadSituacao);
    if Dm.Permissao(FCadSituacao, 'AGU_FCadSituacao', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSituacao.NovoAtend := 'NOVO';
      FCadSituacao.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSituacao.Free;
  end;

  if Formulario = 'FCadCobranca' then begin
    Application.CreateForm(TFCadCobranca, FCadCobranca);
    if Dm.Permissao(FCadCobranca, 'AGU_FCadSituacao', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCobranca.NovoAtend := 'NOVO';
      FCadCobranca.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCobranca.Free;
  end;

  if Formulario = 'FCadDistrito' then begin
    Application.CreateForm(TFCadDistrito, FCadDistrito);
    if Dm.Permissao(FCadDistrito, 'IMO_FCadDistrito', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadDistrito.NovoAtend := 'NOVO';
      FCadDistrito.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadDistrito.Free;
  end;

  if Formulario = 'FCadResponsavelObra' then begin
    Application.CreateForm(TFCadResponsavelObra, FCadResponsavelObra);
    if Dm.Permissao(FCadResponsavelObra, 'DIV_FCadResponsavelObra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadResponsavelObra.NovoAtend := 'NOVO';
      FCadResponsavelObra.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadResponsavelObra.Free;
  end;

  if Formulario = 'FCadCartorio' then begin
    Application.CreateForm(TFCadCartorio, FCadCartorio);
    if Dm.Permissao(FCadCartorio, 'PRN_FCadCartorio', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCartorio.NovoAtend := 'NOVO';
      FCadCartorio.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCartorio.Free;
  end;

  if Formulario = 'FCadTextoGeral' then begin
    Application.CreateForm(TFCadTextoGeral, FCadTextoGeral);
    if Dm.Permissao(FCadTextoGeral, 'PRN_FCadTextoGeral', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTextoGeral.NovoAtend := 'NOVO';
      FCadTextoGeral.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTextoGeral.Free;
  end;

  if Formulario = 'FCadTipoDocumento' then begin
    Application.CreateForm(TFCadTipoDocumento, FCadTipoDocumento);
    if Dm.Permissao(FCadTipoDocumento, 'DIV_FCadTipoDocumento', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoDocumento.NovoAtend := 'NOVO';
      FCadTipoDocumento.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoDocumento.Free;
  end;

  if Formulario = 'FCadLoteamento' then begin
    Application.CreateForm(TFCadLoteamento, FCadLoteamento);
    if Dm.Permissao(FCadLoteamento, 'IMO_FCadLoteamento', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadLoteamento.NovoAtend := 'NOVO';
      FCadLoteamento.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLoteamento.Free;
  end;

  if Formulario = 'FCadOperacaoITBI' then begin
    Application.CreateForm(TFCadOperacaoITBI, FCadOperacaoITBI);
    if Dm.Permissao(FCadOperacaoITBI, 'DIV_FCadOperacaoITBI', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadOperacaoITBI.NovoAtend := 'NOVO';
      FCadOperacaoITBI.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadOperacaoITBI.Free;
  end;
{$ENDIF}
end;

procedure AbreModuloCVAF(Formulario: string);
begin
{$IFDEF MODULO_CVAF}
  // nao tinha nada
{$ENDIF}
end;

procedure AbreModuloDiversas(Formulario: string);
begin
{$IFDEF MODULO_DIVERSAS}
  if Formulario = 'FCadBairros' then begin
    Application.CreateForm(TFCadBairros, FCadBairros);
    if Dm.Permissao(FCadBairros, 'PRN_FCadBairros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadBairros.NovoAtend := 'NOVO';
      FCadBairros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBairros.Free;
  end;

  if Formulario = 'FCadLogradouros' then begin
    Application.CreateForm(TFCadLogradouros, FCadLogradouros);
    if Dm.Permissao(FCadLogradouros, 'PRN_FCadLogradouros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadLogradouros.NovoAtend := 'NOVO';
      FCadLogradouros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLogradouros.Free;
  end;

  if Formulario = 'FCadCidades' then begin
    Application.CreateForm(TFCadCidades, FCadCidades);
    if Dm.Permissao(FCadCidades, 'PRN_FCadCidades', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadCidades.NovoAtend := 'NOVO';
      FCadCidades.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCidades.Free;
  end;

  if Formulario = 'FCadContribuintes' then begin
    Application.CreateForm(TFCadContribuintes, FCadContribuintes);
    if Dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadContribuintes.NovoAtend := 'NOVO';
      FCadContribuintes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadContribuintes.Free;
  end;

  if Formulario = 'FCadClass' then begin
    Application.CreateForm(TFCadClass, FCadClass);
    if Dm.Permissao(FCadClass, 'DIV_FCadClass', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadClass.NovoAtend := 'NOVO';
      FCadClass.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadClass.Free;
  end;

  if Formulario = 'FCadSetorVenc' then begin
    Application.CreateForm(TFCadSetorVenc, FCadSetorVenc);
    if Dm.Permissao(FCadSetorVenc, 'DIV_FCadSetorVenc', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSetorVenc.NovoAtend := 'NOVO';
      FCadSetorVenc.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSetorVenc.Free;
  end;

  if Formulario = 'FCadTabMultas' then begin
    Application.CreateForm(TFCadTabMultas, FCadTabMultas);
    if Dm.Permissao(FCadTabMultas, 'DIV_FCadTabMultas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTabMultas.NovoAtend := 'NOVO';
      FCadTabMultas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabMultas.Free;
  end;

  if Formulario = 'FCadFiscais' then begin
    Application.CreateForm(TFCadFiscais, FCadFiscais);
    if Dm.Permissao(FCadFiscais, 'DIV_FCadFiscais', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadFiscais.NovoAtend := 'NOVO';
      FCadFiscais.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadFiscais.Free;
  end;

  if Formulario = 'FCadReceitas' then begin
    Application.CreateForm(TFCadReceitas, FCadReceitas);
    if Dm.Permissao(FCadReceitas, 'PRN_FCadReceitas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadReceitas.NovoAtend := 'NOVO';
      FCadReceitas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadReceitas.Free;
  end;

  if Formulario = 'FCadTabCalculo' then begin
    Application.CreateForm(TFCadTabCalculo, FCadTabCalculo);
    if Dm.Permissao(FCadTabCalculo, 'DIV_FCadTabCalculo', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTabCalculo.NovoAtend := 'NOVO';
      FCadTabCalculo.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabCalculo.Free;
  end;

  if Formulario = 'FCadTipoAlvara' then begin
    Application.CreateForm(TFCadTipoAlvara, FCadTipoAlvara);
    if Dm.Permissao(FCadTipoAlvara, 'DIV_FCadTipoAlvara', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoAlvara.NovoAtend := 'NOVO';
      FCadTipoAlvara.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoAlvara.Free;
  end;

  if Formulario = 'FCadSubTextos' then begin
    Application.CreateForm(TFCadSubTextos, FCadSubTextos);
    if Dm.Permissao(FCadSubTextos, 'DIV_FCadSubTextos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSubTextos.NovoAtend := 'NOVO';
      FCadSubTextos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSubTextos.Free;
  end;

  if Formulario = 'FCadTipoDocumento' then begin
    Application.CreateForm(TFCadTipoDocumento, FCadTipoDocumento);
    if Dm.Permissao(FCadTipoDocumento, 'DIV_FCadTipoDocumento', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoDocumento.NovoAtend := 'NOVO';
      FCadTipoDocumento.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoDocumento.Free;
  end;

  if Formulario = 'FCadValCertidoes' then begin
    Application.CreateForm(TFCadValCertidoes, FCadValCertidoes);
    if Dm.Permissao(FCadValCertidoes, 'DIV_FCadValCertidoes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadValCertidoes.NovoAtend := 'NOVO';
      FCadValCertidoes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadValCertidoes.Free;
  end;

  if Formulario = 'FCadCartorio' then begin
    Application.CreateForm(TFCadCartorio, FCadCartorio);
    if Dm.Permissao(FCadCartorio, 'PRN_FCadCartorio', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCartorio.NovoAtend := 'NOVO';
      FCadCartorio.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCartorio.Free;
  end;

  if Formulario = 'FCadResponsavelObra' then begin
    Application.CreateForm(TFCadResponsavelObra, FCadResponsavelObra);
    if Dm.Permissao(FCadResponsavelObra, 'DIV_FCadResponsavelObra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadResponsavelObra.NovoAtend := 'NOVO';
      FCadResponsavelObra.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadResponsavelObra.Free;
  end;

  if Formulario = 'FCadClaConst' then begin
    Application.CreateForm(TFCadClaConst, FCadClaConst);
    if Dm.Permissao(FCadClaConst, 'DIV_FCadClaConst', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadClaConst.NovoAtend := 'NOVO';
      FCadClaConst.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadClaConst.Free;
  end;

  if Formulario = 'FCadClaTerre' then begin
    Application.CreateForm(TFCadClaTerre, FCadClaTerre);
    if Dm.Permissao(FCadClaTerre, 'DIV_FCadClaTerre', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadClaTerre.NovoAtend := 'NOVO';
      FCadClaTerre.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadClaTerre.Free;
  end;

  if Formulario = 'FCadOperacaoITBI' then begin
    Application.CreateForm(TFCadOperacaoITBI, FCadOperacaoITBI);
    if Dm.Permissao(FCadOperacaoITBI, 'DIV_FCadOperacaoITBI', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadOperacaoITBI.NovoAtend := 'NOVO';
      FCadOperacaoITBI.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadOperacaoITBI.Free;
  end;

  if Formulario = 'FCadTextoGeral' then begin
    Application.CreateForm(TFCadTextoGeral, FCadTextoGeral);
    if Dm.Permissao(FCadTextoGeral, 'PRN_FCadTextoGeral', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTextoGeral.NovoAtend := 'NOVO';
      FCadTextoGeral.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTextoGeral.Free;
  end;

  if Formulario = 'FCadTabCalcITBI' then begin
    Application.CreateForm(TFCadTabCalcITBI, FCadTabCalcITBI);
    if Dm.Permissao(FCadTabCalcITBI, 'DIV_FCadTabCalcITBI', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTabCalcITBI.NovoAtend := 'NOVO';
      FCadTabCalcITBI.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabCalcITBI.Free;
  end;

  if Formulario = 'FCadEntregador' then begin
    Application.CreateForm(TFCadEntregador, FCadEntregador);
    if if Dm.Permissao(FCadEntregador, 'SRV_FCadEntregador', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) the then begin
      FCadEntregador.NovoAtend := 'NOVO';
      FCadEntregador.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadEntregador.Free;
  end;

  if Formulario = 'FCadOcorrencia' then begin
    Application.CreateForm(TFCadOcorrencia, FCadOcorrencia);
    if Dm.Permissao(FCadOcorrencia, 'SRV_FCadOcorrencia', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then
      FCadOcorrencia.NovoAtend := 'NOVO';
      FCadOcorrencia.ShowModal;
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadOcorrencia.Free;
  end;
{$ENDIF}
end;

procedure AbreModuloEscola(Formulario: string);
begin
{$IFDEF MODULO_ESCOLA}
  if Formulario = 'FCadEscolas' then begin
    Application.CreateForm(TFCadEscolas, FCadEscolas);
    if Dm.Permissao(FCadEscolas, 'ESC_FCadEscolas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadEscolas.NovoAtend := 'NOVO';
      FCadEscolas.ShowModal;
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadEscolas.Free;
  end;

  if Formulario = 'FCadCursos' then begin
    Application.CreateForm(TFCadCursos, FCadCursos);
    if Dm.Permissao(FCadCursos, 'ESC_FFCadCursos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCursos.NovoAtend := 'NOVO';
      FCadCursos.ShowModal;
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCursos.Free;
  end;

  if Formulario = 'FRelVeicEsc' then begin
    Application.CreateForm(TFCadVeicEsc, FCadVeicEsc);
    if Dm.Permissao(FCadVeicEsc, 'ESC_FCadVeicEsc', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadVeicEsc.NovoAtend := 'NOVO';
      FCadVeicEsc.ShowModal;
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadVeicEsc.Free;
  end;

  if Formulario = 'FCadMotEsc' then begin
    Application.CreateForm(TFCadMotEsc, FCadMotEsc);
    if Dm.Permissao(FCadMotEsc, 'ESC_FCadMotEsc', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadMotEsc.NovoAtend := 'NOVO';
      FCadMotEsc.ShowModal;
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadMotEsc.Free;
  end;

  if Formulario = 'FCadVeicEsc' then begin
    Application.CreateForm(TFCadVeicEsc, FCadVeicEsc);
    if Dm.Permissao(FCadVeicEsc, 'ESC_FCadVeicEsc', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadVeicEsc.NovoAtend := 'NOVO';
      FCadVeicEsc.ShowModal;
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadVeicEsc.Free;
  end;

  if Formulario = 'FCadCidades' then begin
    Application.CreateForm(TFCadCidades, FCadCidades);
    if Dm.Permissao(FCadCidades, 'ESC_FCadCidades', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCidades.NovoAtend := 'NOVO';
      FCadCidades.ShowModal;
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCidades.Free;
  end;
{$ENDIF}
end;

procedure AbreModuloFinanceiro(Formulario: string);
begin
{$IFDEF MODULO_FINANCEIRO}
  if Formulario = 'FCadBancos' then begin
    Application.CreateForm(TFCadBancos, FCadBancos);
    if Dm.Permissao(FCadBancos, 'PRN_FCadBancos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadBancos.NovoAtend := 'NOVO';
      FCadBancos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBancos.Free;
  end;

  if Formulario = 'FCustas' then begin
    Application.CreateForm(TFCustas, FCustas);
    if Dm.Permissao(FCustas, 'FIN_FCustas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCustas.NovoAtend := 'NOVO';
      FCustas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCustas.Free;
  end;

  if Formulario = 'FCadLotes' then begin
    Application.CreateForm(TFCadLotes, FCadLotes);
    if Dm.Permissao(FCadLotes, 'FIN_FCadLotes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadLotes.NovoAtend := 'NOVO';
      FCadLotes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLotes.Free;
  end;

  if Formulario = 'FCadLoteamento' then begin
    Application.CreateForm(TFCadLoteamento, FCadLoteamento);
    if Dm.Permissao(FCadLoteamento, 'IMO_FCadLoteamento', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadLoteamento.NovoAtend := 'NOVO';
      FCadLoteamento.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLoteamento.Free;
  end;

  if Formulario = 'FCadBairros' then begin
    Application.CreateForm(TFCadBairros, FCadBairros);
    if Dm.Permissao(FCadBairros, 'PRN_FCadBairros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadBairros.NovoAtend := 'NOVO';
      FCadBairros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBairros.Free;
  end;

  if Formulario = 'FCadLogradouros' then begin
    Application.CreateForm(TFCadLogradouros, FCadLogradouros);
    if Dm.Permissao(FCadLogradouros, 'PRN_FCadLogradouros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadLogradouros.NovoAtend := 'NOVO';
      FCadLogradouros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLogradouros.Free;
  end;

  if Formulario = 'FCadCidades' then begin
    Application.CreateForm(TFCadCidades, FCadCidades);
    if Dm.Permissao(FCadCidades, 'PRN_FCadCidades', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadCidades.NovoAtend := 'NOVO';
      FCadCidades.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCidades.Free;
  end;

  if Formulario = 'FCadContribuintes' then begin
    Application.CreateForm(TFCadContribuintes, FCadContribuintes);
    if Dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadContribuintes.NovoAtend := 'NOVO';
      FCadContribuintes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadContribuintes.Free;
  end;

  if Formulario = 'FCadReceitas' then begin
    Application.CreateForm(TFCadReceitas, FCadReceitas);
    if Dm.Permissao(FCadReceitas, 'PRN_FCadReceitas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadReceitas.NovoAtend := 'NOVO';
      FCadReceitas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadReceitas.Free;
  end;

  if Formulario = 'FAJCadLivrosDA' then begin
    Application.CreateForm(TFAJCadLivrosDA, FAJCadLivrosDA);
    if Dm.Permissao(FAJCadLivrosDA, 'FIN_FAJCadLivros', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FAJCadLivrosDA.NovoAtend := 'NOVO';
      FAJCadLivrosDA.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FAJCadLivrosDA.Free;
  end;

  if Formulario = 'FCadAJSituacaoes' then begin
    Application.CreateForm(TFCadAJSituacaoes, FCadAJSituacaoes);
    if Dm.Permissao(FCadAJSituacaoes, 'FIN_FCadAJSituacaoes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadAJSituacaoes.NovoAtend := 'NOVO';
      FCadAJSituacaoes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAJSituacaoes.Free;
  end;

  if Formulario = 'FCadTipoProc' then begin
    Application.CreateForm(TFCadTipoProc, FCadTipoProc);
    if Dm.Permissao(FCadTipoProc, 'JUR_FCadTipoProc', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoProc.NovoAtend := 'NOVO';
      FCadTipoProc.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoProc.Free;
  end;

  if Formulario = 'FCadAreaProc' then begin
    Application.CreateForm(TFCadAreaProc, FCadAreaProc);
    if Dm.Permissao(FCadAreaProc, 'JUR_FCadAreaProc', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadAreaProc.NovoAtend := 'NOVO';
      FCadAreaProc.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAreaProc.Free;
  end;

  if Formulario = 'FCadCategoria' then begin
    Application.CreateForm(TFCadCategoria, FCadCategoria);
    if Dm.Permissao(FCadCategoria, 'JUR_FCadCategoria', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCategoria.NovoAtend := 'NOVO';
      FCadCategoria.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCategoria.Free;
  end;

  if Formulario = 'FCadTextoGeral' then begin
    Application.CreateForm(TFCadTextoGeral, FCadTextoGeral);
    if Dm.Permissao(FCadTextoGeral, 'PRN_FCadTextoGeral', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTextoGeral.NovoAtend := 'NOVO';
      FCadTextoGeral.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTextoGeral.Free;
  end;

  if Formulario = 'FCadCartorio' then begin
    Application.CreateForm(TFCadCartorio, FCadCartorio);
    if Dm.Permissao(FCadCartorio, 'PRN_FCadCartorio', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCartorio.NovoAtend := 'NOVO';
      FCadCartorio.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCartorio.Free;
  end;

  if Formulario = 'FCadComarca' then begin
    Application.CreateForm(TFCadComarca, FCadComarca);
    if Dm.Permissao(FCadComarca, 'PRN_FCadComarca', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadComarca.NovoAtend := 'NOVO';
      FCadComarca.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadComarca.Free;
  end;

  if Formulario = 'FCadForum' then begin
    Application.CreateForm(TFCadForum, FCadForum);
    if Dm.Permissao(FCadForum, 'JUR_FCadForum', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadForum.NovoAtend := 'NOVO';
      FCadForum.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadForum.Free;
  end;

  if Formulario = 'FCadAgentes' then begin
    Application.CreateForm(TFCadAgentes, FCadAgentes);
    if Dm.Permissao(FCadAgentes, 'JUR_FCadAgentes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadAgentes.NovoAtend := 'NOVO';
      FCadAgentes.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAgentes.Free;
  end;
{$ENDIF}
end;

procedure AbreModuloFrenteCaixa(Formulario: string);
begin
{$IFDEF MODULO_FRENTECAIXA}
  // nada
{$ENDIF}
end;

procedure AbreModuloImobiliario(Formulario, TipoUso: string);
begin
{$IFDEF MODULO_IMOBILIARIO}
  if Formulario = 'FCadBairros' then begin
    Application.CreateForm(TFCadBairros, FCadBairros);
    if Dm.Permissao(FCadBairros, 'PRN_FCadBairros', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadBairros.NovoAtend := 'NOVO';
      FCadBairros.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBairros.Free;
  end;

  if Formulario = 'FCadLogradouros' then begin
    Application.CreateForm(TFCadLogradouros, FCadLogradouros);
    if Dm.Permissao(FCadLogradouros, 'PRN_FCadLogradouros', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadLogradouros.NovoAtend := 'NOVO';
      FCadLogradouros.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLogradouros.Free;
  end;

  if Formulario = 'FCadCidades' then begin
    Application.CreateForm(TFCadCidades, FCadCidades);
    if Dm.Permissao(FCadCidades, 'PRN_FCadCidades', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCidades.NovoAtend := 'NOVO';
      FCadCidades.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCidades.Free;
  end;

  if Formulario = 'FCadCartorio' then begin
    Application.CreateForm(TFCadCartorio, FCadCartorio);
    if Dm.Permissao(FCadCartorio, 'PRN_FCadCartorio', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCartorio.NovoAtend := 'NOVO';
      FCadCartorio.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCartorio.Free;
  end;

  if Formulario = 'FCadContribuintes' then begin
    Application.CreateForm(TFCadContribuintes, FCadContribuintes);
    if Dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadContribuintes.NovoAtend := 'NOVO';
      FCadContribuintes.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadContribuintes.Free;
  end;

  if Formulario = 'FCadCodCob' then begin
    Application.CreateForm(TFCadCodCob, FCadCodCob);
    if Dm.Permissao(FCadCodCob, 'IMO_FCadCodCob', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCodCob.NovoAtend := 'NOVO';
      FCadCodCob.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCodCob.Free;
  end;

  if Formulario = 'FCadZonaEdif' then begin
    Application.CreateForm(TFCadZonaEdif, FCadZonaEdif);
    if Dm.Permissao(FCadZonaEdif, 'IMO_FCadZonaEdif', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadZonaEdif.TipoUso := TipoUso;
      FCadZonaEdif.NovoAtend := 'NOVO';
      FCadZonaEdif.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadZonaEdif.Free;
  end;

  if Formulario = 'FCadImoveis' then begin
    Application.CreateForm(TFCadImoveis, FCadImoveis);
    if Dm.Permissao(FCadImoveis, 'IMO_FCadImoveis', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadImoveis.NovoAtend := 'NOVO';
      FCadImoveis.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadImoveis.Free;
  end;

  if Formulario = 'FCadTPLogr' then begin
    Application.CreateForm(TFCadTPLogr, FCadTPLogr);
    if Dm.Permissao(FCadTPLogr, 'PRN_FCadTPLogr', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPLogr.NovoAtend := 'NOVO';
      FCadTPLogr.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPLogr.Free;
  end;

  if Formulario = 'FCadTitLogra' then begin
    Application.CreateForm(TFCadTitLogra, FCadTitLogra);
    if Dm.Permissao(FCadTitLogra, 'PRN_FCadTitLogra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTitLogra.NovoAtend := 'NOVO';
      FCadTitLogra.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTitLogra.Free;
  end;

  if Formulario = 'FCadTipoOS' then begin
    Application.CreateForm(TFCadTipoOS, FCadTipoOS);
    if Dm.Permissao(FCadTipoOS, 'SRV_FCadTipoOS', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoOS.NovoAtend := 'NOVO';
      FCadTipoOS.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoOS.Free;
  end;

  if Formulario = 'FCadTPEntregaImv' then begin
    Application.CreateForm(TFCadTPEntregaImv, FCadTPEntregaImv);
    if Dm.Permissao(FCadTPEntregaImv, 'IMO_FCadTPEntregaImv', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPEntregaImv.NovoAtend := 'NOVO';
      FCadTPEntregaImv.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPEntregaImv.Free;
  end;

  if Formulario = 'FCadBancos' then begin
    Application.CreateForm(TFCadBancos, FCadBancos);
    if Dm.Permissao(FCadBancos, 'PRN_FCadBancos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadBancos.NovoAtend := 'NOVO';
      FCadBancos.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBancos.Free;
  end;

  if Formulario = 'FCadDistrito' then begin
    Application.CreateForm(TFCadDistrito, FCadDistrito);
    if Dm.Permissao(FCadDistrito, 'IMO_FCadDistrito', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadDistrito.NovoAtend := 'NOVO';
      FCadDistrito.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadDistrito.Free;
  end;

  if Formulario = 'FCadLoteamento' then begin
    Application.CreateForm(TFCadLoteamento, FCadLoteamento);
    if Dm.Permissao(FCadLoteamento, 'IMO_FCadLoteamento', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadLoteamento.NovoAtend := 'NOVO';
      FCadLoteamento.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLoteamento.Free;
  end;

  if Formulario = 'FCadMotivosIsencao' then begin
    Application.CreateForm(TFCadMotivosIsencao, FCadMotivosIsencao);
    if Dm.Permissao(FCadMotivosIsencao, 'IMO_FCadMotivosIsencao', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadMotivosIsencao.NovoAtend := 'NOVO';
      FCadMotivosIsencao.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadMotivosIsencao.Free;
  end;

  if Formulario = 'FCadValCertidoes' then begin
    Application.CreateForm(TFCadValCertidoes, FCadValCertidoes);
    if Dm.Permissao(FCadValCertidoes, 'DIV_FCadValCertidoes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadValCertidoes.NovoAtend := 'NOVO';
      FCadValCertidoes.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadValCertidoes.Free;
  end;

  if Formulario = 'FCadEmpredImob' then begin
    Application.CreateForm(TFCadEmpredImob, FCadEmpredImob);
    if Dm.Permissao(FCadEmpredImob, 'IMO_FCadEmpredImob', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadEmpredImob.NovoAtend := 'NOVO';
      FCadEmpredImob.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadEmpredImob.Free;
  end;

  if Formulario = 'FCadTipoDocumento' then begin
    Application.CreateForm(TFCadTipoDocumento, FCadTipoDocumento);
    if Dm.Permissao(FCadTipoDocumento, 'DIV_FCadTipoDocumento', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoDocumento.NovoAtend := 'NOVO';
      FCadTipoDocumento.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoDocumento.Free;
  end;

  if Formulario = 'FCadCaractGerais' then begin
    Application.CreateForm(TFCadCaractGerais, FCadCaractGerais);
    if Dm.Permissao(FCadCaractGerais, 'IMO_FCadCaractGerais', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCaractGerais.NovoAtend := 'NOVO';
      FCadCaractGerais.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCaractGerais.Free;
  end;

  if Formulario = 'FCadSetorVenc' then begin
    Application.CreateForm(TFCadSetorVenc, FCadSetorVenc);
    if Dm.Permissao(FCadSetorVenc, 'IMO_FCadSetorVenc', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSetorVenc.NovoAtend := 'NOVO';
      FCadSetorVenc.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSetorVenc.Free;
  end;

  if Formulario = 'FCadTPPrestador' then begin
    Application.CreateForm(TFCadTPPrestador, FCadTPPrestador);
    if Dm.Permissao(FCadTPPrestador, 'IMO_FCadTPPrestador', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPPrestador.NovoAtend := 'NOVO';
      FCadTPPrestador.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPPrestador.Free;
  end;

  if Formulario = 'FCadTipoServico' then begin
    Application.CreateForm(TFCadTipoServico, FCadTipoServico);
    if Dm.Permissao(FCadTipoServico, 'IMO_FCadTipoServico', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoServico.NovoAtend := 'NOVO';
      FCadTipoServico.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoServico.Free;
  end;

  if Formulario = 'FCadResponsavelObra' then begin
    Application.CreateForm(TFCadResponsavelObra, FCadResponsavelObra);
    if Dm.Permissao(FCadResponsavelObra, 'DIV_FCadResponsavelObra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadResponsavelObra.NovoAtend := 'NOVO';
      FCadResponsavelObra.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadResponsavelObra.Free;
  end;

  if Formulario = 'FCadFiscais' then begin
    Application.CreateForm(TFCadFiscais, FCadFiscais);
    if Dm.Permissao(FCadFiscais, 'DIV_FCadFiscais', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadFiscais.NovoAtend := 'NOVO';
      FCadFiscais.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadFiscais.Free;
  end;

  if Formulario = 'FCadReceitas' then begin
    Application.CreateForm(TFCadReceitas, FCadReceitas);
    if Dm.Permissao(FCadReceitas, 'PRN_FCadReceitas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadReceitas.NovoAtend := 'NOVO';
      FCadReceitas.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadReceitas.Free;
  end;

  if Formulario = 'FCadOperacaoITBI' then begin
    Application.CreateForm(TFCadOperacaoITBI, FCadOperacaoITBI);
    if Dm.Permissao(FCadOperacaoITBI, 'DIV_FCadOperacaoITBI', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadOperacaoITBI.NovoAtend := 'NOVO';
      FCadOperacaoITBI.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadOperacaoITBI.Free;
  end;

  if Formulario = 'FCadTextoGeral' then begin
    Application.CreateForm(TFCadTextoGeral, FCadTextoGeral);
    if Dm.Permissao(FCadTextoGeral, 'PRN_FCadTextoGeral', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTextoGeral.NovoAtend := 'NOVO';
      FCadTextoGeral.ShowModal;
    end
    else
      MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTextoGeral.Free;
  end;

  if Formulario = 'FCadEntregador' then begin
    Application.CreateForm(TFCadEntregador, FCadEntregador);
    if Dm.Permissao(FCadEntregador, 'SRV_FCadEntregador', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadEntregador.NovoAtend := 'NOVO';
      FCadEntregador.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadEntregador.Free;
  end;

  if Formulario = 'FCadOcorrencia' then begin
    Application.CreateForm(TFCadOcorrencia, FCadOcorrencia);
    if Dm.Permissao(FCadOcorrencia, 'SRV_FCadOcorrencia', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadOcorrencia.NovoAtend := 'NOVO';
      FCadOcorrencia.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadOcorrencia.Free;
  end;
{$ENDIF}
end;

procedure AbreModuloJuridico(Formulario: string);
begin
{$IFDEF MODULO_JURIDICO}
  if Formulario = 'FCadLogradouros' then begin
    Application.CreateForm(TFCadLogradouros, FCadLogradouros);
    if Dm.Permissao(FCadLogradouros, 'PRN_FCadLogradouros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadLogradouros.NovoAtend := 'NOVO';
      FCadLogradouros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLogradouros.Free;
  end;

  if Formulario = 'FCadCidades' then begin
    Application.CreateForm(TFCadCidades, FCadCidades);
    if Dm.Permissao(FCadCidades, 'PRN_FCadCidades', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadCidades.NovoAtend := 'NOVO';
      FCadCidades.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCidades.Free;
  end;

  if Formulario = 'FCadBairros' then begin
    Application.CreateForm(TFCadBairros, FCadBairros);
    if Dm.Permissao(FCadBairros, 'PRN_FCadBairros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadBairros.NovoAtend := 'NOVO';
      FCadBairros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBairros.Free;
  end;

  if Formulario = 'FCadReceitas' then begin
    Application.CreateForm(TFCadReceitas, FCadReceitas);
    if Dm.Permissao(FCadReceitas, 'PRN_FCadReceitas', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadReceitas.NovoAtend := 'NOVO';
      FCadReceitas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadReceitas.Free;
  end;

  if Formulario = 'FCadBancos' then begin
    Application.CreateForm(TFCadBancos, FCadBancos);
    if Dm.Permissao(FCadBancos, 'PRN_FCadBancos', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadBancos.NovoAtend := 'NOVO';
      FCadBancos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBancos.Free;
  end;

  if Formulario = 'FCadContribuintes' then begin
    Application.CreateForm(TFCadContribuintes, FCadContribuintes);
    if Dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadContribuintes.NovoAtend := 'NOVO';
      FCadContribuintes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadContribuintes.Free;
  end;

  if (Formulario = 'FCadTPLogr') then begin
    Application.CreateForm(TFCadTPLogr, FCadTPLogr);
    if Dm.Permissao(FCadTPLogr, 'PRN_FCadTPLogr', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPLogr.NovoAtend := 'NOVO';
      FCadTPLogr.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPLogr.Free;
  end;

  if Formulario = 'FCadTitLogra' then begin
    Application.CreateForm(TFCadTitLogra, FCadTitLogra);
    if Dm.Permissao(FCadTitLogra, 'PRN_FCadTitLogra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTitLogra.NovoAtend := 'NOVO';
      FCadTitLogra.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTitLogra.Free;
  end;

  if Formulario = 'FCadTPHistoricos' then begin
    Application.CreateForm(TFCadTPHistoricos, FCadTPHistoricos);
    if Dm.Permissao(FCadTPHistoricos, 'PRN_FCadTPHistoricos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPHistoricos.NovoAtend := 'NOVO';
      FCadTPHistoricos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPHistoricos.Free;
  end;

  if Formulario = 'FCadForum' then begin
    Application.CreateForm(TFCadForum, FCadForum);
    if Dm.Permissao(FCadForum, 'JUR_FCadForum', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadForum.NovoAtend := 'NOVO';
      FCadForum.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadForum.Free;
  end;

  if Formulario = 'FCadComarca' then begin
    Application.CreateForm(TFCadComarca, FCadComarca);
    if Dm.Permissao(FCadComarca, 'JUR_FCadComarca', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadComarca.NovoAtend := 'NOVO';
      FCadComarca.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadComarca.Free;
  end;

  if Formulario = 'FCadCategoria' then begin
    Application.CreateForm(TFCadCategoria, FCadCategoria);
    if Dm.Permissao(FCadCategoria, 'JUR_FCadCategoria', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCategoria.NovoAtend := 'NOVO';
      FCadCategoria.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCategoria.Free;
  end;

  if Formulario = 'FCadTPRecurso' then begin
    Application.CreateForm(TFCadTPRecurso, FCadTPRecurso);
    if Dm.Permissao(FCadTPRecurso, 'JUR_FCadTPRecurso', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPRecurso.NovoAtend := 'NOVO';
      FCadTPRecurso.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPRecurso.Free;
  end;

  if Formulario = 'FCadSitCitacao' then begin
    Application.CreateForm(TFCadSitCitacao, FCadSitCitacao);
    if Dm.Permissao(FCadSitCitacao, 'JUR_FCadSitCitacao', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSitCitacao.NovoAtend := 'NOVO';
      FCadSitCitacao.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSitCitacao.Free;
  end;

  if Formulario = 'FCadAcordaos' then begin
    Application.CreateForm(TFCadAcordaos, FCadAcordaos);
    if Dm.Permissao(FCadAcordaos, 'JUR_FCadAcordaos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadAcordaos.NovoAtend := 'NOVO';
      FCadAcordaos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAcordaos.Free;
  end;

  if Formulario = 'FCadAgentes' then begin
    Application.CreateForm(TFCadAgentes, FCadAgentes);
    if Dm.Permissao(FCadAgentes, 'JUR_FCadAgentes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadAgentes.NovoAtend := 'NOVO';
      FCadAgentes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAgentes.Free;
  end;

  if Formulario = 'FCadBens' then begin
    Application.CreateForm(TFCadBens, FCadBens);
    if Dm.Permissao(FCadBens, 'JUR_FCadBens', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadBens.NovoAtend := 'NOVO';
      FCadBens.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBens.Free;
  end;

  if Formulario = 'FCadPenhora' then begin
    Application.CreateForm(TFCadPenhora, FCadPenhora);
    if Dm.Permissao(FCadPenhora, 'JUR_FCadPenhora', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadPenhora.NovoAtend := 'NOVO';
      FCadPenhora.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadPenhora.Free;
  end;

  if Formulario = 'FCadLeiloes' then begin
    Application.CreateForm(TFCadLeiloes, FCadLeiloes);
    if Dm.Permissao(FCadLeiloes, 'JUR_FCadLeiloes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadLeiloes.NovoAtend := 'NOVO';
      FCadLeiloes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLeiloes.Free;
  end;

  if Formulario = 'FCadGarantia' then begin
    Application.CreateForm(TFCadGarantia, FCadGarantia);
    if Dm.Permissao(FCadGarantia, 'JUR_FCadGarantia', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadGarantia.NovoAtend := 'NOVO';
      FCadGarantia.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadGarantia.Free;
  end;

  if Formulario = 'FCadTipoProc' then begin
    Application.CreateForm(TFCadTipoProc, FCadTipoProc);
    if Dm.Permissao(FCadTipoProc, 'JUR_FCadTipoProc', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoProc.NovoAtend := 'NOVO';
      FCadTipoProc.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoProc.Free;
  end;

  if Formulario = 'FCadAreaProc' then begin
    Application.CreateForm(TFCadAreaProc, FCadAreaProc);
    if Dm.Permissao(FCadAreaProc, 'JUR_FCadAreaProc', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadAreaProc.NovoAtend := 'NOVO';
      FCadAreaProc.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAreaProc.Free;
  end;

  if Formulario = 'FCadAJSituacaoes' then begin
    Application.CreateForm(TFCadAJSituacaoes, FCadAJSituacaoes);
    if Dm.Permissao(FCadAJSituacaoes, 'FIN_FCadAJSituacaoes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadAJSituacaoes.NovoAtend := 'NOVO';
      FCadAJSituacaoes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);


    FCadAJSituacaoes.Free;
  end;

  if Formulario = 'FAJCadCargas' then begin
    Application.CreateForm(TFAJCadCargas, FAJCadCargas);
    if Dm.Permissao(FAJCadCargas, 'JUR_FGeraTramiteCarga', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FAJCadCargas.NovoAtend := 'NOVO';
      FAJCadCargas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FAJCadCargas.Free;
  end;
{$ENDIF}
end;

procedure AbreModuloMobiliario(Formulario: string);
begin
{$IFDEF MODULO_MOBILIARIO}
  if Formulario = 'FCadContribuintes' then begin
    Application.CreateForm(TFCadContribuintes, FCadContribuintes);

    if Dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadContribuintes.NovoAtend := 'NOVO';
      FCadContribuintes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadContribuintes.Free;
  end;

  if Formulario = 'FCadLogradouros' then begin
    Application.CreateForm(TFCadLogradouros, FCadLogradouros);
    if Dm.Permissao(FCadLogradouros, 'PRN_FCadLogradouros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadLogradouros.NovoAtend := 'NOVO';
      FCadLogradouros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLogradouros.Free;
  end;

  if Formulario = 'FCadCidades' then begin
    Application.CreateForm(TFCadCidades, FCadCidades);
    if Dm.Permissao(FCadCidades, 'PRN_FCadCidades', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadCidades.NovoAtend := 'NOVO';
      FCadCidades.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCidades.Free;
  end;

  if Formulario = 'FCadBairros' then begin
    Application.CreateForm(TFCadBairros, FCadBairros);
    if Dm.Permissao(FCadBairros, 'PRN_FCadBairros', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadBairros.NovoAtend := 'NOVO';
      FCadBairros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBairros.Free;
  end;

  if Formulario = 'FCadReceitas' then begin
    Application.CreateForm(TFCadReceitas, FCadReceitas);
    if Dm.Permissao(FCadReceitas, 'PRN_FCadReceitas', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadReceitas.NovoAtend := 'NOVO';
      FCadReceitas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadReceitas.Free;
  end;

  if Formulario = 'FCadBancos' then begin
    Application.CreateForm(TFCadBancos, FCadBancos);
    if Dm.Permissao(FCadBancos, 'PRN_FCadBancos', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadBancos.NovoAtend := 'NOVO';
      FCadBancos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBancos.Free;
  end;

  if Formulario = 'FCadAtividade' then begin
    Application.CreateForm(TFCadAtividade, FCadAtividade);
    if Dm.Permissao(FCadAtividade, 'MOB_FCadAtividade', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadAtividade.NovoAtend := 'NOVO';
      FCadAtividade.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAtividade.Free;
  end;

  if Formulario = 'FCadEscritorio' then begin
    Application.CreateForm(TFCadEscritorio, FCadEscritorio);
    if Dm.Permissao(FCadEscritorio, 'MOB_FCadEscritorio', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadEscritorio.NovoAtend := 'NOVO';
      FCadEscritorio.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadEscritorio.Free;
  end;

  if Formulario = 'FCadGrafica' then begin
    Application.CreateForm(TFCadGrafica, FCadGrafica);
    if Dm.Permissao(FCadGrafica, 'MOB_FCadGrafica', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadGrafica.NovoAtend := 'NOVO';
      FCadGrafica.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadGrafica.Free;
  end;

  if Formulario = 'FCadTabCNAE' then begin
    Application.CreateForm(TFCadTabCNAE, FCadTabCNAE);
    if Dm.Permissao(FCadTabCNAE, 'MOB_FCadTabCNAE', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTabCNAE.NovoAtend := 'NOVO';
      FCadTabCNAE.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabCNAE.Free;
  end;

  if Formulario = 'FCadTPLogr' then begin
    Application.CreateForm(TFCadTPLogr, FCadTPLogr);
    if Dm.Permissao(FCadTPLogr, 'PRN_FCadTPLogr', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPLogr.NovoAtend := 'NOVO';
      FCadTPLogr.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPLogr.Free;
  end;

  if Formulario = 'FCadTitLogra' then begin
    Application.CreateForm(TFCadTitLogra, FCadTitLogra);
    if Dm.Permissao(FCadTitLogra, 'PRN_FCadTitLogra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTitLogra.NovoAtend := 'NOVO';
      FCadTitLogra.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTitLogra.Free;
  end;

  if Formulario = 'FCadCalculo' then begin
    Application.CreateForm(TFCadCalculo, FCadCalculo);
    if Dm.Permissao(FCadCalculo, 'MOB_FCadCalculo', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCalculo.NovoAtend := 'NOVO';
      FCadCalculo.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCalculo.Free;
  end;

  if Formulario = 'FCadTipoAlvara' then begin
    Application.CreateForm(TFCadTipoAlvara, FCadTipoAlvara);
    if Dm.Permissao(FCadTipoAlvara, 'DIV_FCadTipoAlvara', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoAlvara.NovoAtend := 'NOVO';
      FCadTipoAlvara.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoAlvara.Free;
  end;

  if Formulario = 'FCadDetalheHorario' then begin
    Application.CreateForm(TFCadDetalheHorarios, FCadDetalheHorarios);
    if Dm.Permissao(FCadDetalheHorarios, 'MOB_FCadDetalheHorario', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadDetalheHorarios.NovoAtend := 'NOVO';
      FCadDetalheHorarios.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadDetalheHorarios.Free;
  end;

  if Formulario = 'FCadRestricaoHorario' then begin
    Application.CreateForm(TFCadRestricaoHorarios, FCadRestricaoHorarios);
    if Dm.Permissao(FCadRestricaoHorarios, 'MOB_FCadDetalheHorario', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadRestricaoHorarios.NovoAtend := 'NOVO';
      FCadRestricaoHorarios.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadRestricaoHorarios.Free;
  end;

  if Formulario = 'FCadSetorVenc' then begin
    Application.CreateForm(TFCadSetorVenc, FCadSetorVenc);
    if Dm.Permissao(FCadSetorVenc, 'MOB_FCadSetorVenc', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSetorVenc.NovoAtend := 'NOVO';
      FCadSetorVenc.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSetorVenc.Free;
  end;

  if Formulario = 'FCadValCertidoes' then begin
    Application.CreateForm(TFCadValCertidoes, FCadValCertidoes);
    if Dm.Permissao(FCadValCertidoes, 'MOB_FCadValCertidoes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadValCertidoes.NovoAtend := 'NOVO';
      FCadValCertidoes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadValCertidoes.Free;
  end;

  if Formulario = 'FCadTPPrestador' then begin
    Application.CreateForm(TFCadTPPrestador, FCadTPPrestador);
    if Dm.Permissao(FCadTPPrestador, 'MOB_FCadTPPrestador', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPPrestador.NovoAtend := 'NOVO';
      FCadTPPrestador.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPPrestador.Free;
  end;

  if Formulario = 'FCadTipoServico' then begin
    Application.CreateForm(TFCadTipoServico, FCadTipoServico);
    if Dm.Permissao(FCadTipoServico, 'MOB_FCadTipoServico', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoServico.NovoAtend := 'NOVO';
      FCadTipoServico.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoServico.Free;
  end;

  if Formulario = 'FCadTipoDocFiscais' then begin
    Application.CreateForm(TFCadTipoDocFiscais, FCadTipoDocFiscais);
    if Dm.Permissao(FCadTipoDocFiscais, 'SRV_FCadTipoDocFiscais', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoDocFiscais.NovoAtend := 'NOVO';
      FCadTipoDocFiscais.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoDocFiscais.Free;
  end;

  if Formulario = 'FCadResponsavelObra' then begin
    Application.CreateForm(TFCadResponsavelObra, FCadResponsavelObra);
    if Dm.Permissao(FCadResponsavelObra, 'DIV_FCadResponsavelObra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadResponsavelObra.NovoAtend := 'NOVO';
      FCadResponsavelObra.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadResponsavelObra.Free;
  end;

  if Formulario = 'FCadFiscais' then begin
    Application.CreateForm(TFCadFiscais, FCadFiscais);
    if Dm.Permissao(FCadFiscais, 'DIV_FCadFiscais', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadFiscais.NovoAtend := 'NOVO';
      FCadFiscais.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadFiscais.Free;
  end;

  if Formulario = 'FCadClass' then begin
    Application.CreateForm(TFCadClass, FCadClass);
    if Dm.Permissao(FCadClass, 'DIV_FCadClass', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadClass.NovoAtend := 'NOVO';
      FCadClass.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadClass.Free;
  end;

  if Formulario = 'FCadCOSIF' then begin
    Application.CreateForm(TFJCadCOSIF, FJCadCOSIF);
    if Dm.Permissao(FJCadCOSIF, 'MOB_FCadCOSIF', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FJCadCOSIF.NovoAtend := 'NOVO';
      FJCadCOSIF.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FJCadCOSIF.Free;
  end;

  if Formulario = 'FCadDESIF' then begin
    Application.CreateForm(TFJCadDESIF, FJCadDESIF);
    if Dm.Permissao(FJCadDESIF, 'MOB_FJCadDESIF', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FJCadDESIF.NovoAtend := 'NOVO';
      FJCadDESIF.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FJCadDESIF.Free;
  end;

  if Formulario = 'FCadEntregador' then begin
    Application.CreateForm(TFCadEntregador, FCadEntregador);

    if Dm.Permissao(FCadEntregador, 'SRV_FCadEntregador', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadEntregador.NovoAtend := 'NOVO';
      FCadEntregador.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadEntregador.Free;
  end;

  if Formulario = 'FCadTipoOS' then begin
    Application.CreateForm(TFCadTipoOS, FCadTipoOS);
    if Dm.Permissao(FCadTipoOS, 'SRV_FCadTipoOS', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoOS.NovoAtend := 'NOVO';
      FCadTipoOS.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoOS.Free;
  end;

  if Formulario = 'FCadOcorrencia' then begin
    Application.CreateForm(TFCadOcorrencia, FCadOcorrencia);

    if Dm.Permissao(FCadOcorrencia, 'SRV_FCadOcorrencia', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadOcorrencia.NovoAtend := 'NOVO';
      FCadOcorrencia.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadOcorrencia.Free;
  end;

  if Formulario = 'FCadAtivDesdoCNAE' then begin
    Application.CreateForm(TFCadAtivDesdoCNAE, FCadAtivDesdoCNAE);
    if Dm.Permissao(FCadAtivDesdoCNAE, 'MOB_FCadAtivDesdoCNAE', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadAtivDesdoCNAE.NovoAtend := 'NOVO';
      FCadAtivDesdoCNAE.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAtivDesdoCNAE.Free;
  end;

  if Formulario = 'FCadTabCalculo' then begin
    Application.CreateForm(TFCadTabCalculo, FCadTabCalculo);
    if Dm.Permissao(FCadTabCalculo, 'MOB_FCadCalculo', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTabCalculo.NovoAtend := 'NOVO';
      FCadTabCalculo.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabCalculo.Free;
  end;

  if Formulario = 'FCadTipoNotPostura' then begin
    Application.CreateForm(TFCadTipoNotPostura, FCadTipoNotPostura);
    if Dm.Permissao(FCadTipoNotPostura, 'SRV_FCadTipoNotPostura', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoNotPostura.NovoAtend := 'NOVO';
      FCadTipoNotPostura.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoNotPostura.Free;
  end;

  if Formulario = 'FCadTipoDocumento' then begin
    Application.CreateForm(TFCadTipoDocumento, FCadTipoDocumento);
    if Dm.Permissao(FCadTipoDocumento, 'DIV_FCadTipoDocumento', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoDocumento.NovoAtend := 'NOVO';
      FCadTipoDocumento.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoDocumento.Free;
  end;

  if Formulario = 'FCadTextoGeral' then begin
    Application.CreateForm(TFCadTextoGeral, FCadTextoGeral);
    if Dm.Permissao(FCadTextoGeral, 'PRN_FCadTextoGeral', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTextoGeral.NovoAtend := 'NOVO';
      FCadTextoGeral.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTextoGeral.Free;
  end;

  if Formulario = 'FCadTipoProcesso' then begin
    Application.CreateForm(TFCadTipoProcesso, FCadTipoProcesso);
    if Dm.Permissao(FCadTipoProcesso, 'SRV_FCadDocumentoProcesso', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoProcesso.NovoAtend := 'NOVO';
      FCadTipoProcesso.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoProcesso.Free;
  end;

  if Formulario = 'FCadTipoTramiteProcesso' then begin
    Application.CreateForm(TFCadTipoTramiteProcesso, FCadTipoTramiteProcesso);
    if Dm.Permissao(FCadTipoTramiteProcesso, 'SRV_FCadTipoTramiteProcesso', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoTramiteProcesso.NovoAtend := 'NOVO';
      FCadTipoTramiteProcesso.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoTramiteProcesso.Free;
  end;

  if Formulario = 'FCadDocumentoProcesso' then begin
    Application.CreateForm(TFCadDocumentoProcesso, FCadDocumentoProcesso);
    if Dm.Permissao(FCadDocumentoProcesso, 'SRV_FCadDocumentoProcesso', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadDocumentoProcesso.NovoAtend := 'NOVO';
      FCadDocumentoProcesso.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadDocumentoProcesso.Free;
  end;

  if Formulario = 'FCadTipoDocFiscais' then begin
    Application.CreateForm(TFCadTipoDocFiscais, FCadTipoDocFiscais);
    if Dm.Permissao(FCadTipoDocFiscais, 'SRV_FCadTipoDocFiscais', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoDocFiscais.NovoAtend := 'NOVO';
      FCadTipoDocFiscais.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoDocFiscais.Free;
  end;

  if Formulario = 'FCadPrestadorAG' then begin
    Application.CreateForm(TFCadPrestadorAG, FCadPrestadorAG);

    if Dm.Permissao(FCadPrestadorAG, 'SRV_FCadPrestadorAG', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadPrestadorAG.NovoAtend := 'NOVO';
      FCadPrestadorAG.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);


    FCadPrestadorAG.Free;
  end;

{$ENDIF}
end;

procedure AbreModuloRural(Formulario: string);
begin
{$IFDEF MODULO_RURAL}
  if Formulario = 'FCadBairros' then begin
    Application.CreateForm(TFCadBairros, FCadBairros);
    if Dm.Permissao(FCadBairros, 'PRN_FCadBairros', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadBairros.NovoAtend := 'NOVO';
      FCadBairros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBairros.Free;
  end;

  if Formulario = 'FCadLogradouros' then begin
    Application.CreateForm(TFCadLogradouros, FCadLogradouros);
    if Dm.Permissao(FCadLogradouros, 'PRN_FCadLogradouros', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadLogradouros.NovoAtend := 'NOVO';
      FCadLogradouros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLogradouros.Free;
  end;

  if Formulario = 'FCadCidades' then begin
    Application.CreateForm(TFCadCidades, FCadCidades);
    if Dm.Permissao(FCadCidades, 'PRN_FCadCidades', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCidades.NovoAtend := 'NOVO';
      FCadCidades.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCidades.Free;
  end;

  if Formulario = 'FCadContribuintes' then begin
    Application.CreateForm(TFCadContribuintes, FCadContribuintes);
    if Dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadContribuintes.NovoAtend := 'NOVO';
      FCadContribuintes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadContribuintes.Free;
  end;

  if Formulario = 'FCadTabCalculo' then begin
    Application.CreateForm(TFCadTabCalculo, FCadTabCalculo);
    if Dm.Permissao(FCadTabCalculo, 'RUR_FCadTabCalculo', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTabCalculo.NovoAtend := 'NOVO';
      FCadTabCalculo.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabCalculo.Free;
  end;
{$ENDIF}
end;

procedure AbreModuloServicos(Formulario: string);
begin
{$IFDEF MODULO_SERVICOS}
  if Formulario = 'FCadTPPrestador' then begin
    Application.CreateForm(TFCadTPPrestador, FCadTPPrestador);
    if Dm.Permissao(FCadTPPrestador, 'SRV_FCadTPPrestador', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPPrestador.NovoAtend := 'NOVO';
      FCadTPPrestador.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPPrestador.Free;
  end
  else if Formulario = 'FCadTipoServico' then begin
    Application.CreateForm(TFCadTipoServico, FCadTipoServico);
    if Dm.Permissao(FCadTipoServico, 'SRV_FCadTipoServico', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoServico.NovoAtend := 'NOVO';
      FCadTipoServico.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoServico.Free;
  end
  else if Formulario = 'FCadTPSolicitante' then begin
    Application.CreateForm(TFCadTPSolicitante, FCadTPSolicitante);
    if Dm.Permissao(FCadTPSolicitante, 'SRV_FCadTPSolicitante', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPSolicitante.NovoAtend := 'NOVO';
      FCadTPSolicitante.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPSolicitante.Free;
  end
  else if Formulario = 'FCadReceitas' then begin
    Application.CreateForm(TFCadReceitas, FCadReceitas);
    if Dm.Permissao(FCadReceitas, 'PRN_FCadReceitas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadReceitas.NovoAtend := 'NOVO';
      FCadReceitas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadReceitas.Free;
  end
  else if Formulario = 'FCadTabMultas' then begin
    Application.CreateForm(TFCadTabMultas, FCadTabMultas);
    if Dm.Permissao(FCadTabMultas, 'DIV_FCadTabMultas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTabMultas.NovoAtend := 'NOVO';
      FCadTabMultas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabMultas.Free;
  end
  else if Formulario = 'FCadTipoNotPostura' then begin
    Application.CreateForm(TFCadTipoNotPostura, FCadTipoNotPostura);
    if Dm.Permissao(FCadTipoNotPostura, 'SRV_FCadTipoNotPostura', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoNotPostura.NovoAtend := 'NOVO';
      FCadTipoNotPostura.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoNotPostura.Free;
  end
  else if Formulario = 'FCadSitPostura' then begin
    Application.CreateForm(TFCadSitPostura, FCadSitPostura);
    if Dm.Permissao(FCadSitPostura, 'SRV_FCadSitPostura', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSitPostura.NovoAtend := 'NOVO';
      FCadSitPostura.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSitPostura.Free;
  end
  else if Formulario = 'FCadTextoGeral' then begin
    Application.CreateForm(TFCadTextoGeral, FCadTextoGeral);
    if Dm.Permissao(FCadTextoGeral, 'PRN_FCadTextoGeral', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTextoGeral.NovoAtend := 'NOVO';
      FCadTextoGeral.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTextoGeral.Free;
  end
  else if Formulario = 'FCadFiscais' then begin
    Application.CreateForm(TFCadFiscais, FCadFiscais);
    if Dm.Permissao(FCadFiscais, 'DIV_FCadFiscais', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadFiscais.NovoAtend := 'NOVO';
      FCadFiscais.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadFiscais.Free;
  end
  else if Formulario = 'FCadTipoDocumento' then begin
    Application.CreateForm(TFCadTipoDocumento, FCadTipoDocumento);
    if Dm.Permissao(FCadTipoDocumento, 'DIV_FCadTipoDocumento', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoDocumento.NovoAtend := 'NOVO';
      FCadTipoDocumento.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoDocumento.Free;
  end
  else if Formulario = 'FCadTipoDocFiscais' then begin
    Application.CreateForm(TFCadTipoDocFiscais, FCadTipoDocFiscais);
    if Dm.Permissao(FCadTipoDocFiscais, 'SRV_FCadTipoDocFiscais', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoDocFiscais.NovoAtend := 'NOVO';
      FCadTipoDocFiscais.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoDocFiscais.Free;
  end
  else if Formulario = 'FCadPrestadorAG' then begin
    Application.CreateForm(TFCadPrestadorAG, FCadPrestadorAG);
    if Dm.Permissao(FCadPrestadorAG, 'SRV_FCadPrestadorAG', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadPrestadorAG.NovoAtend := 'NOVO';
      FCadPrestadorAG.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadPrestadorAG.Free;
  end
  else if Formulario = 'FCadTipoOS' then begin
    Application.CreateForm(TFCadTipoOS, FCadTipoOS);
    if Dm.Permissao(FCadTipoOS, 'SRV_FCadTipoOS', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoOS.NovoAtend := 'NOVO';
      FCadTipoOS.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoOS.Free;
  end
  else if Formulario = 'FConsVeiculosAG' then begin
    Application.CreateForm(TFConsVeiculosAG, FConsVeiculosAG);
    if Dm.Permissao(FConsVeiculosAG, 'AGU_FConsVeiculosAG', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FConsVeiculosAG.NovoAtend := 'NOVO';
      FConsVeiculosAG.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FConsVeiculosAG.Free;
  end
  else if Formulario = 'FCadOcorrencia' then begin
    Application.CreateForm(TFCadOcorrencia, FCadOcorrencia);
    if Dm.Permissao(FCadOcorrencia, 'SRV_FCadOcorrencia', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadOcorrencia.NovoAtend := 'NOVO';
      FCadOcorrencia.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadOcorrencia.Free;
  end
  else if Formulario = 'FCadImpedOS' then begin
    Application.CreateForm(TFCadImpedOS, FCadImpedOS);
    if Dm.Permissao(FCadImpedOS, 'SRV_FCadImpedOS', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadImpedOS.NovoAtend := 'NOVO';
      FCadImpedOS.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadImpedOS.Free;
  end
  else if Formulario = 'FCadResponsavelObra' then begin
    Application.CreateForm(TFCadResponsavelObra, FCadResponsavelObra);
    if Dm.Permissao(FCadResponsavelObra, 'SRV_FCadResponsavelObra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadResponsavelObra.NovoAtend := 'NOVO';
      FCadResponsavelObra.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadResponsavelObra.Free;
  end
  else if Formulario = 'FCadEntrega' then begin
    Application.CreateForm(TFCadEntrega, FCadEntrega);
    if Dm.Permissao(FCadEntrega, 'SRV_FCadEntrega', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadEntrega.NovoAtend := 'NOVO';
      FCadEntrega.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadEntrega.Free;
  end
  else if Formulario = 'FCadEntregador' then begin
    Application.CreateForm(TFCadEntregador, FCadEntregador);
    if Dm.Permissao(FCadEntregador, 'SRV_FCadEntregador', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadEntregador.NovoAtend := 'NOVO';
      FCadEntregador.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadEntregador.Free;
  end;
{$ENDIF}
end;

procedure AbreModuloTesouraria(Formulario: string);
begin
{$IFDEF MODULO_TESOURARIA}
  if Formulario = 'FCadAtivDesdoCNAE' then begin
    Application.CreateForm(TFCadAtivDesdoCNAE, FCadAtivDesdoCNAE);
    if Dm.Permissao(FCadAtivDesdoCNAE, 'MOB_FCadAtivDesdoCNAE', SIA_Empresa, SIA_Usuario, 'MOBILIARIO', SIA_Representante) then begin
      FCadAtivDesdoCNAE.NovoAtend := 'NOVO';
      FCadAtivDesdoCNAE.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAtivDesdoCNAE.Free;
  end;

  if Formulario = 'FCadContribuintes' then begin
    Application.CreateForm(TFCadContribuintes, FCadContribuintes);
    if Dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadContribuintes.NovoAtend := 'NOVO';
      FCadContribuintes.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadContribuintes.Free;
  end;

  if Formulario = 'FCadBairros' then begin
    Application.CreateForm(TFCadBairros, FCadBairros);
    if Dm.Permissao(FCadBairros, 'PRN_FCadBairros', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadBairros.NovoAtend := 'NOVO';
      FCadBairros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadBairros.Free;
  end;

  if Formulario = 'FCadCidades' then begin
    Application.CreateForm(TFCadCidades, FCadCidades);
    if Dm.Permissao(FCadCidades, 'PRN_FCadCidades', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCidades.NovoAtend := 'NOVO';
      FCadCidades.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCidades.Free;
  end;

  if Formulario = 'FCadLogradouros' then begin
    Application.CreateForm(TFCadLogradouros, FCadLogradouros);
    if Dm.Permissao(FCadLogradouros, 'PRN_FCadLogradouros', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadLogradouros.NovoAtend := 'NOVO';
      FCadLogradouros.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadLogradouros.Free;
  end;

  if Formulario = 'FCadClass' then begin
    Application.CreateForm(TFCadClass, FCadClass);
    if Dm.Permissao(FCadClass, 'DIV_FCadClass', SIA_Empresa, SIA_Usuario, 'DIVERSAS', SIA_Representante) then begin
      FCadClass.NovoAtend := 'NOVO';
      FCadClass.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadClass.Free;
  end;

  if Formulario = 'FCadReceitas' then begin
    Application.CreateForm(TFCadReceitas, FCadReceitas);
    if Dm.Permissao(FCadReceitas, 'PRN_FCadReceitas', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
      FCadReceitas.NovoAtend := 'NOVO';
      FCadReceitas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadReceitas.Free;
  end;

  if Formulario = 'FCadDiversas' then begin
    Application.CreateForm(TFCadDiversas, FCadDiversas);
    if Dm.Permissao(FCadDiversas, 'DIV_FCadDiversas', SIA_Empresa, SIA_Usuario, 'DIVERSAS', SIA_Representante) then begin
      FCadDiversas.NovoAtend := 'NOVO';
      FCadDiversas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadDiversas.Free;
  end;

  if Formulario = 'FCadFiscais' then begin
    Application.CreateForm(TFCadFiscais, FCadFiscais);
    if Dm.Permissao(FCadFiscais, 'DIV_FCadFiscais', SIA_Empresa, SIA_Usuario, 'DIVERSAS', SIA_Representante) then begin
      FCadFiscais.NovoAtend := 'NOVO';
      FCadFiscais.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadFiscais.Free;
  end;

  if Formulario = 'FCadTabMultas' then begin
    Application.CreateForm(TFCadTabMultas, FCadTabMultas);
    if Dm.Permissao(FCadTabMultas, 'DIV_FCadTabMultas', SIA_Empresa, SIA_Usuario, 'DIVERSAS', SIA_Representante) then begin
      FCadTabMultas.NovoAtend := 'NOVO';
      FCadTabMultas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabMultas.Free;
  end;

  if Formulario = 'FCadAtividade' then begin
    Application.CreateForm(TFCadAtividade, FCadAtividade);
    if Dm.Permissao(FCadAtividade, 'MOB_FCadAtividade', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadAtividade.NovoAtend := 'NOVO';
      FCadAtividade.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadAtividade.Free;
  end;

  if Formulario = 'FCadEscritorio' then begin
    Application.CreateForm(TFCadEscritorio, FCadEscritorio);
    if Dm.Permissao(FCadEscritorio, 'MOB_FCadEscritorio', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadEscritorio.NovoAtend := 'NOVO';
      FCadEscritorio.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadEscritorio.Free;
  end;

  if Formulario = 'FCadGrafica' then begin
    Application.CreateForm(TFCadGrafica, FCadGrafica);
    if Dm.Permissao(FCadGrafica, 'MOB_FCadGrafica', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadGrafica.NovoAtend := 'NOVO';
      FCadGrafica.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadGrafica.Free;
  end;

  if Formulario = 'FCadTPLogr' then begin
    Application.CreateForm(TFCadTPLogr, FCadTPLogr);
    if Dm.Permissao(FCadTPLogr, 'PRN_FCadTPLogr', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPLogr.NovoAtend := 'NOVO';
      FCadTPLogr.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPLogr.Free;
  end;

  if Formulario = 'FCadTitLogra' then begin
    Application.CreateForm(TFCadTitLogra, FCadTitLogra);
    if Dm.Permissao(FCadTitLogra, 'PRN_FCadTitLogra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTitLogra.NovoAtend := 'NOVO';
      FCadTitLogra.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTitLogra.Free;
  end;

  if Formulario = 'FCadTipoAlvara' then begin
    Application.CreateForm(TFCadTipoAlvara, FCadTipoAlvara);
    if Dm.Permissao(FCadTipoAlvara, 'DIV_FCadTipoAlvara', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoAlvara.NovoAtend := 'NOVO';
      FCadTipoAlvara.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoAlvara.Free;
  end;

  if Formulario = 'FCadHidro' then begin
    Application.CreateForm(TFCadHidro, FCadHidro);
    if Dm.Permissao(FCadHidro, 'AGU_FCadHidro', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadHidro.NovoAtend := 'NOVO';
      FCadHidro.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadHidro.Free;
  end;

  if Formulario = 'FCadTipoOS' then begin
    Application.CreateForm(TFCadTipoOS, FCadTipoOS);
    if Dm.Permissao(FCadTipoOS, 'AGU_FRelTipoOs', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoOS.NovoAtend := 'NOVO';
      FCadTipoOS.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoOS.Free;
  end;

  if Formulario = 'FCadTPSolicitante' then begin
    Application.CreateForm(TFCadTPSolicitante, FCadTPSolicitante);
    if Dm.Permissao(FCadTPSolicitante, 'SRV_FRelTipoSolicitante', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPSolicitante.NovoAtend := 'NOVO';
      FCadTPSolicitante.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPSolicitante.Free;
  end;

  if Formulario = 'FCadTPPrestador' then begin
    Application.CreateForm(TFCadTPPrestador, FCadTPPrestador);
    if Dm.Permissao(FCadTPPrestador, 'SRV_FCadTPPrestador', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPPrestador.NovoAtend := 'NOVO';
      FCadTPPrestador.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPPrestador.Free;
  end;

  if Formulario = 'FCadPrestadorAG' then begin
    Application.CreateForm(TFCadPrestadorAG, FCadPrestadorAG);
    if Dm.Permissao(FCadPrestadorAG, 'SRV_FCadPrestadorAG', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadPrestadorAG.NovoAtend := 'NOVO';
      FCadPrestadorAG.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadPrestadorAG.Free;
  end;

  if Formulario = 'FCadTipoServico' then begin
    Application.CreateForm(TFCadTipoServico, FCadTipoServico);
    if Dm.Permissao(FCadTipoServico, 'SRV_FRelTipoServicos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTipoServico.NovoAtend := 'NOVO';
      FCadTipoServico.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTipoServico.Free;
  end;

  if Formulario = 'FCadImpedOS' then begin
    Application.CreateForm(TFCadImpedOS, FCadImpedOS);
    if Dm.Permissao(FCadImpedOS, 'SRV_FCadImpedOS', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadImpedOS.NovoAtend := 'NOVO';
      FCadImpedOS.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadImpedOS.Free;
  end;

  if Formulario = 'FCadTPConvenio' then begin
    Application.CreateForm(TFCadTPConvenio, FCadTPConvenio);
    if Dm.Permissao(FCadTPConvenio, 'AGU_FCadTPConvenio', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTPConvenio.NovoAtend := 'NOVO';
      FCadTPConvenio.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTPConvenio.Free;
  end;

  if Formulario = 'FCadConveniosAG' then begin
    Application.CreateForm(TFCadConveniosAG, FCadConveniosAG);
    if Dm.Permissao(FCadConveniosAG, 'AGU_FCadConveniosAG', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadConveniosAG.NovoAtend := 'NOVO';
      FCadConveniosAG.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadConveniosAG.Free;
  end;

  if Formulario = 'FCadSubTextos' then begin
    Application.CreateForm(TFCadSubTextos, FCadSubTextos);
    if Dm.Permissao(FCadSubTextos, 'DIV_FCadSubTextos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSubTextos.NovoAtend := 'NOVO';
      FCadSubTextos.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSubTextos.Free;
  end;

  if Formulario = 'FCadTabCalculo' then begin
    Application.CreateForm(TFCadTabCalculo, FCadTabCalculo);
    if Dm.Permissao(FCadTabCalculo, 'DIV_FCadTabCalculo', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadTabCalculo.NovoAtend := 'NOVO';
      FCadTabCalculo.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadTabCalculo.Free;
  end;

  if Formulario = 'FCadSituacao' then begin
    Application.CreateForm(TFCadSituacao, FCadSituacao);
    if Dm.Permissao(FCadSituacao, 'AGU_FCadSituacao', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadSituacao.NovoAtend := 'NOVO';
      FCadSituacao.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadSituacao.Free;
  end;

  if Formulario = 'FCadCobranca' then begin
    Application.CreateForm(TFCadCobranca, FCadCobranca);
    if Dm.Permissao(FCadCobranca, 'AGU_FCadSituacao', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCobranca.NovoAtend := 'NOVO';
      FCadCobranca.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCobranca.Free;
  end;

  if Formulario = 'FCadResponsavelObra' then begin
    Application.CreateForm(TFCadResponsavelObra, FCadResponsavelObra);
    if Dm.Permissao(FCadResponsavelObra, 'DIV_FCadResponsavelObra', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadResponsavelObra.NovoAtend := 'NOVO';
      FCadResponsavelObra.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadResponsavelObra.Free;
  end;

  if Formulario = 'FCadCaixas' then begin
    Application.CreateForm(TFCadCaixas, FCadCaixas);
    if Dm.Permissao(FCadCaixas, 'CXA_FCadCaixas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadCaixas.NovoAtend := 'NOVO';
      FCadCaixas.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadCaixas.Free;
  end;

  if Formulario = 'FCadImpressora' then begin
    Application.CreateForm(TFCadImpressora, FCadImpressora);
    if Dm.Permissao(FCadImpressora, 'CXA_FCadImpressora', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadImpressora.NovoAtend := 'NOVO';
      FCadImpressora.ShowModal;
    end
    else
      Dm.Msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', MtInformation, [Mbok], 0);

    FCadImpressora.Free;
  end;

{$ENDIF}
end;

end.
