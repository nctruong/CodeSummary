## HAML
```html
 = text_area_tag "subtitle", @video.subtitle, :class => "form-control col-lg-12", :rows => "20", :id => "cont", :class => "editable"
      %a#trans.btn.btn-primary.pull-right{remote:true,'data-wizard' => 'next', :href => '#exampleWizardForm', :role => 'button'}= I18n.t('common.button.submit')
```

## COFFEE
```CoffeeScript
$('a#trans').click ->
    $.post "/videos/ajax_post_trans",
    {
       id: "#{@video.id}"
       trans: $('#cont').val()
    },
    (data, status) ->
      alert("Transcript was saved successfully");

  editor = new MediumEditor('.editable')
```
