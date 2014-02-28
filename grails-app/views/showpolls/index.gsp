<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Polling App - Available Poll</title>


</head>
<body>

<!-- bodySection -->


<div class="testimonails">
    <div class="container">
        <div class="col-md-8 col-lg-push-2">
            <p>Total poll created : 10</p>
            <p>Highest User take part : 1000</p>
        </div>
      </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-10 col-lg-push-1">
          %{--  <h3 class="title">All available Polling List will show here</h3>
            <ul>
                <li>Poll Created on 26/2/2014</li>
                <li>Poll Created on 26/2/2014</li>
                <li>Poll Created on 26/2/2014</li>
                <li>Poll Created on 26/2/2014</li>
                <li>Poll Created on 26/2/2014</li>

            </ul>--}%

          %{--for dynamic field--}%


<div class="repeat">

    <table class="wrapper table table-striped table-bordered">
        <thead>
        <tr>
            <td width="10%" colspan="4"><span class="add btn btn-success">Add</span></td>
        </tr>
        </thead>
        <tbody class="container ui-sortable">
        <tr class="template row" style=" display: none">
            <td width="10%"><span class="move btn btn-info">Move</span></td>

            <td width="10%">Question</td>

            <td width="70%">
                <input type="text" name="location[{{row-count-placeholder}}]" class="form-control" disabled="" />
            </td>

            <td width="10%"><span class="remove btn btn-danger">Remove</span></td>
        </tr>
        <tr class="row move">
            <td width="10%"><span class="move btn btn-info">Move</span></td>

            <td width="10%">Question</td>

            <td width="70%">
                <input type="text" name="location[0]" class="form-control" />
            </td>

            <td width="10%"><span class="remove btn btn-danger">Remove</span></td>
        </tr>

        </tbody>
    </table>

</div>

%{--/////////end //////////////--}%

        </div>


    </div>
    </div>
<!-- clientSection -->
<script>
    jQuery(function() {
            jQuery('.repeat').each(function() {
                jQuery(this).repeatable_fields();
            });
        });
    </script>
</body>
</html>
