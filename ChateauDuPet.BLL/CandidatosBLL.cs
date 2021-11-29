using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ChateauDuPet.DAL;
using ChateauDuPet.DTO;

namespace ChateauDuPet.BLL
{
   public class CandidatosBLL
    {
         CandidatosDAL objDAL = new CandidatosDAL();

        //Cadastrar Vaga - Insert
        public void CadastrarPRoVaga(CandidatosDTO objCad)
        {
            objDAL.CadastrarVP(objCad);
        }

        //Listar
        public List<CandidatosDTO> ListarCandidatos()
        {
            return objDAL.Listar();
        }
        //Listar ID
        public List<CandidatosDTO> ListarCandidatos(int ID, string IDSeletor)
        {
            return objDAL.ListarID(ID,IDSeletor);
        }


        //Delete
        public void ExcluirCandidatura(int idVaga, int idProfissional)
        {
            objDAL.Excluir(idVaga, idProfissional);
        }

        //Filtrar
        public List<CandidatosDTO> FiltrarVaga()
        {
            return objDAL.Filtrar();
        }  
        //Filtrar ID
        public List<CandidatosDTO> FiltrarID(int idVaga, int idProfissional)
        {
            return objDAL.FiltrarID(idVaga, idProfissional);
        }


        public List<CandidatosDTO> FiltrarIDPro(int idProfissional)
        {
            return objDAL.FiltrarIDPro(idProfissional);

        }
        //Selecionar

        public CandidatosDTO SelecionaProfissional(int idProfissional)
        {
            return objDAL.SelecionarProfissional(idProfissional);
        }
        public CandidatosDTO AutenticandoVeP(int idVaga, int idProfissional)
        {
            return objDAL.AutenticandoVeP(idVaga, idProfissional);
        }
    }
}
