<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Polling App - Participate in pole</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4 style="color: #FF4800;" >${aPoll.description}</h4>
            </div>
        </div>
    </div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <form method="post" id="poleForm" action='${resource(dir:'showpolls', file:'savePoll')}'>
                <g:hiddenField name="pollId" value="${aPoll.id}"/>
               %{--<h3>${aPoll.description}</h3>--}%
                    <ol>
                        <g:each in="${aPoll.question}" var="question">
                             <li>${question.description}</li>
                                    <g:if test="${question.allowMultiple}">
                                        <g:each in="${question.option}" var="option">
                                            <label >
                                                <input type="checkbox" id="${option.id}" value="${option.id}"> ${option.description}
                                            </label>
                                        </g:each>
                                    </g:if>
                                    <g:else>
                                        <g:each in="${question.option}" var="option">
                                            <label>
                                                <input type="radio" name="${question.id}" id="${option.id}" value="${option.id}"> ${option.description}
                                            </label>
                                        </g:each>
                                    </g:else>

                        </g:each>
                    </ol>
                <g:submitButton class="btn btn-lg btn-success" name="Submit Pole"/>
                <form/>
        </div>

    </div>
</div>
     <r:script>
        $(function(){
            $('#poleForm').on('submit', function(e) { //use on if jQuery 1.7+
                e.preventDefault();  //prevent form from submitting
                $("input:checkbox[name=type]:checked").each(function()
                {
                    // add $(this).val() to your array
                });
//                console.log(data); //use the console for debugging, F12 in Chrome, not alerts
            });
        });
     </r:script>
</body>
</html>