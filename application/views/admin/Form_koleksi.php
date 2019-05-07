<div class="container-fluid repo-header-padding">
    <h1 class="">Submit Koleksi</h1>

    <form action="<?php echo base_url();?>koleksi/step_1" method="post">
        <div class="form-group">
            <label for="authors_name" class="repo-label-form">Authors</label>
            <div class="row">
                <div class="col-md-3">
                    <input type="text" class="form-control form-control-sm" id="authors_name" aria-describedby="first_name" placeholder="First Name">
                    <small id="first_name" class="form-text text-muted">First name</small>
                </div>
                <div class="col-md-3">
                    <input type="text" class="form-control form-control-sm" id="authors_name" aria-describedby="last_name" placeholder="Last Name">
                    <small id="last_name" class="form-text text-muted">Last name</small>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="advisors_name" class="repo-label-form">Advisors</label>
            <div class="row">
                <div class="col-md-3">
                    <input type="text" class="form-control form-control-sm" id="advisors_name" aria-describedby="first_name" placeholder="First Name">
                    <small id="first_name" class="form-text text-muted">First name</small>
                </div>
                <div class="col-md-3">
                    <input type="text" class="form-control form-control-sm" id="advisors_name" aria-describedby="last_name" placeholder="Last Name">
                    <small id="last_name" class="form-text text-muted">Last name</small>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="repo-label-form">Title</label>
            <div class="row">
                <div class="col-md-6">
                    <textarea class="form-control" rows="2" cols="20"></textarea>
                </div>
            </div>
        </div>
        <button type="submit text-right" class="btn btn-primary">Save</button>
    </form>
</div>