<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en-us">

  <head>
    <link href="http://gmpg.org/xfn/11" rel="profile">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="content-type" content="text/html; charset=utf-8">

    <!-- Enable responsiveness on mobile devices-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">

    <title>
      {{ if .IsHome }}
        {{ setting "page/head/title" }}
      {{ else }}
        {{ if .Title }}
          {{ .Title }} {{ if setting "page/head/title" }} &middot; {{ setting "page/head/title" }} {{ end }}
        {{ else }}
          {{ setting "page/head/title" }}
        {{ end }}
      {{ end }}
    </title>

    <!-- CSS -->
    <link rel="stylesheet" href="{{ asset "/css/poole.css" }}">
    <link rel="stylesheet" href="{{ asset "/css/syntax.css" }}">
    <link rel="stylesheet" href="{{ asset "/css/hyde.css" }}">

    <!-- External fonts -->
    <link href="//fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet" type="text/css">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400italic,400,600,700|Abril+Fatface" rel="stylesheet" type="text/css">

    <!-- Icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{{ asset "/apple-touch-icon-precomposed.png" }}">
    <link rel="shortcut icon" href="{{ asset "/favicon.ico"}}">

    <!-- Code highlighting -->
    <link rel="stylesheet" href="//menteslibres.net/static/highlightjs/styles/default.css?v0000">
    <script src="//menteslibres.net/static/highlightjs/highlight.pack.js?v0000"></script>
    <script>hljs.initHighlightingOnLoad();</script>

    <!-- Luminos -->
    <link rel="stylesheet" href="{{ asset "/css/luminos.css" }}">
    <script src="{{asset "js/main.js"}}"></script>


  </head>

  <body>

    <div class="content container">

      {{ if not .IsHome }}
        {{ if .BreadCrumb }}
          <ul class="breadcrumb">
            {{ range .BreadCrumb }}
              <li><a href="{{ asset .URL }}">{{ .Text }}</a></li>
            {{ end }}
          </ul>
        {{ end }}
      {{ end }}

      {{ if .Content }}

        {{ .ContentHeader }}

        {{ .Content }}

        {{ .ContentFooter }}

      {{ else }}

        {{ if .CurrentPage }}
          <h1>{{ .CurrentPage.Text }}</h1>
        {{ end }}

        <ul>
          {{ range .SideMenu }}
            <li>
              <a href="{{ asset .URL }}">{{ .Text }}</a>
            </li>
          {{ end }}
        </ul>

      {{end}}

      {{ if setting "page/body/copyright" }}
        <p>{{ setting "page/body/copyright" | html }}</p>
      {{ end }}

    </div>

  {{ if setting "page/body/scripts/footer" }}
    <script type="text/javascript">
      {{ setting "page/body/scripts/footer" | js }}
    </script>
  {{ end }}

  </body>
</html>
