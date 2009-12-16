{* DO NOT EDIT THIS FILE! Use an override template instead. *}
    {section show=$error_list}
    <div class="message-error">
    <h2><span class="time">[{currentdate()|l10n( shortdatetime )}]</span> {'Error'|i18n('design/admin/package')}</h2>
    <ul>
        {section var=error loop=$error_list}
            <li>{$error.description|wash}</li>
        {/section}
    </ul>
    </div>
    {/section}

{* DESIGN: Header START *}<div class="box-header"><div class="box-tc"><div class="box-ml"><div class="box-mr"><div class="box-tl"><div class="box-tr">

<h1 class="context-title">{'Upload package'|i18n('design/admin/package')}</h1>

{* DESIGN: Mainline *}<div class="header-mainline"></div>

{* DESIGN: Header END *}</div></div></div></div></div></div>

{* DESIGN: Content START *}<div class="box-ml"><div class="box-mr"><div class="box-content">

<div class="context-attributes">

<form enctype="multipart/form-data" method="post" action={'package/upload'|ezurl}>

    <p>{'Select the file containing the package then click the upload button'|i18n('design/admin/package')}</p>

    <input type="hidden" name="MAX_FILE_SIZE" value="32000000" />
    <input name="PackageBinaryFile" type="file" />

</div>
{* DESIGN: Content END *}</div></div></div>

<div class="controlbar">
{* DESIGN: Control bar START *}<div class="box-bc"><div class="box-ml"><div class="box-mr"><div class="box-tc"><div class="box-bl"><div class="box-br">

    <div class="block">
        <input class="button" type="submit" name="UploadPackageButton" value="{'Import package'|i18n('design/admin/package')}" />
        <input class="button" type="submit" name="UploadCancelButton" value="{'Cancel'|i18n('design/admin/package')}" />
    </div>

</form>
{* DESIGN: Control bar END *}</div></div></div></div></div></div>
</div>