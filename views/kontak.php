<?php require_once("../controller/script.php");
$_SESSION["project_gis_korlantas"]["name_page"] = "Kontak";
require_once("../templates/views_top.php"); ?>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><?= $_SESSION["project_gis_korlantas"]["name_page"] ?></h1>
  </div>

  <div class="card shadow mb-4 border-0">
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered text-dark" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th class="text-center">Nama</th>
              <th class="text-center">Email</th>
              <th class="text-center">Subjek</th>
              <th class="text-center">Pesan</th>
              <th class="text-center">Tgl Kirim</th>
              <th class="text-center">Action</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
              <th class="text-center">Nama</th>
              <th class="text-center">Email</th>
              <th class="text-center">Subjek</th>
              <th class="text-center">Pesan</th>
              <th class="text-center">Tgl Kirim</th>
              <th class="text-center" style="width: 170px;">Action</th>
            </tr>
          </tfoot>
          <tbody>
            <?php foreach ($views_kontak as $data) { ?>
              <tr>
                <td><?= $data['name'] ?></td>
                <td><?= $data['email'] ?></td>
                <td><?= $data['subject'] ?></td>
                <td><?= $data['message'] ?></td>
                <td><?= $data['created_at'] ?></td>
                <td class="text-center">
                  <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#ubah<?= $data['id_kontak'] ?>">
                    <i class="bi bi-reply"></i> Reply
                  </button>
                  <div class="modal fade" id="ubah<?= $data['id_kontak'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header border-bottom-0 shadow">
                          <h5 class="modal-title" id="exampleModalLabel">Reply pesan <?= $data['name'] ?></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <form action="" method="post">
                          <input type="hidden" name="id_kontak" value="<?= $data['id_kontak'] ?>">
                          <input type="hidden" name="email" value="<?= $data['email'] ?>">
                          <input type="hidden" name="name" value="<?= $data['name'] ?>">
                          <input type="hidden" name="subject" value="<?= $data['subject'] ?>">
                          <div class="modal-body text-left">
                            <div class="form-group">
                              <label for="deskripsi<?= $data['id_kontak'] ?>">Tuliskan pesan balasan :</label>
                              <textarea name="deskripsi" class="form-control" id="deskripsi<?= $data['id_kontak'] ?>" rows="3"></textarea>
                              <script>
                                CKEDITOR.replace('deskripsi<?= $data['id_kontak'] ?>');
                              </script>
                            </div>
                          </div>
                          <div class="modal-footer justify-content-center border-top-0">
                            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
                            <button type="submit" name="reply_kontak" class="btn btn-primary btn-sm">Reply</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapus<?= $data['id_kontak'] ?>">
                    <i class="bi bi-trash3"></i> Hapus
                  </button>
                  <div class="modal fade" id="hapus<?= $data['id_kontak'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header border-bottom-0 shadow">
                          <h5 class="modal-title" id="exampleModalLabel">Hapus pesan <?= $data['name'] ?></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <form action="" method="post">
                          <input type="hidden" name="id_kontak" value="<?= $data['id_kontak'] ?>">
                          <div class="modal-body">
                            <p>Jika anda yakin ingin menghapus data ini, klik Hapus!</p>
                          </div>
                          <div class="modal-footer justify-content-center border-top-0">
                            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
                            <button type="submit" name="delete_kontak" class="btn btn-danger btn-sm">hapus</button>
                          </div>
                        </form>
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
<!-- /.container-fluid -->

<?php require_once("../templates/views_bottom.php") ?>