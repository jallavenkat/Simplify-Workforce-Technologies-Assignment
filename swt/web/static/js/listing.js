$("#categoryid").unbind().on("change",function(){
    var categoryid = $(this).val();
    csrftoekn = $( "input[name='csrfmiddlewaretoken']" ).val();
    $.post('getSubcategory/'+categoryid ,{'csrfmiddlewaretoken':csrftoekn,'categoryid':categoryid},function(data,status){
        scats = $.parseJSON(data.results)
        var options='<option value="">Select Sub Category</option>';
        for(var i in scats)
        {
            options=options+'<option value="'+scats[i].fields.id+'">'+scats[i].fields.category_title+'</option>'
        }
        $("#subcategory").html(options)
        if(scats.length > 0)
        {
            $(".subcategory").show()
        }
        else
        {
            $(".subcategory").hide()
        }
    },'JSON');
    $.post('getCategoryAttributes/'+categoryid ,{'csrfmiddlewaretoken':csrftoekn,'categoryid':categoryid},function(data,status){
        scats = $.parseJSON(data.results)

        var html='';
        for(var i in scats)
        {
            html=html+'<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12 tx-right">'+scats[i].fields.attribute_name+'</div><div class="col-sm-2 col-md-2 col-lg-2 col-xs-12">';
               if (scats[i].fields.attribut_field_type == 'select')
               {
                    html = html+'<input type="hidden" name="hiddenType[]" value="'+scats[i].fields.attribut_field_type+'" /><select name="ctype_'+scats[i].fields.attribut_field_type+'" id="ctype_'+scats[i].fields.attribut_field_type+'" class="form-control">';
                    var myopts = $.parseJSON(scats[i].fields.attribute_opts);
                    //alert(myopts.options)
                    html=html+'<option value="">Select '+scats[i].fields.attribute_name+'</option>';
                    $.each(myopts.options, function(key,value){
                        html=html+'<option value="'+key+'">'+value+'</option>';
                    })

                    html=html+'</select>';
               }

            html=html+'</div>';

        }
        $("#cattributes").html(html)

    },'JSON');
});

$("#location").unbind().on("change",function(){
    var locationid = $(this).val();
    csrftoekn = $( "input[name='csrfmiddlewaretoken']" ).val();
    $.post('getCityByLocation/'+locationid,{'csrfmiddlewaretoken':csrftoekn},function(data,status){
        //listdata = $.parseJSON(data)
        if(data.city != '')
        {
            $("#city").attr("readonly",true);
        }
        else
        {
            $("#city").removeAttr("readonly");
        }
        $("#city").val(data.city);
        $("#city_id").val(data.city_id);

        if(data.state != '')
        {
            $("#state").attr("readonly",true);
        }
        else
        {
            $("#state").removeAttr("readonly");
        }

        $("#state").val(data.state);
        $("#state_id").val(data.state_id);

        if(data.country != '')
        {
            $("#country").attr("readonly",true);
        }
        else
        {
            $("#country").removeAttr("readonly");
        }
        $("#country").val(data.country);
        $("#country_id").val(data.country_id);
    },'JSON');
});