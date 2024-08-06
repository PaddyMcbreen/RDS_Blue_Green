# Blue/Green Deployments With RDS (Documentation):
# ------------------------------------------------


# What are Blue/Green Deployments with RDS?:
A blue/green deployment copies a production database environment to a separate, synchronized staging environment. By using Amazon RDS Blue/Green Deployments, you can make changes to the database in the staging environment without affecting the production environment. For example, you can upgrade the major or minor DB engine version, change database parameters, or make schema changes in the staging environment. When you're ready, you can promote the staging environment to be the new production database environment, with downtime typically under one minute.
# ------------------------------------------
