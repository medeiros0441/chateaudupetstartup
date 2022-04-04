using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChateauDuPet.DAL
{
   public class Conexao
    {
           //variaveis
        protected SqlConnection conn;
        protected SqlCommand cmd;
        protected SqlDataReader dr;

        //metodos
        protected void Conectar()
        { 
            try
            { /*(localdb)\MSSQLLocalDB;Initial Catalog=ChateauDuPetASP; Integrated Security=True*/
                conn = new SqlConnection(@"Server=tcp:samuelmedeiros.database.windows.net,1433;Initial Catalog=chateaudupet;Persist Security Info=False;User ID=samuelBD;Password=S@m044119;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                conn.Open();
                                
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }

        protected void Desconectar()
        {
            try
            {
                conn.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}

