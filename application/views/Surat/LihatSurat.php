<div class="container-fluid"style="border:3px solid black">    
    <div class="d-sm-flex align-items-center justify-content-between" style="margin-top:30px; font-family:sans-serif;color:black">        
        <h3 class="font-weight-bold" style="color:black; margin-left:100px;">Arsip Surat >> Lihat</h3>  <br>        
    </div>
    <?php foreach ($SuratbyId as $s) :?>
    <div style="color:black; margin-left:100px; font-size:15px;font-weight:bold">            
        Nomor : <?=($s['nomor_surat']); ?><br>
        Kategori : <?=($s['nama_kategori']); ?><br>
        Judul: <?=($s['judul']); ?><br>
        Waktu Unggahan : <?=($s['waktu_pengarsipan']); ?><br><br>
        <iframe src="<?= base_url('upload/'.$s["file"])?>" width="900" height="400"></iframe>
    
    </div>        <br>
    <a href="<?= base_url();?>Surat/index" class="btn btn-primary"><< Kembali</a>    
    <a href="<?= base_url('upload/'.$s["file"])?>" class="btn btn-primary">Unduh</a>    
    <a href="#" class="btn btn-primary">Edit/Ganti File</a>    
    <?php endforeach; ?>
</div>