$('#carousel-example1').on('slide.bs.carousel', function (e) 
{
    var $e = $(e.relatedTarget);
    var idx = $e.index();
    var itemsPerSlide = 5;
    var totalItems = $('.carousel-item').length;
 
    if (idx >= totalItems-(itemsPerSlide-1)) 
    {
        var it = itemsPerSlide - (totalItems - idx);
        for (var i=0; i<it; i++) 
        {

            if (e.direction=="left") 
            {
                $('.carousel-item').eq(i).appendTo('.carousel-inner');
            }
            else 
            {
                $('.carousel-item').eq(0).appendTo('.carousel-inner');
            }
        }
    }
});

$('#carousel-example2').on('slide.bs.carousel', function (e) 
{
    var $e = $(e.relatedTarget);
    var idx = $e.index();
    var itemsPerSlide = 5;
    var totalItems = $('.carousel-item').length;
 
    if (idx >= totalItems-(itemsPerSlide-1)) 
    {
        var it = itemsPerSlide - (totalItems - idx);
        for (var i=0; i<it; i++) 
        {

            if (e.direction=="left") 
            {
                $('.carousel-item').eq(i).appendTo('.carousel-inner');
            }
            else 
            {
                $('.carousel-item').eq(0).appendTo('.carousel-inner');
            }
        }
    }
});

$('#carousel-example3').on('slide.bs.carousel', function (e) 
{
    var $e = $(e.relatedTarget);
    var idx = $e.index();
    var itemsPerSlide = 5;
    var totalItems = $('.carousel-item').length;
 
    if (idx >= totalItems-(itemsPerSlide-1)) 
    {
        var it = itemsPerSlide - (totalItems - idx);
        for (var i=0; i<it; i++) 
        {

            if (e.direction=="left") 
            {
                $('.carousel-item').eq(i).appendTo('.carousel-inner');
            }
            else 
            {
                $('.carousel-item').eq(0).appendTo('.carousel-inner');
            }
        }
    }
});