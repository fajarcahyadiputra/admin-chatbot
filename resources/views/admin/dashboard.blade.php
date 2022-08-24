@extends('admin.templates.app')
@section('title', 'Dashboard')
@section('content')
    <div class="box-whatsapp-api">
        <h1>whatsapp API</h1>

        <div class="box-whatsapp-api__qrcode">
            <p>please wait.......</p>
        </div>

        <div class="box-whatsapp-api__logs">
            <h4>Logs :</h4>
            <ul id="ul-logs">

            </ul>
        </div>
    </div>
@endsection
@section('javascript')
    <script src="https://cdn.socket.io/4.5.0/socket.io.min.js"
        integrity="sha384-7EyYLQZgWBi67fBtVxw60/OWl1kjsfrPFcaU0pp0nAh+i8FD068QogUvg85Ewy1k" crossorigin="anonymous">
    </script>
    <script>
        const ulLogs = document.getElementById('ul-logs');
        const boxQrcodeImage = document.querySelector('.box-whatsapp-api__qrcode');
        const socket = io('http://localhost:5000');
        socket.on('message', (message) => {
            if (message == 'Ready...') {
                boxQrcodeImage.innerHTML = '<p>Ready.....</p>';
            } else {
                let li = document.createElement('li');
                li.innerHTML = message;
                ulLogs.appendChild(li);
            }
        })
        socket.on('qrcode', (url) => {
            console.log(url);
            boxQrcodeImage.innerHTML = '';
            boxQrcodeImage.innerHTML = `<img id="qrcode-img" src="${url}" id="qrcode" alt="qrcode-image">`
        })
    </script>
@endsection
