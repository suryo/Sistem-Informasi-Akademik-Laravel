<?php

namespace App\Http\Middleware;

use Closure;

class Asdos
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if ($request->user()->role != 'Asdos') {
            return redirect('/');
        }
        return $next($request);
    }
}