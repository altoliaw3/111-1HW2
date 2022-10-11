using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _111_1HW2
{
    public partial class Bomb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int[] ia_MIndex = new int[10] { 0, 7, 13, 28, 44, 62, 74, 75, 87, 90 };
            char[,] ca_Map = new char[10, 10];

            for (int i_Row = 0; i_Row < 10; i_Row++)
            {
                for (int i_Col = 0; i_Col < 10; i_Col++)
                {
                    ca_Map[i_Row, i_Col] = '0';
                }
            }

            for (int i_ct = 0; i_ct < 10; i_ct++)
            {
                int i_Row = ia_MIndex[i_ct] / 10;
                int i_Col = ia_MIndex[i_ct] % 10;

                if ((i_Row - 1) >= 0 && (i_Col - 1) >= 0)
                {
                    int i_Tmp = Convert.ToInt32(ca_Map[i_Row - 1, i_Col - 1]);
                    i_Tmp++;
                    ca_Map[i_Row - 1, i_Col - 1] = Convert.ToChar(i_Tmp);
                }
                if ((i_Row) >= 0 && (i_Col - 1) >= 0)
                {
                    int i_Tmp = Convert.ToInt32(ca_Map[i_Row, i_Col - 1]);
                    i_Tmp++;
                    ca_Map[i_Row, i_Col - 1] = Convert.ToChar(i_Tmp);
                }
                if ((i_Row - 1) >= 0 && (i_Col) >= 0)
                {
                    int i_Tmp = Convert.ToInt32(ca_Map[i_Row - 1, i_Col]);
                    i_Tmp++;
                    ca_Map[i_Row - 1, i_Col] = Convert.ToChar(i_Tmp);
                }
                if ((i_Row + 1) < 10 && (i_Col + 1) < 10)
                {
                    int i_Tmp = Convert.ToInt32(ca_Map[i_Row + 1, i_Col + 1]);
                    i_Tmp++;
                    ca_Map[i_Row + 1, i_Col + 1] = Convert.ToChar(i_Tmp);
                }
                if ((i_Row + 1) < 10 && (i_Col) >= 0)
                {
                    int i_Tmp = Convert.ToInt32(ca_Map[i_Row + 1, i_Col]);
                    i_Tmp++;
                    ca_Map[i_Row + 1, i_Col] = Convert.ToChar(i_Tmp);
                }
                if ((i_Row) >= 0 && (i_Col + 1) < 10)
                {
                    int i_Tmp = Convert.ToInt32(ca_Map[i_Row, i_Col + 1]);
                    i_Tmp++;
                    ca_Map[i_Row, i_Col + 1] = Convert.ToChar(i_Tmp);
                }
                if ((i_Row + 1) >= 0 && (i_Col - 1) >= 0)
                {
                    int i_Tmp = Convert.ToInt32(ca_Map[i_Row + 1, i_Col - 1]);
                    i_Tmp++;
                    ca_Map[i_Row + 1, i_Col - 1] = Convert.ToChar(i_Tmp);
                }
                if ((i_Row - 1) >= 0 && (i_Col + 1) < 10)
                {
                    int i_Tmp = Convert.ToInt32(ca_Map[i_Row - 1, i_Col + 1]);
                    i_Tmp++;
                    ca_Map[i_Row - 1, i_Col + 1] = Convert.ToChar(i_Tmp);
                }
            }
            for (int i_ct = 0; i_ct < 10; i_ct++)
            {
                int i_Row = ia_MIndex[i_ct] / 10;
                int i_Col = ia_MIndex[i_ct] % 10;
                ca_Map[i_Row, i_Col] = '*';
            }
            for (int i_Row = 0; i_Row < 10; i_Row++)
            {
                for (int i_Col = 0; i_Col < 10; i_Col++)
                {
                    Response.Write(ca_Map[i_Row, i_Col]);
                }
                Response.Write("<br>");
            }
        }
    }
}
