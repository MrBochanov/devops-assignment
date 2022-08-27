Docker image was builded from python3.9 with poetry installed without venv (docker is allready isolated, so there is no need)
gunicorn.sh was EDITED with shabang, correct app name and additional key
Image was pushed to my DockerHub

1. minicube (WinOS + VirtualBox)
    ```
    minikube addons enable ingress (for ingress)
    minikube addons enable metrics-server (for hpa)
    ```
2. kubectl, helm, helm file , helm diff (WinOS), Lens
3. Installation for each environment:
    ```
    helmfile -l environment=dev,name=dev  apply
    helmfile -l environment=stage,name=stage  apply
    helmfile -l environment=prod,name=prod  apply
    ```
    Everything work as expected ( http://0.0.0.0:8000/ gives ENVIRONMENT , ENVIRONMENT_FROM_SECRET in http://0.0.0.0:8000/docs  )
4. Uninstallation:
    ```
    helmfile destroy
    ```

5. What was NOT done - helm secrets > sops > gpg for WinOS...sorry, at some point in time I realized that spend too much time not on task but installing and configuring all these softs for WinOS =(
    I guess it was mistake to run all tools on WinOS, so I just scipped it, secret is just env variable in my case 
    helmfile-minikube - I dont know what is it 