$(function () {
    window.addEventListener('message', function (event) {

        switch (event.data.action) {
            case 'updatecam':
                $('#wrap').show();
                $('#name').html(event.data.name)
                $('#date').html(event.data.date)
                break;
            case 'closecam':
                $('#wrap').hide();
                break;   

            default:
                console.log('xk3ly-bodycam: unknown action!');
                break;
        }
    }, false);
});
