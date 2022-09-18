# OpenSearch For Dart & Flutter
[![CI](https://github.com/Nexushunter/opensearch-dart/actions/workflows/CI.yaml/badge.svg?branch=main)](https://github.com/Nexushunter/opensearch-dart/actions/workflows/CI.yaml)

This library is intended to be used in both [Flutter](https://flutter.dev) and [Dart](https://dart.dev) projects alike.

## Features

The following are the APIs implemented in this package.

Module APIs:
- [ ] Index
  - [x] Create
  - [x] Delete
  - [x] Exists
  - [ ] Get Index
    - [ ] Parse out mappings
  - [x] Open Index
  - [x] Close Index
  - [x] Shrink Index
  - [ ] Split Index
  - [ ] Clone Index
  - [ ] Get Settings
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

Unorganized:
- Search
    - Single
    - Multi
- Alias
- Cluster
  - health
  - stats
  - allocation explain
  - remote information
- Tasks
- Scroll
- Explain
- Count

## Getting started

Prerequisites:
- Containerization technology (ie docker / podman)
- Opensearch container image
- Dart 2.18

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
