# Contributing to the TDM Calculator Project - Getting Started

If you are not going to do hands-on development, you can simply experiment
with the test version of the application at <a href="https://tdm-calc-staging.herokuapp.com"> https://tdm-calc-staging.herokuapp.com</a>.

The version that LA DOT personnel are using is deployed to <a href="https://tdm-calc.herokuapp.com"> https://tdm-calc.herokuapp.com</a>.

If you wish to study or contribute to the code base, follow these Installation
Instructions to install a development environment on your machine.

If you intend to make changes to the database structure or reference data, you will want to do your database changes using a [local development database](./dod/localdatabase.md) instead of the shared development database.

If you are involved in the release process and need to run an environment that exactly mirrors the deployment environments, you can develop and test in a docker development environment.

For a list of other development topics, see [Development](/doc/development.md).

## Installation Instructions

### Prerequisites

1. Git for working with Github source code
2. Node and npm for running the web app

### Full-Stack React/Node Application Installation

1. Start a terminal app, such as a Git bash shell on Windows or Terminal on Mac OS
1. Create a source directory (e.g. hackforla) in the user's home directory and go in it (or use the folder where you normally put local git repositories)
   ```
   mkdir hackforla
   cd hackforla
   ```
1. Clone the TDM repository

   ```
   git clone https://github.com/hackforla/tdm-calculator
   ```

1. Change to the tdm-calculator directory:
   ```
   cd tdm-calculator
   ```
1. Install the node server npm depedencies:
   ```
   npm install
   ```
1. Obtain the `.env` file from the tdm-calculator/Developers G-Drive folder and place it in this directory. It contains private info (i.e., the production database connection string) that we cannot put in this public GitHub repo.
1. Change to the client directory:
   ```
   cd client
   ```
1. Install the client (React) dependencies:
   ```
   npm install
   ```

### To Run the React/Node Application

1. In one terminal window, navigate back to the /tdm-calculator directory and start the node server:

```
cd ..
npm start
```

1. In a separate terminal window, navigate to the /tdm-calculator/client directory, start the react app, and open the browser :

```
cd client
npm start
```

Note: Node server (backend) should start before the React server (frontend/client)

## To Contribute Code

### Claiming an Issue

Before modifying any code, an issue should exist for the task in the GitHub repo. You should make sure that no one else is assigned to the issue and then assign it to yourself, so we avoid stepping on each others' toes. If there is not an issue for the work you want to do, you should talk to the lead developer and/or project manager to get an issue created and prioritized on the kanban board and then have them create the issue from there for you to work on.

We use the "Git Flow" workflow to manage source code. See [Vincent Driessen's seminal article](https://nvie.com/posts/a-successful-git-branching-model/) for an overview, though a few of the detailed procedures below have additional steps. We have modified a few steps here, so your changes are merged into _develop_ on GitHub (rather than locally). This allows others to easily view your changes, and is a smaller departure from the previous workflow to learn.

1. After cloning the repository, create a feature branch with a name containing your name and a feature name, separated by dashes, for example.

```
git checkout -b nicholas-issue-100 develop
```

Note that your feature branch is based on the _develop_ branch, which is where feature changes will be integrated for eventual release to production.

2. Claim an issue (see instructions down below) and start coding.

3. Regularly add, commit, and push your code to your branch.

```
git add -A
git commit -m "Write your commit message here with overall description of your code changes"
git push origin HEAD
```

Pay close attention to the messages you get when you try to commit. There is a git commit hook that will run eslint and prettier on your code to check for compliance with our coding conventions, and any deviation will be flagged as errors and block the commit from completing. You will need to resolve these problems and then try again.

4. When an issue is completed and is ready for a pull request, first add and commit your latest changes as in Step 3 above, then make sure your code has the latest code from the _develop_ branch by pulling from the develop branch. This is to ensure merge conflicts are in your local envinronment, which is easier to clean up, than in GitHub:

```
git pull origin develop
```

5. Resolve any merge conflicts and _run the application_ (client and server) to be sure that the application builds correctly before proceeding. Then push your changes to your feature branch on the github repo:

```
git push origin HEAD
```

6. Go to the [GitHub repository for TDM-Calculator](https://github.com/hackforla/tdm-calculator). There are three options:

- Click on "Compare & pull request" button underneath the "commits branches releases environment contributors" box.
- Click on the "New Pull Request" button underneath the "commits branches releases environment contributors" box and underneath "Your recently pushed branches" section.
- Click on the "Pull Request" tab and press "New Pull Request"

7. In "Comparing Changes", switch the "compare" (right button) to your branch name. Make sure the "base" (left button) is on the _develop_ branch. Double check the changes you've made down below, and click "Create pull request". Make sure the description of your changes is reflected in the Pull Request, e.g.
   "Start to incorporate Storybook and LADOT theme (colors, logos and headers)".

8. Click on "Create Pull Request" and wait for someone to review to merge your changes!

9. Once your PR has been reviewed, accepted and merged to the develop branch, it will automatically be published to <a href="https://tdm-calc-staging.herokuapp.com"> https://tdm-calc-staging.herokuapp.com</a>. Please be sure to run the application here and make sure your changes are reflected in this deployed version of the develop branch.

## Resources from our very own Hack For LA member!

- [Intro to Git CLI exercises](https://github.com/ndanielsen/intro-cli-git-github) Nathan Danielsen
- [Intermediate Git CLI exercises](https://github.com/ndanielsen/intermediate-cli-git-github) Nathan Danielsen