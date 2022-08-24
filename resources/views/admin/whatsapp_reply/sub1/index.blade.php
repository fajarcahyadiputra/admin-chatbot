@extends('admin.templates.app')
@section('title', 'DATA WHATSAPP REPLY SUB1')
@section('css')
    <link rel="stylesheet" type="text/css"
        href="{{ asset('assets/src/plugins/css/light/table/datatable/dt-global_style.css') }}">
    <link rel="stylesheet" type="text/css"
        href="{{ asset('assets/src/plugins/css/dark/table/datatable/dt-global_style.css') }}">
@endsection
@section('content')
    <!--  BEGIN CONTENT AREA  -->
    <div class="middle-content container-xxl p-0">

        <!-- BREADCRUMB -->
        <div class="page-meta">
            <nav class="breadcrumb-style-one" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('admin.whatsapp_reply.index') }}">List Whatsapp
                            Replies</a></li>
                    <li class="breadcrumb-item active" aria-current="page">List Sub1 {{ $master->name }}</li>

                </ol>
            </nav>
        </div>
        <!-- /BREADCRUMB -->

        <div class="row layout-top-spacing">
            <div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
                <div class="widget-content widget-content-area br-8 p-3">
                    <a style="width: 100px" class="btn btn-primary"
                        href="{{ route('admin.whatsapp_reply.sub1.create', ['id' => $master->id]) }}">
                        Create Sub1</a>
                    <table id="style-3" class="table style-1 dt-table-hover non-hover">
                        <thead>
                            <tr>
                                <th class="checkbox-column text-center"> Record Id </th>
                                <th>Keyword</th>
                                <th>Name</th>
                                <th>Type</th>
                                <th>IsActive</th>
                                {{-- <th>Picture</th> --}}
                                <th class="no-content text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($waReplies as $index => $whatsappReply)
                                <tr>
                                    <td class="text-center"><b>{{ $index + 1 }}</b></td>
                                    <td class="text-center"><b>{{ $whatsappReply->keyword }}</b></td>
                                    <td>
                                        <div class="d-flex justify-content-left align-items-center">
                                            <div class="avatar  me-3">
                                                {{-- <img src="{{ Storage::url($whatsappReply->picture) }}" alt="Avatar"
                                                    width="64" height="64"> --}}
                                            </div>
                                            <div class="d-flex flex-column">
                                                <span class="text-truncate fw-bold">{{ $whatsappReply->name }}</span>
                                            </div>
                                        </div>
                                    </td>
                                    <td>{{ $whatsappReply->type }}</td>
                                    <td><span
                                            class="badge badge-danger">{{ $whatsappReply->isActive == 1 ? 'active' : 'not active' }}</span>
                                    </td>
                                    <td class="text-center">

                                        <!-- Default dropstart button -->
                                        <div class="btn-group dropstart">
                                            <button type="button" class="btn btn-secondary dropdown-toggle"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                    class="feather feather-more-horizontal">
                                                    <circle cx="12" cy="12" r="1"></circle>
                                                    <circle cx="19" cy="12" r="1"></circle>
                                                    <circle cx="5" cy="12" r="1"></circle>
                                                </svg>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item"
                                                        href="{{ route('admin.whatsapp_reply.edit', $whatsappReply->id) }}">Edit</a>
                                                </li>
                                                <li><a href="javascript:void(0)" class="dropdown-item"
                                                        id="{{ $whatsappReply->id }}"
                                                        onclick="deleteWhatsappReply(this.id)">Delete</a>
                                                </li>
                                                <li><a href="{{ route('admin.whatsapp_reply.sub2', ['id' => $whatsappReply->id]) }}"
                                                        class="dropdown-item" id="{{ $whatsappReply->id }}">Sub</a>
                                                </li>
                                            </ul>
                                        </div>

                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

        </div>

    </div>


@endsection
@section('javascript')
    <script>
        $('#style-3').DataTable({
            "dom": "<'dt--top-section'<'row'<'col-12 col-sm-6 d-flex justify-content-sm-start justify-content-center'l><'col-12 col-sm-6 d-flex justify-content-sm-end justify-content-center mt-sm-0 mt-3'f>>>" +
                "<'table-responsive'tr>" +
                "<'dt--bottom-section d-sm-flex justify-content-sm-between text-center'<'dt--pages-count  mb-sm-0 mb-3'i><'dt--pagination'p>>",
            "oLanguage": {
                "oPaginate": {
                    "sPrevious": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-left"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg>',
                    "sNext": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>'
                },
                "sInfo": "Showing page _PAGE_ of _PAGES_",
                "sSearch": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>',
                "sSearchPlaceholder": "Search...",
                "sLengthMenu": "Results :  _MENU_",
            },
            "stripeClasses": [],
            "lengthMenu": [5, 10, 20, 50],
            "pageLength": 10
        });

        // multiCheck(c3);

        //aksi delete
        function deleteWhatsappReply(id) {
            var id = id;
            var token = $("meta[name='csrf-token']").attr("content");

            Swal.fire({
                title: 'Apakah Kamu Yakin?',
                text: "Kamu Akan Menghapus Data Ini!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Ya, Hapus!'
            }).then((result) => {
                if (result.value) {
                    //ajax delete
                    $.ajax({
                        url: `/whatsapp_reply/${id}`,
                        data: {
                            id,
                            "_token": token
                        },
                        type: 'DELETE',
                        success: function(response) {
                            if (result) {
                                Swal.fire(
                                    'BERHASIL!',
                                    'DATA BERHASIL DI HAPUS!!',
                                    'success'
                                ).then(() => {
                                    location.reload();
                                })
                            } else {
                                Swal.fire(
                                    'GAGAL!',
                                    'DATA GAGAL DI HAPUS!',
                                    'error'
                                )
                            }
                        }
                    });

                } else {
                    return true;
                }
            })
        }
        //end
    </script>
@endsection
