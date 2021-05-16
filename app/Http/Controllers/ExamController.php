<?php

namespace App\Http\Controllers;

use App\Models\Question;
use Illuminate\Http\Request;
use App\Models\Quiz;
use App\Models\Result;
use Illuminate\Support\Facades\DB;

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

    public function removeExam(Request $request){
        $userId = $request->get('user_id');
        $quizId = $request->get('quiz_id');
        $quiz = Quiz::find($quizId);
        $result = Result::where('quiz_id',$quiz)->where('user_id',$userId)->exists();
        if($result){
            return redirect()->back()->with('message','This quiz is played by user so it cannot bre removed');
        }else{
            $quiz->users()->detach($userId);
            return redirect()->back()->with('message','Exam is now not assigned to that user!');
        }

    }

    public function getQuizQuestions(Request $request,$quizId){
        $authUser=auth()->user()->id;

        //check if user has been assigned to a partiular quiz
        $userId = DB::table('quiz_user')->where('user_id',$authUser)->pluck('quiz_id')->toArray();
        if(!in_array($quizId, $userId)){
            return redirect()->to('/home')->with('error','You are not assigned to this exam');
        }
        $quiz = Quiz::find($quizId);
        $time = Quiz::where('id',$quizId)->value('minutes');
        $quizQuestions = Question::where('quiz_id',$quizId)->with('answers')->get();
        $authUserHasPlayedQuiz = Result::where(['user_id'=>$authUser,'quiz_id'=>$quizId])->get();

        //has user played particular quiz
        $wasCompleted = Result::where('user_id',$authUser)->whereIn('quiz_id',(new Quiz)->hasQuizAttempted())->pluck('quiz_id')->toArray();
        if(in_array($quizId,$wasCompleted)){
            return redirect()->to('/home')->with('error','You already participated in this exam');
        }
        return view('quiz',compact('quiz','time','quizQuestions','authUserHasPlayedQuiz'));
    }

    public function postQuiz(Request $request){
        $questionId = $request['questionId'];
        $answerId = $request['answerId'];
        $quizId = $request['quizId'];

        $authUser = auth()->user();

        return $userQuestionAnswer = Result::updateOrCreate(
            ['user_id'=>$authUser->id,'quiz_id'=>$quizId,'question_id'=>$questionId],
            ['answer_id'=>$answerId]
        );

    }
}
