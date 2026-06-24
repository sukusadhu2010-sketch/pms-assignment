<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller {
    public function login( Request $request ) {

        try {
            $validated = $request->only( 'email', 'password' );
            $validated = $request->validate( [
                'email' => 'required|email',
                'password' => 'required',
            ] );
            // if ( $validated->fails() ) {
            //     return response()->json( [ 'message' => 'Invalid credentials' ], 422 );
            // }

            if ( ! auth()->attempt( [
                'email' => $request->email,
                'password' => $request->password
            ] ) ) {
                return response()->json( [ 'message' => 'Invalid credentials' ], 401 );
            }

            $user = Auth::user();

            $tokenString = $user->createToken( 'MyApp' )->accessToken;
            // Returns plaintext string
            return response()->json( [ 'status'=>true, 'token' => $tokenString, 'data'=>Auth::user() ], 200 );
        } catch ( \Throwable $th ) {
            return response()->json( [ 'status'=>false, 'message' => 'An error occurred' ], 200 );
        }

    }
}