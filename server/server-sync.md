# Server Sync

The server uses the same repository as the PrismLauncher client instance, but with Git sparse checkout so only server-relevant source/config files are pulled.

## Client Workflow

- Edit configs and CraftTweaker scripts in the PrismLauncher instance.
- Test the client pack.
- Commit and push changes.

## Server Workflow

- Stop the server.
- Run `git pull` from the server root.
- Start the server.

## Notes

- Mods are managed manually for now.
- Server sparse checkout intentionally excludes resource packs and client-only configs such as Fogger and Forced Resourcepacks.
- Server worlds, logs, backups, mod jars, and operational files are not tracked.
- If the server mod list changes, update `server/server-mods.md` manually.
