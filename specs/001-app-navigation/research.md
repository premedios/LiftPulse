# Research: App Navigation

**Feature**: App Navigation  
**Date**: 2026-02-14  
**Researcher**: AI Assistant  

## Findings

No unknowns identified in the specification. All technical requirements are well-defined and align with the constitution.

## Decisions

- **Decision**: Use Riverpod for state management of navigation index
- **Rationale**: Constitution mandates Riverpod for state management, no Provider or setState
- **Alternatives considered**: Provider (rejected due to constitution), setState (rejected)

- **Decision**: Implement BottomNavigationBar with 4 items
- **Rationale**: Direct Flutter widget for bottom navigation, supports Material 3
- **Alternatives considered**: Custom navigation (overkill), third-party packages (minimal packages per constitution)

- **Decision**: Home screen: Center widget with Text, no Scaffold
- **Rationale**: Spec requires centered text only, no app bar
- **Alternatives considered**: Scaffold with empty appBar (unnecessary complexity)

- **Decision**: Other screens: Scaffold with AppBar(title: Text(tabName))
- **Rationale**: Spec requires app bar with tab name for Workouts, Trends, Profile
- **Alternatives considered**: Custom app bars (standard Scaffold sufficient)

- **Decision**: Navigation via index-based switching
- **Rationale**: Simple and performant for 4 screens
- **Alternatives considered**: Named routes (overkill for bottom nav), page view (not needed)

- **Decision**: Test with flutter_test and mocktail
- **Rationale**: Constitution requires 100% coverage with these tools
- **Alternatives considered**: Other testing frameworks (not allowed)

- **Decision**: Follow effective_dart and very_good_analysis lints
- **Rationale**: Constitution mandates these lints
- **Alternatives considered**: Other lint rules (not allowed)
