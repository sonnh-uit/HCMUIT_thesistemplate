[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/sonnh-uit/HCMUIT_thesistemplate">
    <img src="imgs/UIT-logo.png" alt="Logo" width="20%">
  </a>

<h3 align="center">HCMUIT Thesis Template</h3>
  </p>
  <p align="center">
    <!-- <a href="https://github.com/sonnh-uit/HCMUIT_thesistemplate"><strong>Explore the docs »</strong></a> -->
    <!-- <br /> -->
    A small project to writing UIT thesis correctly.
    <br />
    <a href="https://github.com/sonnh-uit/HCMUIT_thesistemplate/imgs/demo">View Demo</a>
    ·
    <a href="https://github.com/sonnh-uit/HCMUIT_thesistemplate/issues">Report Bug</a>
    ·
  </p>
</div>


<!-- ABOUT THE PROJECT -->
## About The Project
This is non profit project. When I was a student, I atended  graduation thesis with a lot of worries, the most worried was not completing it. But then, under the encouragement of the lecturer, I also defend successfully with a modest score: 8.3. Research and develop are hard. But present it properly, synchronously and beautifully are more difficult than, especially with group. 

At that time, my group didn't know Latex. We use Google Doc and Microsoft Word to write thesis. Using these is quick and convenient, but encounteres some problem:
- Our thesis has to write many math formulas. Write by Google Doc is impossible, MS Word is hard, take time and easy to get the wrong format when copy.
- Do not synchronize the format of the whole thesis. Chapter 1 with font size 13, chapter 2 with font size 14. Title, caption, number list are all messed up.
- Citations is very difficult and time consuming. 

After that, I study master and must be write Latex. I discovered new horizons. Many younger student who do thesis, asked me how written thesis, I sent them my old pdf thesis. However, many of you do not know how to do it. I feel that Word is much more difficult to use than Latex, although it has a friendly interface.

In my spare time, I have researched and learned the Latex source of thesis from a friend from BKU. Since then, I have customized it to suit the requirements of the UIT. You guys can use it as a standard template to write, without having to worry about how to format it anymore.
### Built With
<div align="center">
<a href="https://www.overleaf.com/"> <img src="imgs/Overleaf_Logo.png" alt="Overleaf-logo" style="width:10%;"></a> &emsp;
OR &emsp;
<a href="https://en.wikipedia.org/wiki/Make_(software)"> <img src="imgs/makefile.png" alt="Makefile-logo" style="width:20%;"></a>
</div>

<!-- GETTING STARTED -->
## Getting Started
This is guideline how you setting up your thesis. Follow the instruction bellow.

### Prerequisites

- If you use `Overleaf`, you just register an account.
- If you want to build from this source, you must have unix system such as Ubuntu, CentOS, RHEL, Amazon Linux whose installed `Makefile`. To install that, follow the instruction of your OS. The example bellow is in Ubuntu 22 LTS
  ```
  sudo apt install make
  ```
  

### Installation

#### Overleaf
1. Download lastest source code from [Project Releas](https://github.com/sonnh-uit/HCMUIT_thesistemplate/releases) 
2. Login to your project at https://www.overleaf.com/project
3. On the left side, choose `New Project` button and select `Upload Project`.
4. On the pop up, select a zip file you already download before.
5. Your project will automatically open.

#### Building from source
1. Clone project from github
    ```
    git clone https://github.com/sonnh-uit/HCMUIT_thesistemplate.git
    ```
2. Cd to project
    ```
    cd HCMUIT_thesis_template
    ```
3. Install require package
    ```
    make
    ```
4. Building example project
    ```
    make build
    ```
<!-- USAGE EXAMPLES -->
<!-- ## Usage -->



<!-- ROADMAP -->
<!-- ## Roadmap -->


<!-- CONTRIBUTING -->
## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.


<!-- CONTACT -->
## Contact

Son Nguyen-Hong - [@facebook](https://www.facebook.com/sonnh.uit/) - 17520988@gm.uit.edu.vn

<!-- ACKNOWLEDGMENTS -->
<!-- ## Acknowledgments

* []()
* []()
* []() -->


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/sonnh-uit/HCMUIT_thesistemplate.svg?style=for-the-badge
[contributors-url]: https://github.com/sonnh-uit/HCMUIT_thesistemplate/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/sonnh-uit/HCMUIT_thesistemplate.svg?style=for-the-badge
[forks-url]: https://github.com/sonnh-uit/HCMUIT_thesistemplate/network/members
[stars-shield]: https://img.shields.io/github/stars/sonnh-uit/HCMUIT_thesistemplate.svg?style=for-the-badge
[stars-url]: https://github.com/sonnh-uit/HCMUIT_thesistemplate/stargazers
[issues-shield]: https://img.shields.io/github/issues/sonnh-uit/HCMUIT_thesistemplate.svg?style=for-the-badge
[issues-url]: https://github.com/sonnh-uit/HCMUIT_thesistemplate/issues
[license-shield]: https://img.shields.io/github/license/sonnh-uit/HCMUIT_thesistemplate.svg?style=for-the-badge
[license-url]: https://github.com/sonnh-uit/HCMUIT_thesistemplate/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/sonnh-uit/
<!-- [product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com  -->
