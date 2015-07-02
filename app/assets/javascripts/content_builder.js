var CX = {
  blastOff: function(){
    console.log('CX.blastOff');
    CX.disableAnchorLinks();
    CX.clickableItemStart();
  },
  disableAnchorLinks: function(){
    console.log('Preventing anchor');
    jQuery('a').on('click mousedown', function(e){
      console.log('Triggered and stopping');
      e.preventDefault();
    });
  },
  moveElWithMouse: function(e, item){

  },
  clickableItemStart: function(){
    console.log('clickableItemStart started');
    jQuery('.item-element').draggable({ containment: "parent", scroll: false, snap: true });
// .on('mousedown', function(e){
//       e.preventDefault();
//       var self = this;
//       CX.movingStart(e, self);
//       console.log('Holding mouse down');
//       CX.clickableItemStop();
//     });
  },
  clickableItemStop: function(){
    console.log('Unbind item-el');
    jQuery('.item-element').unbind('click');
  },
  movingStart: function(e, item){
    console.log('Running movingStart');
    CX.clickableItemStop();
    $('.item-container *').on('click', function(ev, item){
      e.preventDefault();
      CX.movingStop(ev, item);
      // Need to destroy click
    });
  },
  movingStop: function(ev, item){
    $('.item-container *').unbind('click');
    CX.clickableItemStart();
    console.log('Running movingStop');
    console.log('ev: ', ev);
    $(item).unbind('click');
  }
}

$(document).ready(function(){
  CX.blastOff();
})

