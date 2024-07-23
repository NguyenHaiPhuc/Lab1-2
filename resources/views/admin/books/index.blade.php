<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
    </script>

    <style>
        .navbar {
            margin-bottom: 20px;
        }

        .table th,
        .table td {
            vertical-align: middle;
        }

        .action-btns form {
            display: inline;
        }

        .action-btns a,
        .action-btns button {
            margin-right: 5px;
        }

        .btn-group {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .btn-group h1 {
            margin: 0;
        }

        .text-center .btn-group {
            margin-bottom: 20px;
        }

        .table-responsive {
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Book Management</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('admin.books.index') }}">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('admin.books.create') }}">Add Book</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="container">
        {{-- <div class="text-center mb-4">
            <a class="btn btn-primary btn-lg" href="{{ route('admin.books.create') }}">Thêm</a>
        </div> --}}
        <div class="btn-group">
            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseHighest" role="button"
                aria-expanded="false" aria-controls="collapseHighest">
                GIÁ CAO NHẤT
            </a>
            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseLowest" role="button"
                aria-expanded="false" aria-controls="collapseLowest">
                GIÁ THẤP NHẤT
            </a>
        </div>

        <div class="collapse table-responsive" id="collapseHighest">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Title</th>
                        <th>Thumbnail</th>
                        <th>Author</th>
                        <th>Publisher</th>
                        <th>Publication Date</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Category</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($highestPricedBooks as $index => $item)
                        <tr>
                            <th>{{ $index + 1 }}</th>
                            <td>{{ $item->title }}</td>
                            <td>
                                <img src="{{ Storage::url($item->thumbnail) }}" alt="Thumbnail" width="50"
                                    height="50">
                            </td>
                            <td>{{ $item->author }}</td>
                            <td>{{ $item->publisher }}</td>
                            <td>{{ $item->publication }}</td>
                            <td>{{ $item->price }}</td>
                            <td>{{ $item->quantity }}</td>
                            <td>{{ $item->category_name }}</td>
                            <td class="action-btns">
                                <a class="btn btn-success" href="{{ route('admin.books.show', $item->id) }}">Xem</a>
                                <a class="btn btn-warning" href="{{ route('admin.books.edit', $item->id) }}">Sửa</a>
                                <form action="{{ route('admin.books.destroy', $item->id) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger"
                                        onclick="return confirm('Bạn có chắc chắn muốn xóa sách này không?')">Xóa</button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div class="collapse table-responsive" id="collapseLowest">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Title</th>
                        <th>Thumbnail</th>
                        <th>Author</th>
                        <th>Publisher</th>
                        <th>Publication Date</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Category</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($lowestPricedBooks as $index => $item)
                        <tr>
                            <th>{{ $index + 1 }}</th>
                            <td>{{ $item->title }}</td>
                            <td>
                                <img src="{{ Storage::url($item->thumbnail) }}" alt="Thumbnail" width="50"
                                    height="50">
                            </td>
                            <td>{{ $item->author }}</td>
                            <td>{{ $item->publisher }}</td>
                            <td>{{ $item->publication }}</td>
                            <td>{{ $item->price }}</td>
                            <td>{{ $item->quantity }}</td>
                            <td>{{ $item->category_name }}</td>
                            <td class="action-btns">
                                <a class="btn btn-success" href="{{ route('admin.books.show', $item->id) }}">Xem</a>
                                <a class="btn btn-warning" href="{{ route('admin.books.edit', $item->id) }}">Sửa</a>
                                <form action="{{ route('admin.books.destroy', $item->id) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger"
                                        onclick="return confirm('Bạn có chắc chắn muốn xóa sách này không?')">Xóa</button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <hr>
        <div class="text-center mb-4">
            @foreach ($cate as $item)
                <a class="btn btn-success mx-2" href="{{ route('admin.books.findbycate', $item->id) }}">
                    {{ $item->name }}
                </a>
            @endforeach
        </div>
    </main>
</body>

</html>
