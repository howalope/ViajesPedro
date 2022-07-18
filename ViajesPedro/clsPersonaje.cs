using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ViajesPedro
{
    public class ClsPersonaje
    {
        private static string nombre { get; set; }
        private static string hechizo { get; set; }

        //constructor
        public ClsPersonaje(string nom, string hech)
        {
            nombre = nom;
            hechizo = hech;
        }
       
        //Atributos de la clase
        public static string GetNombre() { return nombre; }
        public static string GetHechizo() { return hechizo; }

            

        //Set and get
        public static void setNombre(string nom)
            {
                nombre = nom;
            }

        public static void setHechizo(string hech)
            {
                hechizo = hech;
            }
        public static Boolean AgregarPersonaje()
            {
                Boolean existe = false;
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["ViajesPedroConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("insert into Jugador " + 
                    "values('" + nombre + "','" + hechizo + "')", conexion);
                comando.ExecuteNonQuery();
                existe = true;
            } 
                catch (Exception)
            {
                conexion.Close();
            }
            finally
            {
                conexion.Close();
            }
            return existe;

            }


       /* public static Boolean ConsultarPersonaje()
        {
            Boolean existe = false;
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ViajesPedroConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("Select Nombre, Hechizo from Jugador " +
                    "values('" + nombre + "','" + hechizo + "')", conexion);
                comando.ExecuteNonQuery();
                existe = true;
            }
            catch (Exception)
            {
                conexion.Close();
            }
            finally
            {
                conexion.Close();
            }
            return existe;

        } */


    }
}