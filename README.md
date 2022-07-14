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

But you can **buy a MIT License** for **1 CNY** per month! And in `MIT Licensed List` of this Project there will be your name of yourself or your business for validation. (Entity Name)

(There is a LICENSE file for details.)

This project also use another project as part of it. For license please refer to:
https://github.com/LiuJiewenTT/BlackCurtain/blob/main/LICENSE	

## Why I create this MIT-like customized license

I know it's just a small project. But I don't want to see if there is anyone sell my codes for benefits of their own. And I don't want to see anyone copy my codes and change a little bit then declares that his work base on it. So I add a limit of 30% difference. Within that percent, You should not sell them but distribute them for free. For other commercial use, such a low subscribing price is a support for developers' work and this won't become a burden for businesses. 

I know there are some protocols require declaration of changes. But I just thought that would be to a complicated work sometimes. So in this customized MIT license, only percentage of difference is considered. The percentage could be customized by developers for actual circumstances. 

To unlock the limit, pay a small amount and developers are supposed to return you a said new license. In this project, the new license will be true MIT license.

This license type is my effort to balance dream and survival in free software field. (Free software refers to open-sourced software.)

If you like my work, please tell it to people around you or use it for your own projects. Thanks!

