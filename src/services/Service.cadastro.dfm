object ServiceCadastro: TServiceCadastro
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object Qry_Pessoas: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM pessoas WHERE pes_codigo = :codigo')
    Left = 144
    Top = 208
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Qry_PessoasPES_CODIGO: TIntegerField
      FieldName = 'PES_CODIGO'
      Origin = 'PES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_PessoasPES_RAZAO: TStringField
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      Required = True
      Size = 100
    end
    object Qry_PessoasPES_FANTASIA: TStringField
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object Qry_PessoasPES_TELEFONE: TStringField
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 50
    end
    object Qry_PessoasPES_CNPJCPF: TStringField
      FieldName = 'PES_CNPJCPF'
      Origin = 'PES_CNPJCPF'
      Size = 50
    end
    object Qry_PessoasPES_IERG: TStringField
      FieldName = 'PES_IERG'
      Origin = 'PES_IERG'
      Size = 10
    end
    object Qry_PessoasPES_OBSERVACAO: TStringField
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 200
    end
    object Qry_PessoasPES_TIPOPESSOA: TIntegerField
      FieldName = 'PES_TIPOPESSOA'
      Origin = 'PES_TIPOPESSOA'
    end
  end
  object Qry_Enderecos: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM endereco WHERE end_codigo = :codigo')
    Left = 160
    Top = 424
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object Qry_EnderecosEND_CODIGO: TIntegerField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_EnderecosEND_PESSOA: TIntegerField
      FieldName = 'END_PESSOA'
      Origin = 'END_PESSOA'
    end
    object Qry_EnderecosEND_CEP: TStringField
      FieldName = 'END_CEP'
      Origin = 'END_CEP'
    end
    object Qry_EnderecosEND_CIDADE: TStringField
      FieldName = 'END_CIDADE'
      Origin = 'END_CIDADE'
      Size = 100
    end
    object Qry_EnderecosEND_ENDERECO: TStringField
      FieldName = 'END_ENDERECO'
      Origin = 'END_ENDERECO'
      Size = 100
    end
    object Qry_EnderecosEND_BAIRRO: TStringField
      FieldName = 'END_BAIRRO'
      Origin = 'END_BAIRRO'
      Size = 100
    end
    object Qry_EnderecosEND_OBSERVACAO: TStringField
      FieldName = 'END_OBSERVACAO'
      Origin = 'END_OBSERVACAO'
      Size = 100
    end
    object Qry_EnderecosEND_NUMERO: TStringField
      FieldName = 'END_NUMERO'
      Origin = 'END_NUMERO'
    end
  end
  object Qry_Filial: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM filial WHERE fil_codigo = :codigo')
    Left = 152
    Top = 304
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=D:\meus projetos\Delphi\ERPDelphi\ERP_DELPHI_DB.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=Localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 136
    Top = 112
  end
end
