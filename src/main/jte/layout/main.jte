@import com.sio.springjte.Page
@import gg.jte.Content

@param Page page
@param Content content
@param Content footer = null

<head>
    @template.layout.head(page = page)
</head>
<body>
<h1>${page.description()}</h1>
<div class="content">
    ${content}
</div>
@if (footer != null)
    <div class="footer">
        ${footer}
    </div>
@else
    Public footer!
@endif
</body>