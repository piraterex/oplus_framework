.class Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
.source "ToggleAllowListingFeatureTarget.java"


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

    .line 39
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;-><init>(Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private blacklist isFeatureEnabled()Z
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 63
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method


# virtual methods
.method public blacklist getStateDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const v0, 0x10400e9

    goto :goto_0

    .line 58
    :cond_0
    const v0, 0x10400e8

    :goto_0
    nop

    .line 59
    .local v0, "statusResId":I
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    .param p2, "shortcutMenuMode"    # I

    .line 46
    invoke-super {p0, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 50
    .local v1, "isEditMenuMode":Z
    :goto_0
    iget-object v2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
