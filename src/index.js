function getProjectMessage() {
  return 'Sovereign Stack boilerplate initialized successfully.';
}

function main() {
  console.log(getProjectMessage());
  console.log('Project ready for application development.');
}

if (require.main === module) {
  main();
}

module.exports = {
  getProjectMessage,
  main,
};
