<#import "parts/html-struture-pattern.ftlh" as c>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" class="form-control"
                       value="${filter?ifExists}" placeholder="Search by tag"/>
                <button type="submit" id="buttonPage" class="btn btn-primary ml-2">Search</button>
            </form>
        </div>
    </div>

    <#include "parts/message-edit.ftlh" />
    <#include "parts/list-messages.ftlh" />
</@c.page>