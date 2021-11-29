<%@ Page Title="" Language="C#" MasterPageFile="~/Defult.Master" AutoEventWireup="true" CodeBehind="Serviços.aspx.cs" Inherits="ChateauDuPet.UI.Serviços" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-xxl    " style="margin: auto; max-height: 100%;">
        
  <div class="row g-2 ms-auto col-md-10 p-3 justify-content-md-center   ">
    <div class="col-md-5  me-sm-auto ">
      <div class="   "> 

          <asp:Image runat="server" ID="Image2" ImageUrl="imagens/undraw_mobile_login_ikmv.svg"  class="" Width="200" Height="200"/>
                <h2>Profissionais</h2>
        <br />
                <ul class=" list-unstyled ">
                    <li class=" list-inline">
                        <p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                            </svg>
                            Curriculum vitae
                        </p>

                    </li>
                    <li>
                        <p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                            </svg>
                            Inscrição em vagas
                        </p>

                    </li>
                    <li>
                        <p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                            </svg>
                            Relatorio de incrições
                        </p>

                    </li>

                </ul>
          <br />
                <a href="Cadastro.aspx" type="button"  class="btn   btn-outline-danger">Plano Grátuito</a></div>
</div>
  
    <div class="col-md-5  me-sm-auto ">
      <div class=" ">    
          <asp:Image runat="server" ID="Image3" ImageUrl="~/Imagens/undraw_People_search_re_5rre.svg" class="bd-placeholder-img   bi bi-coin" Width="200" Height="200"></asp:Image>

                <h2>Empresas</h2>
        <br />

                <ul class=" list-unstyled ">
                    <li class=" list-inline">
                        <p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                            </svg>
                            Publicação de  Vagas
                        </p>

                    </li>
                    <li>
                        <p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                            </svg>
                           Relatorio de candidatos
                        </p>

                    </li>
                    <li>
                        <p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                            </svg>
                            Consultar dados para contato
                        </p>

                    </li>
                </ul><br />
          <a href="Cadastro.aspx" class="btn  btn-outline-danger">Plano Grátuito</a>
</div>
    </div> 
  </div>
          
            <!-- /.col-lg-4 --> 
        <br />
        
        
         <label class="menu"><a class=" " style="font-size: 15pt">Deseja saber mais ?</a></label>

            <hr class="   featurette-divider " />
        <div class="row   gx-5   "> 
            
            <div class="col-sm-6 col-md-5 col-xl-3  me-sm-auto"> 
         <img src="Imagens/undraw_Security_on_re_e491 (1).svg" width="280" height="150" />
                <br/>
            <h3 class="h5 mb-1">Privacidade </h3>
       
        <p class="text-muted">Pensando na privacidade do profissional, dados de contato do profissional será  disponibilizado após o cadastro na vaga.</p>
      </div>
    
  
      <div class="col-sm-6  col-md-4 col-xl-3  me-sm-auto ">
      <img src="Imagens/undraw_Wall_post_re_y78d.svg"  width="280" height="150" />
                <br/>
          <h3 class="h5 mb-1">Perfil </h3>
       
        <p class="text-muted">Personalize seu perfil do seu jeito, empresas estará sempre visualizando seu perfil. Mantenha sempre o atualizado para obter o retorno mais breve possivel.</p>
      </div>
    
  <br />
      <div class="col-sm-6  col-md-5 col-xl-3   me-sm-auto"> 
         <img src="Imagens/undraw_Connected_re_lmq2.svg"  width="280" height="150" />
                <br/>
            <h3 class="h5 mb-1">Comunidade</h3>
   
        <p class="text-muted">Junte-se, são várias empresas que compartilham vagas para profissionais e estudantes, compartilhe suas experiencias e certificados.</p>
      </div>
    
  
      <div class="col-sm-6 col-md-4 col-xl-3  me-sm-auto  ">
         <img src="Imagens/undraw_Personal_email_re_4lx7.svg"  width="280" height="150" />
                <br/>

   <h3 class="h5 mb-1">Aplicativos</h3>
   
        <p class="text-muted">para empresa temos um APP/Desktop, usando ele  é possivel compartilhar vagas,e realizar seu cadastro, pensando no profissional desenvolvemos o nosso  APP/Mobile com ele é possivel Editar curriculo, Cetificados,Experiência. e também Visualizar  vagas </p>
     
      </div>
    </div> 
   
   </div>
</asp:Content>
