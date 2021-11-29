<%@ Page Title="" Language="C#" MasterPageFile="~/Defult.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ChateauDuPet.UI.Defult1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container-xxl" style="max-height: 100%; margin: auto;">

        <div class="row featurett">
            <div class="col-md-7">
                <h2 class="featurette-heading">Mais, Que um Pet-shop  </h2>
                <p class=" text-muted"> 
                    O Chateau está com novos objetivos, um dos quais é ajudar profissionais a estabelecerem contato 
                    com empresas do mercado Pet, São profissionais de todo o brasil 
                </p>
                <br />
                <br />
                <a href="Sobre.aspx" type="button" class="btn btn-outline-danger">Nossa Missão</a>

                <br />
                <br />
            </div>
            <div class="col-md-5">
                <img src="Imagens/close-up-portrait-of-pleased-girl-with-short-brown-hair-embracing-funny-beagle-dog-with-eyes-closed.jpg" class="  d-none d-md-block  bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" style="float: right; margin: 10px 0 0 10px; border-radius:10px 10px;" width="500" height="500" />
            </div>
        </div>



        <!-- Faixa azul -->


    </div>
    <div class="Faixa-Azul   " style="  max-height: 100%; color: whitesmoke;">
        <div class="  container-xxl   " style="margin: auto; max-height: 100%; color: whitesmoke;">
            <br />
            
            <div class="row">
                <div class="col-md-6">
                    <div class="row g-0  rounded overflow-hidden flex-md-row mb-4  text-light   h-md-250 position-relative">
                        <div class="col p-4 d-flex flex-column position-static">
                            <h3 class="mb-0">Objetivo</h3>
                            <br />
                            <p class="card-text mb-auto"> Nosso objetivo é simplificar, por isso desenvolvemos um sistema para ajudar estudantes e profissionais da indústria pet ao compartilharem suas experiências e certificados nos disponibilizamos  para empresas do ramo.<a href="Cadastro.aspx"  style="color:#1EC491;" >Cadastro completo. </a> </p>
                        </div>
                        <div class="col-auto d-none d-lg-block">
                            <asp:Image runat="server" ImageUrl="~/Imagens/undraw_Goals_re_lu76.svg" class="bd-placeholder-img" Width="200" Height="250" />

                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row g-0   rounded overflow-hidden flex-md-row mb-4   h-md-250 position-relative">
                        <div class="col p-4 d-flex flex-column position-static text-light">
                            <h3 class="mb-0">Conexões</h3>
                            <br />

                            <p class="mb-auto">
                                Além de anunciar vagas de emprego, a empresa também pode visualizar projetos, ações. Ao pagar o valor mínimo, você pode consultar os dados para contato.</p>
                        </div>
                        <div class="col-auto d-none d-lg-block">
                            <asp:Image runat="server" ImageUrl="~/Imagens/undraw_real_time_collaboration_c62i.svg" class="bd-placeholder-img" Width="200" Height="250" />

                        </div>
                    </div>
                </div>
            </div>
                        <label class="menu" ><a class=" text-light" style="font-size:25pt;"># Empresas</a></label>  
            <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-8 ">
                <h2 class="featurette-heading">Analise de perfil</h2>
              <span class="">Pesquise com rapidez e segurança os melhores profissionais no mercado pet. Tenha acesso a informações relevantes, filtre por perfil, tenha acesso a experiência, certificados e também <a style="color:#1EC491;" href="Serviços.aspx">Consultar dados para contato</a></span>
            </div>
            <div class="col-md-4">
                <img src="Imagens/undraw_Swipe_profiles_re_tvqm (1).svg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="250" height="250" />

            </div>
            
        </div>
       <br />
       <br />
       <br />

        <div class="row featurette">
            <div class="col-md-8">
                <h2 class="featurette-heading">Anuncie vagas</h2>
               <span class="">Reduza e otimize seu tempo na hora de realizar processo de recrutamento e análise dados,
                   Compartilhe vagas  que estão disponíveis e logo você terá acesso  aos dados dos profissionais que se candidatarão.<a style="color:#1EC491;" href="Serviços.aspx">Saiba mais</a></span>
            </div>
            <div class="col-md-4"> 
                <img src="Imagens/undraw_Push_notifications_re_t84m (1).svg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="250" height="250" />

            </div>
        </div>
       <br />
       <br />
       <br />
        <div class="row featurette ">
            <div class="col-md-8">
                <h2 class="featurette-heading">Informações relevantes</h2>
               <span class=" ">São milhares de profissionais no mercado pet. Veterinários, banhistas, atendentes, cuidadores, tosadores, cirurgiões que compartilham as suas experiências,Certificados, você pode contratá-los como freelance, CLT, PJ para isso faça  <a class="link-danger" href="Cadastro.aspx">Cadastre-se como Recrutador.</a></span>
            </div>
            <div class="col-md-4">
                <img src="Imagens/undraw_ideas_s70l.svg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="250" height="250" />

            </div>
        </div> 
                <br />
            
 
 
    </div>
             
        </div>
         
     <br />
        <div class="container-xxl" style="max-height: 100%; margin: auto;"> 
                        <label class="menu" >  <a class="text-break" style="font-size:25pt;"># Profissionais</a></label> 
            <hr class="featurette-divider">
            <div class="row featurette">
                <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading">Currículo</h2>
                  <span class="text-muted">A medida que o mercado se expande, manter o currículo atualizado é fundamental,
                      pois diversas empresas que agregam no mercado pet, petshops, creches e hotéis, estaram visualizando você.
                      Solicite a autenticação do seu usuário e se destaque com seus projetos.</span>
                </div>
                <div class="col-md-5 order-md-1">
                    <asp:Image runat="server" ImageUrl="~/Imagens/undraw_online_cv_qy9w.svg" class="bd-placeholder-img" Width="250" Height="250" />


                </div>
            </div>

            <div class="row featurette">
                <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading">Perfil</h2>
                    <span class="text-muted"> Crie seu Perfil de formas simples, são várias clinicas e hospitais veterinários que estará acompanhando a plataforma. Você não vai ficar de fora, né? <a class=" text-danger" href="Cadastro.aspx">CADASTRE-SE</a> </span>
                </div>
                <div class="col-md-5 order-md-1">
                    <asp:Image runat="server" ImageUrl="~/Imagens/undraw_Co_workers_re_1i6i.svg" class="bd-placeholder-img" Width="250" Height="250" />
                </div>
            </div>


        </div>
        <br />   


</asp:Content>
