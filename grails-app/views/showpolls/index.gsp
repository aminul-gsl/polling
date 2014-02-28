<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Polling App - Available Poll</title>
          %{-- style for pop up--}%
            <style>
                body { font-size: 100%; }
                label, input { display:block; }
                input.text { margin-bottom:12px; width:95%; padding: .4em; }
                fieldset { padding:0; border:0; margin-top:25px; }
                h1 { font-size: 1.2em; margin: .6em 0; }
                div#users-contain { width: 350px; margin: 20px 0; }
                div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
                div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
                .ui-dialog .ui-state-error { padding: .3em; }
                .validateTips { border: 1px solid transparent; padding: 0.3em; }
            </style>

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

        </div>
    </div>
</div>
%{--/////////end //////////////--}%


              %{--popup--}%

<div class="testimonails">
    <div class="container">
        <div class="col-md-10 col-lg-push-1">

            <div id="dialog-form" title="Create new user">
                <p class="validateTips">All form fields are required.</p>

                <form>
                    <fieldset>
                        <label for="question">Question</label>
                        <input type="text" name="question" id="question" class="text ui-widget-content ui-corner-all" />
                        <label for="answer1">Answer1</label>
                        <input type="text" name="answer1" id="answer1" value="" class="text ui-widget-content ui-corner-all" />
                        <label for="answer1">Answer2</label>
                        <input type="text" name="answer2" id="answer2" value="" class="text ui-widget-content ui-corner-all" />
                        <label for="answer3">Answer3</label>
                        <input type="text" name="answer3" id="answer3" value="" class="text ui-widget-content ui-corner-all" />
                        <label for="answer4">Answer4</label>
                        <input type="text" name="answer4" id="answer4" value="" class="text ui-widget-content ui-corner-all" />

                    </fieldset>
                </form>
            </div>


            <div id="users-contain" class="ui-widget">
                <h1>Existing Users:</h1>
                <table id="users" class="ui-widget ui-widget-content">
                    <thead>
                    <tr class="ui-widget-header ">
                        <th style='width: 50%'>Question</th>
                        <th>Answer1</th>
                        <th>Answer2</th>
                        <th>Answer3</th>
                        <th>Answer4</th>
                    </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
            <button id="create-user">Create new user</button>
        </div>
    </div>
</div>
            %{--end popup--}%


<!-- clientSection -->
<script type="text/javascript">
    jQuery(function() {
            jQuery('.repeat').each(function() {
                jQuery(this).repeatable_fields();
            });
        });
    </script>
<script type="text/javascript">
    $(function() {
        var question = $( "#question" ),
                answer1 = $( "#answer1" ),
                answer2 = $( "#answer2" ),
                answer3 = $( "#answer3" ),
                answer4 = $( "#answer4" ),
                allFields = $( [] ).add( question ).add( answer1).add(answer2).add(answer3).add(answer4),
                tips = $( ".validateTips" );

        function updateTips( t ) {
            tips
                    .text( t )
                    .addClass( "ui-state-highlight" );
            setTimeout(function() {
                tips.removeClass( "ui-state-highlight", 1500 );
            }, 500 );
        }

        function checkLength( o, n, min, max ) {
            if ( o.val().length > max || o.val().length < min ) {
                o.addClass( "ui-state-error" );
                updateTips( "Length of " + n + " must be between " +
                        min + " and " + max + "." );
                return false;
            } else {
                return true;
            }
        }

        function checkRegexp( o, regexp, n ) {
            if ( !( regexp.test( o.val() ) ) ) {
                o.addClass( "ui-state-error" );
                updateTips( n );
                return false;
            } else {
                return true;
            }
        }

        $( "#dialog-form" ).dialog({
            autoOpen: false,
            height: 300,
            width: 350,
            modal: true,
            buttons: {
                "Create an account": function() {
                    var bValid = true;
                    allFields.removeClass( "ui-state-error" );

                   bValid = bValid && checkLength( question, "Question", 1, 500 );
                   // bValid = bValid && checkLength( email, "email", 6, 80 );
                 //   bValid = bValid && checkLength( password, "password", 5, 16 );

                  //  bValid = bValid && checkRegexp( name, /^[a-z]([0-9a-z_])+$/i, "Username may consist of a-z, 0-9, underscores, begin with a letter." );
                    // From jquery.validate.js (by joern), contributed by Scott Gonzalez: http://projects.scottsplayground.com/email_address_validation/
                  //  bValid = bValid && checkRegexp( email, /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i, "eg. ui@jquery.com" );
                  //  bValid = bValid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );

                    if ( bValid ) {
                        $( "#users tbody" ).append( "<tr>" +
                                "<td style='width: 50%'>" + question.val() + "</td>" +
                                "<td>" + answer1.val() + "</td>" +
                                "<td>" + answer2.val() + "</td>" +
                                "<td>" + answer3.val() + "</td>" +
                                "<td>" + answer4.val() + "</td>" +
                                "</tr>" );
                        $( this ).dialog( "close" );
                    }
                },
                Cancel: function() {
                    $( this ).dialog( "close" );
                }
            },
            close: function() {
                allFields.val( "" ).removeClass( "ui-state-error" );
            }
        });

        $( "#create-user" )
                .button()
                .click(function() {
                    $( "#dialog-form" ).dialog( "open" );
                });
    });
</script>

</body>
</html>
