<?php
include 'db.php';
$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1 ");
$a = mysqli_fetch_object($kontak);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beranda-bukatoko</title>
    <link rel="stylesheet"  href="style.css">

</head>

<body>
    <!-- header-->
    <header>
        <div class="container">
        <h1><a href="index.php">Bukatoko Shop</a></h1>
            <ul>
                <li><a href="index.php">Beranda</a></li>
                <li><a href="produk.php">Produk</a></li>
               
            </ul>
        </div>
    </header>

    <!--search-->
    
    <div class="search">
        <div class="container">
            <form action="produk.php ">
                <input type="text" name="search" placeholder="Cari Produk">
                <input type="submit" name="cari" value="cari produk">
            </form>
        </div>
    </div>
    <!--category-->
    <div class="section">
        <div class="container">
            <h3>Kategori</h3>
            <div class="box">
                <?php
                    $kategori  = mysqli_query($conn, "SELECT * FROM tb_category ORDER BY category_id DESC ");
                    if(mysqli_num_rows($kategori) > 0) {
                        while($k = mysqli_fetch_array($kategori)){

                ?>
                    <a href="produk.php?kat=<?php echo $k['category_id'] ?>">
                        <div class="col-5">
                            <img src="img/kategori.png" width="50px" style="margin-bottom:5px">
                            <p><?php echo $k['category_name'] ?></p>
                        </div>
                    </a>
                <?php } }else{ ?>
                    <p>Kategori Tidak Ada</P>
                <?php } ?>
               
            </div>
        </div>
    </div>

    <!--new produk-->
    <div class="section">
        <div class="container">
            <h3>Produk terbaru</h3>
            <div class="box">
                <?php
                    $produk = mysqli_query($conn, "SELECT * FROM tb_produk WHERE produk_status = 1 ORDER BY produk_id DESC LIMIT 10 ");
                    if(mysqli_num_rows($produk) > 0){
                        while($p = mysqli_fetch_array($produk)){
                ?>
                    <a href="detail-produk.php?id=<?php echo $p['produk_id'] ?>">
                    <div class="col-4">
                        <img src="produk/<?php echo $p['produk_image'] ?>">
                        <p class="nama"><?php echo substr ($p['produk_name'],0,50)  ?></p>
                        <p class="harga">Rp. <?php echo number_format($p['produk_price'])  ?></p>
                    </div>
                    </a>
                <?php } }else { ?>
                    <p>Produk Tidak Ada</P>
                <?php } ?>
            </div>
        </div>
    </div>

    <!--footer-->
    <div class="footer">
        <div class="container">
            <h4>Alamat</h4>
            <p><?php echo $a -> admin_address ?></p>

            <h4>Email</h4>
            <p><?php echo $a -> admin_email ?></p>

            <h4>No Hp</h4>
            <p><?php echo $a -> admin_telp ?></p><br>

            <small>copyright &copy; 2022 - Bukatoko </small>
        </div>
    </div>
    
</body>
</html>