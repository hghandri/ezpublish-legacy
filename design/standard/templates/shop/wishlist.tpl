<form method="post" action={"/shop/wishlist/"|ezurl}>

<div class="maincontentheader">
<h1>{"Wish list"|i18n("design/standard/shop")}</h1>
</div>

{section show=$wish_list.items}

<table class="list" width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
	<th>
	{"Product:"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Count:"|i18n("design/standard/shop")}
	</th>
	<th>
	{"VAT:"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Price ex. VAT:"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Price inc. VAT:"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Discount:"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Total Price ex. VAT:"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Total Price inc. VAT:"|i18n("design/standard/shop")}
	</th>
	<th>
    &nbsp;
	</th>
</tr>
{section name=ProductItem loop=$wish_list.items sequence=array(bglight,bgdark)}
<tr>
	<td class="{$ProductItem:sequence}">
	<input type="hidden" name="ProductItemIDList[]" value="{$ProductItem:item.id}" />
	{$ProductItem:item.id} - 
	<a href={concat("/content/view/full/",$ProductItem:item.node_id,"/")|ezurl}>{$ProductItem:item.object_name}</a>
	</td>
	<td class="{$ProductItem:sequence}">

	<input type="text" name="ProductItemCountList[]" value="{$ProductItem:item.item_count}" size="5" />

	</td>
	<td class="{$ProductItem:sequence}">
	{$ProductItem:item.vat_value}%
	</td>
	<td class="{$ProductItem:sequence}">
	{$ProductItem:item.price_ex_vat|l10n(currency)}
	</td>
	<td class="{$ProductItem:sequence}">
	{$ProductItem:item.price_inc_vat|l10n(currency)}
	</td>
	<td class="{$ProductItem:sequence}">
	{$ProductItem:item.discount_percent}%
	</td>
	<td class="{$ProductItem:sequence}">
	{$ProductItem:item.total_price_ex_vat|l10n(currency)}
	</td>
	<td class="{$ProductItem:sequence}">
	{$ProductItem:item.total_price_inc_vat|l10n(currency)}
	</td>
	<td>
	<input type="checkbox" name="RemoveProductItemDeleteList[]" value="{$ProductItem:item.id}" />
	</td>
</tr>
{/section}
</table>

<div class="buttonblock">
<input class="button" type="submit" name="StoreChangesButton" value="{'Store'|i18n('design/standard/shop')}" />
<input class="button" type="submit" name="RemoveProductItemButton" value="{'Remove item(s)'|i18n('design/standard/shop')}" />
</div>

{section-else}


<div class="feedback">
<h2>{"Empty wish list"|i18n("design/standard/shop")}</h2>
</div>
{/section}




</form>
