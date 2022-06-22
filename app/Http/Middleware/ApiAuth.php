<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ApiAuth
{
    const TOKEN = "5UHJYsbVkfySnulJ3VvdYoml6JMgdES3";

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if ((!is_null(Auth::user())) ||
            ($request->has('token') && $request->get('token') == ApiAuth::TOKEN)
        ) {
            return $next($request);
        }

        return response()->json([
            'status' => 'error',
            'message' => 'Access denied',
        ], 403);
    }
}
