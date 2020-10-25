<#import "base.ftlh" as base>
<@base.pagina logueado=estaLogueado usuario=usuario>
<head>
    <title>${titulo}</title>
</head>
        <div class="container">
            <div class="jumbotron">
                <h3>${tituloCrearCliente}</h3>
                <h6>${mensajeCrearCliente}</h6>
            </div>
            <!-- El endpoint que estará procesando el formulario será enviado por el controlador      -->
            <form enctype="application/x-www-form-urlencoded" method="post" action="/cliente/crear" >
                <div class="form-group">
                    <input type="text" class="form-control" name="nombre" placeholder="${placeholderNombreCliente}" required
                           autofocus />
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="cedula" placeholder="${placeholderCedula}"
                           required />
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="telefono" placeholder="${placerholderTelefono}"
                           required />
                </div>
                <!-- Los botones para la creación del producto -->
                <button type="submit" class="btn btn-primary" >${botonCrear}</button>
            </form>
        </div>
</@base.pagina>