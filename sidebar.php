<div class="col-md-3"><!--sidebar-->
	<div class="title-bg">
		<div class="title">Kategoriler</div>
	</div>
	
	<div class="categorybox">
		
		<ul>
			
					<?php 

//bütün kayıtları bir kereye mahsus olmak üzere listeliyoruz; daha doğrusu, bir diziye aktarmak için verileri çekiyoruz

			$query = "SELECT * FROM kategori order by kategori_id";
			$goster = $db->prepare($query);
$goster->execute(); //queriyi tetikliyor

 $toplamSatirSayisi = $goster->rowCount(); //malumunuz üzere sorgudan dönen satır sayısını öğreniyoruz
 
$tumSonuclar = $goster->fetchAll(); //DB'deki bütün satırları ve sutunları $tumSonuclar değişkenine dizi şeklinde aktarıyoruz


//alt kategorisi olmayan kategoriin sayısını öğreniyoruz:
$altKategoriSayisi = 0;
for ($i = 0; $i < $toplamSatirSayisi; $i++) {
	if ($tumSonuclar[$i]['kategori_ust'] == "0") {
		$altKategoriSayisi++;
	}
}



for ($i = 0; $i < $toplamSatirSayisi; $i++) {
	if ($tumSonuclar[$i]['kategori_ust'] == "0") {
		kategori($tumSonuclar[$i]['kategori_id'], $tumSonuclar[$i]['kategori_ad'], $tumSonuclar[$i]['kategori_ust']);
	}
}



function kategori($kategori_id, $kategori_ad, $kategori_ust) {

	global $tumSonuclar;
	global $toplamSatirSayisi;

    //kategorinin, alt kategori sayısını öğreniyoruz:
	$altKategoriSayisi = 0;
	for ($i = 0; $i < $toplamSatirSayisi; $i++) {
		if ($tumSonuclar[$i]['kategori_ust'] == $kategori_id) {
			$altKategoriSayisi++;
		}
	}
    ///////////////////////////////////////////

	?>

	<!-- Burda Başlıyoruz ana gövde -->

	<li>

		<a href="kategori-<?=seo($kategori_ad) ?>"><?php echo $kategori_ad ?></a>
		<?php 
		if ($altKategoriSayisi > 0) {
			echo "( $altKategoriSayisi )";
		}
		?>
	</a>

	<?php

    if ($altKategoriSayisi > 0) { //alt kategorisi varsa onları da listele
    	echo "<ul>";

    	for ($i = 0; $i < $toplamSatirSayisi; $i++) {

    		if ($tumSonuclar[$i]['kategori_ust'] == $kategori_id) {
    			
    			kategori($tumSonuclar[$i]['kategori_id'], $tumSonuclar[$i]['kategori_ad'], $tumSonuclar[$i]['kategori_ust']);
    		}
    	}

    	echo "</ul>";
    }
    ?>



</li> 
<!-- Burda Başlıyoruz ana gövde -->

<?php 
}
?>
		</ul>
	</div>



	<!-- Kategoriler yukarıda -->

	<div class="ads">
		<a href="product.htm"><img src="images\ads.png" class="img-responsive" alt=""></a>
	</div>

	<div class="title-bg">
		<div class="title">En Çok Satanlar</div>
	</div>
	<?php
	$urunsor=$db->prepare("SELECT * FROM urun");
	$urunsor->execute();
	while($uruncek=$urunsor->fetch(PDO::FETCH_ASSOC)) {

		$urun_id=$uruncek['urun_id'];
		$urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id  ");
		$urunfotosor->execute(array(
			'urun_id' => $urun_id
			));

		$urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC);

	?>
	<div class="best-seller">
		<ul>
			<li class="clearfix">
				<a href="#"><img src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" alt="" class="img-responsive mini"></a>
				<div class="mini-meta">
					<a href="#" class="smalltitle2"><?php echo $uruncek['urun_ad'] ?></a>
					<p class="smallprice2"><?php echo $uruncek['urun_fiyat'] ?></p>
				</div>
			</li>
		
		</ul>	
	</div>			<?php } ?>	


			</div><!--sidebar-->