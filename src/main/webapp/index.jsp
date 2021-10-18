<%-- 
    Document   : index
    Created on : 29-09-2021, 19:34:27
    Author     : edisonjao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="sweetalert2.min.js"></script>
        <link rel="stylesheet" href="sweetalert2.min.css">
        <script type="text/javascript" src="js/script.js"></script>
        <title>Eventos&Co Inicio</title>
        <script>

            function corrEnv() {
                var corr = document.getElementById("correo").value;
                Swal.fire({
                    title: 'Seras contactado al Correo ' + corr + ' Confirma  y Envia si es Correcto por Favor?' ,
                    showDenyButton: true,
                    showCancelButton: false,
                    confirmButtonText: 'Enviar',
                    denyButtonText: `No Enviar`,
                }).then((result) => {
                    if (result.isConfirmed) {
                        Swal.fire('Correo enviado Exitosamente te contactaremos a la Brevedad Gracias por Confiar en Nosotros!', '', 'success')
                    } else if (result.isDenied) {
                        Swal.fire('No te Arrepientas de que te Contacten y te Brinden un Excelente Servicio', '', 'error')
                    }
                })
            }

            function emailCorr(valor) {
                re = /^([\da-z_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/
                if (!re.exec(valor)) {
                    Swal.fire('Ingresa un Correo Valido', '', 'error')
                } else {
                    corrEnv();
                }

            }
        </script>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-light bg-dark  shadow">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhRXXitGa1FYIVMRtvblMA6nzQvxEhuoec8ac9reuOaxqlT65P9pY6ShPwq5yiU9ctHZU&usqp=CAU" alt="Imagen del Logo" width="120" height="80">
                    </a>
                    <ul class="nav justify-content-end px-5">
                        <li class="nav-item mx-4">
                            <a class="nav-link text-white btn-outline-primary  rounded active" href="#">Inicio</a>
                        </li>
                        <li class="nav-item mx-4">
                            <a class="nav-link text-white btn-outline-primary  rounded" href="#">Conocenos</a>
                        </li>
                        <li class="nav-item mx-4">
                            <a class="nav-link text-white btn-outline-primary  rounded" href="servicios.jsp">Servicios</a>
                        </li>
                        <li class="nav-item mx-4">
                            <a class="nav-link text-white btn-outline-primary  rounded" href="#">Proximamente</a>
                        </li>
                        <li class="nav-item mx-4">
                            <a class="nav-link text-white btn-outline-primary shadow rounded" href="contacto.jsp">Contactanos</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <main class="mx-5">
            <div class="main container-fluid my-5 px-2">
                <div class="d-inline-flex justify-content-center ppalimg">
                    <h1 id="titulo">Agenda un Excelente Servicio</h1>
                    <a id="buttCotiz" href="contacto.jsp" class="btn btn-outline-dark ">Cotiza Aquí</a>
                    <div  id="primera" class="mainGrid">
                        <img class="images" src="./img/elefantebomba.jpg" alt="">
                    </div>
                    <div id="segunda" class="mainGrid">
                        <img class="images" src="./img/musica.jpg" alt="">
                    </div>
                    <div id="tercera" class="mainGrid">
                        <img class="images" src="./img/mesa2.jpg" alt="">
                    </div>
                    <div id="cuarta" class="mainGrid">
                        <img class="images" src="./img/osoVolador.jpg" alt="">
                    </div>
                    <div id="quinta" class="mainGrid">
                        <img class="images" src="./img/mesa5.jpg" alt="">
                    </div>
                    <div id="sexta" class="mainGrid">
                        <img class="images" src="./img/mesa6.jpg" alt="">
                    </div>
                    <div id="septima">
                        <img class="images" src="./img/pareja.jpg" alt="">
                    </div>
                </div>
            </div>

            <hr class="border border-dark">

            <h2 class="text-center text-secondary my-4">Nuestros Servicios</h2>
            <div class="container-fluid">
                <div class="row text-center">
                    <div class="col">
                        <h4 class="text-center text-secondary my-2">Cumpleaños</h4>
                        <a href="servicios.jsp"><img class="images2 images5" src="./img/confeti.jpg" alt=""></a>
                    </div>
                    <div class="col">
                        <h4 class="text-center text-secondary my-2">Empresariales</h4>
                        <a href="servicios.jsp"><img class="images2 images5" src="./img/company.jpg" alt=""></a>
                    </div>
                    <div class="col">
                        <h4 class="text-center text-secondary my-2">Aniversarios</h4>
                        <a href="servicios.jsp"> <img class="images2 images5" src="./img/aniversary.jpg" alt=""></a>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col">
                        <h4 class="text-center text-secondary my-2">Matrimonios</h4>
                        <a href="servicios.jsp"><img class="images5 images" src="./img/matrimonio.jpg" alt=""></a>
                    </div>
                    <div class="col my-3">
                        <h4 class="text-center text-secondary my-2">Baby Shower</h4>
                        <a href="servicios.jsp"><img class="images5 images" src="./img/babys.jpg" alt=""></a>
                    </div>
                </div>
            </div>

            <hr class="border border-dark my-4">

            <h2 class="text-center text-secondary my-4">Nuestros Testimonios</h2>
            <div class="slider">

                <a href="#slide-1" class="text-white">1</a>
                <a href="#slide-2" class="text-white">2</a>
                <a href="#slide-3" class="text-white">3</a>
                <a href="#slide-4" class="text-white">4</a>
                <a href="#slide-5" class="text-white">5</a>

                <div class="slides">
                    <div id="slide-1">
                        <img class="carruPhoto" src="./img/mesa2.jpg"><p style="font-size: 16px; margin: 10px;
                                                                         padding: 5px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit dignissim vehicula. Pellentesque sit amet metus eu turpis ornare volutpat. Integer eget metus at ex finibus gravida. Fusce mollis lorem nunc, non posuere libero viverra consequat. Nullam semper fringilla nisi. Maecenas sed tempus ante. Maecenas rutrum quam non ligula malesuada, ac euismod turpis semper. Vestibulum eu diam quis ante ornare ullamcorper. Aliquam felis nisi, pellentesque dignissim dapibus vitae, finibus at neque. Proin id nibh varius, convallis eros eu, congue arcu. Nulla elementum sem ut purus convallis elementum. Phasellus egestas mollis urna, finibus gravida nulla lacinia vel. Integer euismod dui vel leo aliquet, nec semper nisl pulvinar.
                            Aenean in placerat ipsum. Nam ullamcorper, erat quis pellentesque varius, justo nulla ultrices eros, nec pretium mi nisi sit amet orci. Integer sagittis consectetur metus, a ullamcorper dui laoreet non. Nunc varius posuere nisi. Curabitur ultrices sem quis gravida tincidunt. Nulla massa felis, tempus sed ipsum at, feugiat pellentesque dui. Praesent sed lacus nec libero auctor pharetra.
                        </p>
                    </div>
                    <div id="slide-2">
                        <img class="carruPhoto" src="./img/mesa5.jpg"><p style="font-size: 16px; margin: 10px;
                                                                         padding: 5px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit dignissim vehicula. Pellentesque sit amet metus eu turpis ornare volutpat. Integer eget metus at ex finibus gravida. Fusce mollis lorem nunc, non posuere libero viverra consequat. Nullam semper fringilla nisi. Maecenas sed tempus ante. Maecenas rutrum quam non ligula malesuada, ac euismod turpis semper. Vestibulum eu diam quis ante ornare ullamcorper. Aliquam felis nisi, pellentesque dignissim dapibus vitae, finibus at neque. Proin id nibh varius, convallis eros eu, congue arcu. Nulla elementum sem ut purus convallis elementum. Phasellus egestas mollis urna, finibus gravida nulla lacinia vel. Integer euismod dui vel leo aliquet, nec semper nisl pulvinar.
                            Aenean in placerat ipsum. Nam ullamcorper, erat quis pellentesque varius, justo nulla ultrices eros, nec pretium mi nisi sit amet orci. Integer sagittis consectetur metus, a ullamcorper dui laoreet non. Nunc varius posuere nisi. Curabitur ultrices sem quis gravida tincidunt. Nulla massa felis, tempus sed ipsum at, feugiat pellentesque dui. Praesent sed lacus nec libero auctor pharetra.
                        </p>
                    </div>
                    <div id="slide-3">
                        <img class="carruPhoto" src="./img/tortaAmor.jpg"><p style="font-size: 16px; margin: 10px;
                                                                             padding: 5px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit dignissim vehicula. Pellentesque sit amet metus eu turpis ornare volutpat. Integer eget metus at ex finibus gravida. Fusce mollis lorem nunc, non posuere libero viverra consequat. Nullam semper fringilla nisi. Maecenas sed tempus ante. Maecenas rutrum quam non ligula malesuada, ac euismod turpis semper. Vestibulum eu diam quis ante ornare ullamcorper. Aliquam felis nisi, pellentesque dignissim dapibus vitae, finibus at neque. Proin id nibh varius, convallis eros eu, congue arcu. Nulla elementum sem ut purus convallis elementum. Phasellus egestas mollis urna, finibus gravida nulla lacinia vel. Integer euismod dui vel leo aliquet, nec semper nisl pulvinar.
                            Aenean in placerat ipsum. Nam ullamcorper, erat quis pellentesque varius, justo nulla ultrices eros, nec pretium mi nisi sit amet orci. Integer sagittis consectetur metus, a ullamcorper dui laoreet non. Nunc varius posuere nisi. Curabitur ultrices sem quis gravida tincidunt. Nulla massa felis, tempus sed ipsum at, feugiat pellentesque dui. Praesent sed lacus nec libero auctor pharetra.
                        </p>
                    </div>
                    <div id="slide-4">
                        <img class="carruPhoto" src="./img/mesa4.jpg"><p style="font-size: 16px; margin: 10px;
                                                                         padding: 5px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit dignissim vehicula. Pellentesque sit amet metus eu turpis ornare volutpat. Integer eget metus at ex finibus gravida. Fusce mollis lorem nunc, non posuere libero viverra consequat. Nullam semper fringilla nisi. Maecenas sed tempus ante. Maecenas rutrum quam non ligula malesuada, ac euismod turpis semper. Vestibulum eu diam quis ante ornare ullamcorper. Aliquam felis nisi, pellentesque dignissim dapibus vitae, finibus at neque. Proin id nibh varius, convallis eros eu, congue arcu. Nulla elementum sem ut purus convallis elementum. Phasellus egestas mollis urna, finibus gravida nulla lacinia vel. Integer euismod dui vel leo aliquet, nec semper nisl pulvinar.
                            Aenean in placerat ipsum. Nam ullamcorper, erat quis pellentesque varius, justo nulla ultrices eros, nec pretium mi nisi sit amet orci. Integer sagittis consectetur metus, a ullamcorper dui laoreet non. Nunc varius posuere nisi. Curabitur ultrices sem quis gravida tincidunt. Nulla massa felis, tempus sed ipsum at, feugiat pellentesque dui. Praesent sed lacus nec libero auctor pharetra.
                        </p>
                    </div>
                    <div id="slide-5">
                        <img class="carruPhoto" src="./img/banquete.jpg"><p style="font-size: 16px; margin: 10px;
                                                                            padding: 5px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit dignissim vehicula. Pellentesque sit amet metus eu turpis ornare volutpat. Integer eget metus at ex finibus gravida. Fusce mollis lorem nunc, non posuere libero viverra consequat. Nullam semper fringilla nisi. Maecenas sed tempus ante. Maecenas rutrum quam non ligula malesuada, ac euismod turpis semper. Vestibulum eu diam quis ante ornare ullamcorper. Aliquam felis nisi, pellentesque dignissim dapibus vitae, finibus at neque. Proin id nibh varius, convallis eros eu, congue arcu. Nulla elementum sem ut purus convallis elementum. Phasellus egestas mollis urna, finibus gravida nulla lacinia vel. Integer euismod dui vel leo aliquet, nec semper nisl pulvinar.
                            Aenean in placerat ipsum. Nam ullamcorper, erat quis pellentesque varius, justo nulla ultrices eros, nec pretium mi nisi sit amet orci. Integer sagittis consectetur metus, a ullamcorper dui laoreet non. Nunc varius posuere nisi. Curabitur ultrices sem quis gravida tincidunt. Nulla massa felis, tempus sed ipsum at, feugiat pellentesque dui. Praesent sed lacus nec libero auctor pharetra.
                        </p>
                    </div>
                </div>
            </div>

            <hr class="border border-dark my-5">

            <h6 class="text-center text-secondary my-4">Dejanos tu Correo Para Una Atención Personalizada</h6>
            <form class="row justify-content-center" method="post" onsubmit="return emailCorr(correo.value);">
                <input class="border border-primary rounded" style="width: 20%;" type="email" id="correo" name="correo" placeholder=" Introduce tu Correo Electronico"><input type="button" onclick="emailCorr(correo.value);" class="btn btn-outline-primary" value="Enviar">
                </br>
            </form>
            <h5 class="text-center text-primary my-4">Siguenos en Nuestras Redes Sociales</h5>
            <div class="d-flex justify-content-center">
                <div class="px-3">
                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-facebook text-primary" viewBox="0 0 16 16">
                    <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                    </svg>
                </div>
                <div class="px-3">
                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-instagram text-danger" viewBox="0 0 16 16">
                    <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
                    </svg>
                </div>
                <div class="px-3">
                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-twitter text-primary" viewBox="0 0 16 16">
                    <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                    </svg>
                </div>
                <div class="px-3">
                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-whatsapp text-success" viewBox="0 0 16 16">
                    <path d="M13.601 2.326A7.854 7.854 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.933 7.933 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.898 7.898 0 0 0 13.6 2.326zM7.994 14.521a6.573 6.573 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.557 6.557 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592zm3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.729.729 0 0 0-.529.247c-.182.198-.691.677-.691 1.654 0 .977.71 1.916.81 2.049.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232z"/>
                    </svg>
                </div>
            </div>
            <br>
            <br>
            <div class="d-flex  justify-content-center mb-5">
                <h6 class="text-secondary px-5">Eventos&Co </h6>
                <h6 class="text-secondary px-5"> Copyright @2021</h6>
            </div>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </body>
</html>
