<#import "parts/html-struture-pattern.ftlh" as c>
<@c.page>
    <h5>${username}</h5>
    ${message?ifExists}
    <form method="post">

        <div class="form-group row">
            <label class="col-sm-2 col-form-label" id="labelText">Enter new password:</label>
            <div class="col-sm-4">
                <input type="password" id="input1" name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label" id="labelText">Enter new email:</label>
            <div class="col-sm-4">
                <input type="email" id="input1" name="email" class="form-control" placeholder="some@some.com" value="${email!''}"/>
            </div>
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" id="buttonPage" type="submit">Save</button>
    </form>
</@c.page>