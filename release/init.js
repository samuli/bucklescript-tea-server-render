var fn = function() {
    setTimeout(function() {
        const root = document.body;
        const hydrate = root.children.length > 0;
        var data = Array.from({ length: 1000 }, (_, idx) => "Lorem ipsum " + idx);
        var app = starter.main(root, data, hydrate);
        console.log(starter.main);
    }, 3000);
};
 
window.addEventListener('load', fn, false );
