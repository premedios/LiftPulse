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

```text
lib/
├── main.dart                    # App entry point with navigation integration
├── navigation/
│   ├── app_router.dart          # Navigation logic and screen mapping
│   └── bottom_nav_bar.dart      # Bottom navigation bar widget
├── providers/
│   └── navigation_provider.dart # Riverpod state management for tab index
├── screens/
│   ├── home/
│   │   └── home_screen.dart     # Home tab screen (centered text)
│   ├── workouts/
│   │   └── workouts_screen.dart # Workouts tab screen (with app bar)
│   ├── trends/
│   │   └── trends_screen.dart   # Trends tab screen (with app bar)
│   └── profile/
│       └── profile_screen.dart  # Profile tab screen (with app bar)
└── widgets/
    └── nav_item.dart            # Reusable navigation item widget

test/
├── widget_test.dart             # Main app smoke test
├── navigation/
│   ├── app_router_test.dart     # Unit tests for app router
│   └── bottom_nav_bar_test.dart # Widget tests for bottom nav bar
├── providers/
│   └── navigation_provider_test.dart # Unit tests for navigation provider
└── screens/
    ├── home_screen_test.dart    # Widget test for home screen
    ├── workouts_screen_test.dart # Widget test for workouts screen
    ├── trends_screen_test.dart  # Widget test for trends screen
    └── profile_screen_test.dart # Widget test for profile screen
```

**Structure Decision**: Single Flutter mobile app structure with MVVM separation (providers for state, screens for UI, navigation for routing). Tests mirror source structure for maintainability.

## Complexity Tracking

> **Fill ONLY if Constitution Check has violations that must be justified**

| Violation | Why Needed | Simpler Alternative Rejected Because |
| ----------- | ------------ | ------------------------------------- |
| [e.g., 4th project] | [current need] | [why 3 projects insufficient] |
| [e.g., Repository pattern] | [specific problem] | [why direct DB access insufficient] |
