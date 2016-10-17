## HAML
```haml
%a.page-aside-title.btn.btn-default.pull-right#transcript{:href => "#"} Transcript

#tran-cont.bottom-left{:style => "display:non;"}
  .webui-arrow
  .webui-popover-inner
    .webui-popover-content{:style => "height: 368px;"}
      -# tran = @video.subtitle.to_s.gsub(/\d+/, "")
      -# tran = tran.gsub("::, --> ::","")
      -# tran = tran.gsub(/\s,/, " ").squeeze(" ").strip
      = text_area_tag "subtitle", @video.subtitle, :class => "editable col-lg-12", :rows => "20", :id => "cont"
  .webui-popover-footer
    %a#trans.btn.btn-primary.pull-right{remote:true,'data-wizard' => 'next', :href => '#exampleWizardForm', :role => 'button'}= I18n.t('common.button.submit')
```

## COFFEESCRIPT
```CoffeeScript
$('a#transcript').click ->
    $('a#transcript').webuiPopover({url:"#tran-cont",animation:'pop',placement:'bottom-left', width:'450'});
```
