<!-- hero section -->
    <section class="hero-section">
        <div class="container" id="hero-cont">
            <div class="row" id="hero-row">
                <div class="col-12" id="hero-col">
                    <h1 class="hero-h1">Umuttepe Turizme Hoşgeldiniz </h1>
                    <form class="home-search" action="<?php echo base_url("/home/gallery") ?>" method ="get">
                        <div class="form-row">
                            <div class="select-container">
                                <center><h5>Kalkış</h5></center>
                                <select name="KalkisYeri" class="form-select" size="4" required aria-label="size 4 select example">
                                    <option value="istanbul">İstanbul</option>
                                    <option value="kocaeli">Kocaeli</option>
                                    <option value="bursa">Bursa</option>
                                    <option value="sakarya">Sakarya</option>
                                </select>
                            </div>
                            <div class="select-container">
                                <center><h5>Varış</h5></center>
                                <select name="VarisYeri" class="form-select" size="4" required aria-label="size 4 select example">
                                    <option value="istanbul">İstanbul</option>
                                    <option value="kocaeli">Kocaeli</option>
                                    <option value="bursa">Bursa</option>
                                    <option value="sakarya">Sakarya</option>
                                </select>
                                </div>
                            </div><br><br>
                            <div class="ui calendar" id="date-1">
                            <div class="ui input left icon">
                                <input name="Tarih" type="date" placeholder="Tarih" class="calender-text" required min="<?php echo date('Y-m-d'); ?>">
                            </div>
                            </div>
                            
                            
                            <button type="submit" class="btn btn-primary" ><i class="fas fa-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>



    
    