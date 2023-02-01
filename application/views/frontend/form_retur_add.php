
<div class="section-body">
 <?php $this->load->view('frontend/user_member'); ?>
 <div class="col-lg-8 col-md-12 col-sm-12 col-12">
  <div class="col-md-12">
 <div class="col-md-8 col-md-12 col-sm-12 col-12">
  <form id="setting-form" method="POST" enctype="multipart/form-data" action="<?php echo site_url('member/insert_retur'); ?>">
    <div class="card" id="settings-card">
      <div class="card-header">
        <h4>Form Retur</h4>
      </div>
      <div class="card-body">
        <p class="text-muted">Silahkan masukkan</p>
        <div class="form-group row align-items-center">
          <label for="site-title" class="form-control-label col-sm-3 text-md-left">Nama barang</label>
          <div class="col-sm-6 col-md-9">
            <input type="text" name="nama_barang" class="form-control" id="site-title">
          </div>
        </div>
        <div class="form-group row align-items-center">
          <label for="site-description" class="form-control-label col-sm-3 text-md-left">Tanggal beli</label>
          <div class="col-sm-6 col-md-9">
            <textarea class="form-control" name="tanggal_beli" id="site-description"></textarea>
          </div>
        </div>
        <div class="form-group row align-items-center">
          <label for="site-description" class="form-control-label col-sm-3 text-md-left">Alasan</label>
          <div class="col-sm-6 col-md-9">
            <textarea rows="10" cols="55" name="alasan" id="site-description"></textarea>
          </div>
        </div>
        <div class="form-group row align-items-center">
          <label class="form-control-label col-sm-3 text-md-left">Up bukti</label>
          <div class="col-sm-6 col-md-9">
            <div class="custom-file">
              <input type="file" name="bukti" class="custom-file-input" id="site-logo">
              <label class="custom-file-label">Choose File</label>
            </div>
            <div class="form-text text-muted">The image must have a maximum size of 1MB</div>
          </div>
        </div>
      <div class="card-footer bg-whitesmoke text-md-right">
        <button class="btn btn-primary" id="save-btn">Save Changes</button>
        <button class="btn btn-secondary" type="button">Reset</button>
      </div>
    </div>
  </form>
</div>
</div>
</div>
</section>
</div>
