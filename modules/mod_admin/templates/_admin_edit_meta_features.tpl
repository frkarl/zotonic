{% extends "admin_edit_widget_std.tpl" %}

{% block widget_title %}{_ Features _}{% endblock %}
{% block widget_show_minimized %}false{% endblock %}
{% block widget_id %}sidebar-meta-features{% endblock %}


{% block widget_content %}
    <a href="javascript:void(0)" class="z-btn-help do_dialog" data-dialog="title: '{{ _"Help about features"|escapejs }}', text: '{{ _"Resources in the <i>meta</i> category can have 'features': certain resource properties that decide what to show or hide on certain pages in the admin. If this box is empty, no features are enabled for this meta-resource."|escapejs }}'" title="{_ Need more help? _}"></a>
<div class="form-group row">
    {% all catinclude "_admin_features.tpl" id %}
</div>
{% endblock %}
