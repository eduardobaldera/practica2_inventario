<#import "base.ftlh" as base>
<@base.pagina logueado=estaLogueado usuario=usuario>
<head>
    <title>${titulo}</title>
</head>
<body>
<div class="container">
        <div class="jumbotron">
            <h3>${tituloModificarCliente}</h3>
            <h6>${mensajeModificarCliente}</h6>
        </div>
        <form id="modificarCliente" method="POST" action="/cliente/modificar/${cliente.id}">
            <div class="form-group">
                <input type="text" class="form-control" name="id" value="${cliente.id}" required readonly/>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="nombre" value="${cliente.nombre}" required/>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="cedula" value="${cliente.cedula}""
                       required />
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="telefono" value="${cliente.telefono}"
                       required />
            </div>
            <button type="submit" class="btn btn-primary mt-2">${acciones2}</button>
        </form>
</div>
</body>
</@base.pagina>