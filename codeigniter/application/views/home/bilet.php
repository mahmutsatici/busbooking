<br><br><br><br>


<section class="rooms-n-suites">
    <div class="container">
        
        
        <!-- Cottage -->
        <div class="row" id="room-row">
            <center><h2 class="header-h2 header-text">Sefer Ayrıntıları <br><span class="price">Lütfen Koltuk Seçiniz</span></h2></center>
        
            <div class="col-12 col-lg-6" id="left-room-col">
                
  <!-- 1st row -->
  <center>
  <div class="checkbox-container">
  <div class="checkbox-item">
    <input type="checkbox" id="checkbox1">
    <label for="checkbox1"></label>
    <input type="checkbox" id="checkbox2">
    <label for="checkbox2">***</label>
    <input type="checkbox" id="checkbox3">
    <label for="checkbox3"></label>
  </div>

  <!-- 2nd row -->
  <div class="checkbox-item">
    <input type="checkbox" id="checkbox4">
    <label for="checkbox4"></label>
    <input type="checkbox" id="checkbox5">
    <label for="checkbox5">***</label>
    <input type="checkbox" id="checkbox6">
    <label for="checkbox6"></label>
  </div>

  <!-- 3rd row -->
  <div class="checkbox-item">
    <input type="checkbox" id="checkbox7">
    <label for="checkbox7"></label>
    <input type="checkbox" id="checkbox8">
    <label for="checkbox8">***</label>
    <input type="checkbox" id="checkbox9">
    <label for="checkbox9"></label>
  </div>

  <!-- 4th row -->
  <div class="checkbox-item">
    <input type="checkbox" id="checkbox10">
    <label for="checkbox10"></label>
    <input type="checkbox" id="checkbox11">
    <label for="checkbox11">***</label>
    <input type="checkbox" id="checkbox12">
    <label for="checkbox12"></label>
  </div>

  <!-- 5th row -->
  <div class="checkbox-item">
    <input type="checkbox" id="checkbox13">
    <label for="checkbox13"></label>
    <input type="checkbox" id="checkbox14">
    <label for="checkbox14">***</label>
    <input type="checkbox" id="checkbox15">
    <label for="checkbox15"></label>
  </div>

  <!-- 6th row -->
  <div class="checkbox-item">
    <input type="checkbox" id="checkbox16">
    <label for="checkbox16"></label>
    <input type="checkbox" id="checkbox17">
    <label for="checkbox17">***</label>
    <input type="checkbox" id="checkbox18">
    <label for="checkbox18"></label>
  </div>

  <!-- 7th row -->
  <div class="checkbox-item">
    <input type="checkbox" id="checkbox19">
    <label for="checkbox19"></label>
    <input type="checkbox" id="checkbox20">
    <label for="checkbox20">***</label>
    <input type="checkbox" id="checkbox21">
    <label for="checkbox21"></label>
  </div>

  <!-- 8th row -->
  <div class="checkbox-item">
    <input type="checkbox" id="checkbox22">
    <label for="checkbox22"></label>
    <input type="checkbox" id="checkbox23">
    <label for="checkbox23">***</label>
    <input type="checkbox" id="checkbox24">
    <label for="checkbox24"></label>
  </div>

  <!-- 9th row -->
  <div class="checkbox-item">
    <input type="checkbox" id="checkbox25">
    <label for="checkbox25"></label>
    <input type="checkbox" id="checkbox26">
    <label for="checkbox26">***</label>
    <input type="checkbox" id="checkbox27">
    <label for="checkbox27"></label>
  </div>

  <!-- 10th row -->
  <div class="checkbox-item">
    <input type="checkbox" id="checkbox28">
    <label for="checkbox28"></label>
    <input type="checkbox" id="checkbox29">
    <label for="checkbox29">***</label>
    <input type="checkbox" id="checkbox30">
    <label for="checkbox30"></label>
  </div>
</div>
            </div>
  </center>
  
            <div class="col-12 col-lg-6" id="right-room-col">
                    
                    
                
                <div class="facilities-main">
                    <div class="left">
                        <div class="facilities">
                            
                            
                            <p>Kalkış Şehri</p> 
                        </div>
        
                        <div class="facilities">
                            
                            <p>Varış Şehri</p> 
                        </div>
        
                        
        
                        <div class="facilities">
                           
                            <p>Kalkış Saati</p> 
                        </div>
        
                        <div class="facilities">
                            
                            <p>Varış Saati</p> 
                        </div>
        
                        <div class="facilities">
                           
                            <p>Tarih</p> 
                        </div>

                        <div class="facilities">
                           
                            <p>Fiyat</p> 
                        </div>
                        
                    </div>

                    <div class="right">

                        <div class="facilities">
                            
                            <p><?php echo strtoupper($seferler[0]['KalkisYeri']); ?></p> 
                        </div>
        
                        <div class="facilities">
                            
                            <p><?php echo strtoupper($seferler[0]['VarisYeri']); ?></p> 
                        </div>
        
                        
        
                        <div class="facilities">
                           
                            <p><?php echo $seferler[0]['KalkisSaati'] . ".00"; ?></p> 
                        </div>
        
                        <div class="facilities">
                            
                            <p><?php echo $seferler[0]['VarisSaati'] . ".00"; ?></p> 
                        </div>

                        <div class="facilities">
                          
                            <p><?php echo $seferler[0]['Tarih']; ?></p> 
                        </div>
                        <div class="facilities">
                          
                            <p><?php echo $seferler[0]['Fiyat'] . " TL"; ?></p> 
                        </div>
                        

                       
                    </div>
                </div>
                

                <div class="facilities-btns">
                <a href="<?php echo base_url("home/satinal") ?>" class="btn btn-warning btn-floating btn-lg">Satın Al</a> </td>
                    
                </div>


               
            </div>
        </div>


        
        
    </div>
</section>