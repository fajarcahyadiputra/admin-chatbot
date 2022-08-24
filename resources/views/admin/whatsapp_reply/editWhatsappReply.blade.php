@extends('admin.templates.app')
@section('title', 'EDIT WHATSAPP REPLY')
@section('content')
    <!--  BEGIN CONTENT AREA  -->

    <div class="middle-content container-xxl p-0">

        <!-- BREADCRUMB -->
        <div class="page-meta">
            <nav class="breadcrumb-style-one" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item"><a href="/back">List Whatsapp
                            Replies</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Edit Whatsapp Reply</li>
                </ol>
            </nav>
        </div>
        <!-- /BREADCRUMB -->

        <div class="row mb-4 layout-spacing layout-top-spacing">

            <form id="edit-form">
                <div class="col-xxl-9 col-xl-12 col-lg-12 col-md-12 col-sm-12">

                    <div class="widget-content widget-content-area blog-create-section">

                        <div class="row mb-4">
                            <label for="keyword">Keyword</label>
                            <div class="col-sm-12">
                                <input readonly required type="text" class="form-control"
                                    value="{{ $whatsappReply->keyword }}" id="keyword" name="keyword"
                                    placeholder="Keyword...">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name">Name</label>
                            <div class="col-sm-12">
                                <input required type="text" value="{{ $whatsappReply->name }}" class="form-control"
                                    id="name" name="name" placeholder="Name...">
                            </div>
                        </div>
                        <div class="col-xxl-12 mb-4">
                            <div class="switch form-switch-custom switch-inline form-switch-primary">
                            </div>
                            <div class="form-check form-switch">
                                <input class="form-check-input" name="isActive" id="isActive"
                                    {{ $whatsappReply->isActive == 1 ? 'checked' : '' }} type="checkbox" role="switch"
                                    id="flexSwitchCheckDefault">
                                <label class="form-check-label" for="flexSwitchCheckDefault">Is Active?</label>
                            </div>
                        </div>
                        <div class="row mb-4 box-text-file">
                            @if ($whatsappReply->type == 'text')
                                <div class="col-xxl-12 mb-4">
                                    <label for="post-meta-description">Meta Description</label>
                                    <textarea name="text" class="form-control description" id="post-meta-description" cols="10" rows="10">{{ $whatsappReply->text }}</textarea>
                                </div>
                            @else
                                <iframe src="{{ Storage::url($whatsappReply->link_media) }}" width='100%' height='500px'
                                    frameborder='1'>
                                </iframe>

                                <button type="button" onclick="isUpdatePicture()" class="btn btn-primary">Update
                                    Media?</button>
                            @endif
                        </div>

                    </div>

                    <div class="col-xxl-12 col-sm-4 col-12 mx-auto">
                        <button type="submit" class="btn btn-success w-100">Edit Whatsapp Reply</button>
                    </div>
                </div>
            </form>

        </div>

    </div>
    <!--  END CONTENT AREA  -->
@endsection
@section('javascript')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tinymce/5.6.2/tinymce.min.js"></script>
    <script>
        var editor_config = {
            selector: "textarea.description",
            plugins: [
                "advlist autolink lists link image charmap print preview hr anchor pagebreak",
                "searchreplace wordcount visualblocks visualchars code fullscreen",
                "insertdatetime media nonbreaking save table contextmenu directionality",
                "emoticons template paste textcolor colorpicker textpattern"
            ],
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media",
            relative_urls: false,
        };
        // tinymce.init(editor_config);
    </script>
    <script>
        function isUpdatePicture() {
            $(".box-text-file").html(`<input type="file" name="media" id="media" />`)
        }
        $(document).on("change", '#type', function() {
            let type = $(this).val();
            if (type == 'media') {
                $(".box-text-file").html(`<div class="col-xxl-12 col-md-12 mb-4">
                        <label for="media">Media</label>
                        <div class="profile-image">
                            <div class="img-uploader-content">
                                <input type="file" name="media" id="media" />
                            </div>

                        </div>
                    </div>`)
            }
        })
        $(document).on('submit', '#edit-form', function(e) {
            e.preventDefault();
            const data = new FormData(document.querySelector('#edit-form'));
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
                url: "{{ route('admin.whatsapp_reply.update', $whatsappReply->id) }}",
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
                            'DATA BERHASIL DI UBAH!',
                            'success'
                        ).then(() => {
                            document.location.href = "/whatsapp_reply"
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
