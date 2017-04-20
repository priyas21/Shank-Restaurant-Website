$(document).ready(initValidationPage);

function initValidationPage()
{ 
   $(".errormsg").hide();
}

/*function to show errors*/
function RequiredValidate(src, args)
{
    if(args.Value.length>=1)
    {
        //$(src).parent().hide();
        args.IsValid = true;
    }
    else
    {
        //$(src).parent().show();
        args.IsValid = false;
    }
}
function HTMLRequiredValidate(src)
{
    if ($('#'+src).val().length>1)
    {
        //$('#'+src).parent('div').siblings('div').children('div').hide();
        return  true;
    }
    else
    {
       //$('#'+src).parent('div').siblings('div').children('div').html('Please Fill').show()
        return false;
    }
}
//function to validate Email address
function EmailValidator(src,args)
{
    if(args.Value.match(/^([\w-\.]+)@((?:[\w]+\.)+)([a-zA-Z]{2,4})$/))
    {
       // $(src).parent().hide();
        args.IsValid = true;
    }
    else
    {
      //  $(src).parent().show();
        args.IsValid = false;
    }
}
function HTMLEmail(src)
{
    if ($('#'+src).val().match(/^([\w-\.]+)@((?:[\w]+\.)+)([a-zA-Z]{2,4})$/))
    {
        //$('#'+src).parent('div').siblings('div').children('div').hide();
        return  true;
    }
    else
    {
       //$('#'+src).parent('div').siblings('div').children('div').html('Please enter valid E-mail').show()
        return false;
    }
}
function HTMLEmailValidator(src,required)
{
    if(required)
    {
         return HTMLEmail(src)
    }
    else
    {
        if ($('#'+src).val().length>1)
        {
             return HTMLEmail(src)
        }
        else{
        return true;
        }
    }
  
}
//function to validate alphaNumeric characters
function AlphaNumericValidator(src,args)
{
    //^[0-9a-zA-Z ]+$
    ///^[\w]+$/
    if(args.Value.match(/^[0-9a-zA-Z_\s\.\,\-\=\&#%@]+$/))
    {
       // $(src).parent().hide();
        args.IsValid = true;
    }
    else
    {
        //$(src).parent().show();
        args.IsValid = false;
    }
}

function HTMLAlphaNumeric(src)
{
                if ($('#'+src).val().match(/^[0-9a-zA-Z ]+$/))
                {
                    //$('#'+src).parent('div').siblings('div').children('div').hide();
                    return  true;
                }
                else
                {
                    //$('#'+src).parent('div').siblings('div').children('div').html('Only [a-z]||[A-z]||[0-9] values are allowed').show()
                    return false;
                }
}
function HTMLAlphaNumericValidator(src,required)
{
    if(required)
    {
         return HTMLAlphaNumeric(src)
    }
    else
    {
        if ($('#'+src).val().length>1)
        {
             return HTMLAlphaNumeric(src)
        }
        else{
        return true;
        }
    }
  
}
//function to validate alphaNumeric characters
function AlphabetsValidator(src,args)
{
        if(args.Value.match(/^([a-zA-Z]|\s)+$/))
    {
        //$(src).parent().hide();
        args.IsValid = true;
    }
    else
    {
        //$(src).parent().show();
        args.IsValid = false;
    }
}
function HTMLAlphabets(src)
{

 if ($('#'+src).val().match(/^([a-zA-Z]|\s)+$/))
    {
        //$('#'+src).parent('div').siblings('div').children('div').hide();
        return  true;
    }
    else
    {
       //$('#'+src).parent('div').siblings('div').children('div').html('Only [a-z]||[A-Z] values are allowed').show()
        return false;
    }
}
function HTMLAlphabetsValidator(src,required)
{
    if(required)
    {
         return  HTMLAlphabets(src)
    }
    else
    {
        if ($('#'+src).val().length>1)
        {
             return  HTMLAlphabets(src)
        }
        else{
        return true;
        }
    }
  
}

//function  to validate Url
function UrlValidator(src,args)
{
    if(args.Value.match(/^(http\:\/\/[a-zA-Z0-9_\-]+(?:\.[a-zA-Z0-9_\-]+)*\.[a-zA-Z]{2,4}(?:\/[a-zA-Z0-9_]+)*(?:\/[a-zA-Z0-9_]+\.[a-zA-Z]{2,4}(?:\?[a-zA-Z0-9_]+\=[a-zA-Z0-9_]+)?)?(?:\&[a-zA-Z0-9_]+\=[a-zA-Z0-9_]+)*)$/))
    {
       // $(src).parent().hide();
        args.IsValid = true;
    }
    else
    {
       // $(src).parent().show();
        args.IsValid = false;
    }
}


//function to validate alphaNumeric characters
function NumericValidator(src,args)
{
    if(args.Value.match(/^[0-9]+$/))
    {
       // $(src).parent().hide();
        args.IsValid = true;
    }
    else
    {
        //$(src).parent().show();
        args.IsValid = false;
    }
}

function HTMLNumeric(src)
{

 if ($('#'+src).val().match(/^[0-9]+$/))
    {
        $('#'+src).parent('div').siblings('div').children('div').hide();
        return  true;
    }
    else
    {
       $('#'+src).parent('div').siblings('div').children('div').html('Only numbers are allowed').show()
        return false;
    }
}
function HTMLNumericValidator(src,required)
{
    if(required)
    {
         return  HTMLNumeric(src)
    }
    else
    {
        if ($('#'+src).val().length>1)
        {
             return  HTMLNumeric(src)
        }
        else{
        return true;
        }
    }
  
}

//function to validate alphaNumeric characters
function MobileValidator(src,args)
{
    if(args.Value.match(/^(?:(?:\+)?(?:\d{2})[-])?(?:(?:[\(])?(?:(?:\d){3,5})(?:[\)])?[-])|(?:\d{3,5})*(?:\d{5,8}){1}?$/))
    {
        //$(src).parent().hide();
        args.IsValid = true;
    }
    else
    {
        //$(src).parent().show();
        args.IsValid = false;
    }
}
function HTMLMobile(src)
{

 if ($('#'+src).val().match(/^(?:(?:\+)?(?:\d{2})[-])?(?:(?:[\(])?(?:(?:\d){3,5})(?:[\)])?[-])|(?:\d{3,5})*(?:\d{5,8}){1}?$/))
    {
        //$('#'+src).parent('div').siblings('div').children('div').hide();
        return  true;
    }
    else
    {
       //$('#'+src).parent('div').siblings('div').children('div').html('Please Enter Valid Mobile Number').show()
        return false;
    }
}
function HTMLMobileValidator(src,required)
{
    if(required)
    {
         return  HTMLMobile(src)
    }
    else
    {
        if ($('#'+src).val().length>1)
        {
             return  HTMLMobile(src)
        }
        else{
        return true;
        }
    }
  
}



function GetDataFromServer(Url,Data,Success,Failure)
{
    jQuery.ajax({
    type: "POST",
    data: Data,
    url: Url,
    cache:false,
    success: function(msg){
        Success(msg);
    }
    });
}
