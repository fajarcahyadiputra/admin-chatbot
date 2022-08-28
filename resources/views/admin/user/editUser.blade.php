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
                    <li class="breadcrumb-item active" aria-current="page">Edit</li>
                </ol>
            </nav>
        </div>
        <!-- /BREADCRUMB -->

        <div class="row mb-4 layout-spacing layout-top-spacing">

            <form id="update-form">
                <div class="col-xxl-9 col-xl-12 col-lg-12 col-md-12 col-sm-12">

                    <div class="widget-content widget-content-area blog-create-section">

                        <div class="row mb-4">
                            <label for="name">Name</label>
                            <div class="col-sm-12">
                                <input required type="text" class="form-control" id="name"
                                    value="{{ $user->name }}" name="name" placeholder="Name...">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name">Email</label>
                            <div class="col-sm-12">
                                <input required type="email" class="form-control" id="email"
                                    value="{{ $user->email }}" name="email" placeholder="Email...">
                            </div>
                        </div>
                        <div class="row mb-4 box-password">
                            <button type="button" onclick="isUpdatePassword()" class="btn btn-primary">Update
                                Password?</button>
                        </div>
                    </div>

                    <div class="col-xxl-12 col-md-12 mb-4">
                        <label for="images">Picture</label>
                        <div class="profile-image">
                            <div class="img-uploader-content mb-3 box-picture-input">
                                <button onclick="isUpdatePicture()" class="btn btn-primary">Update Picture?</button>
                            </div>

                            <img width="200" src="{{ Storage::url($user->picture) }}" alt="profil user">
                        </div>
                    </div>

                    <div class="col-xxl-12 mb-4">
                        <div class="switch form-switch-custom switch-inline form-switch-primary">
                        </div>
                        <div class="form-check form-switch">
                            <input class="form-check-input" name="isActive" id="isActive"
                                {{ $user->isActive == 1 ? 'checked' : '' }} type="checkbox" role="switch"
                                id="flexSwitchCheckDefault">
                            <label class="form-check-label" for="flexSwitchCheckDefault">Is Active?</label>
                        </div>
                    </div>



                    <div class="col-xxl-12 col-sm-4 col-12 mx-auto">
                        <button type="submit" class="btn btn-success w-100">Edit Post</button>
                    </div>
                </div>
            </form>

        </div>

    </div>
    <!--  END CONTENT AREA  -->
@endsection
@section('javascript')

    <script>
        function isUpdatePassword() {
            $(".box-password").html(`<label for="name">New Password</label>
                        <div class="col-sm-12">
                            <input required autocomplete="off" type="text" minlength="6" class="form-control"
                                id="password" name="password" placeholder="Password...">
                        </div>`)
        }

        function isUpdatePicture() {
            $(".box-picture-input").html(`<input type="file" name="picture" id="picture" />`)
        }
        $(document).on('submit', '#update-form', function(e) {
            e.preventDefault();
            const data = new FormData(document.querySelector('#update-form'));

            let fileName = $("#picture").val();
            if (fileName != undefined) {
                if (!fileName.match(/.(jpg|png|jpeg|gift)$/i)) {
                    Swal.fire(
                        'WARNING!',
                        'FORMAT GAMBAR SALAH!!',
                        'warning'
                    )
                    return false;
                }
            }


            $.ajax({
                url: `{{ route('admin.user.updated', ['id' => $user->id]) }}`,
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
                            'DATA BERHASIL DI UBAH!!',
                            'success'
                        ).then(() => {
                            document.location.href = "/user"
                        })
                    } else {
                        Swal.fire(
                            'GAGAL!',
                            'DATA GAGAL DI UBAH!',
                            'error'
                        )
                    }
                }
            })
        })
    </script>
@endsection
