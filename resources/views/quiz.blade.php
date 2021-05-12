
@extends('layouts.app')

@section('content')

<quiz-component
:time = "{{ $quiz->minutes }}"
:quizId = "{{ $quiz->id }}"
:quiz-questions = "{{ $quizQuestions }}"
:has-quiz-played = "{{ $authUserHasPlayedQuiz }}"
>
	
</quiz-component>

@endsection