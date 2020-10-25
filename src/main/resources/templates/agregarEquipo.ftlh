<#import "base.ftlh" as base>
<@base.pagina logueado=estaLogueado usuario=usuario>
<head>
    <title>${titulo}</title>
</head>
<body onload="filtrarSubFamilias()">
<div class="container">
        <div class="jumbotron">
            <h3>${tituloCrearEquipo}</h3>
            <h6>${mensajeCrearEquipo}</h6>
        </div>
        <form id="agregarCliente" method="POST" action="/equipo/crear">
            <div class="form-group">
                <input type="text" class="form-control" name="nombre" placeholder="${placeholderNombreEquipo}"
                       required/>
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">${placeholderFamiliaEquipo}</label>
                </div>
                <select class="custom-select" name="familia" id="familia" onchange="filtrarSubFamilias()" required>
                    <#list familias as familia>
                        <#if !familia.subFamilia>
                            <option value="${familia.id}">${familia.nombre}</option>
                        </#if>
                    </#list>
                </select>
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">${placeholderSubFamiliaEquipo}</label>
                </div>
                <select class="custom-select" name="subFamilia" id="listaSubFamilias" required>
                    <#--Esto se autogenerara-->
                </select>
            </div>
            <div class="form-group">
                <input type="number" class="form-control" name="existencia" placeholder="${placeholderExistencia}"
                       required/>
            </div>
            <div class="form-group">
                <input type="number" class="form-control" name="costoPorDia" placeholder="${placeholderCostoPorDia}"
                       required/>
            </div>
            <button type="submit" class="btn btn-primary mt-2">${botonCrear}</button>
        </form>
</div>
</body>
<script>
    function filtrarSubFamilias() {
        var listaSubFamilias = [];
        var familiaJS = document.querySelector("#familia").value;

        <#list familias as familia>
            <#if familia.subFamilia>
                var familiaPadreJS = "${familia.familiaPadre.id?string['0']}";

                if (familiaJS == familiaPadreJS) {
                    listaSubFamilias.push({ id: "${familia.id}", nombre: "${familia.nombre}" });
                }
            </#if>
        </#list>

        document.querySelector("#listaSubFamilias").innerHTML = "";
        for (var i = 0; i < listaSubFamilias.length; i++) {
            document.querySelector("#listaSubFamilias").innerHTML += '<option value="' + listaSubFamilias[i].id +'">' + listaSubFamilias[i].nombre +'</option>';
        }

        console.table(listaSubFamilias);
    }
</script>
</@base.pagina>