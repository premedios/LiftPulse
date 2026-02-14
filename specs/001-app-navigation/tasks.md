---

description: "Task list template for feature implementation"
---

# Tasks: App Navigation

**Input**: Design documents from `/specs/001-app-navigation/`
**Prerequisites**: plan.md (required), spec.md (required for user stories), research.md, data-model.md, contracts/

**Tests**: Tests are required per constitution (100% coverage with flutter_test and mocktail).

**Organization**: Tasks are grouped by user story to enable independent implementation and testing of each story.

## Format: `[ID] [P?] [Story] Description`

- **[P]**: Can run in parallel (different files, no dependencies)
- **[Story]**: Which user story this task belongs to (e.g., US1, US2, US3)
- Include exact file paths in descriptions

## Path Conventions

- **Mobile**: `lib/`, `test/` at repository root
- Adjust based on plan.md structure

## Phase 1: Setup (Shared Infrastructure)

**Purpose**: Project initialization and basic structure

- [X] T001 Create navigation directory structure in lib/navigation/
- [X] T002 Create screens directory structure in lib/screens/
- [X] T003 Create providers directory structure in lib/providers/
- [X] T004 Create widgets directory structure in lib/widgets/
- [X] T005 Create test directory structure in test/
- [X] T006 Add riverpod and flutter_animate dependencies to pubspec.yaml
- [X] T007 Update main.dart to include ProviderScope

## Phase 2: Foundational (Shared Navigation Infrastructure)

**Purpose**: Core navigation components used by all screens

**Goal**: Establish navigation state management and routing foundation

**Independent Test Criteria**: Navigation provider correctly manages tab index state

- [X] T008 [P] Create navigation_provider.dart with Riverpod StateNotifier for tab index
- [X] T009 [P] Create app_router.dart with navigation logic and screen mapping
- [X] T010 [P] Create bottom_nav_bar.dart widget with 4 tab items
- [X] T011 [P] Create nav_item.dart reusable widget for tab items
- [X] T012 [P] Write navigation_provider_test.dart with mocktail
- [X] T013 [P] Write bottom_nav_bar_test.dart widget test
- [X] T014 [P] Write app_router_test.dart unit test

## Phase 3: User Story 1 - Home Tab Display (P1)

**Goal**: Display centered "Home" text without app bar

**Independent Test Criteria**: App launches to home screen with centered text, no app bar visible

- [X] T015 [US1] Create home_screen.dart with Center widget containing "Home" text
- [X] T016 [US1] Update app_router.dart to include home screen route
- [X] T017 [US1] Update main.dart to display home screen by default
- [X] T018 [US1] Write home_screen_test.dart widget test

## Phase 4: User Story 2 - Workouts Tab with App Bar (P2)

**Goal**: Display Workouts screen with app bar titled "Workouts"

**Independent Test Criteria**: Tapping Workouts tab shows screen with "Workouts" app bar

- [X] T019 [P] [US2] Create workouts_screen.dart with Scaffold and AppBar(title: "Workouts")
- [X] T020 [P] [US2] Update app_router.dart to include workouts screen route
- [X] T021 [P] [US2] Write workouts_screen_test.dart widget test

## Phase 5: User Story 3 - Trends Tab with App Bar (P3)

**Goal**: Display Trends screen with app bar titled "Trends"

**Independent Test Criteria**: Tapping Trends tab shows screen with "Trends" app bar

- [X] T022 [P] [US3] Create trends_screen.dart with Scaffold and AppBar(title: "Trends")
- [X] T023 [P] [US3] Update app_router.dart to include trends screen route
- [X] T024 [P] [US3] Write trends_screen_test.dart widget test

## Phase 6: User Story 4 - Profile Tab with App Bar (P4)

**Goal**: Display Profile screen with app bar titled "Profile"

**Independent Test Criteria**: Tapping Profile tab shows screen with "Profile" app bar

- [X] T025 [P] [US4] Create profile_screen.dart with Scaffold and AppBar(title: "Profile")
- [X] T026 [P] [US4] Update app_router.dart to include profile screen route
- [X] T027 [P] [US4] Write profile_screen_test.dart widget test

