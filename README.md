# 💤 LazyVim

LazyVim is a `Neovim` distribution, which will configure Neovim to run on
steroids 🦾. You won't miss any feature from visual studio code, but faster,
fully managed with your keyboard and extremely configurable.

Therefore, In this repository you'll find my personal
starter template for [LazyVim](https://github.com/LazyVim/LazyVim), customized
a little bit to fit my needs.

What are my needs? Not much really... LazyVim comes pretty well featured out of
the box, but I've added some customizations and extras to fit my workflow:

### LazyVim Extras

- AI: GitHub Copilot
- Coding: mini.surround
- Editor: Snacks Explorer & Picker
- Debugging: DAP Core
- Languages: Ansible, Helm, JSON, Markdown, Rust, TeX, YAML
- Util: mini-hipatterns

### Custom Plugins

- [OpenCode](https://github.com/NickvanDyke/opencode.nvim) - AI coding assistant integration
- [Undotree](https://github.com/jiaoshijie/undotree) - Visual undo tree
- Snacks picker - Enhanced with custom keybindings for file operations
- Copilot - Configured to work in all filetypes (including YAML, markdown, gitcommit)

### Disabled Plugins

- Neo-tree - Using Snacks Explorer instead
- Bufferline - Buffer tabs disabled for cleaner UI

My intention is to use LazyVim with the less modifications possible.

Anyway, I fully recommend referring to the official [documentation](https://lazyvim.github.io/installation)
to get started and familiar with LazyVim.

If you experiment any errors, I recommend you run the command `checkhealth` and
find for any `ERROR` reported and fix it.

Many dependencies will be missed, and depending on your
operating system, those dependencies will be easier or harder to install or will
have a name or another.

> [!NOTE]
> Some pure vim users will argue that the way of using and learning
> vim is by creating the configuration for your IDE from scratch.
>
> I went through that rabbit hole in the past, and it's fine if you enjoy
> spending tons of hours configuring vim plugins and trying to find your way
> to map everything so a new plugin doesn't brake any other one.
> Trembling and praying god each time you want to update something.
>
> However, I don't have the time and sanity to maintain that monster:
> Bear in mind that LazyVim already contains like 34 plugins installed
> as it core, all of them working in harmony and with keybindings that are sane
> and make sane for the majority of mortals.
>
> In my case I just want an IDE with all the magic tricks of any modern IDE,
> that I can fully operate with my keyboard, compatible with the majority of
> operating systems, that doesn't require like 4GB RAM or more, with a clunky UI.
> Just something that I can run on a raspberry pi smoothly and that doesn't
> absorb my life to get it running an working in the everyday working.
>
> If you are in my team, and you end up using LazyVim either with my
> configuration or your own, please consider donating or supporting LazyVim's
> project. Many thanks to all the heroes that expend their precious time
> creating these projects that save millions of hours to others.
>
> And finally, I want to make clear that using Neovim even with a distribution
> like LazyVim, will require time and effort from your part: Somethings will
> stop working when updating sometimes, and adding stuff sometimes is harder
> cause that new cool thing that is not already supported and you want, might
> conflict with the LazyVim plugins. That's why my recommendation is to keep
> your LazyVim as simple as possible.

Enjoy!!
