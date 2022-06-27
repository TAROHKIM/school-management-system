<ol class="breadcrumb">
  <li><a href="<?php echo base_url('dashboard') ?>">Home</a></li> 
  <li class="active">Manage pelajaran</li>
</ol>

<div class="row">
	<div class="col-md-4">
		<div class="panel panel-default">

			<div class="panel-heading">
				kelas
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
	</div>
	<!-- /col-md-4 -->

	<div class="col-md-8">
		<div class="panel panel-default">
		  <!-- Default panel contents -->
		  <div class="panel-heading">Manage Pelajaran</div>

		  <div class="panel-body">		  
		  	<div class="result"></div>
		  </div>			  
		</div>
	</div>
	<!-- /col-md-8 -->
</div>
<!-- /row -->

<!-- create section modal -->
<div class="modal fade" tabindex="-1" role="dialog" id="addSubjectModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Tambah pelajaran</h4>
      </div>
      <form action="subject/create" method="post" id="addSubjectForm">
      <div class="modal-body">
          <div id="add-subject-message"></div>

		  <div class="form-group">
		    <label for="sectionName">nama pelajaran</label>
		    <input type="text" class="form-control" id="subjectName" name="subjectName" placeholder="Subject Name">
		  </div>
		  <div class="form-group">
		    <label for="totalMark">Jumlah soal</label>
		    <input type="text" class="form-control" id="totalMark" name="totalMark" placeholder="Total Mark">
		  </div>
		  <div class="form-group">
		    <label for="teacherName">Guru : </label>
		    <select class="form-control" name="teacherName" id="teacherName">
		    	<option value="">Pilih guru</option>
		    	<?php 
		    	if($teacherData) { 
	    			foreach ($teacherData as $key => $value): ?>
			    		<option value="<?php echo $value['teacher_id'] ?>"><?php echo $value['fname'] . ' ' . $value['lname'] ?></option>
			    	<?php 
			    	endforeach 
			    	?>
	    		<?php
		    	} 
		    	else { ?>
		    		<option value="">No Data Available</option>
		    	<?php 
		    	}
		    	?>
		    </select>
		  </div>		  		 
		
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">tutup</button>
        <button type="submit" class="btn btn-success">Simpan</button>
      </div>

      </form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- update subject modal -->
<div class="modal fade" tabindex="-1" role="dialog" id="editSubjectModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Edit pelajaran</h4>
      </div>
      <form action="subject/update" method="post" id="editSubjectForm">
      <div class="modal-body">
          <div id="edit-subject-messages"></div>

		  <div class="form-group">
		    <label for="editSubjectName">nama pelajaran</label>
		    <input type="text" class="form-control" id="editSubjectName" name="editSubjectName" placeholder="Subject Name">
		  </div>
		  <div class="form-group">
		    <label for="editTotalMark">jumlah soal</label>
		    <input type="text" class="form-control" id="editTotalMark" name="editTotalMark" placeholder="Total Mark">
		  </div>
		  <div class="form-group">
		    <label for="editTeacherName">guru : </label>
		    <select class="form-control" name="editTeacherName" id="editTeacherName">
		    	<option value="">pilih guru</option>
		    	<?php 
		    	if($teacherData) { 
	    			foreach ($teacherData as $key => $value): ?>
			    		<option value="<?php echo $value['teacher_id'] ?>"><?php echo $value['fname'] . ' ' . $value['lname'] ?></option>
			    	<?php 
			    	endforeach 
			    	?>
	    		<?php
		    	} 
		    	else { ?>
		    		<option value="">No Data Available</option>
		    	<?php 
		    	}
		    	?>
		    </select>
		  </div>		  		 
		
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">tutup</button>
        <button type="submit" class="btn btn-success">Simpan</button>
      </div>

      </form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- remove subject modal -->
<div class="modal fade" tabindex="-1" role="dialog" id="removeSubjectModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">hapus</h4>
      </div>
      <div class="modal-body">
        <div id="remove-messages"></div>

        <p>hapus ?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">tutup </button>
        <button type="button" class="btn btn-success" id="removeSubjectBtn">Simpan</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script type="text/javascript" src="<?php echo base_url('custom/js/subject.js') ?>"></script>