# OpenSearch For Dart & Flutter
[![CI](https://github.com/Nexushunter/opensearch-dart/actions/workflows/CI.yaml/badge.svg?branch=main)](https://github.com/Nexushunter/opensearch-dart/actions/workflows/CI.yaml)

This library is intended to be used in both [Flutter](https://flutter.dev) and [Dart](https://dart.dev) projects alike.

## Features

The following are the APIs implemented in this package.

*Note* (Sept. 18): Not all APIs are tested, or provide a preliminary set of tests. More test cases required. 

Module APIs:
- [ ] Index
  - [x] Create
  - [x] Delete
  - [x] Exists
  - [X] Get Index
  - [x] Open Index
  - [x] Close Index
  - [x] Shrink Index
  - [ ] Split Index
  - [ ] Clone Index
  - [X] Get Settings
  - [ ] Update Settings
  - [ ] Create / Update Mappings
  - [ ] Clear Index or DataStream Cache
- [ ] Ingest
  - [ ] Get Ingest Pipeline
  - [ ] Create /Update Ingest Pipeline
  - [ ] Simulate an Ingest Pipeline
  - [ ] Delete a pipeline
- [ ] Nodes
  - [ ] Nodes hot threads
  - [ ] Nodes info
- [ ] Snapshots
  - [ ] Register Snapshot registry
  - [ ] Get Snapshot registry
  - [ ] Delete Snapshot registry
  - [ ] Verify Snapshot registry
  - [ ] Create Snapshot
  - [ ] Get Snapshot
  - [ ] Delete Snapshot
  - [ ] Get Snapshot Status
  - [ ] Restore Snapshot
- [ ] CAT
  -  [ ] aliases
  -  [ ] allocation
  -  [ ] count
  -  [ ] field data
  -  [ ] health
  -  [ ] indices
  -  [ ] cluster manager
  -  [ ] nodeattrs
  -  [ ] nodes
  -  [ ] pending tasks
  -  [ ] plugins
  -  [ ] recovery
  -  [ ] repositories
  -  [ ] segments
  -  [ ] shards
  -  [ ] snapshots
  -  [ ] tasks
  -  [ ] templates
  -  [ ] pool thread
- [ ] Script
  - [ ] Create / Update Stored Script
  - [ ] Execute painless Stored Script
  - [ ] Get Stored Script
  - [ ] Delete Script
  - [ ] Get Stored Script Contexts
- [ ] Document
  - [ ] Index document
  - [ ] Get document
  - [ ] Update document
  - [ ] Delete document
  - [ ] Bulk
  - [ ] Multi-get document
  - [ ] Delete by query
  - [ ] Update by query
  - [ ] Reindex
- [ ] Search
- [ ] Alias
  - [x] Add
  - [x] Remove
  - [ ] RemoveIndex
- [ ] Cluster
  - [ ] health
  - [ ] stats
  - [ ] allocation explain
  - [ ] remote information
- [ ] Tasks
- [ ] Scroll
- [ ] Explain
- [ ] Count

## Getting started

Prerequisites:
- Containerization technology (ie docker / podman)
- Opensearch container image
- Dart 2.18

## Usage

See [example](https://github.com/Nexushunter/opensearch-dart/blob/main/example/opensearch_dart_example.dart)

## Additional information

[Opensearch](https://opensearch.org)

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
