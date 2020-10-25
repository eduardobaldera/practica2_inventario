<#import "base.ftlh" as base>
<@base.pagina logueado=estaLogueado usuario=usuario>
<head>
    <title>${titulo}</title>
</head>
<body>
<div class="container">
        <div class="jumbotron">
            <h3>${tituloAlquiler}</h3>
            <h6>${mensajeCrearAlquiler}</h6>
        </div>

        <form id="agregarAlquiler" method="POST" action="/alquiler/crear">

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">${clienteMensaje}</label>
                </div>
                <select class="custom-select" name="cliente">
                    <#list clientes as cliente>
                        <option value="${cliente.id}">${cliente.nombre}</option>
                    </#list>
                </select>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">${placeholderNombreEquipo}</label>
                </div>

                <select multiple class="custom-select" name="equipos" style="width: 60%;">
                    <#list equipos as equipo>
                        <#if equipo.existencia gt 0>
                            <option value="${equipo.id}" class="equipo-option" data-img="/img/${equipo.imagen}" >${equipo.nombre} (${equipo.existencia}) - $${equipo.costoPorDia}/${dia}</option>
                        </#if>
                    </#list>
                </select>

                <div style="margin: auto;">
                    <img src="" alt="Elegir un equipo para ver la imagen" id="img-equipo" class="m-2" width="300px" height="auto">
                </div>

            </div>

            <div class="form-group">
                <label class="input-group-text" for="inputGroupSelect01">${fechaCreacion}</label>
                <input type="date" class="form-control" name="fechaCreacion" placeholder="${fechaCreacion}" required />
            </div>

            <div class="form-group">
                <label class="input-group-text" for="inputGroupSelect01">${fechaEntrega}</label>
                <input type="date" class="form-control" name="fechaEntrega" placeholder="${fechaEntrega}" required />
            </div>

            <button type="submit" class="btn btn-primary mt-2">${botonCrear}</button>
        </form>
</div>
</body>
<script>
    $(document).ready(function() {
        $('.equipo-option').on('click', function() {
           $("#img-equipo").prop("src", $(this).data("img"));
        });
    });
</script>
</@base.pagina>