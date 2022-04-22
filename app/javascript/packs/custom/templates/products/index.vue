<template>
  <div>
    <!--
      TODO: Polish this page.
      You can use components from the Vuetify library (https://vuetifyjs.com/), but
      please also add your own styling so we can see your UI skills.
      -->
    <v-btn href="/products/new">Add new product</v-btn>
    <br />
    <br />
    <div v-for="item in items">
      <a @click="onClick(item)">{{item.name}}</a>
    </div>
  </div>
</template>

<script>
export default {
  props: ["spec"],
  data() {
    return {
      items: []
    };
  },
  computed: {
  },
  methods: {
    $ready() {
      this.items = this.spec.items
      console.log("Data", this.items)
    },
    onClick(item) {
      // This is framework method. Don't change it.
      Utils.http.load({ url: item.url }, this);
    }
  }
};
</script>

<style lang="scss" scoped>
  // TODO: Implement styling for the product list component here
</style>
