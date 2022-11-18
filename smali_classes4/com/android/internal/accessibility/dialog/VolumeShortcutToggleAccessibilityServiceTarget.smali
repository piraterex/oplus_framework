.class Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
.source "VolumeShortcutToggleAccessibilityServiceTarget.java"


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;-><init>(Landroid/content/Context;IILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 48
    return-void
.end method

.method private blacklist onCheckedFromAccessibilityButton(Z)V
    .locals 6
    .param p1, "isChecked"    # Z

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;->setShortcutEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 67
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 69
    if-nez p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040106

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "warningText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 77
    .end local v1    # "warningText":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist onCheckedChanged(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;->getShortcutType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected shortcut type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->onCheckedChanged(Z)V

    .line 58
    return-void

    .line 54
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;->onCheckedFromAccessibilityButton(Z)V

    .line 55
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
