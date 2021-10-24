<div class="container-fluid"style="border:3px solid black">    
    <div class="d-sm-flex align-items-center justify-content-between" style="margin-top:30px; font-family:sans-serif;color:black">        
        <h3 class="font-weight-bold" style="color:black; margin-left:100px;">Arsip Surat >> Unggah</h3>  <br>        
    </div>
    <p  style="font-family:sans-serif;color:black; margin-left:100px;font-size:13px;"><b>Unggah surat yang telah terbit pada form ini untuk diarsipkan.<br>Catatan:</b></p>      
    <h6 style="font-family:sans-serif;color:black; margin-left:150px;font-size:13px;">Gunakan file berformat PDF</h6>        
    <div style="margin-top:60px;">
    <?php if (validation_errors()): ?>
        <div class="alert alert-danger" role="alert">
            <?php echo validation_errors(); ?>
        </div>
    <?php endif; ?>
    <form action="<?=base_url('Surat/TambahArsipSurat')?>" method="post" enctype="multipart/form-data">
    <div class="form-group row">
        <label for="nomor_surat" class="col-sm-2 col-form-label">Nomer Surat</label>
        <div class="col-sm-4">
        <input type="text" class="form-control" id="nomor_surat" name="nomor_surat" placeholder="Nomer Surat" autocomplete="off">
        </div>
    </div>    
    <div class="form-group row">
        <label for="Judul" class="col-sm-2 col-form-label">Kategori</label>
        <div class="col-sm-6">
        <select class="form-control" name="kategori">
            <?php foreach($kategori as $each){ ?>
                <option value="<?php echo $each->id_kategori; ?>"><?php echo $each->nama_kategori; ?></option>';
            <?php } ?>
        </select>
        </div>
    </div>    
    <div class="form-group row">
        <label for="Judul" class="col-sm-2 col-form-label">Judul</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="judul" name="judul" placeholder="judul" autocomplete="off">
        </div>
    </div>    
    <div class="form-group row">
        <label for="file" class="col-sm-2 col-form-label">File Surat (PDF)</label>        
        <div class="col-sm-4">
        <input type="file" class="form-control" id="file_surat" name="file_surat">
        <label>Ukuran maximum file = 1MB</label>        
        </div>    
    </div>    
    <a href="<?= base_url();?>Surat/index" class="btn btn-primary"><< Kembali</a>    
    <button type="submit" name="submit" class="btn btn-success">Simpan</button>
</form>
    </div>
</div>