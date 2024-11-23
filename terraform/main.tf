module "vpc" {
  source              = "./modules/vpc"
  vpc_id              = module.vpc.vpc_id
  vpc_cidr            = "10.0.0.0/16"
  vpc_name            = "tm-vpc"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones  = ["eu-west-2a", "eu-west-2b"]
}

module "security-group" {
  source  = "./modules/security-group"
  sg_name = "tm-ecs-sg"
  vpc_id  = module.vpc.vpc_id
}


module "alb" {
  source            = "./modules/alb"
  alb-name          = "tm-lb"
  security_group_id = module.security-group.sg_id
  subnet_ids        = module.vpc.public_subnets
  target-group-name = "tm-target-group"
  target_port       = 3000
  target_group_arn  = module.alb.target_group_arn
  vpc_id            = module.vpc.vpc_id
  certificate_arn   = "arn:aws:acm:eu-west-2:977098994448:certificate/8f2c2d38-7b39-4f77-80be-05be07c306c2"
}

module "ecs" {
  source             = "./modules/ecs"
  cluster_name       = "tm-cluster"
  task_family        = "tm-task"
  task_cpu           = "1024"
  task_memory        = "3072"
  container_name     = "threatmodel"
  container_image    = "7977098994448.dkr.ecr.eu-west-2.amazonaws.com/threat-model-project"
  container_port     = 3000
  service_name       = "tm-service"
  desired_count      = 1
  subnet_ids         = module.vpc.public_subnets
  security_group_ids = [module.security-group.sg_id]
  target_group_arn   = module.alb.target_group_arn
  listener_http_arn  = "http_listener"
  listener_https_arn = "https_listener"

  create_iam_role    = false
  execution_role_arn = "arn:aws:iam::977098994448:role/ecs_task_execution_role"
  task_role_arn      = "arn:aws:iam::977098994448:role/ecs_task_execution_role"
  iam_role_name      = "ecsTaskExecutionRole"

}


module "route53" {
  source       = "./modules/route53"
  lb_zone_id   = "Z00823992144AGGV5VJJP"
  zone_name    = "threatmodelprojectabdirahmanismail.uk"
  record_name  = "lab.threatmodelprojectabdirahmanismail.uk"
  alb_dns_name = module.alb.alb_dns_name
  ttl          = 300
}
