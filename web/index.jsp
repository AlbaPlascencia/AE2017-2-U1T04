

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
              crossorigin="anonymous">
        <%
            int n1 = request.getParameter("n1")!=null?Integer.parseInt(request.getParameter("n1")):0;
            int n2 = request.getParameter("n2")!=null?Integer.parseInt(request.getParameter("n2")):0;
            int res = 0;
            
            int oper = request.getParameter("operacion")!=null?Integer.parseInt(request.getParameter("operacion")):-1;
            
            switch (oper) {
                case 1: res= n1+n2; break;
                case 2: res= n1-n2; break;
                case 3: res= n1*n2; break;
                case 4: res= n1/n2; break;
                default: res=0;
                
            }
            
        %>
    </head>
    <body>
        <div class="container">
            <form action="">
                <div class="row justify-content-center">
                    <div class="col-6 text-center">
                        <h1>Calculadora</h1>
                        <hr>
                    </div>

                </div>
                <div class="row justify-content-center">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <div class="input-group">
                                    <span class="input-group-addon" id="basic-addon1">n1</span>
                                    <input type="number" name="n1" class="form-control" placeholder="Número" aria-label="Username" aria-describedby="basic-addon1" value="">
                                </div>
                            </div>
                            <div class="col-2">
                                <select name="operacion" class="form-control select">
                                    <option value="1" selected >+</option>
                                    <option value="2"> - </option>
                                    <option value="3"> * </option>
                                    <option value="4"> / </option>
                                </select>
                            </div>
                            <div class="col-4">
                                <div class="input-group">
                                    <span class="input-group-addon" id="basic-addon1">n2</span>
                                    <input type="number" name="n2" class="form-control" placeholder="Número" aria-label="Username" aria-describedby="basic-addon1">
                                </div>
                            </div>
                            <div class="col-2">
                                <h2>
                                    
                                    <span class="badge badge-success"><%=res%></span>
                                  
                                </h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-6">
                        <div class="row justify-content-end">
                            <button class="btn btn-secondary">Limpiar</button>
                            &nbsp
                            <button type="submit" class="btn btn-primary">Calcular</button>
                        </div>
                    </div>
                    <!-- <button class="btn btn-warning justify-content-end">Limpiar</button> -->

                </div>
            </form>

        </div>
    </body>
</html>