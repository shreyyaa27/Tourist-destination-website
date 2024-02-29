<?php

require_once('includes/database.php');
$page_title = "Add Destination";
require_once ('includes/header.php');

?>
  <div class="container wrapper">
  <ul class="breadcrumb">
    <li><a href="index.php">Home</a></li>
    <li class="active">Add Destination</li>
  </ul>

  <h1 class="text-center">ADD Destination</h1>
  <p class="lead text-center">Please add your desired Destination</p>
  <div class="col-xs-8 col-xs-offset-2">
    <form class="form-horizontal" role="form" action="processDestination.php" method="get" enctype="text/plain">
      <div class="form-group">
        <label for="newDestinationName" class="col-sm-3 control-label">Title</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" id="newDestinationName" name="Destination_name" placeholder="Destination Title" required>
        </div>
      </div>
      <div class="form-group">
        <label for="DestinationYear" class="col-sm-3 control-label">Year</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" id="DestinationYear" name="Destination_year" placeholder="Year" required>
        </div>
      </div>
      <div class="form-group">
        <label for="DestinationBio" class="col-sm-3 control-label">Storyline</label>
        <div class="col-sm-9">
          <textarea type="email" class="form-control" id="DestinationBio" name="bio" rows="4" placeholder="Enter Storyline" required></textarea>
        </div>
      </div>
      <div class="form-group">
        <label for="newImage" class="col-sm-3 control-label">Destination Cover URL</label>
        <div class="col-sm-9">
          <input type="text" id="newImage" class="form-control" name="image" placeholder="Enter URL" required>
        </div>
      </div>
      <div class="form-group">
        <label for="DestinationRating" class="col-sm-3 control-label">Rating</label>
        <div class="col-sm-9">
          <select id="DestinationRating" name="rating" class="form-control" required>
            <option value="G">G</option>
            <option value="PG">PG</option>
            <option value="PG-13">PG-13</option>
            <option value="R">R</option>
            <option value="NR">NR (Not Rated)</option>
          </select>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-3 col-sm-9">
          <button type="submit" class="btn btn-success">Add Destination</button>
        </div>
      </div>
    </form>
  </div>
</div>

<?php
  include('includes/footer.php');
?>