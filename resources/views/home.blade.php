@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            @if (Session::has('error'))
                <div class="alert alert-danger">{{ Session::get('error') }}</div>
            @endif
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>
                @if($isExamAssigned)
                @foreach($quizzes as $quiz)
                <div class="card-body">
                    <p><h3>{{ $quiz->name }}</h3></p>
                    <p>About Exam:{{ $quiz->description }}</p>
                    <p>Time Allocated:{{ $quiz->minutes }}</p>
                    <p>Number of question:{{ $quiz->questions->count() }}</p>
                    <p>
                        @if (!in_array($quiz->id,$wasQuizCompleted))
                            <a href="/quiz/{{ $quiz->id }}">
                                <button class="btn btn-success">Start Quiz</button>
                            </a>
                            @else
                            <span class="float-right">Completed</span>
                        @endif
                    </p>
                </div>
                @endforeach
                @else
                <p>You have not assigned any exam</p>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
