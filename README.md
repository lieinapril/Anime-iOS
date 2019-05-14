Group Project - README
===

# Anime-iOS

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Kitsu-iOS is an iOS client for the popular anime website [Kitsu](https://kitsu.io/)

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Entertainment / Social Networking
- **Mobile:** This app provides a real-time discussion section for each anime.
- **Story:** We wants to make this app so that anyone can find anime that fits individual preference, and engage in discussion forum.
- **Market:** The users are anime fans around the world. The value to the users is that they can engage in the community real-time, and find anime that they like easily.
- **Habit:** We hope that this app can be used on daily basis for some people as they engage in anime discussion a lot.
- **Scope:** The main function of this app is recommending anime for each user, which is similar to Flix. So, it will not be too challenging to implement the core function. Another function we want to implement is discussion forum for each anime. This involves messaging feature, which we have not implemented. This part could be the most challenging for us.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can make account.
* For each user, the app recommends animes.
* User can search anime.

**Optional Nice-to-have Stories**

* User can engage in discussion for each anime.

### 2. Screen Archetypes

* Login Screen
* User can either log in or sign up.
* Home Screen
* User receives recommendation of animes based on each user's preference.
* When a user touches the anime, the detail and the discussion is shown to the user.
* Search Screen
* User can search anime.
* Setting Screen
* User can log out the account. 

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home Feed
* Search Anime
* Setting

**Flow Navigation** (Screen to Screen)

* Login Screen
=> Home
* Home Screen
=> Detailed view
* Search Anime
=> Collection view of anime
* Setting
=> None

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="https://imgur.com/gallery/QhjVjC2" width=600>
<blockquote class="imgur-embed-pub" lang="en" data-id="a/QhjVjC2"><a href="//imgur.com/QhjVjC2">App Design</a></blockquote><script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema
### View Controllers
[This section will be completed in Unit 11]
- [x] Added tab view controllers
- [x] Added collection view controller for animes

[This section will be completed in Unit 12]
- [ ] Network request
- [ ] Log in, sign up functions
- [ ] User can scroll animes on the list

### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]

