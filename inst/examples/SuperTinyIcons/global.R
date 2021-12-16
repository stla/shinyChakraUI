js <- function(icon){
  sprintf(
    "() => {
      setState(\'icon\', \'%s\');
      getHookProperty(\'disclosure\', \'onOpen\')();
    }",
    paste0(icon, "TinyIcon")
  )
}