## Final Phase: Integration & Polish

**Purpose**: Connect all components and ensure smooth operation

**Goal**: Fully functional bottom navigation with all screens

**Independent Test Criteria**: All tabs navigate correctly, animations smooth, accessibility compliant

- [X] T028 Integrate BottomNavigationBar into main.dart with navigation provider
- [ ] T029 Add flutter_animate transitions between tabs
- [ ] T030 Add semantic labels for accessibility
- [X] T031 Ensure Material 3 theming
- [X] T032 Run flutter analyze and fix any lint issues
- [X] T033 Run all tests and achieve 100% coverage
- [ ] T034 Test on iOS and Android simulators
- [ ] T035 Performance test: verify 60fps and <100ms navigation
- [X] T036 Increment build number in pubspec.yaml

## Dependencies

User Story completion order:

- US1 (Home) - Independent
- US2 (Workouts) - Requires navigation setup
- US3 (Trends) - Requires navigation setup  
- US4 (Profile) - Requires navigation setup

All user stories require Phase 1 and Phase 2 completion first.

## Parallel Execution Examples

**After Phase 2 completion:**

- Implement US1, US2, US3, US4 screens in parallel
- Write tests for all screens in parallel
- Each screen can be developed independently once navigation foundation exists

**MVP Scope:** Complete US1 (Home tab) for minimal viable navigation

### User Story Dependencies

- **User Story 1 (P1)**: Can start after Foundational (Phase 2) - No dependencies on other stories
- **User Story 2 (P2)**: Can start after Foundational (Phase 2) - May integrate with US1 but should be independently testable
- **User Story 3 (P3)**: Can start after Foundational (Phase 2) - May integrate with US1/US2 but should be independently testable

### Within Each User Story

- Tests (if included) MUST be written and FAIL before implementation
- Models before services
- Services before endpoints
- Core implementation before integration
- Story complete before moving to next priority

### Parallel Opportunities

- All Setup tasks marked [P] can run in parallel
- All Foundational tasks marked [P] can run in parallel (within Phase 2)
- Once Foundational phase completes, all user stories can start in parallel (if team capacity allows)
- All tests for a user story marked [P] can run in parallel
- Models within a story marked [P] can run in parallel
- Different user stories can be worked on in parallel by different team members

---

## Parallel Example: User Story 1

```bash
# Launch all tests for User Story 1 together (if tests requested):
Task: "Contract test for [endpoint] in tests/contract/test_[name].py"
Task: "Integration test for [user journey] in tests/integration/test_[name].py"

# Launch all models for User Story 1 together:
Task: "Create [Entity1] model in src/models/[entity1].py"
Task: "Create [Entity2] model in src/models/[entity2].py"
```

---

## Implementation Strategy

### MVP First (User Story 1 Only)

1. Complete Phase 1: Setup
2. Complete Phase 2: Foundational (CRITICAL - blocks all stories)
3. Complete Phase 3: User Story 1
4. **STOP and VALIDATE**: Test User Story 1 independently
5. Deploy/demo if ready

### Incremental Delivery

1. Complete Setup + Foundational → Foundation ready
2. Add User Story 1 → Test independently → Deploy/Demo (MVP!)
3. Add User Story 2 → Test independently → Deploy/Demo
4. Add User Story 3 → Test independently → Deploy/Demo
5. Each story adds value without breaking previous stories

### Parallel Team Strategy

With multiple developers:

1. Team completes Setup + Foundational together
2. Once Foundational is done:
   - Developer A: User Story 1
   - Developer B: User Story 2
   - Developer C: User Story 3
3. Stories complete and integrate independently

---

## Notes

- [P] tasks = different files, no dependencies
- [Story] label maps task to specific user story for traceability
- Each user story should be independently completable and testable
- Verify tests fail before implementing
- Commit after each task or logical group
- Stop at any checkpoint to validate story independently
- Avoid: vague tasks, same file conflicts, cross-story dependencies that break independence
