# Changelog for bundle-integration

This branch copies the entire /bundle directory into the repository root for easier access.

- Adds files from /bundle to repository root (non-destructive by default; existing root README.md and LICENSE are preserved).
- Files copied: README.md, LICENSE (commercial) placed as LICENSE.bundle (to avoid overwriting root LICENSE), irisvault/, kobalt-html/, terraform/, web/, FINAL_CHECKLIST.md, deploy.sh, docs/, white-label/, etc.

If this merge is accepted, you may want to:
- Move LICENSE.bundle to LICENSE if you desire to replace the root MIT with the commercial license.
- Run a secrets scan and CI checks before deploying infra or running scripts such as terraform.
