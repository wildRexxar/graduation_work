<#import "parts/html-struture-pattern.ftlh" as c>

<@c.page>
    <h3>${userChannel.username}</h3>
    <#if !isCurrentUser>
        <#if isSubscriber>
            <a class="btn btn-info" id="buttonPage" href="/user/unsubscribe/${userChannel.id}">Unsubscribe</a>
        <#else>
            <a class="btn btn-info" id="buttonPage" href="/user/subscribe/${userChannel.id}">Subscribe</a>
        </#if>
    </#if>
    <div class="container my-3">
        <div class="row">
            <div class="col">
                <div class="card" >
                    <div class="card-body" id="cardStyle">
                        <div class="card-title">Subscriptions</div>
                        <h3 class="card-text">
                            <a id="labelText" href="/user/subscriptions/${userChannel.id}/list">${subscriptionsCount}</a>
                        </h3>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-body" id="cardStyle">
                        <div class="card-title">Subscribers</div>
                        <h3 class="card-text">
                            <a id="labelText" href="/user/subscribers/${userChannel.id}/list">${subscribersCount}</a>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <#if isCurrentUser>
        <#include "parts/message-edit.ftlh" />
    </#if>

    <#include "parts/list-messages.ftlh" />
</@c.page>