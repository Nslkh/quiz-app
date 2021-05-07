@extends('backend.layouts.master')

  @section('title', 'create quiz')
  
  @section('content')

  <div class="span9">
    <div class="contetn">
      <div class="module">
        <div class="module-head">
          <h3>Create Quiz</h3>
        </div>
        <div class="module-body">
          <div class="control-group">
            <label class="control-label"for="">Quiz Name</label>
            <div class="controls">
              <input type="text" name="name" class="span8"
              placeholder="name of the quiz" value="{{ old('name') }}">
              
              @error('name')
               <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
               </span>
              @enderror
            </div>

            <label class="control-label"for="">Quiz Description</label>
            <div class="controls">             
              <textarea name="description" class="span8"
              value="{{ old('description') }}"></textarea>
              @error('name')
               <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
               </span>
              @enderror
            </div>

            <label class="control-label"for="">Quiz Minutes</label>
            <div class="controls">
              <input type="text" name="minutes" class="span8"
              placeholder="minutes" value="{{ old('minutes') }}">
              
              @error('minutes')
               <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
               </span>
              @enderror
            </div>
            
            <div class="controls">
              <button type="submit" class="btn btn-success">Submit</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection