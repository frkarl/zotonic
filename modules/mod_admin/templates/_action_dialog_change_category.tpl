<p>{_ Every page is categorized in exactly one category.  The category defines what the page represents. For example an event, a product or a person.  The categories are hierarchically defined. In that way you can have a vehicles category with subcategories car and bicycle._}</p>
<hr/>
{% wire id=#form type="submit" postback="rscform" action={dialog_close} delegate="controller_admin_edit" %}
<form id="{{ #form }}" method="POST" action="postback" class="form form-horizontal">

    <input type="hidden" name="id" value="{{ id }}" />

    <div class="form-group row">
        <div class="col-md-8 col-md-offset-2">
            <label class="control-label" for="category_id">{_ Choose the new category for this page. _}</label>
            {% include "_admin_category_dropdown.tpl" id=id %}
        </div>
    </div>
    
    <div class="modal-footer clearfix">
	    {% button class="btn btn-default" action={dialog_close} text=_"Cancel" tag="a" %}
	    {% button class="btn btn-primary" text=_"Save" %}
    </div>

</form>

