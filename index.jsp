
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Vacinas1 </title>
     <link rel="stylesheet" type="text/css" href="estilo.css">
     <meta charset="UTF-8">
</head>
<body>

   <%
      String nome;
       nome=request.getParameter("nome");
       String nasc=request.getParameter("vac");
   %>

     <div class="cabecalho">

        <img src="imagens/vac.jpg" width="100%" height="200px" >
     </div>


     <form  method="get"action="Processa.jsp">
         <fieldset id="campo" >
             <h1 id="texto">  Calendario de Vacinas<br> Nome da Criança: <%=request.getParameter("nome")%><br>
                 Data Nascimento:<%=request.getParameter("vac")%> <br>
                 <%=request.getParameter("meses")%>
             </h1>


             <legend id="legenda"> Dados da Criança</legend>
               <div>
                   <label for="nome">Nome:</label>
                     <input type="text" name="nome" id="nome" size="50" value="<%=request.getParameter("nome")%>">
               </div>

             <div>
                 <label for="mae">Mãe:</label>
                 <input type="text" name="nomemae" id="mae" size="50" value="<%=request.getParameter("nomemae")%>">

             </div>
              <div>
                  <label for="cadsus">Cartão SUS:</label>
                  <input type="text" name="cadus" id="cadsus" size="15" value="<%=request.getParameter("cadsus")%>">
              </div>

               <div>
                   <label for="data" >Data de Nscimento (formato dd/mm/aaaa):</LABEL>
                   <input type ="text" id="data" name ="data" size="10" pattern="^\d{2}/\d{2}/\d{4}$"   value="<%=request.getParameter("vac")%>">

               </div>
                  <div><input type="submit" value ="Enviar"></div>


         </fieldset>




     </form>


    <div class="container1">
        <div id="vac">
          <h2> Ao <br> Nascer</h2>
           <h2></h2>
        </div>
        <div class="vac1">
            <h2> BCG</h2><h3>(Dose única)</h3>
            <h2><%=request.getParameter("vac")%></h2>

        </div>

        <div class="vac1">

            <h2> Hepatite B</h2><h3>(1ªdose)</h3>
            <h2> <%=request.getParameter("vac")%></h2>
        </div>

    </div>


        <div class="container1">
            <div id="vac">
                <h2> 2 <br> Meses</h2>

            </div>
            <div class="vac1">
                <h2> Penta(1ª dose)</h2><h3>(DTP+Hib+HB)</h3>
                <h2> <%=request.getParameter("vacina")%></h2>
             </div>

   <div class="vac1">
       <h2> Pólio</h2><h3>(VIP 1ªdose)</h3>
       <h2> <%=request.getParameter("vacina")%></h2>
   </div>


   <div class="vac1">
       <h2> Rotavírus</h2><h3>(VRH 1ªdose)</h3>
       <h2> <%=request.getParameter("vacina")%></h2>
   </div>

   <div class="vac1">
       <h2> Pneumocócica</h2><h3>(PCV10- 1ª dose)</h3>
       <h2> <%=request.getParameter("vacina")%></h2>
   </div>

   </div>


   <div class="container1">
       <div id="vac">
           <h2> 3 <br> Meses </h2>
       </div>
       <div class="vac1">
           <h2> Minigocócica C</h2><h2>(1ª Dose</h2>
           <h2><%=request.getParameter("menigo1")%></h2>

       </div>
   </div>






       <div class ="container1">
       <div id="vac">
           <h2> 4 <br> Meses</h2>
       </div>
       <div class="vac1" >
           <h2> Penta(2ª dose)</h2><h3>(DTP+Hib+HB)</h3>
           <h2> <%=request.getParameter("vacina1")%></h2>

       </div>

           <div class="vac1" >
               <h2> Pólio</h2><h3>(VIP 2ªdose)</h3>
               <h2> <%=request.getParameter("vacina1")%></h2>
           </div>


           <div class="vac1">
               <h2> Rotavírus</h2><h3>(VRH 2ªdose)</h3>
               <h2> <%=request.getParameter("vacina1")%></h2>
           </div>

           <div class="vac1">
               <h2> Pneumocócica</h2><h3>(PCV 10 2ª dose)</h3>
               <h2> <%=request.getParameter("vacina1")%></h2>
           </div>

       </div>



   <div class ="container1">
       <div id="vac">
           <h2> 5<br> Meses</h2>
           </h2>
       </div>
       <div class="vac1">
           <h2> Menigococica c</h2><h3>(2ª dose)</h3>
           <h2> <%=request.getParameter("menigoreforco")%></h2>
       </div>

   </div>




   <div class ="container1">
   <div id="vac">
       <h2> 6 <br> Meses</h2>
       </h2>
   </div>
       <div class="vac1">
           <h2> Penta (3ª dose)</h2><h3>(DTP+Hib+HB)</h3>
           <h2> <%=request.getParameter("vacina2")%></h2>
       </div>

   </div>

   <div class ="container1">
       <div id="vac">
           <h2> 9 <br> Meses</h2>
           </h2>
       </div>
       <div class="vac1">
           <h2> Febre Amarela</h2><h3>(1ª Dose)</h3>
           <h2> <%=request.getParameter("febre")%></h2>
       </div>

   </div>

   <div class ="container1">
       <div id="vac">
           <h2> 12 <br> Meses</h2>
           </h2>
       </div>
       <div class="vac1">
           <h2>SCR</h2><h3>(1ª Dose como SRC)</h3>
           <h2> <%=request.getParameter("src")%></h2>
       </div>

       <div class="vac1">
           <h2>Menigococica C</h2><h3>(Reforço)</h3>
           <h2> <%=request.getParameter("src")%></h2>
       </div>
       <div class="vac1">
           <h2>Pneumocócica </h2><h3>( PCV10-Reforço)</h3>
           <h2> <%=request.getParameter("src")%></h2>
       </div>

   </div>

   <div class ="container1">
       <div id="vac">
           <h2> 15 <br> Meses</h2>
           </h2>
       </div>
       <div class="vac1">
           <h2>SCRV </h2><h3>(2ª SCR e promeira Varicela)</h3>
           <h2> <%=request.getParameter("srcv")%></h2>
       </div>


       <div class="vac1">
           <h2>Hepatite A</h2><h3>(1 dose)</h3>
           <h2> <%=request.getParameter("srcv")%></h2>
       </div>
       <div class="vac1">
           <h2>DTP </h2><h3>1ºReforço (2º refoço aos 4 anos)</h3>
           <h2> <%=request.getParameter("srcv")%></h2>
       </div>

   </div>
   <div class ="container1">
       <div id="vac">
           <h2> 4 <br> Anos</h2>
           </h2>
       </div>
       <div class="vac1">
           <h2>DTP</h2><h3>(2º Refoço)</h3>
           <h2> <%=request.getParameter("dtp4")%></h2>
       </div>

          <div class="vac1">
           <h2> Febre Amarela</h2><h3>(Reforço)</h3>
           <h2> <%=request.getParameter("dtp4")%></h2>

            </div>
   </div>

          <div class ="container1">
              <div id="vac">
                  <h2> 9 <br> Anos</h2>
                  </h2>
              </div>
              <div class="vac1">
                  <h2>HPV</h2><h3>(Meninas de 9 a 14 anos)</h3>
            <h2> <%=request.getParameter("papim")%></h2>
              </div>
          </div>

                  <div class ="container1">
                      <div id="vac">
                          <h2>11 <br> Anos</h2>
                          </h2>
                      </div>
                      <div class="vac1">
                          <h2>HPV</h2><h3>(Meninos de 11 a 14 anos)</h3>
                    <h2> <%=request.getParameter("papi")%></h2>
             </div>
           </div>

</body>
</html>