<style media="screen">
.spasi
{
             padding: 100px 25px;
}
</style>
<div class="section-body">
  <div class="spasi"></div>
 <div class="col-md-8 col-md-12 col-sm-12 col-12">
  <form id="setting-form" method="POST" enctype="multipart/form-data" action="<?php echo site_url('member/insert_produk'); ?>">
    <div class="card" id="settings-card">
      <div class="card-header">
        <h4>Form keranjang</h4>
      </div>
      <div class="card-body">
        <p class="text-muted">Silahkan masukkan</p>
        <div class="form-group row align-items-center">
          <label for="site-title" class="form-control-label col-sm-3 text-md-left">nama produk</label>
          <div class="col-sm-6 col-md-9">
            <input type="text" name="nama_produk" class="form-control" id="site-title">
          </div>
        </div>
        <div class="form-group row align-items-center">
          <label for="site-title" class="form-control-label col-sm-3 text-md-left">harga</label>
          <div class="col-sm-6 col-md-9">
            <input type="text" name="nama_toko" class="form-control" id="site-title">
          </div>
        </div>
        <div class="form-group row align-items-center">
          <label for="site-title" class="form-control-label col-sm-3 text-md-left">Tag</label>
          <div class="col-sm-6 col-md-9">
            <input type="text" name="kategori" class="form-control" id="site-title">
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
