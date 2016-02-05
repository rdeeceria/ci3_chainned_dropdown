<div class="page-header">
  <h2>Chainned Dropdown</h2>
</div>
<div class="col-lg-12">
  <div class="panel panel-default">

    <div class="panel-heading">
      Thankyou harviacode.com
    </div>
    
    <div class="panel-body">
      <form class="form-group" method="post" role="form" action="#">
        <div class="col-sm-12">
        
          <div class="form-group"><!-- provinsi -->
            <label>Provinsi</label>
            <select id="provinsi" name="provinsi" class="form-control">
                <option value="">Pilih</option>
            <?php foreach ($this->dropdown->provinsi() as $row): ?>
                  <option value="<?php echo $row['id_provinsi']; ?>">
                        <?php echo $row['nama_provinsi']; ?>
                  </option>
            <?php endforeach; ?>
            </select>
          </div>

          <div class="form-group"><!-- kota -->
            <label>Kota</label>
            <select id="kota" name="kota" class="form-control">
                <option value="">Pilih</option>
            <?php foreach ($this->dropdown->kota() as $row): ?>
                  <option id="kota" class="<?php echo $row['id_provinsi']; ?>" value="<?php echo $row['id_kota']; ?>">
                        <?php echo $row['nama_kota']; ?>
                  </option>
            <?php endforeach; ?>
            </select>
          </div>
          
          <div class="form-group"><!-- kecamatan -->
            <label>Kecamatan</label>
            <select id="kecamatan" name="kecamatan" class="form-control">
                <option value="">Pilih</option>
            <?php foreach ($this->dropdown->kecamatan() as $row): ?>
                  <option id="kecamatan" class="<?php echo $row['id_kota']; ?>" value="<?php echo $row['id_kecamatan']; ?>">
                        <?php echo $row['nama_kecamatan']; ?>
                  </option>
            <?php endforeach; ?>
            </select>
          </div>

        </div>
      </form>
    </div>
  </div>
</div>