﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.BLL;
using ChateauDuPet.DTO;



namespace ChateauDuPet.UI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Sessao.EmailUser != null)
            {
                VerificandoUSer();
            } 
        }
        public void VerificandoUSer () 
        {
            if (Sessao.IdProfissional != 0)
            {

                Response.Redirect("MainPro.aspx");
            }

            if (Sessao.IdEmpresa != 0)
            {
                Response.Redirect("MainEmpresa.aspx");
            }

            if (Sessao.IdAdministrativo != 0)
            {
                Response.Redirect("MainAdm.aspx");
            }
        }

        protected void BtnEntrar_Click(object sender, EventArgs e)
        {

                if (DDLList.SelectedItem.ToString() == "Profissional")
                {
                    string objEmailP = txtEmail.Text.Trim();
                    string objSenhaP = txtSenha.Text.Trim();
                    //instanciado obj DTO
                    ProfissionalDTO objModelo = new ProfissionalDTO();
                    ProfissionalBLL objValida = new ProfissionalBLL();

                    objModelo = objValida.AutenticarProfissional(objEmailP, objSenhaP);
                    if (objModelo != null)
                    {

                        Sessao.IdProfissional = objModelo.IdProfissional;
                        Sessao.EmailUser = objModelo.Email;


                        Response.Redirect("MainPro.aspx");

                    }

                }
                if (DDLList.SelectedItem.ToString() == "Empresa")
                {
                    string objEmailE = txtEmail.Text;
                    string objSenhaE = txtSenha.Text;
                    EmpresaDTO objModeloExp = new EmpresaDTO();
                    EmpresaBLL objValidaExp = new EmpresaBLL();

                    objModeloExp = objValidaExp.AutenticarEmpresa(objEmailE, objSenhaE);
                    if (objModeloExp != null)
                    {

                        Sessao.IdEmpresa = objModeloExp.IdEmpresa;
                        Sessao.EmailUser = objModeloExp.Email;


                        Response.Redirect("MainEmpresa.aspx");

                    }
                }
                if (DDLList.SelectedItem.ToString() == "Selecione uma opção")
                {
                    string objEmailA = txtEmail.Text;
                    string objSenhaA = txtSenha.Text;
                    AdministrativoDTO objModeloExp = new AdministrativoDTO();
                    AdministrativoBLL objValidaExp = new AdministrativoBLL();

                    objModeloExp = objValidaExp.AutenticarAdministrativo(objEmailA, objSenhaA);
                    if (objModeloExp != null)
                    {
                        Sessao.IdAdministrativo = objModeloExp.IdAdministrativo;
                        Sessao.EmailUser = objModeloExp.EmailAdm;
                        Response.Redirect("MainAdm.aspx");


                    }
                }
                else
                {

                    Limpar();
                    lblMensagem.Text = "Usuario inválido!!";
                }
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {

        }
        public void Limpar()
            {
                txtEmail.Text = txtSenha.Text = string.Empty;
                txtEmail.Focus();
            }
         
        
    } 
}