<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World App</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #6e8efb, #a777e3);
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
        }
        
        .container {
            background: white;
            padding: 2rem 3rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        
        h1 {
            color: #333;
            margin: 0 0 1rem 0;
        }
        
        button {
            background: #6e8efb;
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: background 0.3s ease;
        }
        
        button:hover {
            background: #5d7ce0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Hello, World! 👋</h1>
        <button onclick="changeText()">Click me!</button>
    </div>

    <script>
        function changeText() {
            const h1 = document.querySelector('h1');
            const greetings = [
                'Hello, World! 👋',
                'Bonjour le monde! 🌟',
                'Hola Mundo! 🌍',
                '你好，世界！✨',
                'こんにちは世界！🌸'
            ];
            const currentText = h1.textContent;
            let newText;
            do {
                newText = greetings[Math.floor(Math.random() * greetings.length)];
            } while (newText === currentText);
            h1.textContent = newText;
        }
    </script>
</body>
</html>
