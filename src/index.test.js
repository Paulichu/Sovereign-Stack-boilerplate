const test = require('node:test');
const assert = require('node:assert/strict');
const { getProjectMessage } = require('./index');

test('returns the startup message', () => {
  assert.equal(
    getProjectMessage(),
    'Sovereign Stack boilerplate initialized successfully.'
  );
});
