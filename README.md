# hex_tiny & hex_beefy



* **hex_tiny** is a single image containing "repository" functionality of private hex repos. It is as if you followed [Hex: Self Hosting](https://hex.pm/docs/self-hosting) and containerized it.
* **hex_beefy** is a single image containing [hexpm/hexpm](https://github.com/hexpm/hexpm/tree/main) running in a **test** environment, with an internal postgres already set up.


## Docker 

### hex_tiny docker compose

```sh
# to start in daemon mode
docker compose  -f docker-compose_tiny.yml up -d
#[+] Running 1/1
# ✔ Container hex_tiny  Started                                                                                                                                                                                                          0.1s 

# To follow logs
docker compose  -f docker-compose_tiny.yml logs -f

# To down
docker compose  -f docker-compose_tiny.yml down
```

### hex_beefy docker compose

```sh
# to start in daemon mode
docker compose  -f docker-compose_beefy.yml up -d
#[+] Running 1/1
# ✔ Container hex_beefy  Started                                                                                                                                                                                                          0.1s 

# To follow logs
docker compose  -f docker-compose_beefy.yml logs -f

# To down
docker compose  -f docker-compose_beefy.yml down
```

### Use a web-browser

![image showing beefy hex](beefy_screen.png)

--------
### Motivations

I needed this to use as a reference API implementation to execute against (because testing against Hex.pm itself is rude).
