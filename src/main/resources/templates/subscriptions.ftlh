<#import "parts/html-struture-pattern.ftlh" as c>

<@c.page>
    <h3><div>${type} :</div></h3>
    <ul id="list1" class="list-group">
        <#list users as user>
            <li id="list1" class="list-group-item">
                <a id="list1" href="/user-messages/${user.id}">${user.getUsername()}</a>
            </li>
        </#list>
        </ul>
</@c.page>>