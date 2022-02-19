<#include "security.ftlh">
<#import "log.ftlh" as l>

<nav class="navbar navbar-expand-lg navbar navbar-light">

    <a class="navbar-brand" id="textNavbarLogo" href="/">GP</a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" id="textNavbar1" href="/">Home</a>
            </li>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" id="textNavbar1" href="/main">Messages</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="textNavbar1" href="/user-messages/${currentUserId}">My messages</a>
                </li>
            </#if>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" id="textNavbar1" href="/user">User list</a>
                </li>
            </#if>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" id="textNavbar1" href="/user/profile">Profile</a>
                </li>
            </#if>
        </ul>

        <div class="navbar-text mr-3" id="textNavbar2">
            <#if user??>${name}<#else>Please, login</#if>
        </div>
        <form action="/logout" method="post">
            <input type="hidden" id="input1" name="_csrf" value="${_csrf.token}"/>
            <button class="btn btn-primary" id="buttonNavbar" type="submit">
                <#if user??>Logout<#else>Log in</#if>
            </button>
        </form>
    </div>
</nav>