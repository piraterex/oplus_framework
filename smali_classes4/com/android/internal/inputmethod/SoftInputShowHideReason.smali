.class public interface abstract annotation Lcom/android/internal/inputmethod/SoftInputShowHideReason;
.super Ljava/lang/Object;
.source "SoftInputShowHideReason.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist ATTACH_NEW_INPUT:I = 0x1

.field public static final blacklist HIDE_ALWAYS_HIDDEN_STATE:I = 0xd

.field public static final blacklist HIDE_BUBBLES:I = 0x13

.field public static final blacklist HIDE_DISPLAY_IME_POLICY_HIDE:I = 0x1a

.field public static final blacklist HIDE_DOCKED_STACK_ATTACHED:I = 0x11

.field public static final blacklist HIDE_INVALID_USER:I = 0xa

.field public static final blacklist HIDE_MY_SOFT_INPUT:I = 0x4

.field public static final blacklist HIDE_POWER_BUTTON_GO_HOME:I = 0x10

.field public static final blacklist HIDE_RECENTS_ANIMATION:I = 0x12

.field public static final blacklist HIDE_REMOVE_CLIENT:I = 0x15

.field public static final blacklist HIDE_RESET_SHELL_COMMAND:I = 0xe

.field public static final blacklist HIDE_SAME_WINDOW_FOCUSED_WITHOUT_EDITOR:I = 0x14

.field public static final blacklist HIDE_SETTINGS_ON_CHANGE:I = 0xf

.field public static final blacklist HIDE_SOFT_INPUT:I = 0x3

.field public static final blacklist HIDE_STATE_HIDDEN_FORWARD_NAV:I = 0xc

.field public static final blacklist HIDE_SWITCH_USER:I = 0x9

.field public static final blacklist HIDE_TOGGLE_SOFT_INPUT:I = 0x18

.field public static final blacklist HIDE_UNSPECIFIED_WINDOW:I = 0xb

.field public static final blacklist SHOW_AUTO_EDITOR_FORWARD_NAV:I = 0x5

.field public static final blacklist SHOW_MY_SOFT_INPUT:I = 0x2

.field public static final blacklist SHOW_RESTORE_IME_VISIBILITY:I = 0x16

.field public static final blacklist SHOW_SETTINGS_ON_CHANGE:I = 0x8

.field public static final blacklist SHOW_SOFT_INPUT:I = 0x0

.field public static final blacklist SHOW_SOFT_INPUT_BY_INSETS_API:I = 0x19

.field public static final blacklist SHOW_STATE_ALWAYS_VISIBLE:I = 0x7

.field public static final blacklist SHOW_STATE_VISIBLE_FORWARD_NAV:I = 0x6

.field public static final blacklist SHOW_TOGGLE_SOFT_INPUT:I = 0x17
