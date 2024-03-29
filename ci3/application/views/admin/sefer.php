<div class="content-wrapper">
    <div class="card mt-4">
        <div class="card-header">
            <h2>Sefer Listesi ve Düzenleme<a href="#" data-toggle="modal" data-target="#myModal" class="btn btn-primary btn-sm float-right"> Add New</a></h2>
        </div>
        <div class="card-body">
        <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>#</th>
                <th>Kalkis Yeri</th>
                <th>Varıs Yeri</th>
                <th>Otobus Plaka</th>
                <th>Kalkış Yeri</th>
                <th>Kalkış Saati</th>
                <th>Action</th>
                
            </tr>
        </thead>
        <tbody>
            <?php foreach ($seferler as $key => $sefer) {  ?>
             
          
            <tr>
                <td><?= $key+1 ?></td>
                <td><?= $sefer["KalkisYeri"] ?></td>
                <td><?= $sefer["VarisYeri"] ?></td>
                <td><?= $sefer["OtobusID"] ?></td>
                <td><?= $sefer["VarisSaati"] ?></td>
                <td><?= $sefer["KalkisSaati"] ?></td>
                
                
                <td><a href="<?php echo base_url("admin/delete_sefer/" . $sefer["SeferID"]) ?>" class="btn btn-danger btn-sm">Sil</a> &nbsp; 
                
            </tr>
            <?php  } ?>
            
        </tbody>
    </table>
    </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              
              <h4 class="modal-title">Yeni Otobüs Ekle</h4>
              <button type="button" class="close" data-dismiss="modal">
                &times;
              </button>
            </div>
            <div class="modal-body">
              <form class="database_operation_form" data-url="<?= base_url("admin/sefer/insert") ?>">
                <div class="form-group">
                    <label>Kalkıs Yeri : </label>
                    <input type="text" class="form-control" required name="KalkisYeri" placeholder="Kalkış Yeri Giriniz">
                </div>
                <div class="form-group">
                    <label>Varıs Yeri : </label>
                    <input type="text" class="form-control" required name="VarisYeri" placeholder="Varıs Yeri Giriniz">
                </div>
                <div class="form-group">
                    <label>Plaka : </label>
                    <input type="text" class="form-control" required name="OtobusID" placeholder="Plaka Giriniz">
                </div>
                <div class="form-group">
                    <label>Kalkış Saati : </label>
                    <input type="text" class="form-control" required name="KalkisSaati" placeholder="Kalkış Saati Giriniz">
                </div>
                <div class="form-group">
                    <label>Varış Saati : </label>
                    <input type="text" class="form-control" required name="VarisSaati" placeholder="Varış Saati Giriniz">
                </div>
                <div class="form-group">
                    
                 <button class="btn btn-info">EKLE</button>
                </div>
                
              </form>
            </div>
          </div>
        </div>
      </div>