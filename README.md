# ctf-offline-game
CTF challenges based only on files, terminal, scripting, and computer skills. Framework with building and solving scripts.

## Play
Each level is a password-protected 7z archive, with the password being the flag from the previous level.

The flags are something like `CTF{this-is-the-password}`. Where the password to use to unlock the next level is the inner text inside `CTF{}`.

Inside the `levels/` directory, you will find the zip files to play on your own computer.

The level-000 is unlocked by `CTF{qwerty-1234}`.

```sh
7zz x levels/000.7z
```

## Work
- If you want to gain insight into how the problems are generated and solved, just look inside the `work/` directory **(SPOILER ALERT)**. 