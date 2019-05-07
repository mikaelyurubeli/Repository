<div class="container-fluid repo-clear-css"> 
  <div class="repo-header clearfix ">
    <img src="<?php echo base_url();?>assets/images/logo-unj.png" class="repo-header-icon"/>
    <h3 class="repo-title">REPOSITORY</h3>
  </div>
  <nav class="navbar navbar-expand-md navbar-light" style="background-color: #F7F7F7;">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="koleksi">Submit</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Browse</a>
        </li>
        <?php if ($this->session->userdata('is_login') == true) { ?>
          <li class="nav-item">
            <a class="nav-link" href="auth/logout">Logout</a>
          </li>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>