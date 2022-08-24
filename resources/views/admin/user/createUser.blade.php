@extends('admin.templates.app')
@section('title', 'ADD USER')
@section('content')
    <!--  BEGIN CONTENT AREA  -->

    <div class="middle-content container-xxl p-0">

        <!-- BREADCRUMB -->
        <div class="page-meta">
            <nav class="breadcrumb-style-one" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('admin.user.index') }}">List Users</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Create</li>
                </ol>
            </nav>
        </div>
        <!-- /BREADCRUMB -->

        <div class="row mb-4 layout-spacing layout-top-spacing">

            <form id="add-form">
                <div class="col-xxl-9 col-xl-12 col-lg-12 col-md-12 col-sm-12">

                    <div class="widget-content widget-content-area blog-create-section">

                        <div class="row mb-4">
                            <label for="name">Name</label>
                            <div class="col-sm-12">
                                <input required type="text" class="form-control" id="name" name="name"
                                    placeholder="Name...">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name">Email</label>
                            <div class="col-sm-12">
                                <input required type="email" class="form-control" id="email" name="email"
                                    placeholder="Email...">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name">Password</label>
                            <div class="col-sm-12">
                                <input required type="password" minlength="6" class="form-control" id="password"
                                    name="password" placeholder="Password...">
                            </div>
                        </div>

                    </div>

                    <div class="col-xxl-12 col-md-12 mb-4">
                        <label for="images">Picture</label>
                        <div class="profile-image">
                            <div class="img-uploader-content">
                                <input type="file" name="picture" id="picture" />
                            </div>

                        </div>
                    </div>

                    <div class="col-xxl-12 mb-4">
                        <div class="switch form-switch-custom switch-inline form-switch-primary">
                        </div>
                        <div class="form-check form-switch">
                            <input class="form-check-input" name="isActive" id="isActive" type="checkbox" role="switch"
                                id="flexSwitchCheckDefault">
                            <label class="form-check-label" for="flexSwitchCheckDefault">Is Active?</label>
                        </div>
                    </div>



                    <div class="col-xxl-12 col-sm-4 col-12 mx-auto">
                        <button type="submit" class="btn btn-success w-100">Create Post</button>
                    </div>
                </div>
            </form>

        </div>

    </div>
    <!--  END CONTENT AREA  -->
@endsection
@section('javascript')

    <script>
        $(document).on('submit', '#add-form', function(e) {
            e.preventDefault();
            const data = new FormData(document.querySelector('#add-form'));
            let fileName = $("#picture").val();
            if (!fileName.match(/.(jpg|png|jpeg|gift)$/i)) {
                Swal.fire(
                    'WARNING!',
                    'FORMAT GAMBAR SALAH!!',
                    'warning'
                )
                return false;
            }


            $.ajax({
                url: "{{ route('admin.user.store') }}",
                data: data,
                dataType: 'json',
                processData: false,
                contentType: false,
                cache: false,
                async: true,
                type: 'POST',
                success: function(result) {
                    // console.log(result);
                    if (result) {
                        Swal.fire(
                            'BERHASIL!',
                            'DATA BERHASIL DI TAMBAHKAN!',
                            'success'
                        ).then(() => {
                            document.location.href = "/user"
                        })
                    } else {
                        Swal.fire(
                            'GAGAL!',
                            'DATA GAGAL DI TAMBAHKAN!',
                            'error'
                        )
                    }
                }
            })
        })
    </script>
@endsection
