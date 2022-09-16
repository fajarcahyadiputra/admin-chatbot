@extends('admin.templates.app')
@section('title', 'DATA USERS')
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
                    <li class="breadcrumb-item active" aria-current="page">List</li>
                </ol>
            </nav>
        </div>
        <!-- /BREADCRUMB -->

        <div class="row layout-top-spacing">

            <div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
                <div class="widget-content widget-content-area br-8">
                    <table id="style-3" class="table style-1 dt-table-hover non-hover">
                        <thead>
                            <tr>
                                <th class="checkbox-column text-center"> Record Id </th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>IsActive</th>
                                {{-- <th>Picture</th> --}}
                                <th class="no-content text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $index => $user)
                                <tr>
                                    <td class="text-center"><b>{{ $index + 1 }}</b></td>
                                    <td>
                                        <div class="d-flex justify-content-left align-items-center">
                                            <div class="avatar  me-3">
                                                <img src="{{ Storage::url($user->picture) }}" alt="Avatar" width="64"
                                                    height="64">
                                            </div>
                                            <div class="d-flex flex-column">
                                                <span class="text-truncate fw-bold">{{ $user->name }}</span>
                                            </div>
                                        </div>
                                    </td>
                                    <td>{{ $user->email }}</td>
                                    <td><span
                                            class="badge badge-danger">{{ $user->isActive == 1 ? 'active' : 'not active' }}</span>
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
                                                        href="{{ route('admin.user.edit', $user->id) }}">Edit</a></li>
                                                <li><a href="javascript:void(0)" class="dropdown-item"
                                                        id="{{ $user->id }}" onclick="deleteUser(this.id)">Delete</a>
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
 $('#style-3').DataTable( {
    buttons: [
        'pdf'
    ]
} );

        multiCheck(c3);

        //aksi delete
        function deleteUser(id) {
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
                        url: `/user/${id}`,
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
