# Grox.io Elixir Basics Sept 23

## 1 Install these tools, plus Elixir

The tools you will need to install: 

- git (https://git-scm.com/downloads). 
- an editor that you are comfortable with. 

For the development dependencies, you'll need: 

- Elixir 1.15, with OTP 26. Make sure it's working: 

run the command: 

```
[course] ➔ elixir -v
Erlang/OTP 26 [erts-14.0.2] [source] [64-bit] [smp:10:10] [ds:10:10:10] [async-threads:1] [jit]

Elixir 1.15.4 (compiled with Erlang/OTP 26)
```

## 2. Clone this repository

1. Fork this repository to your github account. 

- Go to https://github.com/groxio-learning/elixir-basics-9-23
- Click the `fork` button in the upper right corner
- Navigate to *your local version* (at something like git@github.com:your-github-user/elixir-basics-9-23.git. )
- Copy the clone address to your clipboard. In the upper right, click `clone or download` then `copy to clipboard`

2. Clone your local version to your local machine. 

- Clone it. *REPLACE your-github-account with your account*:  

```
>  git clone <paste the url>
...clones repo...
cd elixir-basics-9-23
```

- Verify your remote: 

```
$ git remote -v
> origin  https://github.com/your-user/elixir-basics-9-23.git (fetch)
> origin  https://github.com/your-user/elixir-basics-9-23.git (push)
```


- If there's no origin, set it. Make sure you *replace your-github-user*:

```
elixir-basics-9-23> git remote add origin https://github.com/your-github-user/elixir-basics-9-23.git
```

- Verify your remote: 

```
$ git remote -v
> origin  https://github.com/your-user/elixir-basics-9-23.git (fetch)
> origin  https://github.com/your-user/elixir-basics-9-23.git (push)
```

- Set the upstream to the Groxio repo:

```
elixir-basics-9-23> git remote add upstream https://github.com/groxio-learning/elixir-basics-9-23.git
```

- Verify the remotes: 

```
> origin  https://github.com/your-user/elixir-basics-9-23.git (fetch)
> origin  https://github.com/your-user/elixir-basics-9-23.git (push)
> upstream  https://github.com/groxio-learning/elixir-basics-9-23.git (fetch)
> upstream  https://github.com/groxio-learning/elixir-basics-9-23.git (push)
```

3. Now check out your setup. Send me a pull request: Edit the file "pull_requests.md" and add your name: 

- git pull upstream main
- Edit pull_requests.md

```
- Bruce Tate
```

- Commit the file and push

```
> git commit . -m "my commit"

...some happy success message...

> git push origin main
