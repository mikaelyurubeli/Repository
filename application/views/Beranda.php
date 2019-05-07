<div class="container-fluid repo-header-padding">
    <div class="row">
        <div class="col-md-9">
            <h1>Repository Search</h1>
            <hr />
            <h1>Latest Additions</h1>
        </div>
        <div class="col-md-3">  
            <div class="accordion" id="accordionExample">
                <div class="card repo-border-sidebar">
                    <div class="card-header repo-color-primary" id="headingThree">
                        <h2 class="mb-0">
                            <button class="btn btn-link repo-clear-decoration repo-clear-css collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                <span class="repo-sidebar-login">Login</span>
                            </button>
                        </h2>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                        <div class="card-body">
                            <form action="<?php echo base_url();?>auth/aksi_login" method="post">
                                <?php if ($this->session->flashdata('failed')) { ?>
                                    <div id="repo-failed-login" class="alert alert-danger" role="alert">
                                        <?php echo $this->session->flashdata('failed'); ?>
                                    </div>
                                <?php } ?>
                                <div class="form-group">
                                    <input type="text" name="email" class="form-control repo-mb-10" placeholder="Username" required/>
                                    <input type="password" name="password" class="form-control" placeholder="Password" required/>
                                </div>

                                <a id="repo-button-signup" href="<?php echo base_url();?>signup" class="btn btn-light repo-color-white repo-font-14">Signup</a>
                                <button type="submit" class="btn repo-color-primary repo-font-14">Login</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>