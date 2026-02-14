<!-- Sync Impact Report
Version change: 1.0.1 → 1.0.2
List of modified principles: Development Workflow - added build number increment after feature implementation
Added sections: None
Removed sections: None
Templates requiring updates: None
Follow-up TODOs: None
-->

# LiftPulse Constitution

## Core Principles

### I. Clean Code

Clean, modular Dart code following effective_dart and very_good_analysis lints.

### II. Architecture

MVVM architecture with Riverpod for state management; no Provider or setState.

### III. Testing (NON-NEGOTIABLE)

100% unit/widget/integration code coverage tests using flutter_test and mocktail.

### IV. UI/UX

Material 3 UI with responsive design for iOS/Android; animations via flutter_animate.

### V. Performance

60fps animations, efficient ListView.builder for workout lists, no memory leaks.

### VI. Accessibility

Semantic labels, scalable text, WCAG 2.1 AA compliance.

### VII. Data Management

Offline-first with Drift for local data; Firebase for auth/sync.

### VIII. Dependencies

Strict dependency versions per pubspec.yaml; minimal external packages.

## Technology Stack

Flutter SDK latest, Dart, Riverpod latest, Drift latest, flutter_animate, mocktail, very_good_analysis.

## Development Workflow

Test-First (TDD): Tests written → User approved → Tests fail → Then implement; Red-Green-Refactor cycle strictly enforced. All PRs/reviews must verify compliance with principles. After implementing a feature and tests pass, increment the build number in pubspec.yaml.

## Governance

These principles supersede all other guidance and must guide every spec, plan, task, and implementation. Constitution supersedes all other practices; Amendments require documentation, approval, migration plan. All PRs/reviews must verify compliance; Complexity must be justified.

**Version**: 1.0.2 | **Ratified**: 2026-02-14 | **Last Amended**: 2026-02-14
