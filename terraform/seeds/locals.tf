locals {

  k8s_cluster = {
    name = replace("${random_pet.k8s.id}-${random_uuid.k8s.result}", "-", "")
  }
  pg_cluster = {
    name = replace("${random_pet.pg.id}${random_uuid.pg.result}", "-", "")
    admin = {
      username = local.sabedoria.name
      password = random_password.pg_cluster.result
    }
  }
  gotify = {
    name = "gotify${random_string.gotify.result}"
    admin = {
      username = "gotify${random_string.gotify.result}"
      password = random_password.gotify.result
    }
  }
  maya = {
    name = "maya${random_string.maya.result}"
    admin = {
      username = "maya${random_string.maya.result}"
      password = random_password.maya.result
    }
  }
  redmine = {
    name       = "redmine${random_string.redmine.result}"
    secret_key = random_password.redmine_secret_key.result
    admin = {
      username = "redmine${random_string.redmine.result}"
      password = random_password.redmine.result
    }
  }
  sabedoria = {
    name = "sabedoria${random_string.sabedoria.result}"
    admin = {
      username = "sabedoria${random_string.sabedoria.result}"
      password = random_password.sabedoria.result
    }
  }
  seed = {
    name = "seed-${random_string.seed.result}"
  }
  team = {
    name = "team-${random_string.team.result}"
  }
  trakttv = {
    name = "trakttv-${random_string.trakttv.result}"
  }
  wooka = {
    name = "wooka-${random_string.wooka.result}"
  }

}
