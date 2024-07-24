<?php

namespace App\Http\Controllers;

use App\Models\Videos;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class VideoController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $videos = Videos::all();
        return view('videos.index', compact('videos'));
    }

    public function create()
    {
        return view('videos.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'video' => 'required|mimes:mp4,mov,avi,flv|max:20480',
        ]);

        $path = $request->file('video')->store('videos', 'public');

        Videos::create([
            'title' => $request->title,
            'path' => $path,
            'user_id' => Auth::id(),
        ]);

        return redirect()->route('videos.index')->with('success', 'Video uploaded successfully.');
    }
}
