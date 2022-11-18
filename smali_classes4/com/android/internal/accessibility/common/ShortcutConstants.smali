.class public final Lcom/android/internal/accessibility/common/ShortcutConstants;
.super Ljava/lang/Object;
.source "ShortcutConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/common/ShortcutConstants$ShortcutMenuMode;,
        Lcom/android/internal/accessibility/common/ShortcutConstants$AccessibilityFragmentType;,
        Lcom/android/internal/accessibility/common/ShortcutConstants$UserShortcutType;
    }
.end annotation


# static fields
.field public static final blacklist CHOOSER_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final blacklist SERVICES_SEPARATOR:C = ':'


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
