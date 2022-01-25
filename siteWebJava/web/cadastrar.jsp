<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String codigo, nome, endereco;
            double renda;
            Connection con;
            PreparedStatement st;
            
            //Recebe os dados vidos do formulário cadcli.html
            codigo = request.getParameter("codigo");
            nome = request.getParameter("nome");
            endereco = request.getParameter("endereco");
            renda = Double.parseDouble(request.getParameter("renda"));
            //Conecta com o banco de dados
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bancoclientes","root","teruel");
            //Excutando o comando INSERT que insere os dados o Bannco de dados
            st = con.prepareStatement("INSERT INTO CLIENTE VALUES (?,?,?,?)");
            st.setString(1, codigo);
            st.setString(2, nome);
            st.setString(3, endereco);
            st.setDouble(4, renda);
            st.executeUpdate();

        %>    
    </body>
</html>
