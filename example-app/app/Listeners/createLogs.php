<?php

namespace App\Listeners;

use App\Events\BooksUpdate;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Models\Logs;



class createLogs
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  \App\Events\BooksUpdate  $event
     * @return void
     */
    public function handle(BooksUpdate $event)
    {
        $logs = new Logs();
        $logs->log_type = "books_update";
        $logs->save();
    }
}
