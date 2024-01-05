require("filetype").setup {
  overrides = {
      extensions = {
        tf = "terraform",
        tfvars = "terraform",
        tfstate = "json",
        html = "html",
        sh = "sh",
        md = "markdown",
        tpl = "helm",
        py = "python",
      },
    },
  }
