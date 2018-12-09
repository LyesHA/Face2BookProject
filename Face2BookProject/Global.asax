<script Language="javascript" RunAt="server">

    function Session_OnStart()
    {
        Session("Error")="";
        Session("User")="";
    }

    function Session_OnEnd ()
    {
        Session("Error")="";  
    }
</script>