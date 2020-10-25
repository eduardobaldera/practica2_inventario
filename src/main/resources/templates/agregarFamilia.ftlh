<#import "base.ftlh" as base>
<@base.pagina logueado=estaLogueado usuario=usuario>
<head>
    <title>${titulo}</title>
</head>
<body>
<div class="container">
        <div class="jumbotron">
            <h3>${tituloCrearFamilia}</h3>
            <h6>${mensajeCrearFamilia}</h6>
        </div>
        <form id="agregarCliente" method="POST" action="/familia/crear">
            <div class="form-group">
                <input type="text" class="form-control" name="nombre" placeholder="${placeholderNombreFamilia}" required
                       autofocus />
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="subFamilia" value="true" id="subFamilia" onclick="cambiar()" />
                <label class="form-check-label" for="subFamilia">${placeholderSubFamilia}</label>
            </div>
            <div class="input-group mb-3" id="familiaPadre">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">${placeholderFamiliaPadre}</label>
                </div>
                <select class="custom-select" name="familiaPadre">
                    <#list familias as familia>
                        <#if !familia.subFamilia>
                            <option value="${familia.id}">${familia.nombre}</option>
                        </#if>
                    </#list>
                </select>
            </div>
            <button type="submit" class="btn btn-primary mt-2">${botonCrear}</button>
        </form>
</div>
</body>

<script>
    var familiaPadre = document.querySelector("#familiaPadre");
    familiaPadre.style.visibility = "collapse";

    function cambiar() {
        if (familiaPadre.style.visibility === "collapse") {
            document.querySelector("#familiaPadre").style.visibility = "visible";
        } else {
            document.querySelector("#familiaPadre").style.visibility = "collapse";
        }
    }
</script>
</@base.pagina>