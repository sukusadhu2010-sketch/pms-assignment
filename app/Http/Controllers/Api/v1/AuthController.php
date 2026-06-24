<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AuthController extends Controller {
    public function login( Request $request ) {
        $request->validate( [
            'email' => 'required|email',
            'password' => 'required',
        ] );

        if ( !auth()->attempt( $request->only( 'email', 'password' ) ) ) {
            return response()->json( [ 'message' => 'Invalid credentials' ], 401 );
        }

        $token = auth()->user()->createToken( 'auth_token' )->plainTextToken;

        return response()->json( [
            'access_token' => $token,
            'token_type' => 'Bearer',
        ] );
    }
}