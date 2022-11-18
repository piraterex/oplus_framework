.class Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
.source "InvisibleToggleAllowListingFeatureTarget.java"


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "isShortcutSwitched"    # Z
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/CharSequence;
    .param p6, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "key"    # Ljava/lang/String;

    .line 33
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;-><init>(Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 35
    return-void
.end method
