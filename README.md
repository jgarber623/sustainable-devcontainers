# sustainable-devcontainers

## Usage

### 🐳 Docker

1. Install and run [Docker](https://www.docker.com/get-started/).
2. Clone this repository: `git clone https://github.com/jgarber623/sustainable-devcontainers`.
3. Run `bin/start` (optionally, `bin/start -- --detach` to run in the background).
4. In a separate Terminal, run `bin/exec bin/setup` to install project dependencies.
5. Run `bin/exec bin/dev` to start the application.
6. Navigate to http://localhost:8080 in your Web browser of choice.

> [!NOTE]\
> If you invoked `bin/start -- --detach`, you may stop the app's services by running `bin/stop`.

When working directly via Docker, you may issue any command within the running `app` service by invoking `bin/exec` followed by the command:

```sh
bin/exec whoami
```

Running `bin/exec` _without_ a command will load a Bash prompt.

### 💾 Visual Studio Code

1. Install and run [Visual Studio Code](https://code.visualstudio.com).
2. Install the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).
3. Clone this repository using either the command above or directly in Visual Studio Code.
4. If it isn't already, open the project's folder in Visual Studio Code.
5. When prompted, click "Reopen in Container" in the notification box.
6. Wait for project dependencies to install and follow any prompts in Visual Studio Code's Terminal pane.
7. Re-open the Terminal pane if necessary (`Cmd-J` on macOS).
8. At the prompt, run `bin/dev` to start the application.
9. Click "Open in Browser" in the notificaton box to launch the website.

> [!NOTE]\
> In this workflow, the `bin/exec`, `bin/start`, and `bin/stop` scripts are unnecessary. Visual Studio Code handles these tasks for you when choosing to "Reopen in Container."

To exit the Dev Containers workflow, open the Command Palette (`Cmd-Shift-P` on macOS) and search for "Reopen Folder Locally."

### ☁️ GitHub Codespaces

1. Navigate to [this project's page on GitHub](https://github.com/jgarber623/sustainable-devcontainers).
2. Click the green "< > Code" button in the top-right of the page.
3. Click the "+" button to create a codespace on the project's main branch.
4. Wait for the codespace to launch and for the setup script to complete.
7. Re-open the Terminal pane if necessary (`Cmd-J` on macOS).
8. At the prompt, run `bin/dev` to start the application.
9. Click "Open in Browser" in the notificaton box to launch the website.
