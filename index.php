<?php
include("heda.php");


//error handling 
if(!$conn) {
    die("Error".mysqli_connect_error());
}

// $sql = "select * from gpus";
// $result = mysqli_query($conn, $sql);
// $gpus = mysqli_fetch_all($result, MYSQLI_ASSOC);

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv='cache-control' content='no-cache'>
    <meta http-equiv='expires' content='0'>
    <meta http-equiv='pragma' content='no-cache'>
    <link rel="stylesheet" href="style.css">

    <title>Tech Shop</title>
</head>

<body>
<div id="productList" class="Container">
        <div class="row mt-3 mb-3">
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="https://images.shopcdn.co.uk/86/e0/86e063da3b6aaa49194e551e03539a03/585x455/webp/resize"
                        class="card-img-top" style="height:220px" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">RAM</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the
                            card's content.</p>
                        <a href="./ram.php" class="btn btn-primary">See details...</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa81VQ82oyDMwbKWNpQkMp_scSsMxaXDPgsNULjew7q6rQrkqINYOzkrGROCWgNrI0JJA&usqp=CAU"
                        class="card-img-top" style="height:220px" alt="PROCESSOR">
                    <div class="card-body">
                        <h5 class="card-title">Processor</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the
                            card's content.</p>
                        <a href="./Processor.php" class="btn btn-primary">See details...</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV9SZ0_IZbLIvfnGqbCTFWLMHE-LQXObBjT7K0pz3C9H9Aqc6NrdPBK6kjZ5OES09bgM8&usqp=CAU"
                        class="card-img-top" style="height:220px" alt="HDD/SSD">
                    <div class="card-body">
                        <h5 class="card-title">HDD/SDD</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the
                            card's content.</p>
                        <a href="./harddsik.php" class="btn btn-primary">See details...</a>
                    </div>
                </div>
            </div>
        </div>


        <div class="row mt-3 mb-3">
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR8oJ51mSBuOwdwLb2ZsGBgZKPIGFzzpM46Q1yxzwnHtQQ7R_O_lSoHIPv-j0t8p4u7CE&usqp=CAU"
                        class="card-img-top" style="height:220px" alt="Monitor">
                    <div class="card-body">
                        <h5 class="card-title">Monitor</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the
                            card's content.</p>
                        <a href="./monitor.php" class="btn btn-primary">See details...</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaIriTXWLNnJXtML_I6T6kdK9cJ51JjMGaDgC50TcstCWO5wRVhN83vUSwQvm131eMbrc&usqp=CAU"
                        class="card-img-top" style="height:220px" alt="LAPTOP">
                    <div class="card-body">
                        <h5 class="card-title">Laptop</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the
                            card's content.</p>
                        <a href="./laptoplist.php" class="btn btn-primary">See details...</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGW398a9dxi1fiY7sib3Kkp-OmSClUkD2E10rqXGJI81vPQ_VMbbWW7vbQzxgJYGa7wFY&usqp=CAU"
                        class="card-img-top" style="height:220px" alt="Power Supply">
                    <div class="card-body">
                        <h5 class="card-title">Power supply</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the
                            card's content.</p>
                        <a href="./powersupply.php" class="btn btn-primary">See details...</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-3 mb-3">
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIyEpnEWo_hT2Qtv4ulD26HmGwLNIgbOSglIh3JmQAFfqO_s7xHRE_Dd0R5r2ihU4RByw&usqp=CAU"
                        class="card-img-top" style="height:220px" alt="Motherboard">
                    <div class="card-body">
                        <h5 class="card-title">Motherboard</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the
                            card's content.</p>
                        <a href="./motherboard.php" class="btn btn-primary">See details...</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDQxf1XbsochWrULw5ZLrhmEbrUUWKQbDCm_3lTXjCMQKv0wcU4llmX447cTOPKdgNbd8&usqp=CAU"
                        class="card-img-top" style="height:220px" alt="Casing Cooler">
                    <div class="card-body">
                        <h5 class="card-title">Casing Cooler</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the
                            card's content.</p>
                        <a href="./casingcooler.php" class="btn btn-primary">See details...</a>
                    </div>
                </div>
            </div>
            
        </div>


    </div>

    <footer>
        <p>&copy; 2023 Tech Shop. All rights reserved.</p>
    </footer>

    <!--Adding Javascript-->
    <script type="text/javascript" src="main.js"></script>
</body>

</html>