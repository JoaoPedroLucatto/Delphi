unit UnitFuncoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Mask, DBGrids, DB, DBTables, ExtCtrls, BDE,
  comctrls, Menus, UPrincipal,SqlExpr,Clipbrd;

function arredondaagua(valor: Currency): Currency;
function CompletoAlias(Alias: string): string;
procedure desabilita(x: Tform);
procedure abilita(x: tform);
procedure verifica(TABELA: TDataSet; X: EDatabaseError; var Action: TDataAction);
procedure AjustaForm(x: Tform);
function ZeraEsquerda(Num: integer; valor: string): string;
function ZeraDireita(Num: integer; valor: string): string;
function BrancoDireita(Num: integer; valor: string): string;
function BrancoEsquerda(Num: integer; valor: string): string;
function FormatString(Str: string): string;
procedure fechar_todas_tabelas;
function TiraPonto(valor: string): string;
function TiraVirgula(valor: string): string;
function Subs_Virgula_por_Ponto(valor: string): string;
function Strzero(Num: real; zeros, deci: integer): string;
function tiravirg(campo: string): string;
function tiraespaco(campo: string): string;
function arredonda(valor: double; decimal: integer): double;
function Alltrim(Text: string): string;
function DIGFEBRA(cCod: string): string;
function InverteData(data: string): string;
function VerificaMask(Mask: string): string;
function VerificaTipo(Mask: string): string;
function TiraMascara(Mask: string): string;
function referanterior(Referencia: string): string;
function CalculaCorrecao(dtaVenc, DtaPagto, Indice: string; Valor: Currency): Currency;
function nvirada(dtaVenc, DtaPagto: string): Integer;
function juros(nometab, dtaVenc, DtaPagto: string; Valor: Currency): Currency;
function Multa(nometab, dtaVenc, DtaPagto: string; Valor: Currency): Currency;
function jurosD(ano, modulo, dtaVenc, DtaPagto, Indice: string; Valor: Currency): Currency;
function MultaD(ano, modulo, dtaVenc, DtaPagto, Indice: string; Valor: Currency): Currency;
function CalculaCorrecaoD(ano, Modulo, dtaVenc, DtaPagto, Indice: string; Valor: Currency): Currency;
function CalculaCorrecaoDn(ano, modulo, dtaVenc, DtaPagto, Indice: string; Valor: Currency; dtparce: string): Currency;
function CalcData(Dta: string): string;
function DIGNN(Cod: string): string;
function DIGNNC(Cod: string): string;
function DIG10CAIXA(Cod: string): string;
function Dig3(Cod: string): string;
function DIG2(Cod: string): string;
function DIG11(Cod: string): string;
function DIG11NNCAIXA(Cod: string): string;
function DIG10(Cod: string): string;
function DIG11Sistema(Cod: string): string;
function Ndias(Dta: string): Integer;
function ProximoMes(Dta: string): string;
function ProximoDiaUtil(dta: string): string;
function nome_longo_pra_curto(nome: string): string;
function nmes(dtavenc, dtapagto: string): Integer;

function ObtemDirdoAlias(Alias: string): string;
function Alias(Alias: string): string;

function CaminhoGDB(Alias: string): string;
function DefinecaminhoGDB(Alias: string): string;

function anoGDB(Alias: string): string;
function NomeServidor(Alias: string): string;
function NomeGDB(Alias: string): string;

function diretorio(diret: string; cria: boolean): boolean;
function nome_curto_pra_longo(const NomeCurto: string): string;
function CaminhoBDE(Alias: string): string;
function Separador: string;
function RetiraChar(Frase, Char: string): string;
procedure MudaBancoExtensao(Caminho: string);
function SoNumeros(Texto: string): string;
function Subs_Ponto_por_Virgula(valor: string): string;

Function IsNumero(Valor : string): boolean;
function CopiaAte(str, ate : string; var resto : string) : string;
function DesmontaLogra(str : string; var Tipo : variant; var Logra : variant; var Numero : variant; var Complemento : variant) : boolean;
Function TrocaAspasSimples(Valor : string): String;
Function Replace(Str: String; Lixo: String; Certo: String): String;
Function IIF(pCond:Boolean;pTrue,pFalse:Variant): Variant;
function RichtToStr(Texto: String): String;
var
  nEscala: Double;
  nPorcento: Integer;

const
  nTamOriginal = 800;

implementation

// verifica a existencia de um diretorio e o cria caso nao existir


function RichtToStr(Texto: String): String;
var rt : TRichEdit;
    fr : TForm;
    cb : TClipboard;
begin
  try
    fr := TForm.Create(nil);
    //cb := Clipboard;
    rt := TRichEdit.Create(fr);
    try
      //cb.Clear;
      rt.Parent := Fr;
      rt.PlainText := True;
      rt.Text := Texto;
      rt.SelectAll;
      rt.CopyToClipboard;
      //Result := Copy(cb.AsText, 1, 1024);
      Result := Copy(rt.Text, 1, 1024);
    finally
      //cb.Free;
      rt.Free;
      fr.Free;
    end;
  except
    //cb.Free;
    rt.Free;
    fr.Free;
  end;
end;


