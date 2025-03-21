<script>

// NEW CURRENCY.ink SOURCE FOR HIDING THE CURRENCY FLAG


  import StyleSet from '@stackpress/ink/dist/style/StyleSet';
  import setBold from '../utilities/style/bold';
  import setColor from '../utilities/style/color';
  import setDisplay from '../utilities/style/display';
  import setSize from '../utilities/style/size';
  import intl from '../utilities/intl.json';
  // extract props
  const { value } = this.props;
  // sub-props (box size, text size)
  let { flag, text } = this.propsTree;
  // Only set defaults if flag is undefined (not explicitly false), preserve flag={false}
  if (flag === undefined && text !== false) {
    flag = {};
    text = true;
  }
  // override default styles
  const styles = new StyleSet();
  this.styles = () => styles.toString();
  // determine display
  const display = setDisplay(this.props, styles, 'inline-flex');
  if (display === 'flex' || display === 'inline-flex') {
    styles.add(':host', 'align-items', 'center');
  }
  // determine color
  setColor(this.props, styles, false, ':host', 'color');
  // determine size
  setSize(this.props, styles, false, ':host', 'font-size');
  // determine font weight
  setBold(this.props, styles, ':host');
  // if there is flag props
  if (flag) {
    // build flag class list
    styles.add('img', 'display', 'inline-block');
    // determine box class size
    setSize(flag, styles, '16px', 'img', 'height');
  }
  // if there is text props
  if (text) {
    // add margin right to the box class list
    styles.add('img', 'margin-right', '5px');
  }
  // get lower case currency code
  const currency = value.toLowerCase();
  // find the country currency in question
  const country = intl.find(
    country => (
      currency !== 'usd' && country.currencyCode.toLowerCase() === currency
    ) || (
      currency === 'usd' && country.countryCode === 'US'
    )
  );
</script>
<if true={country}>
  <if true={flag}>
    <img 
      loading="lazy"
      src={`https://flagcdn.com/w80/${country.countryCode.toLowerCase()}.png`}
    />
  </if>
  <if true={text}>
    <span>{country.currencyName}</span>
  </if>
</if>