$(document).ready(function() {

  var base;
  $('.colorSelector').ColorPicker({
    color: $(this).find('.hidden-color').val(),
    onSubmit: function(hsb, hex, rgb, el) {
      $(el).val(hex);
      $(el).ColorPickerHide();
    },
    onShow: function (colpkr) {
      base = $(this);
      $(colpkr).fadeIn(500);
      return false;
    },
    onHide: function (colpkr) {
      $(colpkr).fadeOut(500);
      return false;
    },
    onChange: function (hsb, hex, rgb) {
      base.children('div').css('backgroundColor','#' + hex);
      base.find('.hidden-color').val(hex);
    }
  });

  $('.tagsinput').tagsInput({
    'width':'100%',
    'height':'42px',
    'removeWithBackspace' : true,
    'defaultText':'+ item'
  });

  $(".switch-large").bootstrapSwitch();

  $('.table').DataTable( {
    "oLanguage": {
      "oPaginate": {
        "sNext": "Próximo",
        "sPrevious": "Anterior",
        "sLast": "Último",
        "sFirst": "Primeiro"
      },
      "sEmptyTable": "Sem dados disponíveis",
      "sInfo": "_START_ de _END_ do total de _TOTAL_",
      "sInfoEmpty": "Nada para mostrar",
      "sInfoFiltered": "Filtrado de _MAX_ registros totais",
      "sLengthMenu": "Mostrar _MENU_",
      "sSearch": "Pesquisar:",
      "sZeroRecords": "Não há registros a serem exibidos"
    }
  } );

} );

function resize_layout()
{
  var size_of_header = $(".header").height();
  var size_of_footer = $(".footer").height();
  var height = $(window).height();
  var height_content = height - size_of_header

  //alert("altura da janela = " + height);
  //alert("altura do header = " + size_of_header);
  //alert("altura do footer = " + size_of_footer);
  //alert("altura do content =" + height_content);

  $(".main-content").css("height", "auto");
  $(".main-content").css("min-height", height_content);

  $(".container-menu").css("height", "auto");
  $(".container-menu").css("min-height", height_content);

  //$(".main-box").css("height", "auto");
  //$(".main-box").css("min-height", height_content - size_of_footer);
}

$(".filestyle").filestyle({
  htmlIcon: '<span class="fa fa-archive"></span>',
  text: " Selecionar Arquivo",
  btnClass: "btn-primary",
  buttonBefore: true,
  placeholder: "Nenhum Arquivo Selecionado"
});

$('.datetimepicker').datetimepicker({
  icons: {
    time: "fa fa-clock-o",
    date: "fa fa-calendar",
    up: "fa fa-arrow-up",
    down: "fa fa-arrow-down",
    next: "fa fa-arrow-right",
    previous: "fa fa-arrow-left",
  }
});

$('.select2').select2();

function formatColor (color) {
  if (!color.id) { return color.text; }
  var name = color.text.substr(color.text.indexOf("-") + 1);
  var cor = color.text.slice(0, color.text.indexOf("-"));
  var $color = $(
    '<span><img src="/assets/thumb-trans-img.png" class="rounded-circle m-1" style="background: #' + cor + '" /> - '+ name +'</span>'
  );
  return $color;
};

$(".select2-color").select2({
  templateResult: formatColor,
  templateSelection: formatColor
});


$('.close-menu').on('mousedown', function(){
    // var menu_width = $('.admin-menu').width();
    // var content_width = $('.content-page').width();
    // var width = content_width - menu_width;
    $('.admin-menu').toggleClass('show');
    $('.admin-menu').toggleClass('p-4');
    $('.content-page').toggleClass('show');
    // $('.content-page').css('width', width);
});

var $window = $(window);
var $pane = $('#pane1');

var windowsize = $window.width();
if (windowsize < 768) {
  $('.admin-menu').toggleClass('show');
  $('.admin-menu').toggleClass('p-4');
  $('.content-page').toggleClass('show');
}