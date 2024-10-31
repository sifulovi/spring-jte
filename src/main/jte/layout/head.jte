@param  com.sio.springjte.Page page

@if(page.title() != null)
    <meta name="description" content="${page.description()}">
@endif
<title>${page.title()}</title>