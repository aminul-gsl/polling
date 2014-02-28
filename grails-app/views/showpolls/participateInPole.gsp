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
               <h3>${aPoll.description}</h3>
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
        </div>

    </div>
</div>

</body>
</html>