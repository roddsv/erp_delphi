object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 750
  Width = 1000
  PixelsPerInch = 120
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
    Left = 40
    Top = 48
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 128
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 32
    Top = 208
  end
  object Qry_Filial: TFDQuery
    Connection = FDConn
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
    object Qry_FilialFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      Required = True
    end
    object Qry_FilialFIL_RAZAO: TStringField
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Size = 100
    end
    object Qry_FilialFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 100
    end
    object Qry_FilialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 50
    end
    object Qry_FilialFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 50
    end
  end
end
