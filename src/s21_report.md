## Part_1 ##

 - Проверка работоспособности докера:

   + Скрипт:

   ![script](01/photo/script-1.png "Script")

   Данный скрипт запускает докер, выводит информацию о контейнере в файл inspect_list, выводит размер и ip-адрес докера, закрывает докер и проверяет его состояние.

   + scripts output and inspect_list - результат работы скрипта и информация о контейнере:

   ![docker info](01/photo/run-script.png "run script and read inspect_list")

   Видим наличие образов, id нужного образа (nginx), наличие запущенного образа (после его запуска - графы created и status), ip-адрес и размер, отсутствие запущенных образов (после остановки). Так - же, из файла inspect_list выбраны строки с портами, размером и ip-адресом.

  - Маппинг портов:

   ![mapping-ports](01/photo/mapping-ports.png "Mapping and curl")

   Запуск контейнера с замапленными портами, запрос страницы localhost:80 и её вывод.

  - Restart:

   ![Restart](01/photo/restart.png "Restart")

   Перезапуск контейнера с проверкой состояния. Обратить внимание на разницу в колонках created и status.



## Part_2 ##

  - Запуск контейнера и копирование конфигурационного файла:
   
   ![cat config](02/photo/cat.png "Start docker and copy config file")

  - Default config file:

   ![def conf](02/photo/old-conf.png "Default config")

  - New config file:

   ![New conf](02/photo/new-conf.png "New config file")

  - Copy new config into docker and restart nginx:

   ![copy and restart](02/photo/copy.png "Copy new config and restart nginx")

  - Check status:

   ![status](02/photo/status.png "Check status")

  - Export container and stop:

   ![export and stop](02/photo/export-and-stop.png "Export container and stop it")

  - Delete all containers and image nginx:

   ![delete containers](02/photo/del-containers.png)

   ![delete nginx](02/photo/del-image.png)

  - Import new image and run it:

   ![Import and run](02/photo/import.png)

  - Check new nginx status:

   ![Status nginx](02/photo/new-status.png)



## Part_3 ##

Все необходимые для данного пункта файлы лежат в папке 03.

 - Скрипт part-3.sh выполняет все необходимые действия:
   
   ![part-3.sh](03/photo/part-3.png "Script")

 - Результат работы скрипта:

  ![run script](03/photo/run-part-3.png "Result")


## Part_4 ##

Все необходимые для данного пункта файлы лежат в папке 04.

 - Скрипт, удаляющий все контейнеры и образы, и результат его работы:

  ![clearAll](04/photo/clear-script.png "Clear script")

  ![result](04/photo/clear.png "Result")

 - Cкрипт для создания нового образа (на основе nginx) и запуска контейнера, а также, результат его работы:

  ![Base script](04/photo/base-script.png "Base script")

  ![Common result](04/photo/common-result.png "Result and check")



## Part_5 ##

 - Скрипт для установки Dockle:

  ![set-dockle](05/photo/set-dockle.png "Download and set")

 - Хвост ошибок первой версии Dockerfile:

  ![errors](05/photo/errorFromDockle.png "Errors")

 - Проверка новой версии Dockerfile:

  ![new check](05/photo/checkNewVersion.png "Version 2.0")

Новая версия Dockerfile лежит в директории src.

## Part_6 ## 

Все необходимые файлы расположены в папке 06.

 - Демонстрация работоспособности:

  ![docker-compose-up](06/photo/docker-compose-up.png "Result")


