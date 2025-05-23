const express = require('express');
const app = express();
const port = 80;

app.get('/', (req, res) => {
  res.send('✅ Aplikasi DevOps berjalan di Docker!');
});

app.listen(port, () => {
  console.log(`🚀 Server berjalan di http://localhost:${port}`);
});
