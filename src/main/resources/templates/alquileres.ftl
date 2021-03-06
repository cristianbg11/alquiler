<#include "estatico/header.ftl">
<div class="wrapper">

    <#include "estatico/nav-estatico.ftl">
    <!-- /.content-wrapper -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                ${titulo_alquileres}

            </h1>

        </section>
        <!-- Main content  -->
        <section class="content">

            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-default">
                        <div class="box-header with-border">
                            <h3 class="box-title">  ${titulo_alquileres}</h3>
                        </div>
                        <div class="box-body">
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal"
                                    data-target="#modal-default">${boton_crear}
                            </button>

                            <br>
                            <table id="tablaAlquiler" class="display" style="width:100%">

                                <thead>
                                <tr>
                                    <th>${tabla_fecha_entrega}</th>
                                    <th>${tabla_cliente}</th>
                                    <th>${tabla_cantidad_equipos}</th>
                                    <th>${tabla_acciones}</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>${tabla_fecha_entrega}</th>
                                    <th>${tabla_cliente}</th>
                                    <th>${tabla_cantidad_equipos}</th>
                                    <th>${tabla_acciones}</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


        </section>
    </div>

    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.4.0
        </div>
        <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All
        rights
        reserved.
    </footer>


    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>


</div>

<div class="modal fade" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">${nuevo_alquiler}</h4>
            </div>
            <form id="form" method="POST">
                <div class="modal-body">

                    <div class="box-body">

                        <div class="form-group">
                            <label for="cliente">${tabla_cliente}</label>


                            <select name="cliente" style="width: 50%" class="form-control" id="cliente" required>
                            </select>


                        </div>


                        <div class="form-group">
                            <label for="fechaEntrega">${tabla_fecha_entrega}</label>
                            <input type="date" name="fechaEntrega" id="fechaEntrega" required>
                        </div>

                        <div class="form-group">
                            <label for="equipos">${titulo_equipos}</label>


                            <select name="equipos" style="width: 100%" id="equipos" multiple="multiple"
                                    required></select>

                            <br>
                        </div>


                        <table id="tabla" class="display" style="width:100%">

                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>${tabla_nombre}</th>
                                <th>${tabla_foto}</th>
                                <th>${tabla_tarifa}</th>
                                <th>${tabla_familia}</th>
                                <th>${tabla_subFamilia}</th>
                                <th>${tabla_cantidad}</th>

                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>Id</th>
                                <th>${tabla_nombre}</th>
                                <th>${tabla_foto}</th>
                                <th>${tabla_tarifa}</th>
                                <th>${tabla_familia}</th>
                                <th>${tabla_subFamilia}</th>
                                <th>${tabla_cantidad}</th>

                            </tr>
                            </tfoot>
                        </table>


                    </div>
                    <!-- /.box-body -->


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">${boton_cerrar}</button>
                    <button type="submit" id="guardar" class="btn btn-primary">OK</button>
                </div>


            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>


<div class="modal fade" id="modalFactura">
    <div class="modal-dialog modal-lg">
        <form id="factura" method="POST">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">${titulo_factura}</h4>
                </div>

                <div class="modal-body">

                    <div class="box-body">


                        <div class="form-group">
                            <label for="clienteFactura">${tabla_cliente}</label>
                            <input id="clienteFactura" disabled>

                            <label for="fechaEntregaFactura">${tabla_fecha_entrega}</label>
                            <input type="date" id="fechaEntregaFactura" disabled>

                            <input hidden id="alquilerEquipo">

                        </div>

                        <div class="form-group">
                            <label for="total">${titulo_total}</label>
                            <input id="total" type="number" name="total">
                        </div>

                        <div class="">
                            <table id="tablaFactura" class="display" style="width:100%">

                                <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>${tabla_nombre}</th>
                                    <th>${tabla_foto}</th>
                                    <th>${tabla_tarifa}</th>
                                    <th>${tabla_familia}</th>
                                    <th>${tabla_subFamilia}</th>
                                    <th>${tabla_cantidad}</th>
                                    <th>Boolean</th>
                                    <th>${tabla_devuelto}</th>
                                    <th>${tabla_acciones}</th>

                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>Id</th>
                                    <th>${tabla_nombre}</th>
                                    <th>${tabla_foto}</th>
                                    <th>${tabla_tarifa}</th>
                                    <th>${tabla_familia}</th>
                                    <th>${tabla_subFamilia}</th>
                                    <th>${tabla_cantidad}</th>
                                    <th>Boolean</th>
                                    <th>${tabla_devuelto}</th>
                                    <th>${tabla_acciones}</th>

                                </tr>
                                </tfoot>
                            </table>
                        </div>

                    </div>
                    <!-- /.box-body -->


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">${boton_cerrar}</button>
                    <button type="submit" id="facturar" class="btn btn-primary">${boton_facturar}</button>
                </div>


            </div>
        </form>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<!-- /.modal-dialog -->

