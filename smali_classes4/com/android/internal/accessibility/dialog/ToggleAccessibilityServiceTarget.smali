.class Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
.source "ToggleAccessibilityServiceTarget.java"


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 40
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;-><init>(Landroid/content/Context;IILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getStateDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const v0, 0x10400e9

    goto :goto_0

    .line 61
    :cond_0
    const v0, 0x10400e8

    :goto_0
    nop

    .line 62
    .local v0, "statusResId":I
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    .param p2, "shortcutMenuMode"    # I

    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 53
    .local v1, "isEditMenuMode":Z
    :goto_0
    iget-object v2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
