<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Quiz;

class ExamController extends Controller
{
    public function create(){
        return view('backend.exam.assign');
    }

    public function assignExam(Request $request){
        $quiz = (new Quiz)->assignExam($request->all());
        return redirect()->back()->with('message','Exam assigned to user successfully!');
    }

    public function userExam(Request $request){
        $quizzes = Quiz::get();
        return view('backend.exam.index',compact('quizzes'));
    }
}
