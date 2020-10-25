<#import "base.ftlh" as base>
<@base.pagina logueado=estaLogueado usuario=usuario>

<head>
    <title>${titulo}</title>
</head>
<body>
<div class="container">
        <div class="jumbotron">
            <h3>${tituloCrearUsuario}</h3>
            <h6>${mensajeCrearUsuario}</h6>
        </div>
        <form id="Crear" method="POST" action="/crear-usuario">
            <div class="form-group">
                <input type="text" class="form-control" name="username" placeholder="${placeholderUsuario}" required
                       autofocus />
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="${placerholderContrasena}"
                       required />
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="esAdmin" value="admin" />
                <label class="form-check-label" for="esAdmin">${esAdmin}</label>
            </div>
            <button type="submit" class="btn btn-primary">${botonCrear}</button>
        </form>
</div>
</body>

</@base.pagina>