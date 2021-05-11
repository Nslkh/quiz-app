<?php

namespace App\Http\Controllers;

use App\Models\Result;
use App\Models\Quiz;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if(auth()->user()->is_admin==1){
            return redirect('/');
        }

        $authUser = auth()->user()->id;
        $assignQuizId = [];
        $user = DB::table('quiz_user')->where('user_id',$authUser)->get();
        foreach($user as $u){
            array_push($assignQuizId,$u->quiz_id);
        }
        $quizzes = Quiz::whereIn('id',$assignQuizId)->get();

        $isExamAssigned = DB::table('quiz_user')->where('user_id',$authUser)
        ->exists();
        $wasQuizCompleted = Result::where('user_id', $authUser)->whereIn('quiz_id',(new Quiz)->hasQuizAttempted())->pluck('quiz_id')->toArray();
        
        return view('home',compact('quizzes','wasQuizCompleted','isExamAssigned'));
    }
}
