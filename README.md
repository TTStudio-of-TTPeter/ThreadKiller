# ThreadKiller
ThreadKiller is a set of programs to help you stop some threads from running. In other words, you are banning the targets. You may need special rights with running in some cases.

## Working Principle

1. Read targets, name of images/threads
2. Try kill the threads.(`taskkill /f /im [imagename]`)
3. Check if succeeded. If so, print `Mission: Kill [target], Complete!` on screen(if there is a screen).

There aren't a process to check existence, so it's fast. But this results in outputing error infos.

## Debug

Before you look into the problem, check the below sections.

- In packed version, there will be a `showrun` option for you. Click that link and there will show up a CMD window and run.

- In unpacked version, there will always be a screen for you.

So, you may see the error outputs to determine whether you need to give **special right**.

As for other problems, you need to figure out by yourself. You are allowed to edit my codes. License is `MIT`-like.

## Cases need special rights

1. You installed these programs in some protected location. E.g.System Drive is usually protected, says if they are in C:\Program Files[(x86)]\\....
2. You want to ban some special threads and this operation requires high access right even if you manually do it. In this case, you should start the programs with special rights manually.

## Why do they need special rights to run

Well, it depends. Just as the above says.

1. There is a smart program that will check if it's in protected location and a special right is a must. Without this function, you will need to manually launch with special right when you find it not working. And this is really annoying!
2. The targets are protected and need special right.

## Cases Not suitable to use them

Well, please remember they're just a collection of commands you need to type in otherwise. The commands are supposed to do something with threads only, NOT SERVICES! So if you're going to do something with services, these programs are not compatible. But you can modify them so that they are.

## For Commercial Use

Programs of this project is free for individual uses but **not free for commercial uses**. Codes are opened but you're permitted to use the programs. You need to buy a new permission to use them commercially. (The new permission will be `MIT License`)

Contact us through email: liuljwtt@foxmail.com

## LICENSE

This project is under MIT-like License. BUT NO FREE PERMISSION FOR COMMERCIAL USES!

Copyright (c) 2022 TTStudio-of-TTPeter

```
MIT-like License
Unlike MIT license, you cannot sell the copies. But you still have other rights a MIT license will give.
If you want to use commercially, sell only modified versions with at least 30% difference or contact through project's email to buy a MIT license. Otherwise, you should redistribute them for free.
```

(There is a LICENSE file for details.)

This project also use another project as part of it. For license please refer to:
https://github.com/LiuJiewenTT/BlackCurtain/blob/main/LICENSE	