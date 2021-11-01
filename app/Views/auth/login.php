<?= $this->extend('auth/layout/template') ?>

<?= $this->section('content') ?>

<!-- Login with Header -->
<div class="text-justify" style="background-image: url('<?= base_url('/assets/img/tournyaka/header.jpg'); ?>'); background-size: cover; background-position: center center;">
    <div class="bg-dark bg-opacity-50 py-5" style="background-size: cover;">
        <div class="container-lg py-4 pb-5 px-3 px-sm-4 px-lg-0">
            <div class="row">
                <div class="col-lg-6 my-3 pt-md-5 text-white hide">
                    <h1 class="display-1 ls-0 fw-bold font-libre">tournyaka</h1>
                    <p class="lead mb-4 text-warning font-viga">Tournyaka merupakan sebuah platform pariwisata berbasis digital dengan konsep smart tourism yang memudahkan wisatawan untuk mendapatkan layanan jasa pariwisata di Pangandaran</p>
                </div>
                <div class="col-md-10 mx-auto col-lg-5">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <h5 class="card-title display-6 font-libre">Masuk</h5>
                                <p>Mulai menjelajah lebih jauh dari sini.</p>

                                <?= view('Myth\Auth\Views\_message_block') ?>

                                <div class="d-grid gap-2 mx-auto">
                                    <button type="button" class="btn btn-outline-danger rounded-pill">
                                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M18.1711 8.36788H17.4998V8.33329H9.99984V11.6666H14.7094C14.0223 13.607 12.1761 15 9.99984 15C7.23859 15 4.99984 12.7612 4.99984 9.99996C4.99984 7.23871 7.23859 4.99996 9.99984 4.99996C11.2744 4.99996 12.434 5.48079 13.3169 6.26621L15.674 3.90913C14.1857 2.52204 12.1948 1.66663 9.99984 1.66663C5.39775 1.66663 1.6665 5.39788 1.6665 9.99996C1.6665 14.602 5.39775 18.3333 9.99984 18.3333C14.6019 18.3333 18.3332 14.602 18.3332 9.99996C18.3332 9.44121 18.2757 8.89579 18.1711 8.36788Z" fill="#FFC107" />
                                            <path d="M2.62744 6.12121L5.36536 8.12913C6.10619 6.29496 7.90036 4.99996 9.99994 4.99996C11.2745 4.99996 12.4341 5.48079 13.317 6.26621L15.6741 3.90913C14.1858 2.52204 12.1949 1.66663 9.99994 1.66663C6.79911 1.66663 4.02327 3.47371 2.62744 6.12121Z" fill="#FF3D00" />
                                            <path d="M10 18.3334C12.1525 18.3334 14.1084 17.5096 15.5871 16.17L13.008 13.9875C12.1432 14.6452 11.0865 15.0009 10 15C7.83255 15 5.99213 13.618 5.2988 11.6892L2.5813 13.783C3.96047 16.4817 6.7613 18.3334 10 18.3334Z" fill="#4CAF50" />
                                            <path d="M18.1713 8.36796H17.5V8.33337H10V11.6667H14.7096C14.3809 12.5902 13.7889 13.3972 13.0067 13.988L13.0079 13.9871L15.5871 16.1696C15.4046 16.3355 18.3333 14.1667 18.3333 10C18.3333 9.44129 18.2758 8.89587 18.1713 8.36796Z" fill="#1976D2" />
                                        </svg>
                                        Masuk dengan Google
                                    </button>
                                </div>
                                <div class="row mt-1 my-sm-2">
                                    <div class="col">
                                        <hr>
                                    </div>
                                    <div class="col col-auto">
                                        Atau masuk dengan
                                    </div>
                                    <div class="col">
                                        <hr>
                                    </div>
                                </div>

                                <form action="<?= route_to('login') ?>" method="post" class="font-viga">
                                    <?= csrf_field() ?>
                                    <?php if ($config->validFields === ['email']) : ?>
                                        <div class="form-group mb-2">
                                            <input type="email" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" name="login" placeholder="<?= lang('Auth.email') ?>">
                                            <div class="invalid-feedback">
                                                <?= session('errors.login') ?>
                                            </div>
                                        </div>
                                    <?php else : ?>
                                        <div class="form-group mb-2">
                                            <input type="text" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" name="login" placeholder="<?= lang('Auth.emailOrUsername') ?>">
                                            <div class="invalid-feedback">
                                                <?= session('errors.login') ?>
                                            </div>
                                        </div>
                                    <?php endif; ?>

                                    <div class="form-group">
                                        <input type="password" name="password" class="form-control  <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.password') ?>">
                                        <div class="invalid-feedback">
                                            <?= session('errors.password') ?>
                                        </div>
                                    </div>

                                    <div class="form-group text-end mb-3">
                                        <a class="text-decoration-none text-warning" href="<?= route_to('forgot') ?>"><?= lang('Auth.forgotYourPassword') ?></a>
                                    </div>

                                    <div class="form-group mb-1">
                                        <button type="submit" class="btn btn-warning rounded-pill btn-block">&emsp;Masuk&emsp;</button>
                                    </div>
                                </form>
                                <p>Belum memiliki akun? <a class="text-decoration-none font-viga text-warning" href="<?= route_to('register') ?>">Daftar</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Login with Header -->

<?= $this->endSection() ?>