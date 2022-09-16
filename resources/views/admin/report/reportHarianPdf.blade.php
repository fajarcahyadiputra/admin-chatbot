<table style="width: 100%" border="1">
    <thead>
        <tr>
            <th class="checkbox-column text-center">No</th>
            <th>Question</th>
            <th>Total</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($data as $index => $item)
            <tr>
                <td class="text-center"><b>{{ $index + 1 }}</b></td>
                <td class="text-center">{{ $item->question }}</td>
                <td class="text-center">{{ $item->total }}</td>
            </tr>
        @endforeach
    </tbody>
</table>