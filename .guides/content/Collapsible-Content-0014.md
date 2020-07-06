In writing content, it is sometimes useful to provide information for the student, but to keep this hidden until they are ready.

This can be achieved with collapsible content and the ```<details>```  ```<summary>``` elements. The content is treated as HTML and as such a mix of HTML and Markdown can be required.
  
## Example Collapsible Content
#
<table><tbody ><tr><td><details><summary>
	There are some <b>Special Numeric Values</b> which are part of the number data type. For each of the variables <code>a</code> <code>b</code>and <code>c</code> print out their data types and values.
</summary><hr>

The result of any mathematical operation will produce a value of type `number`.

1. Variable `a` contains a value of `infinity` which represents mathematical infinity.
2. Variable `b` is assigned a value where the left-hand operator looks like a `string` however JavaScript tries to convert it into a number which is successful.
3. In the case of variable `c`, the string can't be converted and the operation returns the value of `NaN` which means _not a number_. If this is then used in subsequent operations the value cascades and the result will also be `NaN`.

<h6>Code Block</h6>

```js
const name = {
		first: 'John',
		'last name': 'Doe',
		dob: {
			year: 1970,
			month: 'January'
	}
}
```
<h6>... and another</h6>

```js
var data = {{ chartJSON | safe }}
var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, data);
```
| Option | Description |
| :------ | :----------- |
| `data`   | path to data files to supply the data that will be passed into templates. |
| `engine` | engine to be used for processing templates. Handlebars is the default. |
| `ext`    | extension to be used for dest files. |
	
</details></td></tr></tbody>
</table>


#### Notes
- All code block starter lines, e.g. ` ```js ` must be preceded by a blank line. 
- The closing block ` ``` ` tag must be followed by a newline. 
