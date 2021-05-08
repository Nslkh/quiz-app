<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Question;
use App\Answer;
class Answer extends Model
{
    protected $fillable = ['question_id','answer','is_correct'];

    public function question(){
    	return $this->belongsTo(Question::class);
    }



    public function storeAnswer($data,$question){
    	foreach($data['options'] as $key=>$option){
    		$is_correct =false;
    		if($key==$data['correct_answer']){
    			$is_correct=true;
    		}

    		$answer = Answer::create([
    			'question_id'=> $question->id,
    			'answer'=>$option,
    			'is_correct'=>$is_correct
    		]);

    	}
    }
    public function updateAnswer($data,$question){
        $this->deleteAnswer($question->id);
        $this->storeAnswer($data,$question);
    }

    public function deleteAnswer($questionId){
        Answer::where('question_id',$questionId)->delete();
    }
}
