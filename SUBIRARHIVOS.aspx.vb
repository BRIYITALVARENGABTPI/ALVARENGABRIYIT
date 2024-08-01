Imports System.IO

Partial Class SUBIRARHIVOS
    Inherits System.Web.UI.Page

    Protected Sub btnUpload_Click(sender As Object, e As EventArgs) Handles btnUpload.Click
        If fileUpload.HasFile Then
            Try
                ' Obtener el nombre del archivo
                Dim fileName As String = Path.GetFileName(fileUpload.PostedFile.FileName)

                ' Definir la ruta de destino
                Dim savePath As String = Server.MapPath("~/Uploads/") & fileName

                ' Guardar el archivo en el servidor
                fileUpload.SaveAs(savePath)

                ' Mostrar un mensaje de éxito
                Response.Write("<script>alert('GRACIAS TU ARCHIVO SE SUBIR CORRETAMENTE');</script>")
            Catch ex As Exception
                ' Mostrar un mensaje de error en caso de excepción
                Response.Write("<script>alert('UPS,VUELVE AH INTENTARLO PORFAVOR PAREE QUE HUBO UN ERROR: " & ex.Message & "');</script>")
            End Try
        Else
            ' Mostrar un mensaje si no se ha seleccionado un archivo
            Response.Write("<script>alert('UPS,PAREE QUE NO SELECCIONASTES TU ARCHIVO,SELECCIONALO CORRECTAMENTE');</script>")
        End If
    End Sub
End Class
