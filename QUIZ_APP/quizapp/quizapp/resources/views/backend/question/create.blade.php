@extends('backend.layouts.master')

	@section('title','create quiz')

	@section('content')

	<div class="span9">
     <div class="content">

     	@if(Session::has('message'))

     		<div class="alert alert-success">{{Session::get('message')}}</div>
     	@endif



     <form action="{{route('question.store')}}" method="POST">@csrf
			
	<div class="module">
            <div class="module-head">
                <h3>Create Question</h3>
            </div>


            <div class="module-body">
                 <div class="control-group">
				<label class="control-lable" for="name">Choose Quiz</label>
				<div class="controls"> 
					<select name="quiz" class="span8 ">
						@foreach(App\Quiz::all() as $quiz)
						<option value="{{$quiz->id}}">{{$quiz->name}}</option>
						@endforeach

					</select>
				</div>
			     @error('question')
			    <span class="invalid-feedback" role="alert">
			        <strong>{{ $message }}</strong>
			    </span>
			@enderror      

			</div>

            <div class="control-group">
				<label class="control-lable" for="name">Question name</label>
				<div class="controls"> 
					<input type="text" name="question" class="span8 @error('name') border-red @enderror" placeholder="name of a quiz" value=" {{old('questioin')}}   " >
				</div>
			     @error('question')
			    <span class="invalid-feedback" role="alert">
			        <strong>{{ $message }}</strong>
			    </span>
			@enderror      

			</div>

			 <div class="control-group">
				<label class="control-lable" for="options">Options</label>
				<div class="controls"> 
					@for($i=0;$i<4;$i++)
					<input type="text" name="options[]" class="span7 @error('name') border-red @enderror" placeholder=" options{{$i+1}}" required="" >

					<input type="radio" name="correct_answer" value="{{$i}}"><span>Is correct answer</span>
					@endfor
				</div>
			     @error('question')
			    <span class="invalid-feedback" role="alert">
			        <strong>{{ $message }}</strong>
			    </span>
			@enderror      

			</div>


			




			


			<div class="control-group">
				<div class="controls">
					<button type="submit" class="btn btn-success">Submit</button>
				</div>

		    </div>


   		</div>
	</div>

</form>


</div>
</div>
                      
                    
@endsection