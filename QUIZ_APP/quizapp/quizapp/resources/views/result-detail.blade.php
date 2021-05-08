@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">

        <div class="col-md-8">
            <center><h1>Your Result</h1></center>
        @foreach($results as $result)
            <div class="card">
                <div class="card-header">Result</div>

               
                <div class="card-body">
                    <p><strong>{{$result->question->question}}</strong></p>
                    @php
                    $i=1;

                        $answers = DB::table('answers')->where('question_id',$result->question_id)->get();
                        foreach($answers as $ans){

                            echo '<p>'.$i++.')'.$ans->answer.'</p>';
                    }


                    @endphp
                    <p>Your answer:{{$result->answer->answer}}</p>

                    @php

                        $correctAnswers= DB::table('answers')->where('question_id',$result->question_id)->where('is_correct',1)->get();
                        foreach($correctAnswers as $ans){

                            echo"Correct Answer:".'<b>'.$ans->answer.'</b>';

                        }

                    @endphp

                    @if($result->answer->is_correct)

                    <p>
                        Result:Correct
                    </p>
                    @else
                    <p>
                        Result:Incorrect
                    </p>
                    @endif
                    
                  
                </div>
               
            </div>

        @endforeach
        </div>
    </div>
</div>
@endsection
