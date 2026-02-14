# Implementation Plan: App Navigation

**Branch**: `001-app-navigation` | **Date**: 2026-02-14 | **Spec**: [specs/001-app-navigation/spec.md](specs/001-app-navigation/spec.md)
**Input**: Feature specification from `/specs/001-app-navigation/spec.md`

**Note**: This template is filled in by the `/speckit.plan` command. See `.specify/templates/commands/plan.md` for the execution workflow.

## Summary

Implement bottom navigation bar with 4 tabs (Home, Workouts, Trends, Profile) using Flutter and Riverpod for state management. Home screen shows centered text, others have app bars.

## Technical Context

**Language/Version**: Dart ^3.10.4  
**Primary Dependencies**: flutter, riverpod, flutter_animate  
**Storage**: N/A  
**Testing**: flutter_test, mocktail  
**Target Platform**: iOS/Android  
**Project Type**: mobile  
**Performance Goals**: 60fps animations, <100ms navigation  
**Constraints**: Material 3, responsive design, WCAG 2.1 AA compliance  
**Scale/Scope**: 4 screens

## Constitution Check

*GATE: Must pass before Phase 0 research. Re-check after Phase 1 design.*

- [x] Uses MVVM architecture with Riverpod for state management (no Provider or setState)
- [x] Material 3 UI with responsive design for iOS/Android
- [x] Includes animations via flutter_animate
- [x] Performance: 60fps animations, efficient navigation
- [x] Accessibility: Semantic labels, scalable text, WCAG 2.1 AA compliance
- [x] 100% unit/widget/integration tests using flutter_test and mocktail
- [x] Clean, modular Dart code following effective_dart and very_good_analysis lints
- [x] Minimal external packages (only flutter_animate for animations)

## Project Structure

### Documentation (this feature)

```text
specs/001-app-navigation/
├── plan.md              # This file (/speckit.plan command output)
├── research.md          # Phase 0 output (/speckit.plan command)
├── data-model.md        # Phase 1 output (/speckit.plan command)
├── quickstart.md        # Phase 1 output (/speckit.plan command)
├── contracts/           # Phase 1 output (/speckit.plan command)
└── tasks.md             # Phase 2 output (/speckit.tasks command - NOT created by /speckit.plan)
```

### Source Code (repository root)

## Project Structure

### Documentation (this feature)

```text
specs/[###-feature]/
├── plan.md              # This file (/speckit.plan command output)
├── research.md          # Phase 0 output (/speckit.plan command)
├── data-model.md        # Phase 1 output (/speckit.plan command)
├── quickstart.md        # Phase 1 output (/speckit.plan command)
├── contracts/           # Phase 1 output (/speckit.plan command)
└── tasks.md             # Phase 2 output (/speckit.tasks command - NOT created by /speckit.plan)
```

### Source Code (repository root)

```text
lib/
├── main.dart                    # App entry point with navigation setup
├── navigation/
│   ├── app_router.dart          # Router configuration
│   └── bottom_nav_bar.dart      # BottomNavigationBar widget
├── screens/
│   ├── home/
│   │   └── home_screen.dart     # Home screen with centered text
│   ├── workouts/
│   │   └── workouts_screen.dart # Workouts screen with app bar
│   ├── trends/
│   │   └── trends_screen.dart   # Trends screen with app bar
│   └── profile/
│       └── profile_screen.dart  # Profile screen with app bar
├── providers/
│   └── navigation_provider.dart # Riverpod provider for nav state
└── widgets/
    └── nav_item.dart            # Reusable nav item widget

test/
├── widget_test.dart             # Existing test
├── navigation/
│   ├── bottom_nav_bar_test.dart
│   └── app_router_test.dart
├── screens/
│   ├── home_screen_test.dart
│   ├── workouts_screen_test.dart
│   ├── trends_screen_test.dart
│   └── profile_screen_test.dart
└── providers/
    └── navigation_provider_test.dart
```

**Structure Decision**: Mobile Flutter app structure with lib/ for source code and test/ for tests. Navigation logic separated into dedicated folder, screens organized by feature, providers for state management, and widgets for reusability.

## Complexity Tracking

> **Fill ONLY if Constitution Check has violations that must be justified**

| Violation | Why Needed | Simpler Alternative Rejected Because |
|-----------|------------|-------------------------------------|
| [e.g., 4th project] | [current need] | [why 3 projects insufficient] |
| [e.g., Repository pattern] | [specific problem] | [why direct DB access insufficient] |
