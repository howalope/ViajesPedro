﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViajesPedro
{
    public partial class CatalogoJugador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            sqlJugadores.Insert();
        }

        protected void BBorrar_Click(object sender, EventArgs e)
        {
            sqlJugadores.Delete();
        }

        protected void BModificar_Click(object sender, EventArgs e)
        {
            sqlJugadores.Update();
        }

    }
}