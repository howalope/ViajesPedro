using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViajesPedro
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            ClsPersonaje.setNombre(tnombre.Text);
            ClsPersonaje.setHechizo(thechizo.Text);

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ViajesPedroConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("select Nombre, Hechizo from Jugador " +
                    "where Nombre = '" + ClsPersonaje.GetNombre() + "' and Hechizo = '" + ClsPersonaje.GetHechizo() + "'", conexion);
                SqlDataReader registro = comando.ExecuteReader();   
               if (registro.Read())
                {
                    Response.Redirect("menu.aspx");
                }
               else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification: Jugador no encontrado');", true);
                }
            }
                catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification: Revisar Conexión');", true);
            }
            
            finally
            {
                conexion.Close();
            }
            
        }
    }
}