
<header class="main-header">
    <!-- Logo -->
    <a href="/index/" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>A</b>QS</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Alquisis</b></span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">

                <!-- Control Sidebar Toggle Button -->
                <li>
                    <#--<a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>-->
                </li>
            </ul>
        </div>

    </nav>
</header>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">MENU</li>
            <li class="<#if inicio_active??> ${inicio_active}</#if>">
                <a href="/index/">
                    <i class="fa fa-home"></i> <span>${titulo_inicio}</span>
                </a>

            </li>
            <li class="<#if alquiler_active?? > ${alquiler_active}</#if>"><a href="/index/alquileres"><i class="fa fa-exchange"></i> <span>${titulo_alquileres}</span></a></li>
            <li class="<#if equipo_active?? > ${equipo_active} </#if>"><a href="/index/equipos"><i class="fa fa-cubes"></i> <span>${titulo_equipos}</span></a></li>
            <li class="treeview <#if cliente_active?? || usuario_active?? >active</#if>">
                <a href="#">
                    <i class="fa fa-gears"></i>
                    <span>${opciones}</span>
                </a>
                <ul class="treeview-menu">
                    <li class="<#if cliente_active?? >${cliente_active}</#if>"><a href="/index/clientes"><i class="fa fa-user"></i> ${titulo_clientes}</a></li>
                    <li class="<#if usuario_active?? >${usuario_active}</#if>"><a href="/index/usuarios"><i class="fa fa-users"></i> ${titulo_usuarios}</a></li>
                </ul>
            </li>

            <li class="<#if reporte_active??> ${reporte_active} </#if>"><a href="/index/alquiler/reportes"><i class="fa fa-bar-chart"></i> <span>${titulo_reportes}</span></a></li>

            <li><a href="/logout"><span>Salir</span></a></li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
