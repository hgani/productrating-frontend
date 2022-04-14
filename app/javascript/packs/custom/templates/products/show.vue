<template>
  <div>
    <!-- TODO: Polish this page -->
    <div>TODO: Display the product information here</div>
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
