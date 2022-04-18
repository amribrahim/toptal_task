resource "aws_db_cluster_snapshot" "example" {
  db_cluster_identifier          = aws_rds_cluster.default.id
  db_cluster_snapshot_identifier = "resourcetestsnapshot1234"
}
