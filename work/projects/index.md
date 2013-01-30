---
title: Projects
div_class: projects
layout: default
---

Recently completed and in-progress projects.

---

{% include recent_projects.md %}

---

![Self-organizing sparse codes image](/work/images/som_sc.png)
#### Self-Organizing Sparse Codes

Sparse coding as applied to natural image patches learns Gabor-like components that resemble those found in V1. This biological motivation for sparse coding would also suggest that the learned receptive field elements be organized spatially by their response properties. We investigate ways of enforcing a topography over the learned codes in a locally self-organizing map approach.

* *Self-Organizing Sparse Codes*  
[Sergey Karayev][sk], [Yangqing Jia][yj]  
\[[pdf](/work/files/neuro_final.pdf)\]

---

#### Grounded Parsing of Object Attributes and Prepositions

High-level computer vision and natural language processing are thoroughly intertwined, with the potential to jointly improve performance. We propose a well-defined subset of this underexplored overlap of problems, centered around improving grounded parsing of text and object recognition in images for pairs of images and their descriptions.

* *Grounded Parsing of Object Attributes and Prepositions*  
  [Sergey Karayev][sk],
  [Yangqing Jia][yj],
  [Trevor Owens][to]  
  \[[pdf](/work/files/cs288final.pdf)\]

---

#### Virtual Zoom

![screenshot of virtual zoom client](/work/images/virtualzoom_thumb.png)

My senior Honors thesis, advised by [Steve Seitz][ss].  
Abstract: The world around us is photographed millions of times a day, and a lot of images find their way online.
We present a way to use this data to augment reality through a mobile phone.
With our application, the user can zoom in on a distant landmark using other people's photographs
Our system relies on a 3D scene modeling back end that computes the viewpoint of each photograph in an unordered large photo collection.
We present and discuss the overall system architecture, our implementation of the client application on the iPhone, our approach to picking the best views to offer a zoom path, and the complexities and limitations associated with mobile platforms.  
[Video](http://www.vimeo.com/4892120) | 
[Thesis](files/vz_thesis.pdf)

---

#### UW Courses
![screenshot of uwcourses.com](/work/images/uwcourses_thumb.png)

A larger, searchable, and generally more useful course evaluations catalog for the University of Washington.
The official catalog only lists the last three quarters worth of data, is not searchable, and does not group evaluations by course or instructor.
I sought to remedy all three of these downsides, and explore Ruby on Rails while I was at it.
My favorite part of this project was not the front end, but the data scraping backing it up.
The site is now closed, but you can read a [more detailed write-up](http://iamthedivebomber.net/2008/11/17/UW-Courses.html), or get the [source code](https://github.com/sergeyk/uw-courses).

---

#### Camteraction
![screenshot of the Camteraction
program](/work/images/camteraction_thumb.png)

A quarter-long research project under [Steve Seitz][ss].
Induced by the presence of a webcam in a newly purchased laptop, my goal was to explore ways to interact with the computer through a video stream.
I explored generally applicable motion tracking algorithms, with some elaborations and additions.
Details and a video of it in action [here](http://iamthedivebomber.net/projects/camteraction/).

{% include peoples_urls.md %}
