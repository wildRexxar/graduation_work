<#include "security.ftlh">

<div class="container">

    <div class="row">
        <div class="col">
        </div>
        <div class="col-5">
            <div class="col">
                <#list messages as message>
                    <div class="card my-5" id="cardStyle2">
                        <#if message.filename??>
                            <img src="/img/${message.filename}" class="card-img-top"/>
                        </#if>
                        <div class="m-2">
                            <span>${message.text}</span><br/>
                            <i>#${message.tag}</i>
                        </div>


                        <div class="row">
                            <div class="col-6 col-md-2"></div>
                            <div class="col-6 col-md-4">
                                <a id="authorName" href="/user-messages/${message.author.id}">${message.authorName}</a>
                            </div>
                            <div class="col-6 col-md-4">
                                <#if message.author.id == currentUserId>
                                    <a class="btn btn-primary" id="buttonPage"
                                       href="/user-messages/${message.author.id}?message=${message.id}">
                                        Edit
                                    </a>
                                </#if>
                            </div>
                        </div>
                    </div>
                <#else>
                    <h3> No message </h3>
                </#list>
            </div>
        </div>
        <div class="col">
        </div>
    </div>
</div>




