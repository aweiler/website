{% capture stuff %}

![AP vs. Time plot](/work/timely/trajectories_thumb.png)
#### [Timely Object Recognition](/work/timely)

Our method for timely multi-class detection aims to give the best possible performance at any single point between a start time and a deadline.
We formulate a dynamic, closed-loop policy that infers the contents of the image in order to decide which detector to deploy next.
We evaluate our method with a novel *timeliness* measure, computed as the area under an Average Precision vs. Time curve.

* **Timely Object Recognition**  
[Sergey Karayev][sk],
[Tobias Baumgartner][tb],
[Mario Fritz][mf],
[Trevor Darrell][td]  
NIPS 2012  
\[[project page](/work/timely/)\]
\[[pdf](/work/timely/nips_2012_timely_object_recognition.pdf)\]
\[[bibtex](/work/timely/nips_2012_timely_object_recognition.bib)\] 
\[[poster](/work/timely/nips_2012_timely_object_recognition_poster.pdf)\]  

---

![cabfriendly.com logo](/work/images/cabfriendly/icon.png)
#### CabFriendly: A Cloud-based Mobile Web App

We present a cloud-based mobile web application to match users who request similar trips and would like to share a cab.
The application is hosted on Amazon's EC2 service and combines several open-source frameworks (Django, PostgresQL, Redis, Node.js) with social networking and mapping APIs.
The modularity of our design allows the service to easily scale in the cloud as the user base grows.
The service is [live](http://cabfriendly.com).

* **CabFriendly: A Cloud-based Mobile Web App**  
  [Sergey Karayev][sk], 
  [Adam Roberts][ar], 
  [Harold Pimentel][hp]  
  \[[pdf](/work/files/cabfriendly.pdf)\]
  \[[blog post](/work/2011-12-13/cabfriendly/)\]
  \[[use it!](http://cabfriendly.com)\]

---

![example of the input data](/work/images/b3do.jpg)
#### Depth-Informed Object Detection

Using the Microsoft Kinect, we gather a large dataset of indoor crowded scenes.
We investigate ways to unify state-of-the-art object detection systems
and improve them with depth information.

* **A Category-Level 3-D Object Dataset: Putting the Kinect to Work**  
  [Allison Janoch][aj],
  [Sergey Karayev][sk],
  [Yangqing Jia][yj],
  [Jonathan T. Barron][jb],
  [Mario Fritz][mf],
  [Kate Saenko][ks],
  [Trevor Darrell][td]  
  ICCV-W 2011  
  \[[pdf](/work/files/iccv2011.pdf)\]
  \[[bibtex](/work/files/iccv2011.bib)\]
  \[[dataset](http://kinectdata.com)\]
* **Practical 3-D Object Detection Using Category and Instance-level Appearance Models**  
  [Kate Saenko][ks],
  [Sergey Karayev][sk],
  [Yangqing Jia][yj],
  [Alex Shyr][as],  
  [Allison Janoch][aj],
  [Jonathan Long][jl],
  [Mario Fritz][mf],
  [Trevor Darrell][td]  
  IROS 2011  
  \[[pdf](/work/files/iros2011.pdf)\]
  \[[bibtex](/work/files/iros2011.bib)\]

---

![model of the recursive lda](/work/images/rlda_joint.png)
#### Probabilistic Decomposition of Local Image Features

Our method for additively decomposing local image patches, LDA-SIFT, shows best performance on a novel transparent object recognition dataset.
We recursively extend the model to multiple layers and successfully apply it to general object classification.

* **A Probabilistic Model for Recursive Factorized Image Features**  
  [Sergey Karayev][sk],
  [Mario Fritz][mf],
  [Sanja Fidler][sf],
  [Trevor Darrell][td]  
  CVPR 2011  
  \[[pdf](/work/files/rlda/1888.pdf)\]
  \[[supplement](/work/files/rlda/1888-supp.pdf)\]
  \[[bibtex](/work/files/rlda/1888.bib)\]
  \[[poster](/work/files/rlda/poster.pdf)\]
  \[[slides](/work/files/rlda/nov2010-compvision.pdf)\]
* **An Additive Latent Feature Model for Transparent Object Recognition**  
  [Mario Fritz][mf],
  [Michael Black][mb],
  [Gary Bradski][gb],
  [Sergey Karayev][sk],
  [Trevor Darrell][td]  
  NIPS 2009  
  \[[pdf](http://books.nips.cc/papers/files/nips22/NIPS2009_0397.pdf)\]
  \[[bibtex](http://books.nips.cc/papers/files/nips22/NIPS2009_0397.bib)\]

{% include peoples_urls.md %}
{% endcapture %}

<div class="projects">
{{ stuff | markdownify }}
</div>
