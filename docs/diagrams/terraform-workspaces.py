from diagrams import Diagram
from diagrams.onprem.iac import Terraform
from diagrams.generic.storage import Storage
from diagrams.generic.network import Router
from diagrams.onprem.container import Firecracker
from diagrams.aws.network import Route53
from diagrams.aws.network import VPC
from diagrams.aws.database import RDS
from diagrams.aws.storage import S3
from diagrams.custom import Custom

from urllib.request import urlretrieve


with Diagram("terraform workspaces trigger", show=False):

    #okteto_url = "https://status.okteto.com/static/icons/icon_512.d9a664.png"
    okteto_url = "https://avatars.githubusercontent.com/u/39767798?s=200&v=4"
    okteto_icon = "okteto.png"
    urlretrieve(okteto_url, okteto_icon)

    flyio_url = "https://dka575ofm4ao0.cloudfront.net/pages-favicon_logos/original/43273/android-chrome-512x512.png"
    flyio_icon = "flyio.png"
    urlretrieve(flyio_url, flyio_icon)

    meta = Terraform("meta")
    seeds = Terraform("seeds")
    vpc = VPC("vpc")
    db = RDS("database")
    buckets = S3("buckets")
    secrets = Terraform("secrets")
    app = Custom("apps", flyio_icon)
    okteto = Custom("k8s", okteto_icon)

    dns = Route53("dns")

    meta >> seeds >> vpc >> [db, buckets] >> secrets >> [app, okteto] >> dns
