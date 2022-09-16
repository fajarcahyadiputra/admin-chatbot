@extends('admin.templates.app')
@section('title', 'REPORT HARIAN')
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
                                  <p class="card-text">{{$item->question}}</p>
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
