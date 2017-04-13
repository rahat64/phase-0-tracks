## Linux Philosophy

The core philosophy of linux is derived from the Unix philosophy which revovles around the idea that the user is computer literate and knows what they are doing. The fundamental idea is to not provide users with limitations and let them make as much stupid mistakes as possible because eventually, that stupidity will turn into cleverness. Hopefully.

## VPS 

Vps stands for Virtual Private Server. It's a new form of web hosting that has recently gained popularity because it is a hybrid of shared hosting and dedicated hosting. Essentially, it is a private server that is partitioned so that it has its own operating system, disc space, and bandwith. VPS are perferred by hosting customers because it gives them more control over their enviornment than they do with shared hosting.

>Advantages of using vps
* A VPS hosting account is less expensive than a full dedicated hosting plan that uses a physical server.
* Many VPS plans can be customized to meet your needs so you pay for what you want but you do not need to deal with any features you will never need.
* Many VPS hosting plans are easily scalable. You can start off in your virtual environment with the minimum amount of resources you need and then as you grow gradually increase your hosting plan to accommodate your needs. You do not have to pay for excessive resources you have not yet grown into.
* You have a lot more control over your virtual server than you do with shared hosting. You will likely have root access and the ability to use scripts that may not be allowed in the shared hosting environment.
* You have the same technical support as with shared hosting for most issues.
* You can choose from semi managed hosting where the web host handles some maintenance and fully managed services.

## Bad practice to run as Root user in linux systems:

You are much more prone to mistakes or software bugs. That program which deleted files as a bug? If it ran as a limited user, at most it can damage stuff in your home directory and on a few other devices (e.g. USB disks).

If ran as root, it might have freedom to delete everything in the system. Besides, you might be the victim of a buggy script which accidentally deletes critical files.
Similarly, a vulnerability or malicious software can cause much more harm, because you gave it full permissions. It can change programs in /bin and add backdoors, mess with files in /etc and make the system unbootable etc...
You can be victim of your own stupidity. That rm -rf * you ran by mistake, or if you swapped input/output device in dd, would be stopped by your lack of permissions, but if you run as root, you are all powerful.
You don't need it for most uses, except for administrative work.