Function TrocaAspasSimples(Valor : string): String;
begin
 result:=StringReplace(trim(valor),'''','''''',[rfReplaceAll]);
end;


Function IsNumero(Valor : string): boolean;
var i,l:cardinal;
begin
  if trim(Valor) = '' then begin
    result := False;
    exit;
  end;

  result := true;
  l := Length(valor);
  for i:= 1 to l do begin
    if not (valor[i] in ['0'..'9', ',', '.']) then begin
      result := false;
      break;
    end;
  end;
end;


Function Replace(Str: String; Lixo: String; Certo: String): String;
Var
 I : Integer;
 retorno: String;
Begin
  I := 1;
  retorno := '';
  If Str <> '' Then
  Begin
    While (I <= Length(Str)) Do
    Begin
      If Copy(str,I,1) = Lixo Then
        retorno := retorno + certo
      Else
        retorno := retorno+Copy(str,I,1);
      I := I + 1;
    End;
  End;
  result := retorno;
End;

function CopiaAte(str, ate : string; var resto : string) : string;
var i : integer;
    aux : string;
begin
  aux := '';
  for i := 1 to length(str) do begin
    if copy(str,i,1) <> ate then
      aux := aux + copy(str,i,1)
    else
      break;
  end;

  resto := copy(str, i+1, length(str));
  result := aux;
end;

function DesmontaLogra(str : string; var Tipo : variant; var Logra : variant; var Numero : variant; var Complemento : variant) : boolean;
var i : integer;
    auxT, auxL, auxN, auxN1, auxC : string;
    qrx : TSQLQuery;
begin
// Para que essa funcao funcione o endereco devera ser nesse padrao
// RUA XXXXXX, 0 ter o tipo, depois um espaco depois o logradouro e a virgula antes do numero

   auxT := ''; auxL := ''; auxN := ''; auxN1 := ''; auxC := '';
   auxT := CopiaAte(str,' ',auxL);

   //Se o TipoLogra nao existir
   qrx := TSQLQuery.Create(Application.Owner);
   qrx.SQLConnection := FPrincipal.Conexao;
   qrx.SQL.Text := 'select * from CEP_TIPOLOGIA where ABRE_TIP_CEP='''+auxT+'''';
   qrx.Open;
   if qrx.IsEmpty then begin
     auxT := '';
     auxL := str;
   end;
   FreeAndNil(qrx);

   if pos(',',str) > 0 then
     auxL := CopiaAte(auxL,',',auxN)
   else if pos(':',str) > 0 then
     auxL := CopiaAte(auxL,':',auxN)
   else if pos('º',str) > 0 then
     auxL := CopiaAte(auxL,'º',auxN)
   else if pos('-',str) > 0 then
     auxL := CopiaAte(auxL,'-',auxN)
   else if pos('N§',str) > 0 then
     auxL := CopiaAte(auxL,'N§',auxN);

   auxN := trim(StringReplace(replace(replace(auxN,'.',''),',',''),'Nº','',[rfIgnoreCase]));
   if auxN <> '' then begin
     if not IsNumero(auxN) then begin
       auxN1 := CopiaAte(auxN,' ',auxC);
       auxN := auxN1;
       if not IsNumero(auxN) then begin
         auxC := auxN +' '+ auxC;
         auxN := '0';
       end;
     end;
   end
   else begin
     auxN := '0';
     auxC := '';
   end;

   Tipo := trim(auxT);
   Logra := trim(auxL);
   Numero := trim(auxN);
   Complemento := trim(auxC);
end;



Function IIF(pCond:Boolean;pTrue,pFalse:Variant): Variant;
begin
  If pCond Then
    Result := pTrue
  else
    Result := pFalse;
end;


function diretorio(diret: string; cria: boolean): boolean;
var path: string;
begin
  path := diret;
  if cria = false then
  begin
    if not DirectoryExists(path) then
      Result := false
    else
      Result := true;
  end
  else
  begin
    if not DirectoryExists(path) then
    begin
      ForceDirectories(path);
      Result := true;
    end
    else
      if DirectoryExists(path) then
      Result := TRUE
    else
      Result := false;
  end;
end;

function Subs_2ponto_por_barra(valor: string): string;
var
  cont, cont1: Integer;
begin
  cont1 := 1;
  cont := Length(Valor);
  while cont1 <= cont do
  begin
    if (Valor[cont1] = ':') then
      VAlor[cont1] := '\';
    if (Valor[cont1] = '/') then
      VAlor[cont1] := '\';


    cont1 := cont1 + 1;
  end;
  result := Valor;
end;


function DefinecaminhoGDB(Alias: string): string;
var
  i, Tamanho: Integer;
begin
  i := 0;
  tamanho := length(Alias);

  while (i <= Tamanho) do
  begin
    if (alias[i] = ':') and ((alias[i + 1] = '\') or (alias[i + 1] = '/')) then
    begin
      if (copy(alias, 1, i - 3) = '') then
        result := 'C:\' + copy(alias, i + 2, tamanho - i)
      else
        result := Subs_2ponto_por_barra('\\' + copy(alias, 1, i - 1) + copy(alias, i + 1, tamanho - i));
      break;
    end;

    i := i + 1;
  end;

end;

//retorna o caminho do alias

function CaminhoGDB(Alias: string): string;
var
  AliasNames, AliasParams: TStringList;
  i, j: integer;
begin
  Result := '';
  AliasParams := TStringList.Create;
  AliasNames := TStringList.Create;
  try
    // pega nomes dos aliases
    Session.GetAliasNames(AliasNames);
    for i := 0 to AliasNames.Count - 1 do
      if CompareText(AliasNames[i], Alias) = 0 then
      begin
        Session.GetAliasParams(Alias, AliasParams);
        for j := 0 to AliasParams.Count - 1 do
        begin
          if Pos('SERVER NAME', AliasParams[j]) <> 0 then
          begin
            Result := DefinecaminhoGDB(copy(AliasParams[j], 13,
              (Length(AliasParams[j]) - 25)));
            break;
          end;
        end;
        break;
      end;
  finally
    AliasParams.Free;
    AliasNames.Free;
  end;
end;


function CaminhoBDE(Alias: string): string;
var
  AliasNames, AliasParams: TStringList;
  i, j: integer;
begin
  Result := '';
  AliasParams := TStringList.Create;
  AliasNames := TStringList.Create;
  try
    // pega nomes dos aliases
    Session.GetAliasNames(AliasNames);
    for i := 0 to AliasNames.Count - 1 do
      if CompareText(AliasNames[i], Alias) = 0 then
      begin
        Session.GetAliasParams(Alias, AliasParams);
        for j := 0 to AliasParams.Count - 1 do
        begin
          if Pos('SERVER NAME', AliasParams[j]) <> 0 then
          begin
            Result := (copy(AliasParams[j], 13,
              (Length(AliasParams[j]) - 25)));
            break;
          end;
        end;
        break;
      end;
  finally
    AliasParams.Free;
    AliasNames.Free;
  end;
end;


//retorna o caminho do alias

function anoGDB(Alias: string): string;
var
  AliasNames, AliasParams: TStringList;
  path: string;
  i, j: integer;
begin
  Result := '';
  AliasParams := TStringList.Create;
  AliasNames := TStringList.Create;
  try
    // pega nomes dos aliases
    Session.GetAliasNames(AliasNames);
    for i := 0 to AliasNames.Count - 1 do
      if CompareText(AliasNames[i], Alias) = 0 then
      begin
        Session.GetAliasParams(Alias, AliasParams);
        for j := 0 to AliasParams.Count - 1 do
        begin
          if Pos('SERVER NAME', AliasParams[j]) <> 0 then
          begin
            path := copy(AliasParams[j], 13, (Length(AliasParams[j]) - 25));
            Result := copy(path, length(path) - 3, 4);
            break;
          end;
        end;
        break;
      end;
  finally
    AliasParams.Free;
    AliasNames.Free;
  end;
end;

function NomeGDB(Alias: string): string;
var
  AliasNames, AliasParams: TStringList;
  path: string;
  i, j: integer;
begin
  Result := '';
  AliasParams := TStringList.Create;
  AliasNames := TStringList.Create;
  try
    // pega nomes dos aliases
    Session.GetAliasNames(AliasNames);
    for i := 0 to AliasNames.Count - 1 do
      if CompareText(AliasNames[i], Alias) = 0 then
      begin
        Session.GetAliasParams(Alias, AliasParams);
        for j := 0 to AliasParams.Count - 1 do
        begin
          if Pos('SERVER NAME', AliasParams[j]) <> 0 then
          begin
            path := copy(AliasParams[j], 13, (Length(AliasParams[j]) - 12));
            Result := copy(path, length(path) - 11, 12);
            break;
          end;
        end;
        break;
      end;
  finally
    AliasParams.Free;
    AliasNames.Free;
  end;
end;

function Separador: string;
var
  i: Integer;
  cam: string;
begin
  cam := CaminhoBDE('Tributos');

  result := '';
  i := 1;
  while i <= length(cam) do
  begin
    if (cam[i] = '\') then
    begin
      result := cam[i]
    end;
    if (cam[i] = '/') then
    begin
      result := cam[i]
    end;
    i := i + 1;
  end;

end;


function NomeServidor(Alias: string): string;
var
  AliasNames, AliasParams: TStringList;
  path, serv: string;
  i, j, k: integer;
begin
  Result := '';
  AliasParams := TStringList.Create;
  AliasNames := TStringList.Create;
  try
    // pega nomes dos aliases
    Session.GetAliasNames(AliasNames);
    for i := 0 to AliasNames.Count - 1 do
      if CompareText(AliasNames[i], Alias) = 0 then
      begin
        Session.GetAliasParams(Alias, AliasParams);
        for j := 0 to AliasParams.Count - 1 do
        begin
          if Pos('SERVER NAME', AliasParams[j]) <> 0 then
          begin
            path := copy(AliasParams[j], 13, (Length(AliasParams[j]) - 25));

            if (uppercase(copy(path, 1, 3)) = uppercase('C:\')) then
            begin
              serv := '';
            end
            else
            begin
              serv := '';
              K := 1;
              while k <= length(path) do
              begin
                if (path[k] <> ':') then
                  serv := serv + path[k]
                else
                  break;

                k := k + 1;
              end;
            end;

            result := serv;
            break;
          end;
        end;
        break;
      end;
  finally
    AliasParams.Free;
    AliasNames.Free;
  end;
end;



// nome do arquivo de longo para curto

function nome_longo_pra_curto(nome: string): string;
begin
  setlength(result, MAX_PATH);
  if GetShortPathName(Pchar(nome), Pchar(Result), length(Result)) = 0 then
    result := ''
  else
    setlength(Result, Strlen(Pchar(Result)));
end;


function nome_curto_pra_longo(const NomeCurto: string): string;
var
  win32finddata: TWin32FindData;
  Handle: THandle;
  i: Integer;
begin
  result := ExtractFileDrive(NomeCurto);
  for i := 0 to length(nomeCurto) do
    if nomecurto[i] = '\' then
    begin
      handle := FindFirstFile(PChar(copy(NomeCurto, 1, i - 1)), win32FindData);
      if handle <> INVALID_HANDLE_VALUE then
      begin
        result := result + '\' + string(win32FindData.cFileName);
        windows.FindClose(handle);
      end;
    end;

  if copy(nomecurto, length(nomecurto), 1) <> '\' then
  begin
    handle := FindFirstFile(PChar(nomecurto), win32finddata);
    if (handle <> INVALID_HANDLE_VALUE) then
    begin
      result := result + '\' + string(win32finddata.cFileName);
      windows.FindClose(handle);
    end;

  end;

end;


function ProximoMes(Dta: string): string;
var
  dt1: string;
begin
  if copy(dta, 4, 2) = '12' then
  begin
    dt1 := '01/01/' + IntToStr(StrToInt(copy(dta, 7, 4)) + 1);
  end
  else
  begin
    dt1 := '01/' + IntToStr(StrToInt(copy(dta, 4, 2)) + 1) + '/' + copy(dta, 7, 4);
  end;
  ProximoMes := dt1;
end;


function Ndias(Dta: string): Integer;
var
  n: TDateTime;
begin
  n := StrToDate(ProximoMes(Dta)) - 1;
  Ndias := StrToInt(copy(DateToStr(n), 1, 2));
end;


function ProximoDiaUtil(dta: string): string;
var
  Q: TQuery;
  flag: Boolean;
begin


  Q := TQuery.Create(nil);
  Q.DatabaseName := 'DBTributos';

  flag := true;

  while flag do
  begin

    Q.close;
    Q.sql.clear;
    Q.sql.add('select * from feriados where dia="' + InverteData(dta) + '"');
    Q.open;
    if (Q.IsEmpty) then
      flag := false
    else
    begin
      dta := DateToStr(StrToDate(dta) + 1)
    end;
    //////////Quando é Sabado ou Domingo pula a data para segunda feira////////

    if DayOfWeek(StrToDate(dta)) = 1 then
    begin
      dta := DateToStr(StrToDate(dta) + 1);
      flag := true;
    end
    else
      if DayOfWeek(StrToDate(dta)) = 7 then
    begin
      dta := DateToStr(StrToDate(dta) + 2);
      flag := true;
    end;


  end;
  Q.close;
  Q.free;

  ProximoDiaUtil := dta;

end;

function CalcData(Dta: string): string;
var
  numero: Real;
begin
  numero := StrToDate(dta) - StrToDate('03/07/2000');
  numero := 1000 + numero;
  result := FloatToStr(numero);

end;


///////////////////////////BCN e BANESPA (d1) /////////////////////

function DIG10(Cod: string): string;
var cPosicao, cDig: string;
  nValor, nUlt, nLen, nVal, nCont, I: integer;
  nResto: real;
  cCod: string;
begin
  for I := 1 to LENGTH(Cod) do
  begin
    if (COPY(Cod, i, 1) <> '.') and
      (COPY(Cod, i, 1) <> '-') and
      (COPY(Cod, i, 1) <> '/') and
      (COPY(Cod, i, 1) <> ' ') then
      cCod := cCod + COPY(Cod, i, 1);
  end;
  if cCod <> '' then
  begin
    cPosicao := '21';
    nLen := LENGTH(cCod);
    nVal := 0;
    nUlt := LENGTH(cCod);
    nCont := 1;
    for I := 1 to nLen do
    begin
      nValor := (STRTOINT(COPY(cPosicao, nCont, 1)) * STRTOINT(COPY(cCod, nUlt, 1)));
      nCont := NCont + 1;

      if (nCont = 3) then
        nCont := 1;

      if nValor > 9 then
      begin
        nVal := nVal + nValor - 9;
      end
      else
      begin
        nVal := nVal + nValor;
      end;
      nUlt := nUlt - 1
    end;

    nResto := ((nVal / 10) - INT(nVal / 10)) * 10;

    if nResto = 0 then
      nResto := 0
    else
      nResto := 10 - nResto;

    cDig := CurrTOSTR(nResto);
    Result := cDig;
  end
  else
  begin
    ShowMessage('Código Inexistente para Verificação !');
    Exit;
  end;
end;


function DIG10CAIXA(Cod: string): string;
var cPosicao, cDig: string;
  nValor, nUlt, nLen, nVal, nCont, I: integer;
  nResto: real;
  cCod: string;
begin
  for I := 1 to LENGTH(Cod) do
  begin
    if (COPY(Cod, i, 1) <> '.') and
      (COPY(Cod, i, 1) <> '-') and
      (COPY(Cod, i, 1) <> '/') and
      (COPY(Cod, i, 1) <> ' ') then
      cCod := cCod + COPY(Cod, i, 1);
  end;
  if cCod <> '' then
  begin
    cPosicao := '21';
    nLen := LENGTH(cCod);
    nVal := 0;
    nUlt := LENGTH(cCod);
    nCont := 1;
    for I := 1 to nLen do
    begin
      nValor := (STRTOINT(COPY(cPosicao, nCont, 1)) * STRTOINT(COPY(cCod, nUlt, 1)));
      nCont := NCont + 1;

      if (nCont = 3) then
        nCont := 1;

      if nValor > 9 then
      begin
        nVal := nVal + StrToInt(copy(intToStr(nValor), 1, 1)) + StrToInt(copy(intToStr(nValor), 2, 1));
      end
      else
      begin
        nVal := nVal + nValor;
      end;
      nUlt := nUlt - 1
    end;

    nResto := ((nVal / 10) - INT(nVal / 10)) * 10;

    if nResto = 0 then
      nResto := 0
    else
      nResto := 10 - nResto;

    cDig := CurrTOSTR(nResto);
    Result := cDig;
  end
  else
  begin
    ShowMessage('Código Inexistente para Verificação !');
    Exit;
  end;
end;


////////////////////////DIGITO VERIFCADOR DA AGUA////////////////////

function DIG11Sistema(Cod: string): string;
var cPosicao, cDig: string;
  nLen, nVal, nPosi, nCont, I: integer;
  nResto: real;
  cCod: string;
begin

  for I := 1 to LENGTH(Cod) do
  begin
    if (COPY(Cod, i, 1) <> '.') and
      (COPY(Cod, i, 1) <> '-') and
      (COPY(Cod, i, 1) <> '/') and
      (COPY(Cod, i, 1) <> ' ') then
      cCod := cCod + COPY(Cod, i, 1);
  end;

  if cCod <> '' then
  begin
    cPosicao := '234567';
    nLen := LENGTH(cCod);
    nVal := 0;
    nPosi := 6;
    if nLen < nPosi then
      nCont := nLen
    else nCont := nPosi;

    for I := 1 to nLen do
    begin
      nVal := nVal + (STRTOINT(COPY(cPosicao, nCont, 1)) * STRTOINT(COPY(cCod, i, 1)));
      nCont := nCont - 1;
      if nCont < 1 then
        if nLen < nPosi then
          nCont := nLen
        else
          nCont := nPosi;
    end;
    nResto := INT(nVal / 11);
    cDig := FLOATTOSTR(nVal - (11 * nResto));
    if STRTOFLOAT(cDig) > 1 then
      cDig := FLOATTOSTR(11 - STRTOFLOAT(cDig))
    else
      cDig := FLOATTOSTR(1 - STRTOFLOAT(cDig));

    cDig := TRIM(cDig);
    Result := cDig;
  end
  else
  begin
    ShowMessage('Código Inexistente para Verificação !');
    Exit;
  end;

end;



///////////////////// BCN//////////////////////

function DIG11(Cod: string): string;
var cPosicao, cDig: string;
  nLen, nVal, nCont, I: integer;
  nResto: real;
  cCod: string;
begin

  for I := 1 to LENGTH(Cod) do
  begin
    if (COPY(Cod, i, 1) <> '.') and
      (COPY(Cod, i, 1) <> '-') and
      (COPY(Cod, i, 1) <> 'a') and
      (COPY(Cod, i, 1) <> '/') and
      (COPY(Cod, i, 1) <> ' ') then
      cCod := cCod + COPY(Cod, i, 1);
  end;

  if cCod <> '' then
  begin
    cPosicao := '23456789';
    nLen := LENGTH(cCod);
    nVal := 0;
    NCont := 1;
    i := nlen;
    while i <> 0 do
    begin
      nVal := nVal + (STRTOINT(COPY(cPosicao, nCont, 1)) * STRTOINT(COPY(cCod, i, 1)));
      nCont := nCont + 1;
      i := i - 1;

      if nCont > 8 then
        nCont := 1;
    end;

    nResto := INT(nVal / 11);

    cDig := FLOATTOSTR(nVal - (11 * nResto));

    cDig := IntToStr(11 - StrToInt(cdig));

    if (STRTOFLOAT(cDig) = 1) or (STRTOFLOAT(cDig) = 0) or (STRTOFLOAT(cDig) > 9) then
      cDig := '1';

    cDig := TRIM(cDig);
    Result := cDig;
  end
  else
  begin
    ShowMessage('Código Inexistente para Verificação !');
    Exit;
  end;

end;






///////////////////// BANESPA //////////////////////

function DIG2(Cod: string): string;
var cPosicao, cDig: string;
  nLen, nVal, nCont, I: integer;
  nResto: real;
  cCod: string;
begin

  for I := 1 to LENGTH(Cod) do
  begin
    if (COPY(Cod, i, 1) <> '.') and
      (COPY(Cod, i, 1) <> '-') and
      (COPY(Cod, i, 1) <> '/') and
      (COPY(Cod, i, 1) <> ' ') then
      cCod := cCod + COPY(Cod, i, 1);
  end;

  if cCod <> '' then
  begin
    cPosicao := '234567';
    nLen := LENGTH(cCod);
    nVal := 0;
    NCont := 1;
    i := nlen;
    while i <> 0 do
    begin
      nVal := nVal + (STRTOINT(COPY(cPosicao, nCont, 1)) * STRTOINT(COPY(cCod, i, 1)));
      nCont := nCont + 1;
      i := i - 1;

      if nCont > 6 then
        nCont := 1;
    end;

    nResto := INT(nVal / 11);

    cDig := FLOATTOSTR(nVal - (11 * nResto));

    cDig := TRIM(cDig);
    Result := cDig;
  end
  else
  begin
    ShowMessage('Código Inexistente para Verificação !');
    Exit;
  end;

end;


function Dig3(Cod: string): string;
var cPosicao, cDig: string;
  nLen, nVal, nCont, I: integer;
  nResto: real;
  cCod: string;
begin

  for I := 1 to LENGTH(Cod) do
  begin
    if (COPY(Cod, i, 1) <> '.') and
      (COPY(Cod, i, 1) <> '-') and
      (COPY(Cod, i, 1) <> '/') and
      (COPY(Cod, i, 1) <> ' ') then
      cCod := cCod + COPY(Cod, i, 1);
  end;

  if cCod <> '' then
  begin
    cPosicao := '23456789';
    nLen := LENGTH(cCod);
    nVal := 0;
    NCont := 1;
    i := nlen;
    while i <> 0 do
    begin
      nVal := nVal + (STRTOINT(COPY(cPosicao, nCont, 1)) * STRTOINT(COPY(cCod, i, 1)));
      nCont := nCont + 1;
      i := i - 1;

      if nCont > 8 then
        nCont := 1;
    end;

    nResto := INT(nVal / 11);

    cDig := FLOATTOSTR(nVal - (11 * nResto));


    if (STRTOFLOAT(cDig) = 1) or (STRTOFLOAT(cDig) = 0) or (STRTOFLOAT(cDig) = 10) then
      cDig := '1'
    else
      cDig := IntToStr(11 - StrToInt(cdig));


    cDig := TRIM(cDig);
    Result := cDig;
  end
  else
  begin
    ShowMessage('Código Inexistente para Verificação !');
    Exit;
  end;

end;

///////////////////////////CALCULO DO DIGITO VERIFICADOR DO NOSSO NUMERO /////////////////////

function DIGNN(Cod: string): string;
var cPosicao, cDig: string;
  nValor, nUlt, nLen, nVal, nCont, I: integer;
  nResto: real;
  cCod: string;
begin
  for I := 1 to LENGTH(Cod) do
  begin
    if (COPY(Cod, i, 1) <> '.') and
      (COPY(Cod, i, 1) <> '-') and
      (COPY(Cod, i, 1) <> '/') and
      (COPY(Cod, i, 1) <> ' ') then
      cCod := cCod + COPY(Cod, i, 1);
  end;
  if cCod <> '' then
  begin
    cPosicao := '3791';
    nLen := LENGTH(cCod);
    nVal := 0;
    nUlt := LENGTH(cCod);
    nCont := 1;
    for I := 1 to nLen do
    begin
      nValor := (STRTOINT(COPY(cPosicao, nCont, 1)) * STRTOINT(COPY(cCod, nUlt, 1)));
      nCont := NCont + 1;

      if (nCont = 5) then
        nCont := 1;


      nVal := nVal + StrToInt(copy(IntToStr(nValor), length(IntToStr(nValor)), 1));
      nUlt := nUlt - 1
    end;

    nResto := StrToINt(copy(IntToStr(nVal), length(IntToStr(nVal)), 1));

    if nResto = 0 then
      nResto := 0
    else
      nResto := 10 - nResto;

    cDig := FLOATTOSTR(nResto);
    Result := cDig;
  end
  else
  begin
    ShowMessage('Código Inexistente para Verificação !');
    Exit;
  end;
end;


function DIG11NNCAIXA(Cod: string): string;
var cPosicao, cDig: string;
  nLen, nVal, nCont, I: integer;
  nResto: real;
  cCod: string;
begin

  for I := 1 to LENGTH(Cod) do
  begin
    if (COPY(Cod, i, 1) <> '.') and
      (COPY(Cod, i, 1) <> '-') and
      (COPY(Cod, i, 1) <> 'a') and
      (COPY(Cod, i, 1) <> '/') and
      (COPY(Cod, i, 1) <> ' ') then
      cCod := cCod + COPY(Cod, i, 1);
  end;

  if cCod <> '' then
  begin
    cPosicao := '23456789';
    nLen := LENGTH(cCod);
    nVal := 0;
    NCont := 1;
    i := nlen;
    while i <> 0 do
    begin
      nVal := nVal + (STRTOINT(COPY(cPosicao, nCont, 1)) * STRTOINT(COPY(cCod, i, 1)));
      nCont := nCont + 1;
      i := i - 1;

      if nCont > 8 then
        nCont := 1;
    end;

    nResto := INT(nVal / 11);

    cDig := FLOATTOSTR(nVal - (11 * nResto));

    cDig := IntToStr(11 - StrToInt(cdig));

    if (STRTOFLOAT(cDig) > 9) then
      cDig := '0';

    cDig := TRIM(cDig);
    Result := cDig;
  end
  else
  begin
    ShowMessage('Código Inexistente para Verificação !');
    Exit;
  end;

end;



function CalculaCorrecao(dtaVenc, DtaPagto, Indice: string; Valor: Currency): Currency;
var
  cInicial, cFinal: real;
  tabela: TQuery;
  pxDiaUtil, filt: string;
begin
  filt := '';
  if trim(indice) <> '' then
    filt := ' and cod_indice="' + indice + '" ';


  if (DtaPagto <> DtaVenc) then
  begin
    pxDiaUtil := ProximoDiaUtil(dtaVenc);
    if StrToDate(pxDiaUtil) >= StrToDate(dtaPagto) then
      dtaVenc := pxDiaUtil;
  end;

  if (StrToDate(DtaPagto) - StrToDate(dtaVenc) > 0) then
  begin

    Tabela := TQuery.Create(nil);
    tabela.DatabaseName := 'DBTributos';

    tabela.close;
    tabela.Sql.Clear;
    tabela.Sql.add('Select indice,periodo from INDICE_DESDO where periodo="' + trim(copy(dtaVenc, 4, 7)) + '" ' + filt);
    tabela.open;

    if not tabela.isEmpty then
      CInicial := tabela.fieldbyName('Indice').AsFloat
    else
      CInicial := 1;

    tabela.close;
    tabela.Sql.Clear;
    tabela.Sql.add('Select indice,periodo from INDICE_DESDO where periodo="' + trim(copy(dtaPagto, 4, 7)) + '" ' + filt);
    tabela.open;

    if not tabela.IsEmpty then
      Cfinal := tabela.fieldbyName('Indice').AsFloat
    else
      CFinal := 1;

    tabela.Close;
    tabela.Free;
    result := ((CFinal / cInicial) * valor) - valor;
  end
  else
    result := 0;

end;

function nvirada(dtaVenc, DtaPagto: string): Integer;
var
  nanos, nmeses: integer;
begin

  nmeses := 0;

  if (copy(dtaVenc, 7, 4) = copy(dtaPagto, 7, 4)) then
  begin
    nmeses := StrToInt(copy(dtapagto, 4, 2)) - StrToInt(copy(dtaVenc, 4, 2));
  end
  else
    if (copy(dtaPagto, 7, 4) > copy(dtaVenc, 7, 4)) then
  begin
    nanos := StrToInt(copy(dtapagto, 7, 4)) - StrToInt(copy(dtaVenc, 7, 4)) - 1;
    nmeses := 12 - StrToInt(copy(dtaVenc, 4, 2)) + StrToInt(copy(dtaPagto, 4, 2)) + (nanos * 12);
  end;
  result := nmeses;

end;

function juros(nometab, dtaVenc, DtaPagto: string; Valor: Currency): Currency;
var
  dias, resultado: real;
  tabela1: TQuery;
  pxDiaUtil: string;
begin

  if (DtaPagto <> DtaVenc) then
  begin
    pxDiaUtil := ProximoDiaUtil(dtaVenc);
    if StrToDate(pxDiaUtil) >= StrToDate(dtaPagto) then
      dtaVenc := pxDiaUtil;
  end;

  dias := StrToDate(DtaPagto) - StrToDate(dtaVenc);

  if (dias > 0) then
  begin
    Tabela1 := TQuery.Create(nil);
    tabela1.DatabaseName := 'DBTributos';

    Tabela1.close;
    Tabela1.Sql.Clear;
    Tabela1.Sql.add('Select qtde,fracao from ' + nometab +
      ' where diaI <=' + FloatToStr(dias) + ' and diaF>=' + FloatToStr(dias));

    Tabela1.open;

    if (copy(Tabela1.FieldByName('fracao').AsString, 1, 2) = '01') then
      resultado := valor * (Tabela1.FieldByName('Qtde').AsCurrency * nmes(dtavenc, dtapagto)) / 100
    else
      if (copy(Tabela1.FieldByName('fracao').AsString, 1, 2) = '02') and (dias > 0) then
    begin
      resultado := valor * (Tabela1.FieldByName('Qtde').AsCurrency * (1 + int((dias - 1) / 30))) / 100
    end
    else
      if (copy(Tabela1.FieldByName('fracao').AsString, 1, 2) = '03') and (dias > 0) then
    begin
      dias := dias / 30;
      resultado := valor * (Tabela1.FieldByName('Qtde').AsFloat * dias) / 100;
    end
    else
      if (copy(Tabela1.FieldByName('fracao').AsString, 1, 2) = '04') then
    begin
      resultado := valor * (Tabela1.FieldByName('Qtde').AsCurrency * nvirada(dtaVenc, DtaPagto)) / 100
    end
    else
      if (copy(Tabela1.FieldByName('fracao').AsString, 1, 2) = '05') then
    begin
      resultado := valor * ((Tabela1.FieldByName('Qtde').AsCurrency * nvirada(dtaVenc, DtaPagto)) + 1) / 100
    end

    else
      resultado := 0;

    tabela1.close;
    tabela1.Free;
  end
  else
    resultado := 0;

  result := resultado;

end;


function Multa(nometab, dtaVenc, DtaPagto: string; Valor: Currency): Currency;
var
  dias, resultado: real;
  Tabela2: TQuery;
  pxDiaUtil: string;
begin
  resultado := 0;
  if (DtaPagto <> DtaVenc) then
  begin
    pxDiaUtil := ProximoDiaUtil(dtaVenc);
    if StrToDate(pxDiaUtil) >= StrToDate(dtaPagto) then
      dtaVenc := pxDiaUtil;
  end;

  dias := StrToDate(DtaPagto) - StrToDate(dtaVenc);

  if dias > 0 then
  begin
    Tabela2 := TQuery.Create(nil);
    tabela2.DatabaseName := 'DBTributos';

    Tabela2.Close;
    Tabela2.sql.clear;
    Tabela2.sql.add('select * from ' + nomeTab +
      ' where diaI <=' + FloatToStr(dias) + ' and diaF >=' + FloatToStr(dias));

    Tabela2.open;


    if (copy(Tabela2.fieldByName('tipo').AsString, 1, 2) = '01') then
      resultado := valor * (Tabela2.fieldByName('qtde').AsFloat / 100)
    else
      if (copy(Tabela2.fieldByName('tipo').AsString, 1, 2) = '02') then
      resultado := Tabela2.fieldByName('qtde').AsFloat
    else
      if (copy(Tabela2.fieldByName('tipo').AsString, 1, 2) = '03') then
    begin
      if (tabela2.fieldByName('Limite').ASCurrency >= (Tabela2.fieldByName('qtde').AsFloat * dias)) then
        resultado := valor * dias * (Tabela2.fieldByName('qtde').AsFloat / 100)
      else
        resultado := valor * (tabela2.fieldByName('Limite').ASCurrency / 100)
    end;



    tabela2.Close;
    tabela2.free;
  end
  else
    resultado := 0;


  result := resultado


end;



function CalculaCorrecaoD(ano, modulo, dtaVenc, DtaPagto, Indice: string; Valor: Currency): Currency;
var
  cInicial, cFinal: real;
  multa, Juros: Currency;
  tabela: TQuery;
  pxDiaUtil: string;
begin
  if (DtaPagto <> DtaVenc) then
  begin
    pxDiaUtil := ProximoDiaUtil(dtaVenc);
    if StrToDate(pxDiaUtil) >= StrToDate(dtaPagto) then
      dtaVenc := pxDiaUtil;
  end;


  if ((StrToDate(DtaPagto) - StrToDate(dtaVenc) > 0)) then
  begin

    Tabela := TQuery.Create(nil);
    tabela.DatabaseName := 'DBTributos';


    tabela.close;
    tabela.sql.Clear;
    tabela.sql.add('select * from di_config');
    tabela.open;

    if (copy(tabela.fieldByName('correcao').AsString, 1, 2) = '02') then
    begin
      valor := valor + MultaD(ano, modulo, dtaVenc, DtaPagto, indice, Valor);
    end
    else
      if (copy(tabela.fieldByName('correcao').AsString, 1, 2) = '03') then
    begin
      Multa := MultaD(ano, modulo, dtaVenc, DtaPagto, indice, Valor);
      Juros := JurosD(ano, modulo, dtaVenc, DtaPagto, indice, Valor);
      valor := valor + multa + juros;
    end;

    tabela.close;
    tabela.Sql.Clear;
    tabela.Sql.add(' Select cgc from cadcli '
      );
    tabela.open;

    if (tabela.fieldByName('cgc').AsString = '45.117.116/0001-43') then
    begin

      if (copy(dtaVenc, 7, 4) = '2001') and (modulo = '01') then
        dtaVenc := '31/05/2001'
      else
        if (copy(dtaVenc, 7, 4) = '2002') and (modulo = '01') then
        dtaVenc := '30/04/2002'
      else
        if (copy(dtaVenc, 7, 4) = '2003') and (modulo = '01') then
        dtaVenc := '31/03/2003'
      else
        if (copy(dtaVenc, 7, 4) = '2001') and (modulo = '04') then
        dtaVenc := '31/05/2001'
      else
        if (copy(dtaVenc, 7, 4) = '2002') and (modulo = '04') then
        dtaVenc := '30/04/2002'
      else
        if (copy(dtaVenc, 7, 4) = '2003') and (modulo = '04') then
        dtaVenc := '30/04/2003';


    end;



    tabela.close;
    tabela.Sql.Clear;
    tabela.Sql.add(' Select indice,periodo from INDICE_DESDO ' +
      ' where cod_indice="' + indice + '" and periodo="' + trim(copy(dtaVenc, 4, 3)) + trim(copy(dtaVenc, 7, 4)) + '"');
    tabela.open;

    if (not tabela.isEmpty) and (tabela.fieldbyName('Indice').AsCurrency <> 0) then
      CInicial := tabela.fieldbyName('Indice').AsFloat
    else
      CInicial := 1;

    tabela.close;
    tabela.Sql.Clear;
    tabela.Sql.add(' Select indice,periodo from INDICE_DESDO ' +
      ' where cod_indice="' + indice + '" and periodo="' + trim(copy(dtaPagto, 4, 3)) + trim(copy(dtaPagto, 7, 4)) + '"');
    tabela.open;

    if (not tabela.isEmpty) and (tabela.fieldbyName('Indice').AsCurrency <> 0) then
      Cfinal := tabela.fieldbyName('Indice').AsFloat
    else
      CFinal := 1;

    tabela.Close;
    tabela.Free;

    result := ((CFinal / cInicial) * valor) - valor;
  end
  else
    result := 0;


end;


function CalculaCorrecaoDn(ano, modulo, dtaVenc, DtaPagto, Indice: string; Valor: Currency; dtparce: string): Currency;
var
  cInicial, cFinal: real;
  multa, Juros: Currency;
  tabela: TQuery;
begin
  Tabela := TQuery.Create(nil);
  tabela.DatabaseName := 'DBTributos';

  tabela.close;
  tabela.Sql.Clear;
  tabela.Sql.add(' Select cgc from cadcli '
    );
  tabela.open;

  if (tabela.fieldByName('cgc').AsString = '45.709.912/0001-75') then
  begin
    if (dtparce <> '') then
      dtaVenc := dtparce;
  end;

  if ((StrToDate(DtaPagto) - StrToDate(dtaVenc) > 0)) then
  begin
    tabela.close;
    tabela.sql.Clear;
    tabela.sql.add('select * from di_config');
    tabela.open;

    if (copy(tabela.fieldByName('correcao').AsString, 1, 2) = '02') then
    begin
      valor := valor + MultaD(ano, modulo, dtaVenc, DtaPagto, indice, Valor);
    end
    else
      if (copy(tabela.fieldByName('correcao').AsString, 1, 2) = '03') then
    begin
      Multa := MultaD(ano, modulo, dtaVenc, DtaPagto, indice, Valor);
      Juros := JurosD(ano, modulo, dtaVenc, DtaPagto, indice, Valor);
      valor := valor + multa + juros;
    end;

    tabela.close;
    tabela.Sql.Clear;
    tabela.Sql.add(' Select cgc from cadcli '
      );
    tabela.open;

    if (tabela.fieldByName('cgc').AsString = '45.117.116/0001-43') then
    begin

      if (copy(dtaVenc, 7, 4) = '2001') and (modulo = '01') then
        dtaVenc := '31/05/2001'
      else
        if (copy(dtaVenc, 7, 4) = '2002') and (modulo = '01') then
        dtaVenc := '30/04/2002'
      else
        if (copy(dtaVenc, 7, 4) = '2003') and (modulo = '01') then
        dtaVenc := '31/03/2003'
      else
        if (copy(dtaVenc, 7, 4) = '2001') and (modulo = '04') then
        dtaVenc := '31/05/2001'
      else
        if (copy(dtaVenc, 7, 4) = '2002') and (modulo = '04') then
        dtaVenc := '30/04/2002'
      else
        if (copy(dtaVenc, 7, 4) = '2003') and (modulo = '04') then
        dtaVenc := '30/04/2003';


    end;



    tabela.close;
    tabela.Sql.Clear;
    tabela.Sql.add(' Select indice,periodo from INDICE_DESDO ' +
      ' where cod_indice="' + indice + '" and periodo="' + trim(copy(dtaVenc, 4, 3)) + trim(copy(dtaVenc, 7, 4)) + '"');
    tabela.open;

    if (not tabela.isEmpty) and (tabela.fieldbyName('Indice').AsCurrency <> 0) then
      CInicial := tabela.fieldbyName('Indice').AsFloat
    else
      CInicial := 1;

    tabela.close;
    tabela.Sql.Clear;
    tabela.Sql.add(' Select indice,periodo from INDICE_DESDO ' +
      ' where cod_indice="' + indice + '" and periodo="' + trim(copy(dtaPagto, 4, 3)) + trim(copy(dtaPagto, 7, 4)) + '"');
    tabela.open;

    if (not tabela.isEmpty) and (tabela.fieldbyName('Indice').AsCurrency <> 0) then
      Cfinal := tabela.fieldbyName('Indice').AsFloat
    else
      CFinal := 1;


    result := ((CFinal / cInicial) * valor) - valor;
  end
  else
    result := 0;

  tabela.Close;
  tabela.Free;

end;


function nmes(dtavenc, dtapagto: string): Integer;
var
  j: integer;
  dt, dtaux: string;
begin

  j := 0;
  if copy(dtavenc, 4, 2) <> '12' then
    dtaux := '01/' + ZeraEsquerda(2, IntToStr(StrToInt(copy(dtavenc, 4, 2)) + 1)) + '/' + copy(dtavenc, 7, 4)
  else
    dtaux := '01/01/' + IntToStr(strToInt(copy(dtavenc, 7, 4)) + 1);

  dtaux := DateToStr(strToDate(dtaux) - 1);
  dt := DateToStr(strTodate(dtaVenc) + StrToInt(copy(dtaux, 1, 2)));
  while StrToDate(dt) <= StrToDate(dtapagto) do
  begin

    if copy(dt, 4, 2) <> '12' then
      dtaux := '01/' + ZeraEsquerda(2, IntToStr(StrToInt(copy(dt, 4, 2)) + 1)) + '/' + copy(dt, 7, 4)
    else
      dtaux := '01/01/' + IntToStr(StrToInt(copy(dt, 7, 4)) + 1);

    dtaux := DateToStr(strToDate(dtaux) - 1);
    dt := DateToStr(strTodate(dt) + StrToInt(copy(dtaux, 1, 2)));
    j := j + 1;
  end;
  result := j;

end;




function jurosD(ano, modulo, dtaVenc, DtaPagto, Indice: string; Valor: Currency): Currency;
var
  dias, resultado: real;
  tabela1: TQuery;
  pxDiaUtil: string;
begin

  if (DtaPagto <> DtaVenc) then
  begin
    pxDiaUtil := ProximoDiaUtil(dtaVenc);
    if StrToDate(pxDiaUtil) >= StrToDate(dtaPagto) then
      dtaVenc := pxDiaUtil;
  end;


  dias := StrToDate(DtaPagto) - StrToDate(dtaVenc);

  if (dias > 0) then
  begin

    Tabela1 := TQuery.Create(nil);
    tabela1.DatabaseName := 'DBTributos';

    tabela1.close;
    tabela1.sql.Clear;
    tabela1.sql.add('select * from di_config');
    tabela1.open;

    if (copy(tabela1.fieldByName('juros').AsString, 1, 2) = '01') then
    begin
      valor := valor + CalculaCorrecaoD(ano, modulo, dtaVenc, DtaPagto, Indice, Valor);
    end
    else
      if (copy(tabela1.fieldByName('juros').AsString, 1, 2) = '02') then
    begin
      valor := valor + CalculaCorrecaoD(ano, modulo, dtaVenc, DtaPagto, Indice, Valor) + multaD(ano, modulo, dtaVenc, DtaPagto, Indice, Valor);
    end;


    Tabela1.close;
    Tabela1.Sql.Clear;
    Tabela1.Sql.add('Select qtde,fracao from  di_juros' +
      ' where di_ano="' + ano + '" and substr(di_tribu,1,2)="' + modulo + '" and diaI <=' + FloatToStr(dias) + ' and diaF>=' + FloatToStr(dias));

    Tabela1.open;

    if (copy(Tabela1.FieldByName('fracao').AsString, 1, 2) = '01') then
      resultado := valor * (Tabela1.FieldByName('Qtde').AsFloat * nmes(dtavenc, dtapagto)) / 100
    else
      if (copy(Tabela1.FieldByName('fracao').AsString, 1, 2) = '02') and (dias > 0) then
      resultado := valor * (Tabela1.FieldByName('Qtde').AsFloat * (1 + nmes(dtavenc, dtapagto))) / 100
    else
      if (copy(Tabela1.FieldByName('fracao').AsString, 1, 2) = '03') and (dias > 0) then
    begin
      dias := dias / 30;
      resultado := valor * (Tabela1.FieldByName('Qtde').AsFloat * dias) / 100;
    end
    else
      if (copy(Tabela1.FieldByName('fracao').AsString, 1, 2) = '04') then
    begin
      resultado := valor * (Tabela1.FieldByName('Qtde').AsFloat * nvirada(dtaVenc, DtaPagto)) / 100;
    end
    else
      if (copy(Tabela1.FieldByName('fracao').AsString, 1, 2) = '05') then
    begin
      resultado := valor * ((Tabela1.FieldByName('Qtde').AsFloat * nvirada(dtaVenc, DtaPagto)) + 1) / 100;
    end
    else
      resultado := 0;

    tabela1.close;
    tabela1.Free;
  end
  else
    resultado := 0;


  result := resultado;

end;

function MultaD(ano, modulo, dtaVenc, DtaPagto, Indice: string; Valor: Currency): Currency;
var
  dias, resultado: real;
  Tabela2: TQuery;
  pxDiaUtil: string;
begin
  if (DtaPagto <> DtaVenc) then
  begin
    pxDiaUtil := ProximoDiaUtil(dtaVenc);
    if StrToDate(pxDiaUtil) >= StrToDate(dtaPagto) then
      dtaVenc := pxDiaUtil;
  end;

  dias := StrToDate(DtaPagto) - StrToDate(dtaVenc);
  if dias > 0 then
  begin
    Tabela2 := TQuery.Create(nil);
    tabela2.DatabaseName := 'DBTributos';


    tabela2.close;
    tabela2.sql.Clear;
    tabela2.sql.add('select * from di_config');
    tabela2.open;

    if (copy(tabela2.fieldByName('multa').AsString, 1, 2) = '01') then
    begin
      valor := valor + CalculaCorrecaoD(ano, modulo, dtaVenc, DtaPagto, Indice, Valor);
    end;



    Tabela2.Close;
    Tabela2.sql.clear;
    Tabela2.sql.add('select * from di_multa' +
      ' where di_ano="' + ano + '" and subStr(di_tribu,1,2)="' + modulo + '" and diaI <=' + FloatToStr(dias) + ' and diaF >=' + FloatToStr(dias));

    Tabela2.open;

    if (copy(Tabela2.fieldByName('tipo').AsString, 1, 2) = '01') then
      resultado := valor * (Tabela2.fieldByName('qtde').AsFloat / 100)
    else
      resultado := Tabela2.fieldByName('qtde').AsFloat;


    tabela2.Close;
    tabela2.free;
  end
  else
    resultado := 0;

  result := resultado


end;



function InverteData(data: string): string;
begin
  result := copy(data, 4, 3) + copy(data, 1, 3) + copy(data, 7, 4);
end;


function VerificaMask(Mask: string): string;
var
  AuxMask: string;
  I: Integer;
begin
  AuxMask := '';
  for I := 1 to LENGTH(Mask) do
  begin

    if (Mask[I] = '9') or (Mask[I] = '0') then
    begin
      AuxMask := AuxMask + ' ';
    end
    else

      if (Mask[I] = '.') or (Mask[I] = '-') or (Mask[I] = '/') or (Mask[I] = '|') or
      (Mask[I] = '\') or (Mask[I] = '_') then
    begin
      AuxMask := AuxMask + Mask[I];
    end;

  end;

  result := trim(AuxMask);

end;


function VerificaTipo(Mask: string): string;
var
  Tipo: string;
  I: Integer;
begin
  if trim(mask) <> '' then
    tipo := '1'
  else
    tipo := '0';

  for I := 1 to LENGTH(Mask) do
  begin
    if (mask[i] = '.') or (mask[i] = '-') or (mask[i] = '/') or (mask[i] = '_') or (mask[i] = '\') then
      tipo := '0';
  end;

  result := trim(tipo);

end;

function referanterior(Referencia: string): string;
var refer: string;
begin
  refer := referencia;
  if copy(referencia, 1, 2) = '01' then
    refer := '12/' + IntToStr(StrToInt(copy(referencia, 4, 4)) - 1)
  else
    refer := ZeraEsquerda(2, IntToStr(StrToInt(copy(referencia, 1, 2)) - 1)) + '/' + copy(referencia, 4, 4);
  result := refer;
end;

function arredondaagua(valor: Currency): Currency;
begin
  result := arredonda(valor, 1) - valor;
end;

function TiraMascara(Mask: string): string;
var
  Tipo: string;
  I: Integer;
begin

  for I := 1 to LENGTH(Mask) do
  begin
    if (mask[i] <> '.') or (mask[i] <> '-') or (mask[i] <> '/') or (mask[i] <> '_') or (mask[i] <> '\') then
      tipo := Tipo + mask[i];
  end;

  result := trim(tipo);

end;

// Coloca zeros a esquerda

function Strzero(Num: real; zeros, deci: integer): string;
var Tam, Z: integer;
  Res, Zer: string;
begin
  if Num <> 0 then
  begin
    Str(Num: Zeros: Deci, Res);
    Res := Alltrim(Res);
    Tam := Length(Res);
    Zer := '';
    for Z := 1 to (Zeros - Tam) do
      Zer := Zer + '0';
    Result := Zer + Res;
  end
  else
  begin
    Str(Num: Zeros: Deci, Res);
    Res := Alltrim(Res);
    Tam := Length(Res);
    Zer := '';
    for Z := 1 to (Zeros - Tam) do
      Zer := Zer + '0';
    Result := Zer + Res;
  end;

  // Result:= '';

end;



function tiravirg(campo: string): string;
var
  x: integer;
  armazena: string;
begin
  for x := 1 to length(campo) do
  begin
    if (copy(campo, x, 1) <> ',') and (copy(campo, x, 1) <> '.') then
      armazena := armazena + copy(campo, x, 1);
  end;

  result := armazena;
end;

function tiraespaco(campo: string): string;
var
  x: integer;
  armazena: string;
begin
  for x := 1 to length(campo) do
  begin
    if (copy(campo, x, 1) <> ' ') and (copy(campo, x, 1) <> '#9') then
      armazena := armazena + copy(campo, x, 1);
  end;

  result := armazena;
end;

function arredonda(valor: double; decimal: integer): double;
var
  arredondado: string;
begin
  arredondado := CurrToStrF(valor, ffFixed, decimal);
  result := strtoCurr(arredondado);
end;


/// Elimina espaços em branco

function Alltrim(Text: string): string;
var n: integer;
begin
  for N := 1 to LENGTH(TEXT) do
  begin
    if COPY(TEXT, 1, 1) = ' ' then
    begin
      Delete(Text, 1, 1);
    end
    else
      Break;
  end;
  for N := LENGTH(TEXT) downto 1 do
  begin
    if COPY(TEXT, LENGTH(TEXT), 1) = ' ' then
      Delete(Text, LENGTH(TEXT), 1)
    else
      Break;
  end;

  Result := Text;
end;


// codigo barra do iptu

function DIGFEBRA(cCod: string): string;
var cPosicao: string;
  nResto, nVal, cDig, nValor: variant;
  i, nLen, nCont, nUlt, nC: integer;
begin
  cPosicao := '21';
  nResto := 0;

  if cCod <> '' then
  begin
    nLen := LENGTH(Trim(cCod));
    nVal := 0;
    nUlt := LENGTH(Trim(cCod));
    nCont := 1;
    nValor := 0;
    for i := 1 to nLen do
    begin
      nValor := (STRTOINT(COPY(cPosicao, nCont, 1)) * STRTOINT(COPY(cCod, nUlt, 1)));
      if nValor > 9 then
      begin
        nResto := nValor;
        nC := 1;
        while nC < 3 do
        begin
          nValor := COPY(INTTOSTR(nResto), nC, 1);
          if STRTOINT(nValor) > 0 then
            nVal := nVal + STRTOINT(nValor);
          nC := nC + 1;
        end;
      end
      else
        nVal := nVal + nValor;

      nCont := nCont + 1;
      if nCont = 3 then
        nCont := 1;

      nUlt := nUlt - 1;
    end;
    nResto := ((nVal / 10) - INT(nVal / 10)) * 10;
    if nResto = 0 then
      cDig := '0'
    else
    begin
      cDig := 10 - nResto;
      cDig := InttoStr(cDig);
    end;
    Result := cDig;
  end;

end;

function DIGNNC(Cod: string): string;
var cPosicao, cDig: string;
  nValor, nUlt, nLen, nVal, nCont, I: integer;
  nResto: real;
  cCod: string;
begin
  for I := 1 to LENGTH(Cod) do
  begin
    if (COPY(Cod, i, 1) <> '.') and
      (COPY(Cod, i, 1) <> '-') and
      (COPY(Cod, i, 1) <> '/') and
      (COPY(Cod, i, 1) <> ' ') then
      cCod := cCod + COPY(Cod, i, 1);
  end;
  if cCod <> '' then
  begin
    cPosicao := '3791';
    nLen := LENGTH(cCod);
    nVal := 0;
    nUlt := LENGTH(cCod);
    nCont := 1;
    for I := 1 to nLen do
    begin
      if (nUlt = 14) then
      begin
        nCont := 4;
      end;

      nValor := (STRTOINT(COPY(cPosicao, nCont, 1)) * STRTOINT(COPY(cCod, nUlt, 1)));
      nCont := NCont + 1;

      if (nCont = 5) then
        nCont := 1;


      nVal := nVal + StrToInt(copy(IntToStr(nValor), length(IntToStr(nValor)), 1));
      nUlt := nUlt - 1
    end;

    nResto := StrToINt(copy(IntToStr(nVal), length(IntToStr(nVal)), 1));

    if nResto = 0 then
      nResto := 0
    else
      nResto := 10 - nResto;

    cDig := FLOATTOSTR(nResto);
    Result := cDig;
  end
  else
  begin
    ShowMessage('Código Inexistente para Verificação !');
    Exit;
  end;
end;




function Subs_Virgula_por_Ponto(valor: string): string;
var
  cont, cont1: Integer;
begin
  cont1 := 1;
  cont := Length(Valor);
  while cont1 <= cont do
  begin
    if (Valor[cont1] = ',') then
      VAlor[cont1] := '.';

    cont1 := cont1 + 1;
  end;
  result := Valor;

end;


function Subs_Ponto_por_Virgula(valor: string): string;
var
  cont, cont1: Integer;
begin
  cont1 := 1;
  cont := Length(Valor);
  while cont1 <= cont do
  begin
    if (Valor[cont1] = '.') then
      VAlor[cont1] := ',';

    cont1 := cont1 + 1;
  end;
  result := Valor;

end;




function TiraPonto(valor: string): string;
var
  Str: string;
  cont, cont1: Integer;
begin
  cont1 := 1; str := valor;
  cont := Length(Valor);
  while cont1 <= cont do
  begin
    if (str[cont1] = '.') then
      valor := copy(Str, 1, cont1 - 1) + copy(Str, cont1 + 1, cont - cont1);

    cont1 := cont1 + 1;
  end;
  result := valor;

end;

function TiraVirgula(valor: string): string;
var
  Str: string;
  cont, cont1: Integer;
begin
  cont1 := 1; str := valor;
  cont := Length(Valor);
  while cont1 <= cont do
  begin
    if (str[cont1] = ',') then
      valor := copy(Str, 1, cont1 - 1) + copy(Str, cont1 + 1, cont - cont1);

    cont1 := cont1 + 1;
  end;
  result := valor;

end;

function caminho(Alias: string): string;
var
  i, Tamanho: Integer;
  Q: TQuery;
begin
  i := 0;
  tamanho := length(Alias);

  while (i <= Tamanho) do
  begin
    if (alias[i] = ':') and ((alias[i + 1] = '\') or (alias[i + 1] = '/')) then
    begin
      if (copy(alias, 1, i - 3) = '') then
        result := 'C:\' + copy(alias, i + 2, tamanho - i)
      else
        result := Subs_2ponto_por_barra('\\' + copy(alias, 1, i - 1) + copy(alias, i + 1, tamanho - i));
      break;
    end;

    i := i + 1;
  end;

  Q := TQuery.Create(nil);
  Q.DatabaseName := 'DBTributos';

  try
    Q.close;
    Q.sql.clear;
    Q.sql.add('select * from caminho');
    Q.open;
    if trim(Q.fieldByName('camlayout').AsString) <> '' then
      result := Q.fieldByName('camlayout').AsString;
  except
    ShowMessage('Atualiza o Módulo Principal do Sistema da Internet.');
  end;

  Q.close;
  Q.free;

end;


//retorna o caminho do alias

function ObtemDirdoAlias(Alias: string): string;
var
  Q: TQuery;
begin

  Q := TQuery.Create(nil);
  Q.DatabaseName := 'DBTributos';

  try
    Q.close;
    Q.sql.clear;
    Q.sql.add('select * from caminho');
    Q.open;
    result := Q.fieldByName('camlayout').AsString;
  except
    ShowMessage('Atualiza o Módulo Principal do Sistema da Internet.');
  end;

  Q.close;
  Q.free;

end;



//retorna o caminho do alias

function Alias(Alias: string): string;
var
  AliasNames, AliasParams: TStringList;
  i, j: integer;
begin
  Result := '';
  AliasParams := TStringList.Create;
  AliasNames := TStringList.Create;
  try
    // pega nomes dos aliases
    Session.GetAliasNames(AliasNames);
    for i := 0 to AliasNames.Count - 1 do
      if CompareText(AliasNames[i], Alias) = 0 then
      begin
        Session.GetAliasParams(Alias, AliasParams);
        for j := 0 to AliasParams.Count - 1 do
        begin
          if Pos('SERVER NAME', AliasParams[j]) <> 0 then
          begin
            Result := copy(AliasParams[j], 13,
              (Length(AliasParams[j]) - 25));
            break;
          end;
        end;
        break;
      end;
  finally
    AliasParams.Free;
    AliasNames.Free;
  end;
end;


//retorna o caminho do alias

function CompletoAlias(Alias: string): string;
var
  AliasNames, AliasParams: TStringList;
  i, j: integer;
begin
  Result := '';
  AliasParams := TStringList.Create;
  AliasNames := TStringList.Create;
  try
    // pega nomes dos aliases
    Session.GetAliasNames(AliasNames);
    for i := 0 to AliasNames.Count - 1 do
      if CompareText(AliasNames[i], Alias) = 0 then
      begin
        Session.GetAliasParams(Alias, AliasParams);
        for j := 0 to AliasParams.Count - 1 do
        begin
          if Pos('SERVER NAME', AliasParams[j]) <> 0 then
          begin
            Result := copy(AliasParams[j], 13,
              (Length(AliasParams[j])));
            break;
          end;
        end;
        break;
      end;
  finally
    AliasParams.Free;
    AliasNames.Free;
  end;
end;




procedure fechar_todas_tabelas;
var
  i: integer;
begin
  with Session do
    for i := 0 to DatabaseCount - 1 do
      Databases[I].Close;
end;



//desabilita

procedure desabilita(x: tform);
var i, k: integer;
  MDI: TFPrincipal;
begin
  MDI := FPrincipal;
  for i := 0 to x.ComponentCount - 1 do // for next que habilita e desabilita os componentes
  begin
    if x.Components[i] is TdbEdit then
    begin
      TdbEdit(x.Components[i]).enabled := false;
      TdbEdit(x.Components[i]).color := clbtnface;
    end;


    if x.Parent = MDI then
    begin
      for k := 0 to FPrincipal.ComponentCount - 1 do // for next que habilita e desabilita os componentes
      begin
        if FPrincipal.Components[k] is TmenuItem then
        begin
          TmenuItem(FPrincipal.Components[k]).enabled := true;
        end;
        if FPrincipal.Components[k] is TspeedButton then
        begin
          TSpeedButton(FPrincipal.Components[k]).enabled := true;
        end;
        if FPrincipal.Components[k] is TLabel then
        begin
          TLabel(FPrincipal.Components[k]).enabled := true;
        end;
      end;

    end;

    if x.Components[i] is TspeedButton then
    begin
      TspeedButton(x.Components[i]).enabled := true;
    end;


    if x.Components[i] is TdbLookupComboBox then
    begin
      TdbLookupComboBox(x.Components[i]).enabled := false;
      TdbLookupComboBox(x.Components[i]).color := clbtnface;
    end;

    if x.Components[i] is TdbRichEdit then
    begin
      TdbRichEdit(x.Components[i]).enabled := false;
      TdbRichEdit(x.Components[i]).color := clbtnface;
    end;

    if x.Components[i] is TdbcheckBox then
    begin
      TdbcheckBox(x.Components[i]).enabled := false;
      TdbcheckBox(x.Components[i]).color := clbtnface;
    end;



    if x.Components[i] is Tdatetimepicker then
    begin
      Tdatetimepicker(x.Components[i]).enabled := false;
      Tdatetimepicker(x.Components[i]).color := clbtnface;
    end;

    if x.Components[i] is Tdbcombobox then
    begin
      Tdbcombobox(x.Components[i]).enabled := false;
      Tdbcombobox(x.Components[i]).color := clbtnface;
    end;

    if x.Components[i] is Tdbmemo then
    begin
      Tdbmemo(x.Components[i]).enabled := false;
      Tdbmemo(x.Components[i]).color := clbtnface;
    end;


    if x.Components[i] is Tmemo then
    begin
      Tmemo(x.Components[i]).enabled := false;
      Tmemo(x.Components[i]).color := clbtnface;
      Tmemo(x.Components[i]).clear;
    end;

    if x.Components[i] is TCheckBox then
    begin
      TCheckBox(x.Components[i]).enabled := false;
    end;


    if x.Components[i] is TMaskedit then
    begin
      TMaskedit(x.Components[i]).enabled := false;
      TMaskedit(x.Components[i]).color := clbtnface;
    end;

    if x.Components[i] is Tedit then
    begin
      Tedit(x.Components[i]).enabled := false;
      Tedit(x.Components[i]).color := clbtnface;
    end;

    if x.Components[i] is Tcombobox then
    begin
      Tcombobox(x.Components[i]).enabled := false;
      Tcombobox(x.Components[i]).color := clbtnface;
    end;

    if x.Components[i] is TRadioGroup then
    begin
      TRadioGroup(x.Components[i]).enabled := false;
      TRadioGroup(x.Components[i]).color := clbtnface;
    end;

    if x.Components[i] is TdbNavigator then
    begin
      TdbNavigator(x.Components[i]).enabled := true;
    end;


    if x.Components[i] is TdbGrid then
    begin
      TdbGrid(x.Components[i]).enabled := true;
      TdbGrid(x.Components[i]).color := clwindow; ;
    end;


    if x.Components[i] is Tbitbtn then
    begin
      if (tbitbtn(x.components[i]).name = 'btnok') or (tbitbtn(x.components[i]).name = 'btncancel') then
      begin
        Tbitbtn(x.Components[i]).enabled := false;
      end
      else
      begin
        Tbitbtn(x.Components[i]).enabled := true;
      end;
    end;
  end;

end;


//abilita

procedure abilita(x: tform);
var i, k: integer;
  MDI: TFPrincipal;
begin
  MDI := FPrincipal;
  for i := 0 to x.ComponentCount - 1 do // for next que habilita e desabilita os componentes
  begin
    if x.Components[i] is TdbEdit then
    begin
      TdbEdit(x.Components[i]).enabled := true;
      TdbEdit(x.Components[i]).color := clwindow;
    end;


    if x.Parent = MDI then
    begin
      for k := 0 to FPrincipal.ComponentCount - 1 do // for next que habilita e desabilita os componentes
      begin
        if FPrincipal.Components[k] is TmenuItem then
        begin
          TmenuItem(FPrincipal.Components[k]).enabled := false;
        end;
        if FPrincipal.Components[k] is TspeedButton then
        begin
          TspeedButton(FPrincipal.Components[k]).enabled := false;
        end;
        if FPrincipal.Components[k] is TLabel then
        begin
          TLabel(FPrincipal.Components[k]).enabled := false;
        end;
      end;

    end;

    if x.Components[i] is TSpeedButton then
    begin
      TSpeedButton(x.Components[i]).enabled := false;
    end;

    if x.Components[i] is TCheckBox then
    begin
      TCheckBox(x.Components[i]).enabled := true;
    end;

    if x.Components[i] is Tdbcombobox then
    begin
      Tdbcombobox(x.Components[i]).enabled := true;
      Tdbcombobox(x.Components[i]).color := clwindow;
    end;

    if x.Components[i] is TdbRichEdit then
    begin
      TdbRichEdit(x.Components[i]).enabled := true;
      TdbRichEdit(x.Components[i]).color := clwindow;
    end;

    if x.Components[i] is TdbcheckBox then
    begin
      TdbcheckBox(x.Components[i]).enabled := true;
    end;



    if x.Components[i] is Tdatetimepicker then
    begin
      Tdatetimepicker(x.Components[i]).enabled := true;
      Tdatetimepicker(x.Components[i]).color := clwindow;
    end;


    if x.Components[i] is TdbLookupComboBox then
    begin
      TdbLookupComboBox(x.Components[i]).enabled := true;
      TdbLookupComboBox(x.Components[i]).color := clwindow;
    end;


    if x.Components[i] is Tdbmemo then
    begin
      Tdbmemo(x.Components[i]).enabled := true;
      Tdbmemo(x.Components[i]).color := clwindow;
    end;


    if x.Components[i] is Tmemo then
    begin
      Tmemo(x.Components[i]).enabled := true;
      Tmemo(x.Components[i]).color := clwindow;
      Tmemo(x.Components[i]).clear;
    end;

    if x.Components[i] is TMaskedit then
    begin
      TMaskedit(x.Components[i]).enabled := true;
      TMaskedit(x.Components[i]).color := clwindow;
      TMaskedit(x.Components[i]).clear;
    end;

    if x.Components[i] is Tedit then
    begin
      Tedit(x.Components[i]).enabled := true;
      Tedit(x.Components[i]).color := clwindow;
    end;

    if x.Components[i] is Tcombobox then
    begin
      Tcombobox(x.Components[i]).enabled := true;
      Tcombobox(x.Components[i]).color := clwindow;
    end;

    if x.Components[i] is TRadioGroup then
    begin
      TRadioGroup(x.Components[i]).enabled := true;

    end;

    if x.Components[i] is TdbNavigator then
    begin
      TdbNavigator(x.Components[i]).enabled := false;
    end;


    if x.Components[i] is TdbGrid then
    begin
      TdbGrid(x.Components[i]).enabled := false;
      TdbGrid(x.Components[i]).color := clbtnface;
    end;


    if x.Components[i] is Tbitbtn then
    begin
      if (tbitbtn(x.components[i]).name = 'btnok') or (tbitbtn(x.components[i]).name = 'btncancel') then
      begin
        Tbitbtn(x.Components[i]).enabled := true;
      end
      else
      begin
        Tbitbtn(x.Components[i]).enabled := false;
      end;
    end;
  end;

end;

{Verifica a ocorrencia de erros na base de dados, como:
-Violação da chave primaria
-Preenchimento de campos obrigatorios etc}

procedure verifica(TABELA: TDataSet; X: EDatabaseError;
  var Action: TDataAction);
begin
  if (x is EDBEngineError) then
    with EDBEngineError(x) do
      case Errors[0].ErrorCode of
        DBIERR_KEYVIOL: ShowMessage('Código já Cadastrado.');
        DBIERR_REQDERR: ShowMessage('Campo obrigatório não preenchido.');
        DBIERR_LOCKED: ShowMessage('Outro usuário está alterando o registro');
        DBIERR_NETMULTIPLE: ShowMessage('Mais de um diretório, utilizado como diretorio de controle da rede');
      end
  else
    ShowMessage('Erro no banco de dados:' + #13#13 + X.Message);
  Action := daAbort;
  Tabela.Cancel;
end;



procedure AjustaForm(x: Tform);
{Manter a janela no tamanho normal independente da resolução de vídeo}
{Declarar dentro do Type do Formulário e chamar a partir do evento Create do Form}
begin
  with x do
  begin
    if nTamOriginal <> Screen.Width then
    begin
      nEscala := ((Screen.Width - nTamOriginal) / nTamOriginal);
      nPorcento := Round((nEscala * 100) + 100);
      x.Width := Round(Width * (nEscala + 1));
      x.Height := Round(Height * (nEscala + 1));
      x.ScaleBy(nPorcento, 100);
    end;
  end;
end;



function BrancoDireita(Num: integer; valor: string): string;
var
  Str: string;
  cont: Integer;
begin
  str := copy(trim(valor), 1, num);
  cont := Length(trim(Valor));
  while cont < Num do
  begin
    Str := Str + ' ';
    cont := cont + 1;
  end;
  result := Str;
end;


function ZeraEsquerda(Num: integer; valor: string): string;
var
  Str: string;
  cont: Integer;
begin
  valor := copy(trim(valor), 1, num);
  str := valor;
  cont := Length(Valor);

  while cont < Num do
  begin
    Str := '0' + Str;
    cont := cont + 1;
  end;
  result := Str;
end;

function ZeraDireita(Num: integer; valor: string): string;
var
  Str: string;
  cont: Integer;
begin
  valor := copy(trim(valor), 1, num);
  str := valor;
  cont := Length(Valor);

  while cont < Num do
  begin
    Str := Str+'0';
    cont := cont + 1;
  end;
  result := Str;
end;


function BrancoEsquerda(Num: integer; valor: string): string;
var
  Str: string;
  cont: Integer;
begin
  valor := trim(valor);
  str := copy(trim(valor), 1, num);
  cont := Length(Valor);

  while cont < Num do
  begin
    Str := ' ' + Str;
    cont := cont + 1;
  end;
  result := Str;
end;


// Função Utilizada para Formatar uma String

function FormatString(Str: string): string;
var
  strpre, strsuf, strwork, auxpre, stringfinal: string;
  strlen, i: integer;
begin
  strwork := Str;
  strpre := '';
  strsuf := '';
  strlen := length(strwork);
  i := 1;
  if strwork <> '' then
  begin
    while (i <= strlen) do
    begin
      if strwork[i] = ' ' then
        inc(i)
      else
      begin
        strpre := uppercase(strwork[i]);
        inc(i);
        while ((strwork[i] <> ' ') and (i <= strlen)) do
        begin
          strsuf := strsuf + lowercase(strwork[i]);
          inc(i);
        end;
        inc(i);
      end;
      if (length(strsuf) > 1) then
      begin
        if stringfinal = '' then
          stringfinal := strpre + strsuf
        else
          stringfinal := stringfinal + ' ' + strpre + strsuf;
      end
      else
      begin
        if (strpre <> '') then
        begin
          auxpre := lowercase(strpre);
          stringfinal := stringfinal + ' ' + auxpre + strsuf;
        end;
      end;
      strpre := '';
      strsuf := '';
    end;
  end;
  result := stringFinal;
end;

function RetiraChar(Frase, Char: string): string;
var Tam: Integer;
begin
  Result := '';
  for Tam := 1 to Length(Frase) do
  begin
    if Copy(Frase, Tam, 1) <> Char then
      Result := Result + Copy(Frase, Tam, 1);
  end;
end;

procedure MudaBancoExtensao(Caminho: string);
var
  AliasParams: TStringList;
  j: integer;
begin
  AliasParams := TStringList.Create;
  Session.GetAliasParams('Tributos', AliasParams);
  for j := 0 to AliasParams.Count - 1 do
  begin
    if Pos('SERVER NAME=', AliasParams[j]) <> 0 then
    begin
      AliasParams[j] := 'SERVER NAME=' + Caminho;
    end;
  end;
  Session.ConfigMode := cmPersistent;
  Session.ModifyAlias('Tributos', AliasParams);
  Session.SaveConfigFile;
  AliasParams.Free;
end;

function SoNumeros(Texto: string): string;
var
  Numeros: string;
  I: Integer;
begin
  for I := 1 to LENGTH(Texto) do
  begin
    if Pos(Texto[i],'0123456789') > 0 then
      Numeros := Numeros + Texto[i];
  end;
  result := trim(Numeros);
end;


end.

