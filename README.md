## About PBPod

Sometimes using CocoaPods is a painful thing, especially when your network is not so good, or you are in an area with limited network access.

There are some problems:

- First, the master repo is too large and updated too frequently. It needs a lot of traffic if you have not updated it for a long time.

  By using private podspecs repo only, you can avoid update master repo.

- Second, when we need to get a pod, in most cases we need to clone a whole repository. It’s not a problem when the repository is small.

  In general, the git download speed is only a few dozen KB/s in China mainland without a proxy. I will give up before trying if a repository is larger than hundreds of megabytes.

  But download a archive from CDN will be much faster than clone from GitHub.

So, provide binary libraries and package, uploaded to the website for faster use and make build time sorter. That’s all we done.

## Workflow

### Create new pod

1. Create a new repository at GitHub with `The Unlicence` option. 
2. Clone using pod repo

    ```shell
    > pod repo add PBName https://github.com/PBPods/PBName.git
    > open ~/.cocoapods/repos
    ```

3. Copy the required files from the template and edit them.
4. Add tages and git push.
5. Create releases and uploda archives.
6. Verify.


## Template

# {name}

// short description

// link to offical

**Build detail**: toolchain version, minimal requiest OS version.

| version   | Xcode | SDK version           | iOS  | watchOS | tvOS | macOS |
| --------- | ----- | --------------------- | ---- | ------- | ---- | ----- |
| 2.0       | 9.2   | iOS 11.2, macOS 10.13 | >8.0 | NA      | NA   | >10.8 |
| 1.0       | 8.0   | iOS 10                | >7.0 | NA      | NA   | NA    |
