<%@ page import="java.util.Vector" %>
<%@ page import="java.io.PrintStream"  %>
<%@ page import="java.lang.System"%>


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>



<html lang="zxx">

<head>
    <meta charset="utf-8">
    <title>Universitas &#x270C</title>

    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- theme meta -->
    <meta name="theme-name" content="godocs-bulma" />

    <!-- ** Plugins Needed for the Project ** -->
    <!-- plugins -->
    <link rel="stylesheet" href="media/css/bulma.min.css">
    <link rel="stylesheet" href="media/css/themify-icons.css">
    <!-- Main Stylesheet -->
    <link href="media/css/style.css" rel="stylesheet">

    <!--Favicon-->
    <link rel="shortcut icon" href="media/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="imedia/mages/favicon.ico" type="image/x-icon">

</head>

<body><script id="__bs_script__">//<![CDATA[
(function() {
    try {
        var script = document.createElement('script');
        if ('async') {
            script.async = true;
        }
        script.src = 'media/js/browser-sync-client.js?v=2.29.3'.replace("HOST", location.hostname);
        if (document.body) {
            document.body.appendChild(script);
        } else if (document.head) {
            document.head.appendChild(script);
        }
    } catch (e) {
        console.error("Browsersync: could not append script tag", e);
    }
})()
//]]></script>



<nav class="navbar is-sticky-top navigation" role="navigation" aria-label="main navigation">
    <div class="container">
        <div class="navbar-brand">
            <a class="navbar-item" href="index.html">
                <img class="img-fluid" src="media/images/elpoliamo.png" alt="godocs" width="155px">
            </a>

            <a role="button" class="navbar-burger burger" aria-expanded="false" data-target="navbar-links">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>

        <div id="navbar-links" class="navbar-menu">
            <div class="navbar-start ml-auto">
                <a class="navbar-item" href="index.jsp">Pagina principal &#x261D</a>
                <a class="navbar-item" href="list.html">Nueva pagina &#10067</a>
                <a class="navbar-item" href="search.html">Pagina de busquedad &#11088</a>
            </div>


        </div>
    </div>
</nav>

<!-- banner -->
<section class="section pb-0">
    <div class="container">
        <div class="columns is-align-items-center">
        <div class="column is-4-desktop has-text-centered hidden-on-tablet">

            <img src="media/images/banner.jpg" alt="illustration" class="img-fluid">
        </div>
        <div class="columns is-justify-content-space-between is-align-items-center">
            <div class="column is-7-desktop has-text-centered-mobile has-text-centered-tablet has-text-left-desktop">
                <h1 class="mb-4">Tabla de palíndromos &#10024</h1>
                <form action="index.jsp" method="post">
                    <input type="text" name="letra" placeholder="Ingrese una letra">
                    <input type="submit" value="Verificar">
                </form>

    <%
        // Obtenemos la letra del formulario
        String letra = request.getParameter("letra");

        // Verificamos si la variable letra es nula
        if (letra == null) {
            // Manejamos el error

            boolean estado=false;
            return;
        }

        // Convertimos la letra a minúsculas
        letra = letra.toLowerCase();

        // Creamos un vector para almacenar las letras
        Vector<String> letras = new Vector<>();

        // Agregamos la letra al vector
        letras.add(letra);

        // Inversamos la letra
        String letraInvertida = new StringBuilder(letra).reverse().toString();

        // Verificamos si la letra es un palíndromo
        boolean esPalindromo = letra.equalsIgnoreCase(letraInvertida);

        // Mostramos el resultado
    %>

                <table border="1">
                    <tr>
                        <th>Letra &#9997</th>
                        <th>Es palíndromo &#9989</th>
                    </tr>
                    <tr>
                        <td><%= letra %></td>
                        <td><%= esPalindromo ? "Sí" : "No" %></td>
                    </tr>
                </table>

            </div>


        </div>

     </div>
    </div>
</section>


    <!-- /banner -->

