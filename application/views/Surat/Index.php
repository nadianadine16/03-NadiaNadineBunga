<style>
#surat {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#surat td, #surat th {
  border: 2px solid #000000;
  padding: 8px;
}

#surat tr:hover {background-color: #ddd;}

#surat th {
  padding-top: 7px;
  padding-bottom: 7px;
  text-align: left;
  background-color: #e8e8e8;
  color: black;
}
</style>
<div class="container-fluid"style="border:3px solid black">    
    <div class="d-sm-flex align-items-center justify-content-between" style="margin-top:50px; font-family:sans-serif;color:black">        
        <h3 class="font-weight-bold" style="color:black; margin-left:100px;">Arsip Surat</h3>  <br>        
    </div>
    <p  style="font-family:sans-serif;color:black; margin-left:100px;font-size:13px;"><b>Berikut ini adalah surat-surat yang telah terbit dan diarsipkan.<br>Klik "Lihat" pada kolom aksi untuk menampilkan surat.</b></p>
    <div>
        <ul style="list-style-type:none;display: flex;">
            <li style="margin-top:10px;margin-right:100px;color:black;font-weight:bold">cari surat:</li>
            <li>
            <form class="login100-form" action ="<?= base_url('Surat/Cari');?>" method="post">
            <div class="wrap-input100">
			    <input class="input100" type="text" name="keyword" placeholder="search" style="width: 700px;height: 30px;background-color:white;border: 2px solid black; color:black">				
				<span class="symbol-input100">
				<i class="fa fa-search" aria-hidden="true" style="color:black"></i>
				</span>
			</div>                
            </li>            
            <li style="margin-top:3px;margin-left:420px;"><button class="button" style="padding-left:10px;padding-right:10px;text-decoration:none;color: #000;background-color: #fff;border: 2px solid black; border-color:black; box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);"> Cari </button></li>
            </form>
        </ul>
    </div>
    <table id="surat">
  <tr>
    <th>Nomor Surat</th>
    <th>Kategori</th>
    <th>Judul</th>
    <th>Waktu Pengarsipan</th>
    <th>Aksi</th>
</tr>
  
  <?php $no=1; foreach($tampilSurat as $ts):?>
  <tr style="color:black">
    <td><?=$ts["nomor_surat"];?></td>
    <td><?=$ts["nama_kategori"];?></td>
    <td><?=$ts["judul"];?></td>
    <td><?=$ts["waktu_pengarsipan"];?></td>
    <td><a onclick="return konfirmasi()" href="<?= base_url();?>Surat/Hapus_Data_Surat/<?=$ts['id_surat'];?>" class="btn btn-danger" style="margin-right:2px;">Hapus</a>
    <a href="<?= base_url('upload/'.$ts["file"])?>" class="btn btn-warning" style="margin-right:2px;">Unduh</a>
    <a href="<?= base_url();?>Surat/Lihat_Surat/<?=$ts['id_surat'];?>" class="btn btn-primary">Lihat >></a></td>
  </tr>  
  <?php endforeach;?>  
</table>
<div style=margin-top:10px;>
<a href="<?= base_url();?>Surat/FormArsipSurat" class="button" style="padding-left:10px;padding-right:10px;text-decoration:none;color: #000;background-color: #fff;border: 2px solid black; border-color:black; box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);"> Arsipkan Surat .. </a>
</div>  
</div>
<script type="text/javascript" language="JavaScript">
    function konfirmasi()
    {
        tanya = confirm("Apakah anda yakin ingin menghapus arsip surat ini?");
        if (tanya == true) return true;
        else return false;
    }
</script>
