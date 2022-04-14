<template>
  <div>
    <!-- TODO: Polish this page -->
    <a href="/products/new">Add new product</a>
    <br />
    <br />
    <div v-for="item in items">
      <a :href="item.url">{{item.name}}</a>
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
      this.items = this.spec
      console.log("Data", this.items)
    }
  }
};
</script>

<style lang="scss" scoped>
  // Implement styling for the product list component here
</style>
