<template>
  <div class="layout">
    <!-- TODO: Polish this page -->

    <div class="side-menu">
      <div v-for="(item, index) in items" :key="index">
        <a @click="onClick(item)">{{item.name}}</a>
      </div>
    </div>

    <div>
      <div>
        Name: {{selectedItem.name}}
      </div>
      <div>
        Price: {{selectedItem.price}}
      </div>
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
    // Use at least one computed method to ensure that the component gets updated when it gets reused.
    selectedItem() {
      return this.spec.selectedItem;
    }
  },
  methods: {
    $ready() {
      this.items = this.spec.items
    },
    onClick(item) {
      // This is framework method. Don't change it.
      Utils.http.load({ url: item.url }, this);
    }
  }
};
</script>

<style lang="scss" scoped>
  // Implement styling for the product list component here
  .layout {
    display: flex;

    div {
      display: block;
    }
  }

  .side-menu {
    background-color: lightgray;
  }
</style>
