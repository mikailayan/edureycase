<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use App\Models\Books;
use App\Jobs\BookDeleteJob;

class UdereyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = Cache::remember('books', 3600, function () {
           return $books = Books::with('authors')->get();
        });
        return $books;
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $books = Books::findOrFail($id);
        $books->name = $request->name;
        $books->save();
        if($books){
            event(new \App\Events\BooksUpdate($books));
        }
        return $books;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        BookDeleteJob::dispatch($id);
    }
}
