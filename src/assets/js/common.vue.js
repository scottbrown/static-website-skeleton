Vue.component('page-title', {
  template: `
    <div class='page-title'>
      <h1><slot></slot></h1>
    </div>
  `
});

var vm = new Vue({
  el: "#app",
  data: {
    siteUrl: "http://localhost:3000",
  },
});
