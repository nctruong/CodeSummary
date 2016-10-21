## Form
**Avatar**
```haml
.profile-sidebar
      / PORTLET MAIN
      .portlet.light.profile-sidebar-portlet
        .profile-userpic
          = image_tag "/images/team_logo.png", class: "img img-responsive"
          = f.hidden_field :id
          = f.file_field :avatar, class: "upload_btn", id: "avatar"
        .overlay-layer.col-lg-12.margin-horizontal-5 Upload Photo
```
