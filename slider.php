<div class="main-slide">
			<div id="sync1" class="owl-carousel">

            <?php
            //Belirli veriyi seçme işlemi
            $slidersor=$db->prepare("SELECT * FROM slider");
            $slidersor->execute();

            while($slidercek=$slidersor->fetch(PDO::FETCH_ASSOC)) {

            ?>


				<div class="item">
					<div class="slide-desc">
						<div class="inner">
							<h1><?php $slidercek['slider_ad']  ?></h1>
							<p>
								
							</p>
							
						</div>
						<div class="inner">
							<!--<div class="pro-pricetag big-deal">
								<div class="inner">
										<span class="oldprice">$314</span>
										<span>$199</span>
										<span class="ondeal">Best Deal</span>
								</div>
							</div> -->
						</div>
					</div>
					<div class="slide-type-1">
					<a href="<?php echo $slidecek['slider_link'] ?>"><img src="<?php echo $slidercek['slider_resimyol'] ?>" alt="" class="img-responsive"></a>
					</div>
				</div>
			
				
				
				
            <?php } ?>	
				
			</div>
		</div>

<!-- Alt bar
        <div class="bar"></div>
		<div id="sync2" class="owl-carousel">
			<div class="item">
				<div class="slide-type-1-sync">
					<h3>Stylish Jacket</h3>
					<p>Description here here here</p>
				</div>
			</div>
			<div class="item">
				<div class="slide-type-1-sync">
					<h3>Stylish Jacket</h3>
					<p>Description here here here</p>
				</div>
			</div>
			<div class="item">
				<div class="slide-type-1-sync">
					<h3>Nike Airmax</h3>
					<p>Description here here here</p>
				</div>
			</div>
			<div class="item">
				<div class="slide-type-1-sync">
					<h3>Unique smaragd ring</h3>
					<p>Description here here here</p>
				</div>
			</div>
			<div class="item">
				<div class="slide-type-1-sync">
					<h3>Stylish Jacket</h3>
					<p>Description here here here</p>
				</div>
			</div>
			<div class="item">
				<div class="slide-type-1-sync">
					<h3>Nike Airmax</h3>
					<p>Description here here here</p>
				</div>
			</div>
		</div>            -->