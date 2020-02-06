Vue.component('centered-image', {
  props: ["name", "credit"],
  template: `
    <div class='centered-image'>
      <img :src="'/assets/img/' + name" :alt="credit" />
      <caption>{{ credit }}</caption>
    </div>
  `,
});
