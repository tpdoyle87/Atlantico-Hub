function dragnDrop(){
  const el = document.getElementById('items');
  const sortable = Sortable.create(el, {
  group: "localStorage-example",
  dataIdAttr: 'data-id',
  store: {
    /**
     * Get the order of elements. Called once during initialization.
     * @param   {Sortable}  sortable
     * @returns {Array}
     */
    get: function (sortable) {
      const order = localStorage.getItem(sortable.options.group.name);
      return order ? order.split('|') : [];
    },

    /**
     * Save the order of elements. Called onEnd (when the item is dropped).
     * @param {Sortable}  sortable
     */
    set: function (sortable) {
      const order = sortable.toArray();
      localStorage.setItem(sortable.options.group.name, order.join('|'));
    }
  }
})
  const el2 = document.getElementById('denylist');
  const sortable2 = Sortable.create(el2, {
  group: "localStorage-example",
  store: {
    /**
     * Get the order of elements. Called once during initialization.
     * @param   {Sortable}  sortable
     * @returns {Array}
     */
    get: function (sortable2) {
      const order = localStorage.getItem(sortable.options.group.name);
      return order ? order.split('|') : [];
    },

    /**
     * Save the order of elements. Called onEnd (when the item is dropped).
     * @param {Sortable}  sortable
     */
    set: function (sortable2) {
      const order = sortable.toArray();
      localStorage.setItem(sortable.options.group.name, order.join('|'));
    }
  }
})
};

export { dragnDrop };
