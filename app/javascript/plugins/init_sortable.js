import Sortable from 'sortablejs'

const initSortable = () => {
  const list = document.getElementById('sort-lists');
  Sortable.create(list);
};

export { initSortable }
