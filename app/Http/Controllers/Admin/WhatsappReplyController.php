<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhatsappReply;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class WhatsappReplyController extends Controller
{
    public function index()
    {
        $waReplies = WhatsappReply::where('master_id', 0)->orderBy('keyword', 'ASC')->get();
        return view('admin.whatsapp_reply.index', compact('waReplies'));
    }
    public function create()
    {
        $maxKeyword = WhatsappReply::select(DB::raw('MAX(keyword) as max_keyword'))->first();
        return view('admin.whatsapp_reply.createWhatsappReply', compact('maxKeyword'));
    }
    public function store()
    {
        if (request()->ajax() && request()->method('POST')) {
            $requestBody = request()->except("_token");
            if (isset($requestBody['isActive'])) {
                $requestBody['isActive'] = 1;
            }
            //save photo
            if (request()->hasFile('media')) {
                if (request()->file('media')->isValid()) {
                    // cache the file
                    $file = request()->file('media');
                    $path = Storage::putFile(
                        'public/media',
                        $file
                    );
                    $requestBody['link_media'] = $path;
                }
            }
            if (!isset($requestBody['master_id'])) {
                $requestBody['master_id'] = 0;
            }
            if ($requestBody['isMaster'] == 'master') {
                $requestBody['roll_sub'] = 'master';
            } else {
                $requestBody['roll_sub'] = $requestBody['isMaster'];
            }
            $newWhatsappReply = WhatsappReply::create($requestBody);
            if ($newWhatsappReply) {
                return response()->json(true);
            } else {
                return response()->json(false);
            }
        } else {
            return response()->json(false);
        }
    }
    public function edit($id)
    {
        $whatsappReply = WhatsappReply::findorFail($id);
        return view('admin.whatsapp_reply.editWhatsappReply', compact('whatsappReply'));
    }
    public function update($id)
    {
        $whatsappReply = WhatsappReply::find($id);
        if (!$whatsappReply) {
            return response()->json(false);
        }
        if (request()->ajax() && request()->method('POST')) {
            $requestBody = request()->except("_token");
            if (isset($requestBody['isActive'])) {
                $requestBody['isActive'] = 1;
            }
            //save photo
            if (request()->hasFile("media")) {
                if (request()->file('media')->isValid()) {
                    // cache the file
                    $file = request()->file('media');
                    $path = Storage::putFile(
                        'public/media',
                        $file
                    );
                    $requestBody['link_media'] = $path;
                    if (Storage::exists($whatsappReply->link_media)) {
                        Storage::delete($whatsappReply->link_media);
                    }
                } else {
                    return response()->json(false);
                }
            }
            $whatsappReply->fill($requestBody);
            $whatsappReply->save();
            return response()->json(true);
        } else {
            return response()->json(false);
        }
    }
    public function destroy($id)
    {
        $whatsappReply = WhatsappReply::findOrFail($id);
        $oldImage = $whatsappReply->link_media;
        $whatsappReply->delete();
        if ($whatsappReply) {
            if ($whatsappReply->link_media && Storage::exists($oldImage)) {
                Storage::delete($oldImage);
            }
            return response()->json(true);
        } else {
            return response()->json(false);
        }
    }
    public function getsMaster()
    {

        $masters = WhatsappReply::where('roll_sub', request()->isMaster == 'sub1' ? 'master' : 'sub1')->orderBy('keyword', 'ASC')->get();
        $select = '<div id="' . request()->isMaster . '" class="row mb-4">
        <label for="name">Child Master</label>
        <div class="col-sm-12">
            <select name="master_id" id="childMaster" class="form-select">
            <option value="" disabled hidden selected>-- Select Child --</option>
            ';
        foreach ($masters as $key => $master) {
            $select .= '
            <option value="' . $master->id . '">' . $master->keyword . ' - ' . $master->name . '</option>';
        }
        $select .= '</select>
             </div>
        </div>';
        return $select;
    }
    public function show()
    {
        return response()->json('okok');
    }
    public function indexSub1($id)
    {
        $waReplies = WhatsappReply::where('master_id', $id)->orderBy('keyword', 'ASC')->get();
        $master = WhatsappReply::find($id);
        return view('admin.whatsapp_reply.sub1.index', compact('waReplies', 'master'));
    }
    public function createSub1($id)
    {
        $maxKeyword = WhatsappReply::select(DB::raw('MAX(keyword) as max_keyword'))->first();
        $master = WhatsappReply::find($id);
        return view('admin.whatsapp_reply.sub1.createSubWhatsappReply', compact('maxKeyword', 'master'));
    }
    public function storeSub1()
    {
        if (request()->ajax() && request()->method('POST')) {
            $requestBody = request()->except("_token");
            if (isset($requestBody['isActive'])) {
                $requestBody['isActive'] = 1;
            }
            //save photo
            if (request()->hasFile('media')) {
                if (request()->file('media')->isValid()) {
                    // cache the file
                    $file = request()->file('media');
                    $path = Storage::putFile(
                        'public/media',
                        $file
                    );
                    $requestBody['link_media'] = $path;
                }
            }
            $requestBody['master_id'] = request()->master_id;
            $requestBody['roll_sub'] = 'sub1';
            $newWhatsappReply = WhatsappReply::create($requestBody);
            if ($newWhatsappReply) {
                return response()->json(true);
            } else {
                return response()->json(false);
            }
        } else {
            return response()->json(false);
        }
    }
    public function indexSub2($id)
    {
        $waReplies = WhatsappReply::where('master_id', $id)->orderBy('keyword', 'ASC')->get();
        $master = WhatsappReply::find($id);
        return view('admin.whatsapp_reply.sub2.index', compact('waReplies', 'master'));
    }
}
