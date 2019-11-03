
## hello flask non async
```python

#!/usr/bin/env python3

import cozmo
from flask import Flask
app = Flask(__name__)



def cozmo_program(robot: cozmo.robot.Robot):
    robot.say_text("Hello Flask").wait_for_completed()


@app.route('/')
def hello_world():
    cozmo.run_program(cozmo_program)

    return 'Hello, World!'


if __name__ == "__main__":
    app.run(host="0.0.0.0")


```
----

## docker-compose.yml
```yaml


```

---
## Live Code Editor

> si toman otro approach y dejan que los usuarios escriban su codigo les dejo este HTML que embebe un live code editor y aqui la [documentacion](https://ace.c9.io/#nav=about)

<details>
  <summary>Click to expand!</summary>
```html
<!DOCTYPE html>
<html lang="en">
<head>
<title>ACE in Action</title>
<style type="text/css" media="screen">
    #editor {
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
    }
</style>
</head>
<body>

<div id="editor">function foo(items) {
    var x = "All this is syntax highlighted";
    return x;
}</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.6/ace.js"></script>
<script>
    var editor = ace.edit("editor");
    editor.setTheme("ace/theme/monokai");
    editor.session.setMode("ace/mode/javascript");
</script>
</body>
</html>

```
</details>


---
## ToDo List
> Les entrego un To DO list hecho en html y javascript, les puede servir para ir "agregando" lineas a su programa. Obviamente aqui el source de los elementos es un text-box.



<details>
  <summary>Click to expand!</summary>
```html

<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    </head>
    <body>
      <input id="task"><button id="add">Add</button>
      <hr>
    <div id="todos"></div>


<script>
    function get_todos() {
        var todos = new Array;
        var todos_str = localStorage.getItem('todo');
        if (todos_str !== null) {
            todos = JSON.parse(todos_str);
        }
        return todos;
    }

    function add() {
        var task = document.getElementById('task').value;

        var todos = get_todos();
        todos.push(task);
        localStorage.setItem('todo', JSON.stringify(todos));

        show();

        return false;
    }

    function remove() {
        var id = this.getAttribute('id');
        var todos = get_todos();
        todos.splice(id, 1);
        localStorage.setItem('todo', JSON.stringify(todos));

        show();

        return false;
    }

    function show() {
        var todos = get_todos();

        var html = '<ul>';
        for(var i=0; i<todos.length; i++) {
            html += '<li>' + todos[i] + '<button class="remove" id="' + i  + '">x</button></li>';
        };
        html += '</ul>';

        document.getElementById('todos').innerHTML = html;

        var buttons = document.getElementsByClassName('remove');
        for (var i=0; i < buttons.length; i++) {
            buttons[i].addEventListener('click', remove);
        };
    }

    document.getElementById('add').addEventListener('click', add);
    show();
</script>
</body>
</html>

```

</details>

---

## Python Callbacks from a dictionary of functions

```python

def do_ping(self, arg):
    return 'Pong, {0}!'.format(arg)

def do_ls(self, arg):
    return '\n'.join(os.listdir(arg))

dispatch = {
    'ping': do_ping,
    'ls': do_ls,
}

def process_network_command(command, arg):
    send(dispatch[command](arg))
```

> quizas le pueda servir para ahorrase ese "if elif gigante"
---
