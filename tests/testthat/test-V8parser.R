test_that("V8 parser with a `Tag` attribute.", {
  skip_if_not_installed("V8")
  skip_if(substr(V8::engine_info()$version, 1 , 1) < 6, "V8 engine too old.")
  jsxString <-
    '<Button leftIcon={<EmailIcon />} colorScheme=\"teal\"></Button>'
  code <- capture.output(jsxString2code(jsxString, clipboard = FALSE))
  expect_equal(
    code,
    "Tag$Button(leftIcon = Tag$EmailIcon(), colorScheme = \"teal\")"
  )
})

test_that("V8 parser with a JavaScript object attribute.", {
  skip_if_not_installed("V8")
  skip_if(substr(V8::engine_info()$version, 1 , 1) < 6, "V8 engine too old.")
  jsxString <-
    '<Button obj={{a: 1}}></Button>'
  code <- capture.output(jsxString2code(jsxString, clipboard = FALSE))
  expect_equal(
    code,
    "Tag$Button(obj = list(a = 1L))"
  )
})

test_that("V8 parser with a JavaScript array attribute.", {
  skip_if_not_installed("V8")
  skip_if(substr(V8::engine_info()$version, 1 , 1) < 6, "V8 engine too old.")
  jsxString <-
    '<Button arr={["x","y"]}>Click me</Button>'
  code <- capture.output(jsxString2code(jsxString, clipboard = FALSE))
  expect_equal(
    paste0(stringr::str_trim(code), collapse=""),
    "Tag$Button(arr = list(\"x\", \"y\"),\"Click me\")"
  )
})

test_that("V8 parser with a `jseval` attribute.", {
  skip_if_not_installed("V8")
  skip_if(substr(V8::engine_info()$version, 1 , 1) < 6, "V8 engine too old.")
  jsxString <-
    '<Button onClick={() => alert("hi")}>Click me</Button>'
  code <- capture.output(jsxString2code(jsxString, clipboard = FALSE))
  expect_equal(
    paste0(stringr::str_trim(code), collapse=""),
    "Tag$Button(onClick = jseval(\"() => alert(\\\"hi\\\")\"),\"Click me\")"
  )
})

test_that("V8 parser with a misformed JSX string.", {
  skip_if_not_installed("V8")
  skip_if(substr(V8::engine_info()$version, 1 , 1) < 6, "V8 engine too old.")
  jsxString <-
    '<  Input id="hi" type="text" /  >'
  code <- capture.output(jsxString2code(jsxString, clipboard = FALSE))
  expect_equal(
    code,
    "Tag$Input(id = \"hi\", type = \"text\")"
  )
})
