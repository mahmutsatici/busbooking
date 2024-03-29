<div class="content-wrapper">
    <div class="card mt-4">
        <div class="card-header">
            <h2>Managete Locations <a href="#" data-toggle="modal" data-target="#myModal" class="btn btn-primary btn-sm float-right"> Add New</a></h2>
        </div>
        <div class="card-body">
        <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Status</th>
                <th>Action</th>
                
            </tr>
        </thead>
        <tbody>
            <?php foreach ($locations as $key => $location) {  ?>
             
          
            <tr>
                <td><?= $key+1 ?></td>
                <td><?= $location["name"] ?></td>
                <td><input class="manage_status" data-url="<?= base_url("admin/location_status/". $location["id"]) ?>" id="location_<?php echo $location["id"] ?>" data-selector="location_<?php echo $location["id"] ?>" value="1" <?php if($location["status"]==1){echo "checked";} ?> type="checkbox"> Active</td>
                <td><a href="<?php echo base_url("admin/delete_location/" . $location["id"]) ?>" class="btn btn-danger btn-sm">Delete</a> &nbsp; 
                <a href="<?php echo base_url("admin/update_location/" . $location["id"]) ?>" class="btn btn-info btn-sm">Update</a> </td>
                
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
              
              <h4 class="modal-title">Add New Location</h4>
              <button type="button" class="close" data-dismiss="modal">
                &times;
              </button>
            </div>
            <div class="modal-body">
              <form class="database_operation_form" data-url="<?= base_url("admin/locations/insert") ?>">
                <div class="form-group">
                    <label>Name:</label>
                    <input type="text" class="form-control" required name="name" placeholder="Enter Name">
                </div>
                <div class="form-group">
                    
                 <button class="btn btn-info">Add Location</button>
                </div>
                
              </form>
            </div>
          </div>
        </div>
      </div>