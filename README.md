# OpenGauss GitHub Action

This [GitHub Action](https://github.com/features/actions) sets up a OpenGauss database.

# Usage

See [action.yml](action.yml)

Basic:
```yaml
steps:
- uses: lgj101/opengauss-action@v2.0
  with:
    GS_VERSION: '5.0'  # See https://hub.docker.com/r/enmotech/opengauss for available versions
    GS_USERNAME: 'gaussdb'
    GS_PASSWORD: 'Gauss@123' 
    GS_DB: 'gaussdb' 
    HOST_PORT: 15432 
    CONTAINER_PORT: 5432 
```

# License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
