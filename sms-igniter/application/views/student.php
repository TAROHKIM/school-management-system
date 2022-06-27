<?php 
if($this->input->get('opt') == '' || !$this->input->get('opt')) {
  show_404();
} else {
?>

<div id="request" class="div-hide"><?php echo $this->input->get('opt'); ?></div>

<ol class="breadcrumb">
  <li><a href="<?php echo base_url('dashboard') ?>">Home</a></li> 
  <?php   
  if($this->input->get('opt') == 'addst') {
    echo '<li class="active">Add Student</li>';
  } 
  else if ($this->input->get('opt') == 'bulkst') {
    echo '<li class="active">Add Bulk Student</li>';
  }
  else if ($this->input->get('opt') == 'mgst') {
    echo '<li class="active">Manage Student</li>';
  }
  ?>  

</ol>

<?php if($this->input->get('opt') == 'addst' || $this->input->get('opt') == 'bulkst') { ?>

<div class="panel panel-default">
  <div class="panel-heading">
    <?php   
    if($this->input->get('opt') == 'addst') {
      echo "Add Student";
    } 
    else if ($this->input->get('opt') == 'bulkst') {
      echo "Add Bulk Student";
    }
    ?>  
  	
  </div>
  <div class="panel-body">
  	 <div id="messages"></div>

      <?php   
      if($this->input->get('opt') == 'addst') {
        // echo "Add Student";
        ?>
        <form action="<?php echo base_url('student/create') ?>" method="post" id="createStudentForm" enctype="multipart/form-data">  
          <div class="col-md-7">
          <fieldset>
            <legend>Informasi murid</legend>

            <div class="form-group">
              <label for="fname">nama depan</label>
              <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name" autocomplete="off" >
            </div>
            <div class="form-group">
              <label for="lname">nama belakang</label>
                <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="dob">tanggal lahir</label>
                <input type="text" class="form-control" id="dob" name="dob" placeholder="Date of Birth" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="age">usia</label>
                <input type="text" class="form-control" id="age" name="age" placeholder="Age" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="contact">no hp</label>
                <input type="text" class="form-control" id="contact" name="contact" placeholder="Contact" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="email">Email</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="Email" autocomplete="off">
            </div>

          </fieldset>     

          <fieldset>
            <legend>alamat </legend>

            <div class="form-group">
              <label for="address">alamat</label>
              <input type="text" class="form-control" id="address" name="address" placeholder="Address" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="city">nama kota</label>
                <input type="text" class="form-control" id="city" name="city" placeholder="City" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="country">Nama negara</label>
                <input type="text" class="form-control" id="country" name="country" placeholder="Country" autocomplete="off">
            </div>            
          </fieldset>       

          </div> 
          <!-- /col-md-6 -->

          <div class="col-md-5">          

          <fieldset>
            <legend>Informasi Pendaftaran</legend>

            <div class="form-group">
              <label for="registerDate">Tanggal pendaftaran</label>
              <input type="text" class="form-control" id="registerDate" name="registerDate" placeholder="Register Date" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="className">kelas</label>
              <select class="form-control" name="className" id="className">
                <option value="">Pilih</option>
                <?php foreach ($classData as $key => $value) { ?>
                  <option value="<?php echo $value['class_id'] ?>"><?php echo $value['class_name'] ?></option>
                <?php } // /forwach ?>
              </select>
            </div>
            <div class="form-group">
              <label for="sectionName">Section</label>
              <select class="form-control" name="sectionName" id="sectionName">
                <option value="">Pilih kelas</option>
              </select>
            </div>
          </fieldset>       

          <fieldset>
            <legend>Photo</legend>

            <div class="form-group">
              <label for="photo">Photo</label>
              <!-- the avatar markup -->
              <div id="kv-avatar-errors-1" class="center-block" style="max-width:500px;display:none"></div>             
                <div class="kv-avatar center-block" style="width:100%">
                    <input type="file" id="photo" name="photo" class="file-loading"/>                       
                </div>
            </div>
          
          </fieldset>       
           

          </div>
          <!-- /col-md-6 -->

          <div class="col-md-12">

            <br /> <br />
            <center>  
              <button type="submit" class="btn btn-success">simpan</button>
              <button type="button" class="btn btn-danger">Reset</button>      
            </center>       
          </div>
                  

        </form>

        <?php
      } // /add student
      else if ($this->input->get('opt') == 'bulkst') {
        // echo "Add Bulk Student";        
        ?>        
        <form action="student/createBulk" method="post" id="createBulkForm">

        <center>          
          <button type="button" class="btn btn-primary" onclick="addRow()">Tambah kolom</button>
          <button type="submit" class="btn btn-success">Simpan</button>
        </center>
        <br /> <br />

        <table class="table" id="addBulkStudentTable">
           <thead>
             <tr>
               <th style="width: 20%;">nama depan</th>
               <th style="width: 20%;">nama belakang</th>
               <th style="width: 20%;">kelas</th>
               <th style="width: 20%;">Section</th>
               <th style="width: 2%;">pilihan</th>
             </tr>
           </thead> 
           <tbody>
            <?php 
            for($x = 1; $x < 4; $x++) { ?>
              <tr id="row<?php echo $x; ?>">
                <td>
                  <div class="form-group">
                    <input type="text" class="form-control" id="bulkstfname<?php echo $x; ?>" name="bulkstfname[<?php echo $x; ?>]" placeholder="First Name" autocomplete="off">
                  </div>                  
                </td>
                <td>
                  <div class="form-group">
                    <input type="text" class="form-control" id="bulkstlname<?php echo $x; ?>" name="bulkstlname[<?php echo $x; ?>]" placeholder="Last Name" autocomplete="off">
                  </div>                  
                </td>
                <td>
                  <div class="form-group">
                    <select class="form-control" name="bulkstclassName[<?php echo $x; ?>]" id="bulkstclassName<?php echo $x; ?>" onchange="getSelectClassSection(<?php echo $x; ?>)">
                      <option value="">Pilih</option>
                      <?php foreach ($classData as $key => $value) { ?>
                        <option value="<?php echo $value['class_id'] ?>"><?php echo $value['class_name'] ?></option>
                      <?php } // /forwach ?>
                    </select>
                  </div>                    
                </td>
                <td>
                  <div class="form-group">
                    <select class="form-control" name="bulkstsectionName[<?php echo $x; ?>]" id="bulkstsectionName<?php echo $x; ?>">
                      <option value="">Pilih kelas</option>
                    </select>
                  </div>                  
                </td>
                <td>
                  <button type="button" class="btn btn-danger" onclick="removeRow(<?php echo $x; ?>)"><i class="glyphicon glyphicon-trash"></i></button>
                </td>
              </tr>
            <?php
            } // /for
            ?>
             
           </tbody>
        </table>
        <!-- /.form -->

        </form>
        <!-- /.form -->

        <?php
      } // /add bulk student      
      ?>  
      
  
        	
  </div>
  <!-- /panle-bdy -->
</div>
<!-- /.panel -->

<?php 
} // /checking condition for add student and bulk student 
else if($this->input->get('opt') == 'mgst') { ?>
  <div class="row">
          <div class="col-md-4">
            <div class="panel panel-default">

              <div class="panel-heading">
                Kelas
              </div>

              <div class="list-group">      
                <?php 
                if($classData) {
                  $x = 1;
                  foreach ($classData as $value) { 
                  ?>
                    <a class="list-group-item classSideBar <?php if($x == 1) { echo 'active'; } ?>" onclick="getClassSection(<?php echo $value['class_id'] ?>)" id="classId<?php echo $value['class_id'] ?>">
                        <?php echo $value['class_name']; ?>(<?php echo $value['numeric_name']; ?>)
                      </a>  
                  <?php 
                  $x++;
                  }
                } 
                else {
                  ?>
                  <a class="list-group-item">No Data</a>
                  <?php
                }   
                ?>
              </div>

            </div>
            <!-- /.panel -->
          </div>
          <!-- /.col-md-4 -->
          <div class="col-md-8">              

            <div class="panel panel-default">
              <div class="panel-heading">Manage Murid</div>
              <div class="panel-body">
                <div id="result"></div>                                        

              </div>
              <!-- /panel-body -->
            </div>      
            <!-- /panel -->
          </div>
          <!-- /.col-md-08 -->
        </div>
        <!-- /.row -->
<?php  
} // /condition for manage student
?>

<!-- edit student modal -->
<div class="modal fade" tabindex="-1" role="dialog" id="editStudentModal">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Edit Murid</h4>
      </div>
     
      <div class="modal-body edit-modal">
      
        <div id="edit-teacher-messages"></div>

        <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Photo</a></li>
        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Personal Detail</a></li>      
    </ul>

      <!-- Tab panes -->
      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
          <br /> 

        <form class="form-horizontal" method="post" id="updateStudentPhotoForm" action="student/updatePhoto" enctype="multipart/form-data">

        <div class="row">
          <div class="col-md-12">
            <div id="edit-upload-image-message"></div>

            <div class="col-md-6">
              <center>
                <img src="" id="student_photo" alt="Student Photo" class="img-thumbnail upload-photo" />
              </center>               
            </div>

            <div class="col-md-6">
              <div class="form-group">
                  <label for="editPhoto" class="col-sm-4 control-label">Photo: </label>
                  <div class="col-sm-8">                  
                      <!-- the avatar markup -->
                  <div id="kv-avatar-errors-1" class="center-block" style="max-width:500px;display:none"></div>             
                    <div class="kv-avatar center-block" style="width:100%">
                        <input type="file" id="editPhoto" name="editPhoto" class="file-loading"/>                       
                    </div>
                  </div>
              </div>
              <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                    <center>
                      <button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-success">Simpan</button>
                    </center>
                  </div>
                </div>

            </div>
            <!-- /col-md-6 -->
          </div>
          <!-- /col-md-12 -->
        </div>
        <!-- /row -->
          
        </form>
        </div>
        <!-- /tab panel of image -->

        <div role="tabpanel" class="tab-pane" id="profile">

        <br /> 
        <form class="form-horizontal" method="post" action="student/updateInfo" id="updateStudentInfoForm">
          <div class="row">

            <div class="col-md-12">
              <div id="edit-personal-student-message"></div>

              <div class="col-md-6">
                <div class="form-group">
                <label for="editFname" class="col-sm-4 control-label">Nama depan : </label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control" id="editFname" name="editFname" placeholder="First Name" />
                  </div>
              </div>
              <div class="form-group">
                  <label for="editLname" class="col-sm-4 control-label">Nama belakang : </label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control" id="editLname" name="editLname" placeholder="Last Name"/>
                  </div>
              </div>
              <div class="form-group">
                  <label for="editDob" class="col-sm-4 control-label">Tanggal lahir: </label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="editDob" name="editDob" placeholder="Date of Birth" />
                  </div>
                </div>
                <div class="form-group">
                  <label for="editAge" class="col-sm-4 control-label">usia: </label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="editAge" name="editAge" placeholder="Age" />
                  </div>
                </div>
                <div class="form-group">
                  <label for="editContact" class="col-sm-4 control-label">no hp: </label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="editContact" name="editContact" placeholder="Contact" />
                  </div>
                </div>  
                <div class="form-group">
                  <label for="editEmail" class="col-sm-4 control-label">Email: </label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="editEmail" name="editEmail" placeholder="Email" />
                  </div>
                </div>  
                <div class="form-group">
                  <label for="editAddress" class="col-sm-4 control-label">Alamat: </label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="editAddress" name="editAddress" placeholder="Address" />
                  </div>
                </div>
                <div class="form-group">
                  <label for="editCity" class="col-sm-4 control-label">nama kota: </label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="editCity" name="editCity" placeholder="City" />
                  </div>
                </div>            
                <div class="form-group">
                  <label for="editCountry" class="col-sm-4 control-label">nama negara: </label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="editCountry" name="editCountry" placeholder="Country" />
                  </div>
                </div>

              </div>
              <!-- /col-md-6 -->

              <div class="col-md-6">
                <div class="form-group">
                <label for="editRegisterDate" class="col-sm-4 control-label">Tanggal pendaftran : </label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control" id="editRegisterDate" name="editRegisterDate" placeholder="Register Date" />
                  </div>
              </div>              
                <div class="form-group">
                  <label for="editClassName" class="col-sm-4 control-label">kelas</label>
                  <div class="col-sm-8">
                    <select class="form-control" name="editClassName" id="editClassName">
                    <option value="">Select</option>
                    <?php foreach ($classData as $key => $value) { ?>
                      <option value="<?php echo $value['class_id'] ?>"><?php echo $value['class_name'] ?></option>
                    <?php } // /forwach ?>
                  </select>
                  </div>                  
                </div>
              <div class="form-group">
                <label for="editSectionName" class="col-sm-4 control-label">Section</label>
                <div class="col-sm-8">
                  <select class="form-control" name="editSectionName" id="editSectionName">
                    <option value="">pilih kelas</option>
                  </select>
                </div>                  
              </div>

              </div>         
                <!-- /col-md-4 -->

              <div class="form-group">
                <div class="col-sm-12">
                  <center>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
                      <button type="submit" class="btn btn-success">Simpan</button>
                  </center>
                </div>
              </div>
            </div>
            <!-- /col-md-12 -->
      
        </div>
        <!-- /row -->           
      </form>

        </div>        
        <!-- /tab-panel of teacher information -->
      </div>


      </div>
      <!-- /modal-body -->      
      
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- remove studet modal -->
<div class="modal fade" tabindex="-1" role="dialog" id="removeStudentModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Hapus</h4>
      </div>
      <div class="modal-body">
        <p>Hapus ?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
        <button type="button" class="btn btn-success" id="removeStudentBtn">Simpan</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<?php 

} // /else show_404() 

?>



<script type="text/javascript" src="<?php echo base_url('custom/js/student.js') ?>"></script>
