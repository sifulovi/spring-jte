## HLO Spring boot with JTE template Engine

Lets assume we want to design our pages using layouts. Here

we have designed a simple layout page

``` 
main.jte

@import com.sio.springjte.Page (1)
@import gg.jte.Content (2)

@param Page page (3)
@param Content content (4)
@param Content footer = null (5)

<head>
    @template.layout.head(page = page) (6) Ref 1
</head>
<body>
<h1>${page.description()}</h1>
<div class="content">
    ${content} (7)
</div>
@if (footer != null)  (8)
    <div class="footer">
        ${footer}  (9)
    </div>
@else  (10)
    Public footer!
@endif (11)
</body>
```

``` 
Ref 1

head.jte
@param com.sio.springjte.Page page

@if(page.title() != null)
    <meta name="description" content="${page.description()}">
@endif
<title>${page.title()}</title>

```

1. On 1 & 3 Basically we import a class Name **Page** here.
2. On 2 & 4 & 5 we import a class from **JTE**.
3. On 6 we created another layout that takes an input i.e Page and render on Ref 1.
4. On 7 & 9 it will replace with contents that will come from origin page.
5. On 8 10 11 just a basic conditional syntax to show or hide elements.

Now the original page that uses the layout will be...

``` 
login.jte
@import com.sio.springjte.Page
@param Page welcomePage

@template.layout.main(
page = welcomePage,
content = @`
    <p>Welcome, ${welcomePage.title()}.</p>
`
)

```


