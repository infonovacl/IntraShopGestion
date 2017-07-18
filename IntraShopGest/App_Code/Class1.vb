Imports Microsoft.VisualBasic
Public Class Globales
    Public Shared connSTR As String = ConfigurationManager.ConnectionStrings("ConnectionString_FamilyShop").ConnectionString
    Public Shared conn As System.Data.Odbc.OdbcConnection = New System.Data.Odbc.OdbcConnection(connSTR)
End Class
