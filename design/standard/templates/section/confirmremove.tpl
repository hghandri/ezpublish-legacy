<div class="warning">
<h2>{"Are you sure you want to remove these sections?"|i18n("design/standard/section")}</h2>
<ul>
{section name=Result loop=$delete_result}
    <li> {$Result:item.name} - {$Result:item.id}</li>
{/section}
</ul>
{"Removing these sections can corrupt permissions, sitedesigns, and other things in the system. Do not do this unless you know exactly what are you doing."|i18n("design/standard/section")}
</div>

<form action={concat($module.functions.list.uri)|ezurl} method="post" name="SectionRemove">

<div class="buttonblock">
{include uri="design:gui/button.tpl" name=Store id_name=ConfirmRemoveSectionButton value="Confirm"|i18n("design/standard/section")}
{include uri="design:gui/button.tpl" name=Discard id_name=CancelButton value="Cancel"|i18n("design/standard/section")}
</div>

</form>
