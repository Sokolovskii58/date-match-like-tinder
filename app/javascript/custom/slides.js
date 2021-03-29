$(function(){
    var $activeSlide = $('#slides .slide:first-child');

 //   $activeSlide.addClass("showing");

    $(".match-people").on("click")

    $("#decline").on("click", function(){
        goToSlide('decline');
    });

    $("#approve").on("click", function(){
        var user_id = $activeSlide.data("id");

        $.ajax({
            url: "/approve/" + user_id,
            method: "post",
            dataType: "ajax"
        })
        goToSlide('#approve');
    });
    
    function goToSlide(action){
        $activeSlide.removeClass("showing");
        $activeSlide = $activeSlide.next(".slide");
        
        
        if(action == "approve"){
            
        } else {
            
        }
        
        $activeSlide.addClass("showing");
    }
});
