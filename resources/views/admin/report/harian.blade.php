@extends('admin.templates.app')
@section('title', 'REPORT HARIAN')
@section('css')
    <link rel="stylesheet" type="text/css"
        href="{{ asset('assets/src/plugins/css/light/table/datatable/dt-global_style.css') }}">
    <link rel="stylesheet" type="text/css"
        href="{{ asset('assets/src/plugins/css/dark/table/datatable/dt-global_style.css') }}">
@endsection
@section('content')
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Daftar Nomor</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          ...
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          {{-- <button type="button" class="btn btn-primary">Save changes</button> --}}
        </div>
      </div>
    </div>
  </div>
    <!--  BEGIN CONTENT AREA  -->
    <div class="middle-content container-xxl p-0">

        <!-- BREADCRUMB -->
        <div class="page-meta">
            <nav class="breadcrumb-style-one" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Report Harian</li>
                </ol>
            </nav>
        </div>
        <!-- /BREADCRUMB -->

        <div class="row layout-top-spacing">

            <div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
                <div class="widget-content widget-content-area br-8 p-5">
                    <h3 class="mb-3">DATA PERTANYAAN HARI INI.</h3>
                    <hr>
                    <div class="row">
                        @foreach ($dataMessageReply as $item)
                        <div class="col-md-4 mb-4">
                            <div class="card" style="width: 18rem;">
                                <span class="text-center bg-info rounded pt-3">Total: {{$item->total}}</span>
                                <div class="card-body">
                                 <a data-id="{{$item->keyword}}" id="detail-report-harian" href="#"><p class="card-text">{{$item->question}}</p></a> 
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>

        </div>

    </div>


@endsection

@section('javascript')
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function(){
            $(document).on('click', '#detail-report-harian', function(){
                let id = $(this).data('id')
                $.ajax({
                    url: "{{route('admin.report.harianDetail')}}",
                    type: "GET",
                    data: {
                        keyword: id
                    },
                    dataType: "JSON",
                    success: function(result){
                        let numbers = "";
                        result.forEach((item, index)=> {
                            numbers += `<p>${item.number_destination}</p>`
                        });
                        $('.modal-body').html(numbers)
                        $("#exampleModal").modal('toggle')
                    }
                })
            })
        })
    </script>
@endsection