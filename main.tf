provider "google" {
  project     = "<deploy using your project>"
  region      = "asia-southeast2"
}

# Create VPC network
resource "google_compute_network" "test_network" {
  name                    = "baru-network"
  auto_create_subnetworks = false
}

# Create subnet
resource "google_compute_subnetwork" "test_subnet" {
  name          = "test-subnet"
  ip_cidr_range = "10.0.12.0/24"
  region        = "asia-southeast2"
  network       = google_compute_network.test_network.self_link
}

resource "google_compute_firewall" "allow_all" {
  name    = "allow-all"
  network = google_compute_network.test_network.name

  allow {
    protocol = "all"
  }

  source_ranges = ["0.0.0.0/0"]
}

# Create GKE cluster
resource "google_container_cluster" "test" {
  name               = "test-cluster"
  location           = "asia-southeast2"
  network            = google_compute_network.test_network.name
  subnetwork         = google_compute_subnetwork.test_subnet.name
  remove_default_node_pool = true
  initial_node_count       = 1
}
resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "my-node-pool"
  location   = "asia-southeast2"
  cluster    = google_container_cluster.test.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-standard-2"
  }
}