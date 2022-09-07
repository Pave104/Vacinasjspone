<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.Duration" %>
<%@ page import="java.util.Date" %>
<%@ page import="org.eclipse.persistence.jpa.jpql.parser.DateTime" %>
<%@ page import="java.time.Month" %>
<%@ page import="java.time.chrono.ChronoLocalDate" %>
<%@ page import="java.time.temporal.ChronoUnit" %><%--
  Created by IntelliJ IDEA.
  User: pave1
  Date: 30/08/2022
  Time: 05:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Datas</title>
    <link rel="stylesheet" type="text/css" href="estilo.css">


</head>
<body>
<h1>Ben vindo a Sua Calculadora de Vacinas!</h1>

    <h2>Falta só um pouco. Clique em enviar Para ver o resultado</h2>
<%


     int ano= LocalDate.now().getYear();
      int mes=LocalDate.now().getMonthValue();
      int dia=LocalDate.now().getDayOfMonth();
      LocalDate hoje=LocalDate.of(ano,mes,dia);
       LocalDate hoje1=LocalDate.now();
     String cadsusa=request.getParameter("cadus");
     String nomeForm=request.getParameter("nome");
     String nomeMae=request.getParameter("nomemae");
    String dataform=request.getParameter("data");
    DateTimeFormatter form=DateTimeFormatter.ofPattern("dd/MM/yyyy");
    LocalDate datas=LocalDate.parse(dataform,form);
    long idade=ChronoUnit.MONTHS.between(datas,hoje1);
    long anos=ChronoUnit.YEARS.between(datas,hoje);
     String m=("Idade em meses completos:"+"" + idade + " - " + "Anos" +" " +"completos :" +""+ anos);

    out.print(idade);

    String st=datas.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
     String datanasc=datas.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
    LocalDate novadata=datas.plusMonths(2);
    String datavacina=novadata.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
    LocalDate novadata1=novadata.plusMonths(2);
    String datavacina1=novadata1.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
    LocalDate novadata2 =novadata1.plusMonths(2);
    String datavacina2=novadata2.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
    LocalDate novadata3=datas.plusMonths(3);
     String menigo =novadata3.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
      LocalDate novadata4=datas.plusMonths(5);
      String menigoreforco =novadata4.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
        LocalDate novadata5=datas.plusMonths(9);
        String febbreAmarela=novadata5.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
       LocalDate novadata6=datas.plusMonths(12);
       String src=novadata6.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
        LocalDate novadata7=datas.plusMonths(15);
        String srcv=novadata7.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
         LocalDate novadata8=datas.plusYears(4);
       String dtp4= novadata8.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
        LocalDate novadata9 =datas.plusYears(9);
        String papilom=novadata9.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
        LocalDate novadata10 =datas.plusYears(11);
        String papi=novadata10.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));


%>

<form action="index.jsp" method="post">
    <input type="text" name="vacina"value="<%=datavacina%>"><br>
    <input type="text"name="nome" value="<%=nomeForm%>"><br>
    <input type="text"name="nomemae" value="<%=nomeMae%>"><br>
    <input type="text"name="cadsus" value="<%=cadsusa%>"><br>
    <input type="text" name="vacina1"value="<%=datavacina1%>"><br>
    <input type="text" name="vacina2"value="<%=datavacina2%>"><br>
    <input type="text" name="vac"value="<%=datanasc%>"><br>
    <input type="text" name="menigo1" value="<%=menigo%>"><br>
    <input type="text" name="menigoreforco" value="<%=menigoreforco%>"><br>
     <input type="text" name="meses"value="<%=m%>"><br>
    <input type="text" name="febre"value="<%=febbreAmarela%>"><br>
     <input type="text" name="src" value="<%=src%>"><br>
     <input type="text" name="dtp4" value="<%=dtp4%>"><br>
    <input type="text" name="srcv" value="<%=srcv%>"><br>
     <input type="text" name="papim"value="<%=papilom%>"><br>
      <input type="text" name="papi"value="<%=papi%>">

    <input  type="submit" name="Enviar">
 </form>


<h2>Copyright@PauloVeloso</h2>
</body>
</html>
