# Факультетские часы Хогвартса

Структура репозитория:

- client_app - клиентское приложение которое работает через протокол gRPC. Протестировано на Android Emulator ( Pixel 4 API 31), Ubuntu 22.04.
  
- proto - файлы protobuf и сгенерированные dart файлы, для использования на стороне клиента и сервера.
  
- service  - сервер, использует так же gRPC, хранилище моковое(не успел добавить нормальное хранилище).

---

## client_app

Использование gRPC позволяет стримить значения от сервера к клиентами и наоборот.
Таким образом в клиентских приложениях, изменение очков в рамках одного факультета на разных устройстах отображаются сразу на всех устройствах.

На домашней страние оборажаются, кнопки входа в школу (Hogwarts) и вход в режим Дамблдора(Dambldore).

На страние Hogwarts отображаются филиалы. Так же имеется возможность удалить филиал, через свайп влево (dismissible) и  добавить по кнопке +. Отображение филиалов тоже основаны на стримах, т.е. создание и удаление филиала, приведет к изменению отображения на всех устройствах.

После выбора филиала, отображаются факультеты с сответствующими баллами и чарт барами. По нажатию на факультет переходим на отдельную страницу, где мы можем изменить очки факультета.

В режиме Дамблдора отображаются время и информация об устройствах, которые заходили на страницу школы, так же работает на стримах.

---
Инструкция:\
0. Скачать репозиторий.

1. Перейти в папку скаченного репозитория, запустить терминал и вызвать команду

>cd ./service/ && dart pub get && dart bin/service.dart

1. Перейти в папку скаченного репозитория, запустить терминал и вызвать команду (отдельный терминал)

- для linux
  
>cd ./client_app/ && flutter pub get && flutter run --device-id=linux

- для android emulator (его следует запустить, причем есть баг, сервер иногда приходится запускать раньше, чем сам эмулятор)
  
>cd ./client_app/ && flutter pub get && flutter run --device-id=emulator

---

***Web*** версия не работает, можно поднять виртуальный сервер через Envoy proxy, но не хватило времени

---
В качестве state managment используются bloc and cubit.

---
Чего хотелось бы добавить/доделать:

- отрефакторить код и привести к Clean Architectur
- GetIt или DI container для IoC.
- хранилище на строне сервера
- локализацию
- web версию
- сплеш скрин и иконку приложения
![home_page](https://user-images.githubusercontent.com/4101178/180662365-860ea65b-384e-4d2b-a93a-c6580d4b4211.png)
![school_page](https://user-images.githubusercontent.com/4101178/180662369-9f9a8f44-56f7-41f1-8f7e-d54e19a238c9.png)
![edit_branch_page](https://user-images.githubusercontent.com/4101178/180662364-d1b34c08-3ecc-4460-ba5e-1c21a59b9395.png)
![school_page_2](https://user-images.githubusercontent.com/4101178/180662370-2d8fb20e-e5ba-4270-8f77-7d0f16fe62f3.png)
![branch_page](https://user-images.githubusercontent.com/4101178/180662360-c127d356-4501-45d0-a931-af274cf2fdad.png)
![house_page](https://user-images.githubusercontent.com/4101178/180662366-e38ef59d-5209-4ef8-8b8b-19ed66b0fd2f.png)
![house_page_2](https://user-images.githubusercontent.com/4101178/180662368-0b4135f1-7ca4-429f-a052-c8b3144787cc.png)
![dabldore_page](https://user-images.githubusercontent.com/4101178/180662362-cd075418-d330-4db2-abb2-ddc69b39fad1.png)
