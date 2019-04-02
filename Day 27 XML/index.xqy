
<html lang="en">
<head>
    <title>XML</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">0</script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js">0</script>

</head>
    <body>
    <div class="container">
    <table class="table table-striped">
        <thead>
            <tr>   
                <th>Title</th>
                <th>Author</th>
                <th>Year</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
        { 
            for $x in doc("books.xml") /bookstore/book
            order by $x /price descending 
            return <tr>                   
                    <td>{data($x/title)}</td>
                    <td>{data($x/author)}</td>
                    <td>{data($x/year)}</td>
                    <td>{data($x/price)}</td>
                    </tr>
        }
        </tbody>
    </table>
    </div>
    </body>
</html>