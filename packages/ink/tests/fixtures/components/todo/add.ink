<style>
  button {
    background-color: #EFEFEF;
    border: none;
    border-radius: 0;
    color: #DA532C;
    cursor: pointer;
    font-weight: semibold;
    padding: 10px 20px;
    text-transform: uppercase;
  }
  .total {
    font-size: 12px;
    margin-top: 20px;
    text-align: center;
    text-transform: uppercase;
  }
</style>
<script>
  import { props } from '@stackpress/ink';
  //define props
  type TodoProps = {
    list: string[];
    count: { value: number };
  };
  //import props
  const { count, list } = props<TodoProps>();
  const add = () => count.value++;
</script>
<if true={count.value > 0}>
  <div class="total">
    Total Tasks: <strong>{count.value}</strong>
  </div>
</if>

<if true={count.value < list.length}>
  <button click=add>Add TODO</button>
</if>