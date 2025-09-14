const { exec } = require('child_process');

// Démarre N8N avec queue mode et tunnel pour exposer les webhooks
exec('n8n start --tunnel', (err, stdout, stderr) => {
  if (err) {
    console.error(`Erreur lors du démarrage de N8N: ${err}`);
    return;
  }
  console.log(stdout);
  console.error(stderr);
});