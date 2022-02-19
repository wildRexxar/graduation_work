<#import "parts/html-struture-pattern.ftlh" as c>
<#import "parts/log.ftlh" as l>

<@c.page>
    <div class="mb-1" id="labelText">Add new user</div>
    ${message?ifExists}
    <@l.login "/registration" true />
</@c.page>