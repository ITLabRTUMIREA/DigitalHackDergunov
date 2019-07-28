<script>
UIkit.notification({
    message: '<?=$this->notifyText?>',
    status: '<?=$this->notifyType?>',
    pos: 'top-center',
    timeout: 5000
});
</script>