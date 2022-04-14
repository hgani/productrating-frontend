<template>
  <div class="layout">
    <!-- TODO: Polish this page -->

    <!-- TODO: (BONUS) Make the side panel scrollable so it can be scrolled with out scrolling the selectedItem -->
    <div class="side-menu">
      <div v-for="(item, index) in items" :key="index">
        <a @click="onClick(item)">{{item.name}}</a>
      </div>
    </div>

    <div v-if="selectedItem">
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

      // TODO: (BONUS QUESTION)
      // If later we want to cache pages on the frontend, how will you implement it?
      //
      // For example:
      // - The user opens the page `/products/12`.
      // - We cache the content of the page on the frontend (browser).
      // - The user then navigates to another page (e.g. `/products/18`).
      // - The user comes back to `/products/12`.
      // - We render the page using the content from cache, so the page loads very fast.
      //
      // You don't need to implement it, just explain how you will do it and what technology (browser API) you will use.
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
