import Sortable from 'sortablejs'

const initSortable = () => {
  const list1 = document.getElementById('sort-lists1');
  const list2 = document.getElementById('sort-lists2');
  Sortable.create(list1, {
    animation: 150,
    group: 'shared',
    ghostClass: 'blue-background-class'
  });
  Sortable.create(list2, {
    animation: 150,
    group: 'shared',
    ghostClass: 'blue-background-class'
  });
};

export { initSortable }