<!-- ./wrapper -->

<script>
    let equipos = [];
    let fotoDefault = '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';
    let tabla;
    let alquileres = [];

    $(document).ready(function () {


        $("#form").on("submit", function (e) {
            //
            //
            e.preventDefault();

            crearAlquiler();

            $("#form")[0].reset();

        });

        $('#total').bind('input', function() {

            document.getElementById('total').removeAttribute("style");

        });

        $("#facturar").on("click", function (e) {
            //
            //
            e.preventDefault();

            if ($('#total').val() === "") {

                document.getElementById('total').style.border = '1px solid red';

                alert("El total es obligatorio!");
                document.getElementById("total").focus();

            } else {

                facturar();

                $("#factura")[0].reset();

            }

        });

        $(document).on('click', '.btnDevolver', function (e) {
            e.preventDefault();
        });

        buscarEquipos();

        cargarClientes();

        buscarAlquileres();

        $('#equipos').on('select2:select', function (e) {
            let data = e.params.data;

            agregarEquipo(data.id);


        });

        $('#equipos').on("select2:unselect", function (e) {

            console.log("equipos", equipos);

            let data = e.params.data;

            for (let i = 0; i < equipos.length; i++) {
                console.log("equipos: " + equipos[i].id);
                console.log("select:" + data.id);

                if (parseInt(equipos[i].id) === parseInt(data.id)) {
                    console.log(data.id);
                    delete equipos[i];
                }

            }


            console.log(equipos);
            //clear datatable
            tabla.clear().draw();

            actualizarTabla();


        });


    });

    function agregarEquipo(id) {

        $.get("/equipo/buscar/" + id, function (data) {

            equipos.push({
                id: data.id,
                nombre: data.nombre,
                foto: data.foto === "" ? '<img src="data:image/png;base64, ' + fotoDefault + '" width="70px" height="70px"/>' : '<img src="data:image/png;base64, ' + data.foto + '" width="70px" height="70px"/>',
                tarifa: data.tarifa,
                familia: data.familia,
                subFamilia: data.subFamilia,
                cantidad: data.cantidad
            });


            actualizarTabla();

        });
    }

    function cargarClientes() {


        $('#cliente').select2({

            // width: 'resolve',
            placeholder: '${tabla_cliente}',
            // allowClear: true,
            // selectionAdapter: 'SingleSelection',
            ajax: {
                url: "/clientes",
                processResults: function (data) {

                    data = data.map(function (item) {
                        return {
                            id: item.id,
                            text: item.nombre,
                            // otherfield: item.otherfield
                        };
                    });
                    return {results: data};
                },
            }

        });
    }


    function buscarEquipos() {

        let nuevo = [];


        $('#equipos').select2({

            width: 'resolve',
            placeholder: '${titulo_equipos}',
            // allowClear: true,
            // templateResult: format,
            // selectionAdapter: 'SingleSelection',
            // templateSelection: format,
            ajax: {
                url: "/equiposDisponibles",
                processResults: function (data) {

                    data = data.map(function (item) {
                        return {
                            id: item.id,
                            text: item.nombre,
                            // otherfield: item.otherfield
                        };
                    });
                    return {results: data};
                },
            },


        });


    }

    function format(state) {
        let foto = "";
        if (!state.id) return state.text; // optgroup

        $.get("/equipo/buscar/" + state.id, function (data) {

            // console.log(data);
            if (data.foto === "") {
                foto = fotoDefault;
            } else {
                foto = data.foto;
            }

            console.log(foto);

        });

        return '<span><img class="flag" style="padding-right: 10px;max-width: 24px;" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4579/NASA_meatball.png" / >' + state.text;
        +'<span>'
    }

    function actualizarTabla() {

        tabla = $('#tabla').DataTable({
            destroy: true,
            dom: 'Bfrtip',
            data: equipos,
            columns: [
                {targets: 0, data: 'id', visible: false},
                {targets: 1, data: 'nombre', defaultContent: ""},
                {targets: 2, data: 'foto', defaultContent: " - "},
                {targets: 3, data: 'tarifa', defaultContent: ""},
                {targets: 4, data: 'familia', defaultContent: ""},
                {targets: 5, data: 'subFamilia', defaultContent: ""},
                {
                    targets: 6, data: 'cantidad', defaultContent: "",

                    render: function (data, type, full, meta) {
                        return '<input id="cantidad_' + full['id'] + '" type="number" max="' + data + '" min="1" value="' + 1 + '">'
                    },
                },
            ],
            searchable: false,
            buttons: [],
            language: {
                search: "Buscar:",
                paginate: {
                    previous: "Anterior",
                    next: "Siguiente"
                },
                emptyTable: "No hay datos disponibles",
                info: "${mostrando} _START_ ${a} _END_ ${de} _TOTAL_ ${registros}",
            },
            autoWidth: true

        });

        $('#container').css('display', 'block');
        tabla.columns.adjust().draw();

    }

    function eliminar(id) {


        let num = id.replace('eliminar_', '');
        console.log("id: " + num);

        $.ajax({
            type: 'POST',
            url: '/equipo/eliminar/' + num,
            success: function () {

                buscarEquipos();
                // $('#modal-default').modal('toggle');
            }
        });

    }

    function crearAlquiler() {

        let tabla = $('#tabla').DataTable();
        let dataEquipos = tabla.rows().data();
        let equiposDatos = [];
        for (let i = 0; i < dataEquipos.length; i++) {


            let cant = $("#cantidad_" + dataEquipos[i].id).val();

            console.log("equipo: " + dataEquipos[i].id + " cantidad: " + cant);
            equiposDatos.push(dataEquipos[i].id + ":" + cant);
        }


        let json = [{

            cliente: $("#cliente").val(),
            fechaEntrega: $("#fechaEntrega").val(),
            equipos: equiposDatos

        }];

        console.log(json);

        $.ajax({
            type: 'POST',
            data: JSON.stringify(json),
            contentType: "application/json",
            url: '/alquiler/crear',
            success: function () {

                $('#modal-default').modal('toggle');
                buscarAlquileres();
            }
        });
    }

    function buscarAlquileres() {

        let nuevo = [];
        $.ajax({
            dataType: 'json',
            url: '/alquileres',
            success: function (data) {


                data.forEach(function (alquiler) {

                    let cant = [];

                    // cant= alquiler.equipoSet.map(a =>  a.cantidad);

                    console.log(cant);

                    nuevo.push({
                        id: alquiler.id,
                        cliente: alquiler.cliente.nombre,
                        fechaEntrega: alquiler.fechaEntrega,
                        cantidad: alquiler.cantidadEquipos
                    })

                });

                console.log(data);
                actualizarAlquileres(nuevo);


            },
            error: function () {
                alert('Call not resolved')
            }
        });


    }

    function getSum(total, num) {
        return total + num;
    }

    function actualizarAlquileres(json) {

        console.log("en tabla:", json);

        let alquileres = $('#tablaAlquiler').DataTable({
            destroy: true,
            dom: 'Bfrtip',
            data: json,
            columns: [
                {targets: 0, data: 'fechaEntrega', defaultContent: ""},
                {targets: 1, data: 'cliente', defaultContent: " - "},
                {targets: 2, data: 'cantidad', defaultContent: ""},
                // {targets: 4, data: 'subFamilia', defaultContent: ""},
                {
                    targets: -1,
                    data: 'id',
                    "render": function (data, type, row, meta) {
                        return ' &nbsp' + ' <button class="btn btn-secondary btn-sm" id=alquiler_' + data + ' onclick="modalFactura(this.id)"><i class="fa fa-file-text-o"></i>  ${boton_facturar}</button>'
                    },
                    // defaultContent: "<button id='editar' type=\"button\" class=\"btn btn-light btn-sm\"><i class=\"fa fa-pencil\"></i> Editar</button> " +
                    // "<button id='eliminar' type=\"button\" class=\"btn btn-danger btn-sm\"><i class=\"fa fa-minus\"></i> Eliminar</button>"
                }

            ],
            searchable: false,
            buttons: [],
            language: {
                search: "Buscar:",
                paginate: {
                    previous: "Anterior",
                    next: "Siguiente"
                },
                emptyTable: "No hay datos disponibles",
                info: "${mostrando} _START_ ${a} _END_ ${de} _TOTAL_ ${registros}",
            },
            autoWidth: true

        });

        // $('#container').css('display', 'block');
        // alquileres.columns.adjust().draw();
    }

    function modalFactura(id) {

        let num = id.replace('alquiler_', '');


        let nuevo = [];
        $.ajax({
            dataType: 'json',
            url: '/alquiler/buscar/' + num,
            success: function (data) {

                $("#clienteFactura").val(data.cliente.nombre);
                $("#fechaEntregaFactura").val(data.fechaEntrega);
                $('#alquilerEquipo').val(data.id);


                console.log(data);
                data.equipoAlquiler.forEach(function (equipo) {


                    console.log("equipo: ", equipo);
                    nuevo.push({
                        id: equipo.equipo.id,
                        nombre: equipo.equipo.nombre,
                        foto: equipo.equipo.foto === "" ? '<img src="data:image/png;base64, ' + fotoDefault + '" width="70px" height="70px"/>' : '<img src="data:image/png;base64, ' + equipo.equipo.foto + '" width="70px" height="70px"/>',
                        tarifa: equipo.equipo.tarifa,
                        familia: equipo.equipo.familia,
                        subFamilia: equipo.equipo.subFamilia,
                        cantidad: equipo.cantidad,
                        devuelto: equipo.devuelto,
                        alquiler: equipo.id

                    })


                });

                console.log(nuevo);

                actualizarTablaFactura(nuevo);
            },


            error: function () {
                alert('Call not resolved')
            }
        });


    }

    function devuelto(id) {


        let num = id.replace('alquiler_', '');
        console.log('id icono: icono_' + num);
        $("#icono_" + num).toggleClass('devuelto no_devuelto');
        $("#icono_" + num).toggleClass('fa-check fa-ban');

        let data = [{id: num}];

        let request = new XMLHttpRequest();
        request.open('POST', '/alquiler/devolver/' + num, true);
        request.setRequestHeader('Content-Type', 'application/json');
        request.send(data);


    }

    function actualizarTablaFactura(nuevo) {

        let alquileres = $('#tablaFactura').DataTable({
            destroy: true,
            dom: 'Bfrtip',
            data: nuevo,
            responsive: true,
            columns: [
                {targets: 0, data: 'alquiler', visible: false},
                {targets: 1, data: 'nombre', defaultContent: ""},
                {targets: 2, data: 'foto', defaultContent: "-"},
                {targets: 3, data: 'tarifa', defaultContent: ""},
                {targets: 4, data: 'familia', defaultContent: ""},
                {targets: 5, data: 'subFamilia', defaultContent: ""},
                {targets: 6, data: 'cantidad', defaultContent: ""},
                {targets: 7, data: 'devuelto', visible: false},
                {
                    targets: 8,
                    data: 'alquiler',
                    "render": function (data, type, row, meta) {
                        if (row['devuelto'] === true) {
                            return '<i id=icono_' + data + ' class="devuelto fa fa-check"></i>'

                        }
                        else {
                            return '<i id=icono_' + data + ' class="no_devuelto fa fa-ban"></i>'

                        }
                    },
                    // defaultContent: "<button id='editar' type=\"button\" class=\"btn btn-light btn-sm\"><i class=\"fa fa-pencil\"></i> Editar</button> " +
                    // "<button id='eliminar' type=\"button\" class=\"btn btn-danger btn-sm\"><i class=\"fa fa-minus\"></i> Eliminar</button>"
                },
                {
                    targets: -1,
                    data: 'alquiler',
                    "render": function (data, type, row, meta) {
                        return ' &nbsp' + ' <button class="btn btnDevolver btn-secondary btn-sm" id=alquiler_' + data + ' onclick="devuelto(this.id)"> Devolver</button>'
                    },
                    // defaultContent: "<button id='editar' type=\"button\" class=\"btn btn-light btn-sm\"><i class=\"fa fa-pencil\"></i> Editar</button> " +
                    // "<button id='eliminar' type=\"button\" class=\"btn btn-danger btn-sm\"><i class=\"fa fa-minus\"></i> Eliminar</button>"
                }

            ],
            searchable: false,
            buttons: [],
            language: {
                search: "Buscar:",
                paginate: {
                    previous: "Anterior",
                    next: "Siguiente"
                },
                emptyTable: "No hay datos disponibles",
                info: "${mostrando} _START_ ${a} _END_ ${de} _TOTAL_ ${registros}",
            },
            autoWidth: true

        });


        $('#modalFactura').modal('toggle');

    }

    function facturar() {

        let data =$('#alquilerEquipo').val() + ':' + $("#total").val();
        let request = new XMLHttpRequest();
        request.open('POST', '/factura/crear', true);
        request.setRequestHeader('Content-Type', 'application/json; charset=UTF-8');
        request.send(data);

        setTimeout(function () {

            $('#modalFactura').modal('toggle');
            buscarAlquileres();
        },200);



    }


</script>

<#include "estatico/footer.ftl">