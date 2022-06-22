### build image

```bash
docker build -t image_processing_100_questions .
```

### run container

```
docker run -it -p 8888:8888 -v ~/image_processing_100_questions/work:/work --rm --name image_processing_100_questions image_processing_100_questions bin/bash

docker run -p 8888:8888 -v ~/image_processing_100_questions/work:/work --rm --name image_processing_100_questions image_processing_100_questions
```
