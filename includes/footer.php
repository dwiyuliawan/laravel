<?php
if(isset($_POST['emailsubscibe']))
{
$subscriberemail=$_POST['subscriberemail'];
$sql ="SELECT * FROM subscribers WHERE email_sub='$subscriberemail'";
$query = mysqli_query($koneksidb,$sql);
if(mysqli_num_rows($query)>0)
{
echo "<script>alert('Already Subscribed.');</script>";
}
else{
$sql1="INSERT INTO subscribers(email_sub) VALUES('$subscriberemail')";
$lastInsertId=mysqli_query($koneksidb, $sql1);
if($lastInsertId)
{
echo "<script>alert('Subscribed successfully.');</script>";
}
else 
{
echo "<script>alert('Something went wrong. Please try again');</script>";
}
}
}
?>

<footer> 
  <div class="footer-top" style="background-color: #778899;">
    <div class="container">
      <div class="row " style="color: white;">

        <div class="col-sm-5">
          <h6 class="">Kunjungi Medsos Kami</h6>
          <ol>
            <li > <a href="https://www.instagram.com/modemoto_?igsh=MWliMTByZjZteWhucg==" style="color: white;"> Instagram : <i class="fa fa-instagram" aria-hidden="true" style="color: blue;"></i></a></li>
            <li><a href="https://wa.me/6282135173621" style="color: white;">+62 821-351-7362 : <i class="fa fa-whatsapp" aria-hidden="true" style="color: blue;"></i></a></li>
          </ol>
        </div>
      
        <div class=" col-sm-3 ">
          <h6>Tentang Kami</h6>
          <ul>
          <li><a href="page.php?type=aboutus">Tentang Kami</a></li>
          <li><a href="admin/">Admin Login</a></li>
            <!-- <li><a href="page.php?type=faqs">FAQs</a></li>
            <li><a href="page.php?type=privacy">Privacy</a></li>
          <li><a href="page.php?type=terms">Terms of use</a></li> -->
          </ul>
        </div>

        <div class="col-sm-4">
          <h6 style="padding-left: 100px;">Alamat Kami</h6>
          <p>Jl. KH. Hasyim Asyari, Desa Cikeusal-lor, Kec. Ketanggungan, Brebes, Jawa Tengah, Indonesia,</p>
           <div style="padding-left: 30px;">
             <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3959.6141843237674!2d108.87366207499777!3d-7.054538992947809!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zN8KwMDMnMTYuMyJTIDEwOMKwNTInMzQuNSJF!5e0!3m2!1sid!2sid!4v1718135249347!5m2!1sid!2sid" width="250" height="150" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
           </div>
        </div>

      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="text-center">
          <p class="copy-right">&copy;2024 Sistem Informasi Penyediaan Jasa Fotografi Berbasis Web.</a>
          </p>
        </div>
      </div>
    </div>
  </div>
</footer>