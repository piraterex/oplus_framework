.class Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
.source "InvisibleToggleAccessibilityServiceTarget.java"


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;-><init>(Landroid/content/Context;IILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 46
    return-void
.end method

.method private blacklist isComponentIdExistingInOtherShortcut()Z
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getShortcutType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected shortcut type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 62
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist onCheckedChanged(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .line 50
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 52
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->isComponentIdExistingInOtherShortcut()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->onCheckedChanged(Z)V

    .line 57
    return-void
.end method