<!-- topics -->
<section class="section pb-0">
    <div class="container">
        <h2 class="section-title">Datos primitivos de java &#10067</h2>
        <div class="columns is-multiline">
            <!-- topic -->
            <div class="column is-3-widescreen is-4-desktop is-6-tablet">
                <div class="card match-height">
                    <div class="card-body">
                        <i class="card-icon ti-panel mb-5"></i>
                        <h3 class="card-title h4">Int</h3>
                        <% int edad=30;%>

                        <p class="card-text">Almacena números enteros. Rango: -2,147,483,648 a 2,147,483,647.
                                              Ejemplo variable edad = <%=edad %></p>

                        <a href="list.html" class="stretched-link"></a>
                    </div>
                </div>
            </div>
            <!-- topic -->
            <div class="column is-3-widescreen is-4-desktop is-6-tablet">
                <div class="card match-height">
                    <div class="card-body">
                        <i class="card-icon ti-credit-card mb-5"></i>
                        <h3 class="card-title h4">float</h3>
                        <% float numerodecimal=3.14f;%>
                        <p class="card-text">Almacena números de punto flotante de precisión simple. Se utiliza para números con decimales. Ejemplo: el número  pi es <%=numerodecimal%></p>
                        <a href="list.html" class="stretched-link"></a>
                    </div>
                </div>
            </div>
            <!-- topic -->
            <div class="column is-3-widescreen is-4-desktop is-6-tablet">
                <div class="card match-height">
                    <div class="card-body">
                        <i class="card-icon ti-package mb-5"></i>
                        <h3 class="card-title h4">char</h3>
                        <% char caracter='a';%>
                        <p class="card-text">Almacena un único carácter Unicode. Se utiliza para representar
                            caracteres individuales. Ejemplo:.<%=caracter%></p>
                        <a href="list.html" class="stretched-link"></a>
                    </div>
                </div>
            </div>
            <!-- topic -->
            <div class="column is-3-widescreen is-4-desktop is-6-tablet">
                <div class="card match-height">
                    <div class="card-body">
                        <i class="card-icon ti-settings mb-5"></i>
                        <h3 class="card-title h4">boolean</h3>
                        <% boolean pelo=false;%>
                        <p class="card-text">Almacena valores booleanos, es decir, true o false. Se utiliza
                            para representar condiciones lógicas ejemplo si me conoces sabes que es <%=pelo%>  que tengo pelo corto..</p>
                        <a href="list.html" class="stretched-link"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /topics -->

<!-- faq -->
<section class="section pb-0">
    <div class="container">
        <h2 class="section-title">Que es un palindromo &#128640</h2>
        <div class="columns masonry-wrapper">
            <!-- faq item -->
            <div class="column is-6-desktop">
                <div class="card card-lg">
                    <div class="card-body">
                        <h3 class="card-title h5">En general &#128513</h3>
                        <p class="card-text content">Lorem, <a href="https://examplesite.com">link</a> <em></em>
                            Un palíndromo es una palabra, frase, número o cualquier secuencia de caracteres que se lee
                            igual de izquierda a derecha que de derecha a izquierda. En otras palabras, es un texto que
                            conserva su significado al invertir el orden de sus caracteres.
                            <br><br>
                            Ejemplos de palíndromos en palabras y frases:
                            <br><br>
                            1. "reconocer"
                            <br><br>
                            2. "anilina"
                            <br><br>
                            3. "la sal"
                            <br><br>
                            4. "amor a roma"
                            <br><br>
                            5. "dábale arroz a la zorra el abad"
                            <br><br>
                            Ejemplos de palíndromos en números:
                            <br><br>
                            1. 121
                            <br><br>
                            2. 1331
                            <br><br>
                            3. 12321
                            <br><br>

                            En el contexto de programación, a menudo se realiza un proceso para verificar
                            si una palabra, frase o número es un palíndromo, lo que implica invertir los caracteres
                            y compararlos con la versión original para determinar si son iguales. Si lo son,
                            se considera un palíndromo; de lo contrario, no lo es.

                        </p>
                    </div>
                </div>
            </div>
            <!-- faq item -->
            <div class="column is-6-desktop">
                <div class="card card-lg">
                    <div class="card-body">
                        <h3 class="card-title h5">En java como lo desarrollaría</h3>
                        <p class="card-text content">
                            Puedes desarrollar un programa en Java para verificar si una palabra o frase es un palíndromo siguiendo estos pasos:

                            Leer la entrada del usuario: Solicita al usuario que ingrese una palabra o frase. Puedes hacerlo mediante la clase
                            Scanner para leer desde la entrada estándar o a través de un formulario en una aplicación web.

                            Eliminar espacios y convertir a minúsculas: Para que el programa sea insensible a mayúsculas y espacios en blanco,
                            elimina los espacios y convierte toda la entrada a minúsculas.

                            Verificar si es un palíndromo: Compara la cadena original con su reverso. Si son iguales, la palabra o frase es un palíndromo..</p>
                    </div>
                </div>
            </div>




        </div>
    </div>
