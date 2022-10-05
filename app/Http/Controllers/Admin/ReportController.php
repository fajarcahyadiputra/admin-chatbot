<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MessageReply;
use Barryvdh\DomPDF\Facade\Pdf;

class ReportController extends Controller
{
    public function harian()
    {
        $today = date('d');
        $dataMessageReply = MessageReply::selectRaw('type,keyword, number_destination,message,question,  DAY(created_at) AS import_year, count(*) AS total')
        ->whereRaw("DAY(created_at) = {$today}")
        ->groupBy('keyword', 'import_year')
        ->orderBy('total','ASC')
        ->get();
     return view('admin.report.harian', compact('dataMessageReply'));
    }
    public function reportHarianPdf(){
        $today = date('d');
        $data = MessageReply::selectRaw('type,keyword, number_destination,message,question,  DAY(created_at) AS import_year, count(*) AS total')
        ->whereRaw("DAY(created_at) = {$today}")
        ->groupBy('keyword', 'import_year')
        ->orderBy('total','ASC')
        ->get();
        $pdf = Pdf::loadView('admin.report.reportHarianPdf', compact('data'))->setPaper('a4', 'landscape');
        return $pdf->stream();
    }
    public function reportharianDetail()
    {
        $today = date('d');
        $keyword = request()->input('keyword');
        // $data = MessageReply::selectRaw('type,keyword, number_destination,message,question,  DAY(created_at) AS import_year, count(*) AS total')
        // ->whereRaw("DAY(created_at) = {$today}")
        // // ->where('keyword', $keyword)
        // ->groupBy('keyword', 'import_year')
        // ->orderBy('total','ASC')
        // ->get();
        $data = MessageReply::selectRaw('type,keyword, number_destination,message,question,  DAY(created_at) AS import_year')
        ->where('keyword', $keyword)
        ->whereRaw("DAY(created_at) = {$today}")
        ->get();
        return response()->json($data);
    }
}
