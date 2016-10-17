## CSS
```css
// no border for textarea
textarea {
  border: none;
  overflow: auto;
  outline: none;

  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
}
```
## HAML
```haml
= text_area_tag "subtitle", @video.subtitle, :class => "editable col-lg-12", :rows => "20", :id => "cont"
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