</section>
<!-- /faq -->

<!-- call to action -->
<section class="section">
    <div class="container">
        <div class="columns is-align-items-center">
            <div class="column is-4-desktop has-text-centered hidden-on-tablet">
                <img src="media/images/cta-illustration.jpg" class="img-fluid" alt="">
            </div>
            <div class="column is-8-desktop has-text-centered-mobile has-text-centered-tablet has-text-left-desktop">
                <h2 class="mb-3">Datos primitivos en java</h2>
                <p>Los datos primitivos en Java son tipos de datos fundamentales que representan valores simples y básicos. Estos tipos de datos primitivos se utilizan para almacenar información numérica, caracteres individuales y valores booleanos. A diferencia de los objetos y las clases, los datos primitivos no son instancias de ninguna clase y tienen una representación directa en memoria, lo que los hace más eficientes en términos de almacenamiento y rendimiento.
                    <br><br>
                    Java proporciona ocho tipos de datos primitivos:
                    <br><br>
                    Tipos enteros:
                    <br><br>
                    byte: Almacena números enteros pequeños. Rango: -128 a 127.
                    <br><br>
                    short: Almacena números enteros más grandes que byte. Rango: -32,768 a 32,767.
                    <br><br>
                    int: Almacena números enteros. Rango: -2,147,483,648 a 2,147,483,647.
                    <br><br>
                    long: Almacena números enteros largos. Rango: -9,223,372,036,854,775,808 a 9,223,372,036,854,775,807.
                    Tipos en coma flotante


                    <br> end</p>
                <a href="contact.html" class="btn btn-primary">boton</a>
            </div>
        </div>
    </div>
</section>
<!-- /call to action -->

<footer>
    <div class="container">
        <div class="columns is-multiline is-align-items-center border-bottom py-5">
            <div class="column is-4-desktop is-12-tablet">
                <ul class="list-inline footer-menu has-text-centered has-text-left-desktop">
                    <li class="list-inline-item"><a href="changelog.html">datos primitivos</a></li>
                    <li class="list-inline-item"><a href="contact.html">java</a></li>
                    <li class="list-inline-item"><a href="search.html">palindromo</a></li>
                </ul>
            </div>
            <div class="column is-4-desktop is-12-tablet">
                <a class="navbar-brand is-justify-content-center" href="index.html">
                    <img class="img-fluid" src="media/images/elpoliamo.png" alt="Hugo documentation theme">
                </a>
            </div>
            <div class="column is-4-desktop is-12-tablet">
                <ul class="list-inline social-icons has-text-right-desktop has-text-centered">
                    <li class="list-inline-item"><a href="#"><i class="ti-facebook"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="ti-twitter-alt"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="ti-github"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="ti-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="py-4 has-text-centered">
            <small class="text-light">Copyright © 2020 - Design &amp; Developed by <a href="https://themefisher.com">themefisher</a></small>
        </div>
    </div>
</footer>

<!-- plugins -->
<script src="media/js/jquery.min.js"></script>
<script src="media/js/masonry.min.js"></script>
<script src="media/js/clipboard.min.js"></script>
<script src="media/js/jquery.matchHeight-min.js"></script>

<!-- Main Script -->
<script src="media/js/script.js"></script>

</body>
</html>