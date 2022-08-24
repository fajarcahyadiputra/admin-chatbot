@extends('admin.templates.app')
@section('title', 'ADD WHATSAPP REPLY')
@section('content')
    <!--  BEGIN CONTENT AREA  -->

    <div class="middle-content container-xxl p-0">

        <!-- BREADCRUMB -->
        <div class="page-meta">
            <nav class="breadcrumb-style-one" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('admin.whatsapp_reply.index') }}">List Whatsapp
                            Replies Master</a></li>
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
                            <label for="keyword">Keyword</label>
                            <div class="col-sm-12">
                                <input readonly required type="number" value="{{ $maxKeyword->max_keyword + 1 }}"
                                    class="form-control" id="keyword" step="1" name="keyword"
                                    placeholder="Keyword...">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name">Name</label>
                            <div class="col-sm-12">
                                <input required type="text" class="form-control" id="name" name="name"
                                    placeholder="Name...">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name">Type</label>
                            <div class="col-sm-12">
                                <select required name="type" id="type" class="form-select">
                                    <option value="" disabled hidden selected>-- Pilih Type --</option>
                                    <option value="text">Text</option>
                                    <option value="media">Media</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="name">Is Master?</label>
                            <div class="col-sm-12">
                                <select required name="isMaster" id="isMaster" class="form-select">
                                    <option value="" disabled hidden selected>-- Select --</option>
                                    <option value="master">Master</option>
                                    <option value="sub1">Sub1</option>
                                    <option value="sub2">Sub2</option>
                                </select>
                            </div>
                        </div>
                        <div id="box-child-master">

                        </div>
                        <div class="col-xxl-12 mb-4">
                            <div class="switch form-switch-custom switch-inline form-switch-primary">
                            </div>
                            <div class="form-check form-switch">
                                <input required class="form-check-input" name="isActive" id="isActive" type="checkbox"
                                    role="switch" id="flexSwitchCheckDefault">
                                <label class="form-check-label" for="flexSwitchCheckDefault">Is Active?</label>
                            </div>
                        </div>
                        <div class="row mb-4 box-text-file">

                        </div>

                    </div>

                    <div class="col-xxl-12 col-sm-4 col-12 mx-auto">
                        <button type="submit" class="btn btn-success w-100">Create Whatsapp Reply</button>
                    </div>
                </div>
            </form>

        </div>

    </div>
    <!--  END CONTENT AREA  -->
@endsection
@section('javascript')
    {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/tinymce/5.6.2/tinymce.min.js"></script> --}}
    <script>
        // var editor_config = {
        //     selector: "textarea.description",
        //     plugins: [
        //         "advlist autolink lists link image charmap print preview hr anchor pagebreak",
        //         "searchreplace wordcount visualblocks visualchars code fullscreen",
        //         "insertdatetime media nonbreaking save table contextmenu directionality",
        //         "emoticons template paste textcolor colorpicker textpattern"
        //     ],
        //     toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media",
        //     relative_urls: false,
        // };
    </script>
    <script>
        $(document).on('change', '#isMaster', function(e) {
            let isMaster = $(this).val();
            $('#box-child-master').html('')
            if (isMaster != 'master') {
                $.ajax({
                    type: "GET",
                    url: "{{ route('admin.whatsapp_reply.master_data') }}",
                    data: {
                        isMaster
                    },
                    dataType: "html",
                    success: function(result) {
                        $('#box-child-master').html(result)
                    }
                })
            }
        })
        $(document).on("change", '#type', function() {
            let type = $(this).val();
            if (type == 'media') {
                $(".box-text-file").html(`<div class="col-xxl-12 col-md-12 mb-4">
                        <label for="media">Media</label>
                        <div class="profile-image">
                            <div class="img-uploader-content">
                                <input required type="file" name="media" id="media" />
                            </div>

                        </div>
                    </div>`)
            } else {
                $(".box-text-file").html(` <div class="col-xxl-12 mb-4">
                            <label for="post-meta-description">Meta Description</label>
                            <textarea required name="text" class="form-control description" id="post-meta-description" cols="10"
                                rows="10"></textarea>
                        </div>`)
            }
            tinymce.init(editor_config);
        })
        $(document).on('submit', '#add-form', function(e) {
            e.preventDefault();
            const data = new FormData(document.querySelector('#add-form'));
            let fileName = $("#media").val();
            if (fileName != undefined) {
                if (!fileName.match(/.(jpg|png|jpeg|gift|doc|pdf)$/i)) {
                    Swal.fire(
                        'WARNING!',
                        'FORMAT MEDIA SALAH!!',
                        'warning'
                    )
                    return false;
                }
            }

            $.ajax({
                url: "{{ route('admin.whatsapp_reply.store') }}",
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
                            'DATA BERHASIL DI TAMBAHKAN!!',
                            'success'
                        ).then(() => {
                            document.location.href = "/whatsapp_reply"
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
