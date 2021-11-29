using ChateauDuPet.DAL;
using ChateauDuPet.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChateauDuPet.BLL
{
   public class ExperienciaBLL
    {
       ExperienciaDAL objDAL = new ExperienciaDAL();

        //Cadastrar Experiencia - Insert
        public void CadastrarExperiencia(ExperienciaDTO objCad)
        {
            objDAL.Cadastrar(objCad);
        }

        //Listar
        public List<ExperienciaDTO> ListaExperiencia()
        {
            return objDAL.Listar();
        }

        //Delete
        public void ExcluirExperiencia(int idProfissional, int objExclui)
        {
            objDAL.Excluir(idProfissional,objExclui);
        }

        //Editar
        public void EditarExperiencia(ExperienciaDTO objEdita)
        {
            objDAL.Editar(objEdita);
        }


        public ExperienciaDTO SelecionaExperiencia(int idProfissional)
        {
            return objDAL.SelecionaExp(idProfissional);
        }
        public ExperienciaDTO SelecionaExperienciaID(int idProfissional, int idExperiencia)
        {
            return objDAL.SelecionaExpID(idProfissional, idExperiencia);
        }
        public List<ExperienciaDTO> FiltroExpID(int idProfissional)
        {
            return objDAL.FiltroExpID(idProfissional);
        }
        public List<ExperienciaDTO> FiltroC()
        {
            return objDAL.FiltroExp();
        }
    }
}
