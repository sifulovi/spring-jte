@import com.sio.springjte.Page
@param Page welcomePage

@template.layout.main(
page = welcomePage,
content = @`
    <p>Welcome, ${welcomePage.title()}.</p>
    <form action="" method="post">
        <div>
            <label for="username">Username</label>
            <input type="text" name="username" aria-label="username">
        </div>
        <div>
            <label for="username">Password</label>
            <input type="text" name="password" aria-label="password">
        </div>
        <div>
            <button>Submit</button>
            <a href="/">Goto Index</a>
        </div>

    </form>
`
)