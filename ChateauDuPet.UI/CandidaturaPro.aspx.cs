using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.BLL;
using ChateauDuPet.DTO;

namespace ChateauDuPet.UI
{
    public partial class CandidaturaPro : System.Web.UI.Page
    {
        ProfissionalBLL objProPefil = new ProfissionalBLL();

        ProfissionalDTO profissionalDTO = new ProfissionalDTO();

        int idProfissional = Sessao.IdProfissional;

        protected void Page_Load(object sender, EventArgs e)
        {
            ///int idProfissional = Convert.ToInt32(Request.QueryString["id"]);
 
            if (idProfissional == 0)
            {
                Response.Redirect("~/Login.aspx");

            }
            if (!IsPostBack)
            {

                RepeterVaga();
            }
        }

        public void RepeterVaga() 
        { 
            CandidatosDTO objCandidatoDTO = new CandidatosDTO();
            CandidatosBLL objCandidatoBLL = new CandidatosBLL();

            objCandidatoDTO = objCandidatoBLL.SelecionaProfissional(idProfissional);
           // objCandidatoDTO.IdVaga = int idvaga;

            rptVagaTable.DataSource = objCandidatoBLL.FiltrarIDPro(idProfissional);
            rptVagaTable.DataBind();
        }
    }
}