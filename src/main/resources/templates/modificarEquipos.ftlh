<#import "base.ftlh" as base>
<@base.pagina logueado=estaLogueado usuario=usuario>
<head>
    <title>${titulo}</title>
</head>
<body>
<div class="container">
        <div class="jumbotron">
            <h3>${tituloCrearEquipo}</h3>
            <h6>${mensajeCrearEquipo}</h6>
        </div>
        <form id="agregarCliente" method="POST" action="/equipo/modificar/${equipo.id}">
            <div class="form-group">
                <input type="text" class="form-control" name="id" value="${equipo.id}" required readonly/>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="nombre" value="${equipo.nombre}" required/>
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">${placeholderFamiliaEquipo}</label>
                </div>
                <select class="custom-select" name="familia">
                    <#list familias as familia>
                        <#if equipo.familia.id == familia.id>
                             <option value="${equipo.familia.id}" >${equipo.familia.nombre}</option>
                        <#else>
                            <option value="${familia.id}">${familia.nombre}</option>
                        </#if>
                    </#list>
                </select>
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">${placeholderSubFamiliaEquipo}</label>
                </div>
                <select class="custom-select" name="subFamilia">
                    <#list familias as familia>
                        <#if familia.subFamilia>
                            <#if equipo.subFamilia.id == familia.id>
                                <option value="${equipo.familia.id}" >${equipo.familia.nombre}</option>
                            <#else>
                                <option value="${familia.id}">${familia.nombre}</option>
                            </#if>
                        </#if>
                    </#list>
                </select>
            </div>
            <div class="form-group">
                <input type="number" class="form-control" name="existencia" value="${equipo.existencia?string['0']}" required/>
            </div>
            <div class="form-group">
                <input type="number" class="form-control" name="costoPorDia" value="${equipo.costoPorDia?string['0']}" required/>
            </div>
            <button type="submit" class="btn btn-primary mt-2">${acciones2}</button>
        </form>
</div>
</body>
</@base.pagina>