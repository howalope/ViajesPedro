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
        private static string clan { get; set; }
        private static string edad { get; set; }
        //constructor
        public ClsPersonaje(string nom, string hech, string cla, string eda)
        {
            nombre = nom;
            hechizo = hech;
            clan = cla;
            edad = eda;
        }
       
        //Atributos de la clase
        public static string GetNombre() { return nombre; }
        public static string GetHechizo() { return hechizo; }
        public static string GetClan() { return clan; }
        public static string GetEdad() { return edad; }


        //Set and get
        public static void setNombre(string nom)
            {
                nombre = nom;
            }

        public static void setHechizo(string hech)
            {
            hechizo = hech;
            }

        public static void setClan(string cla)
            {
                clan = cla;
            }

        public static void setEdad(string eda)
        {
            edad = eda;
        }


        public static Boolean AgregarPersonaje()
            {
                Boolean existe = false;
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["ViajesPedroConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("insert into Jugador (nombre, clan, hechizo, edad)  " + 
                    "values('" + nombre + "','" + clan + "')" + hechizo + "')" + edad + "')", conexion);
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