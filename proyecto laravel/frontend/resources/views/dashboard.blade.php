@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    <h1>Welcome to the Dashboard</h1>
                    
                    <p>This is a simple dashboard interface that connects Laravel with a Python backend.</p>
                    
                    <div class="py-data-container mt-4">
                        <h3>Data from Python Backend</h3>
                        
                        @if(isset($pythonData))
                            <div class="alert alert-success">
                                <pre>{{ json_encode($pythonData, JSON_PRETTY_PRINT) }}</pre>
                            </div>
                        @else
                            <div class="alert alert-info">
                                No data received from Python backend yet.
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

