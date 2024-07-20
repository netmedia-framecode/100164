<?php require_once("../controller/script.php");
$_SESSION["project_gis_korlantas"]["name_page"] = "";
require_once("../templates/views_top.php"); ?>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
  </div>

  <!-- Content Row -->
  <div class="row">

    <div class="col-xl-4 col-md-4 mb-4">
      <a href="polres" class="text-decoration-none">
        <div class="card border-left-primary shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                  Polres</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $counts_polres ?></div>
              </div>
              <div class="col-auto">
                <i class="fas fa-list fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>

    <div class="col-xl-4 col-md-4 mb-4">
      <a href="data-kecelakaan" class="text-decoration-none">
        <div class="card border-left-danger shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                  Kecelakaan</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $counts_laka ?></div>
              </div>
              <div class="col-auto">
                <i class="fas fa-list fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>

    <div class="col-xl-4 col-md-4 mb-4">
      <a href="titik-rawan" class="text-decoration-none">
        <div class="card border-left-danger shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                  Titik Rawan</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $counts_titik_rawan ?></div>
              </div>
              <div class="col-auto">
                <i class="fas fa-list fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>

  </div>

  <!-- Content Row -->
  <div class="row">

    <!-- Content Column -->
    <div class="col-lg-6 mb-4">
      <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">Polres</h6>
        </div>
        <div class="card-body">
          <?php foreach ($views_polres_dash as $data) : ?>
            <div class="card mb-3 border-0 shadow">
              <div class="row no-gutters">
                <div class="col-md-4">
                  <img src="../assets/img/polres/<?= $data['img_polres'] ?>" style="width: 100%;height: 220px;object-fit: cover;" alt="...">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title"><?= $data['nama_polres'] ?></h5>
                    <p class="card-text mb-0">Alamat: <?= $data['alamat'] ?></p>
                    <p class="card-text mb-0">Telepon: <?= $data['telepon'] ?></p>
                    <p class="card-text mb-0">Email: <?= $data['email'] ?></p>
                    <p class="card-text">Jumlah Anggota: <?= $data['jumlah_anggota'] ?></p>
                  </div>
                </div>
              </div>
            </div>
          <?php endforeach; ?>
        </div>
      </div>
    </div>

    <!-- Content Column -->
    <div class="col-lg-6 mb-4">
      <div class="row">
        <?php $querySubMenu = "SELECT * FROM user_sub_menu 
                    JOIN user_menu ON user_sub_menu.id_menu = user_menu.id_menu
                    JOIN user_access_sub_menu ON user_sub_menu.id_sub_menu=user_access_sub_menu.id_sub_menu
                    WHERE user_sub_menu.id_menu = 3
                    AND user_sub_menu.id_active = 1
                    AND user_access_sub_menu.id_role = '$id_role'
                  ";
        $subMenu = mysqli_query($conn, $querySubMenu);
        foreach ($subMenu as $sm) : ?>
          <div class="col-lg-6 mb-4">
            <a class="text-decoration-none" href="<?= $sm['url']; ?>">
              <div class="card bg-primary text-white shadow">
                <div class="card-body">
                  <i class="<?= $sm['icon']; ?>"></i>
                  <div class="text-white-100 small"><?= $sm['title']; ?></div>
                </div>
              </div>
            </a>
          </div>
        <?php endforeach; ?>
      </div>

    </div>
  </div>

  <!-- Content Row -->
  <div class="row">
    <div class="card shadow mb-4">
      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
        <h6 class="m-0 font-weight-bold text-primary">Data Kecelakaan</h6>
        <div class="dropdown no-arrow">
          <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
            <div class="dropdown-header">Detail</div>
            <a class="dropdown-item" href="data-kecelakaan">Tambah Data</a>
          </div>
        </div>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered text-dark" id="dataTable" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th class="text-center">No. Laka</th>
                <th class="text-center">Polres</th>
                <th class="text-center">Waktu Kecelakaan</th>
                <th class="text-center">Lokasi</th>
                <th class="text-center"></th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <th class="text-center">No. Laka</th>
                <th class="text-center">Polres</th>
                <th class="text-center">Waktu Kecelakaan</th>
                <th class="text-center">Lokasi</th>
                <th class="text-center"></th>
              </tr>
            </tfoot>
            <tbody>
              <?php foreach ($views_laka as $data) { ?>
                <tr>
                  <td>
                    <p><?= $data['no_laka'] ?></p>
                    <img src="../assets/img/laka/<?= $data['img_laka'] ?>" style="width: 200px;" alt="">
                  </td>
                  <td><?= $data['nama_polres'] ?></td>
                  <td><?php $tanggal_kejadian = date_create($data["tanggal_kejadian"]);
                      echo date_format($tanggal_kejadian, "d M Y"); ?></td>
                  <td><?= $data['nama_jalan_rawan'] ?></td>
                  <td>
                    <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#detail<?= $data['id_laka'] ?>">
                      <i class="bi bi-search"></i> Detail
                    </button>
                    <div class="modal fade" id="detail<?= $data['id_laka'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header border-bottom-0 shadow">
                            <h5 class="modal-title" id="exampleModalLabel">Detail Kecelakaan</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <?php

                            $tk_laka = "SELECT * FROM tingkat_kecelakaan WHERE id_tingkat_kecelakaan='$data[id_tingkat_kecelakaan]'";
                            $view_tk_laka = mysqli_query($conn, $tk_laka);
                            $data_detail = mysqli_fetch_assoc($view_tk_laka);

                            echo "Tingkat Kecelakaan : " . $data_detail['tingkat_kecelakaan'] . "<br>";
                            echo "Jumlah Meninggal : " . $data['jumlah_meninggal'] . "<br>";
                            echo "Jumlah Luka Berat : " . $data['jumlah_luka_berat'] . "<br>";
                            echo "Jumlah Luka Ringan : " . $data['jumlah_luka_ringan'] . "<br>";
                            echo "Titik Acuan : " . $data['titik_acuan'] . "<br>";

                            $ik_laka = "SELECT * FROM informasi_khusus WHERE id_informasi_khusus='$data[id_informasi_khusus]'";
                            $view_ik_laka = mysqli_query($conn, $ik_laka);
                            $data_detail = mysqli_fetch_assoc($view_ik_laka);

                            echo "Informasi Khusus : " . $data_detail['informasi_khusus'] . "<br>";
                            echo "Tipe Kecelakaan : " . $data['tipe_kecelakaan'] . "<br>";

                            $kc_laka = "SELECT * FROM kondisi_cahaya WHERE id_kondisi_cahaya='$data[id_kondisi_cahaya]'";
                            $view_kc_laka = mysqli_query($conn, $kc_laka);
                            $data_detail = mysqli_fetch_assoc($view_kc_laka);

                            echo "Kondisi Cahaya : " . $data_detail['kondisi_cahaya'] . "<br>";

                            $cuaca_laka = "SELECT * FROM cuaca WHERE id_cuaca='$data[id_cuaca]'";
                            $view_cuaca_laka = mysqli_query($conn, $cuaca_laka);
                            $data_detail = mysqli_fetch_assoc($view_cuaca_laka);

                            echo "Cuaca : " . $data_detail['kondisi'] . "<br>";

                            $kecelakaan_menonjol_laka = "SELECT * FROM kecelakaan_menonjol WHERE id_kecelakaan_menonjol='$data[id_kecelakaan_menonjol]'";
                            $view_kecelakaan_menonjol_laka = mysqli_query($conn, $kecelakaan_menonjol_laka);
                            $data_detail = mysqli_fetch_assoc($view_kecelakaan_menonjol_laka);

                            echo "Kecelakaan Menonjol : " . $data_detail['kecelakaan_menonjol'] . "<br>";

                            $fungsi_jalan_laka = "SELECT * FROM fungsi_jalan WHERE id_fungsi_jalan='$data[id_fungsi_jalan]'";
                            $view_fungsi_jalan_laka = mysqli_query($conn, $fungsi_jalan_laka);
                            $data_detail = mysqli_fetch_assoc($view_fungsi_jalan_laka);

                            echo "Fungsi Jalan : " . $data_detail['fungsi_jalan'] . "<br>";

                            $kelas_jalan_laka = "SELECT * FROM kelas_jalan WHERE id_kelas_jalan='$data[id_kelas_jalan]'";
                            $view_kelas_jalan_laka = mysqli_query($conn, $kelas_jalan_laka);
                            $data_detail = mysqli_fetch_assoc($view_kelas_jalan_laka);

                            echo "Kelas Jalan : " . $data_detail['kelas_jalan'] . "<br>";

                            $tipe_jalan_laka = "SELECT * FROM tipe_jalan WHERE id_tipe_jalan='$data[id_tipe_jalan]'";
                            $view_tipe_jalan_laka = mysqli_query($conn, $tipe_jalan_laka);
                            $data_detail = mysqli_fetch_assoc($view_tipe_jalan_laka);

                            echo "Tipe Jalan : " . $data_detail['tipe_jalan'] . "<br>";

                            $permukaan_jalan_laka = "SELECT * FROM permukaan_jalan WHERE id_permukaan_jalan='$data[id_permukaan_jalan]'";
                            $view_permukaan_jalan_laka = mysqli_query($conn, $permukaan_jalan_laka);
                            $data_detail = mysqli_fetch_assoc($view_permukaan_jalan_laka);

                            echo "Permukaan Jalan : " . $data_detail['permukaan_jalan'] . "<br>";
                            echo "Batas Kecepatan di Lokasi : " . $data['batas_kecepatan_dilokasi'] . "<br>";

                            $kemiringan_jalan_laka = "SELECT * FROM kemiringan_jalan WHERE id_kemiringan_jalan='$data[id_kemiringan_jalan]'";
                            $view_kemiringan_jalan_laka = mysqli_query($conn, $kemiringan_jalan_laka);
                            $data_detail = mysqli_fetch_assoc($view_kemiringan_jalan_laka);

                            echo "Kemiringan Jalan : " . $data_detail['kemiringan_jalan'] . "<br>";

                            $status_jalan_laka = "SELECT * FROM status_jalan WHERE id_status_jalan='$data[id_status_jalan]'";
                            $view_status_jalan_laka = mysqli_query($conn, $status_jalan_laka);
                            $data_detail = mysqli_fetch_assoc($view_status_jalan_laka);

                            echo "Status Jalan : " . $data_detail['status_jalan'] . "<br>";
                            echo "Nilai Kerugian Non Kendaraan : " . $data['nilai_kerugian_non_kendaraan'] . "<br>";
                            echo "Nilai Kerugian Kendaraan : " . $data['nilai_kerugian_kendaraan'] . "<br>";
                            echo "Keterangan : " . $data['Keterangan_kerugian'] . "<br>";
                            ?>
                          </div>
                        </div>
                      </div>
                    </div>
                  </td>
                </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

<?php require_once("../templates/views_bottom.php") ?>