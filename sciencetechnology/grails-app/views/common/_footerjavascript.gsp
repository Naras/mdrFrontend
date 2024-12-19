
<g:javascript library="application"/>


<g:javascript src="bootstrap/bootstrap.min.js"/>
<script>
    $(function () {
        $("#topusername").popover({
            placement:'bottom',
            html : true,
            delay: { show: 500, hide: 2000 },
            trigger:'hover',
            content: function() {
                return $('#login-content').html();
            }
        });
    });
</script>
