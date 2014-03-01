<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Polling App - Create Poll</title>

</head>
<body>

<!-- bodySection -->



<div class="testimonails">
    <div class="container">
        <div class="col-md-8 col-lg-push-2">
            <div id="static" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" style="display: none;">
                <div class="modal-body">


                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="pollName" class="col-sm-2 control-label">Name </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="pollName" placeholder="Write The Poll Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Description </label>
                            <div class="col-sm-10">
                                <textarea class="form-control" id="description"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label>
                                        Status <input type="checkbox" name="status">
                                    </label>
                                </div>
                            </div>
                        </div>

                    </form>


                </div>
                <div class="modal-footer">
                    <p><a href="${g.createLink(action: 'create')}" class="btn btn-lg btn-success">Create New Poll</a></p>
                    <button type="button" data-dismiss="modal" class="btn btn-default">Cancel</button>
                </div>
            </div>
            <div class="text-center">
                <button class="demo btn btn-primary btn-lg" data-toggle="modal" href="#static">Add a Poll</button>

            </div>
        </div>
    </div>

</div>

<div class="testimonails">
    <div class="container">
        <div class="col-md-10 col-lg-push-1">
            <p>Some description about how should create poll will be here</p>
        </div>

    </div>
</div>
<!-- clientSection -->
<script id="dynamic" type="text/javascript">
    $('.dynamic .demo').click(function(){
        var tmpl = [
            // tabindex is required for focus
            '<div class="modal hide fade" tabindex="-1">',
            '<div class="modal-header">',
            '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>',
            '<h4 class="modal-title">Modal header</h4>',
            '</div>',
            '<div class="modal-body">',
            '<p>Test</p>',
            '</div>',
            '<div class="modal-footer">',
            '<a href="#" data-dismiss="modal" class="btn btn-default">Close</a>',
            '<a href="#" class="btn btn-primary">Save changes</a>',
            '</div>',
            '</div>'
        ].join('');

        $(tmpl).modal();
    });
</script>
</body>
</html>
