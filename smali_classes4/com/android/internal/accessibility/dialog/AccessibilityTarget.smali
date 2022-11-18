.class public abstract Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
.super Ljava/lang/Object;
.source "AccessibilityTarget.java"

# interfaces
.implements Lcom/android/internal/accessibility/dialog/TargetOperations;
.implements Lcom/android/internal/accessibility/dialog/OnTargetSelectedListener;
.implements Lcom/android/internal/accessibility/dialog/OnTargetCheckedChangeListener;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFragmentType:I

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mKey:Ljava/lang/String;

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mShortcutEnabled:Z

.field private blacklist mShortcutType:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "fragmentType"    # I
    .param p4, "isShortcutSwitched"    # Z
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "label"    # Ljava/lang/CharSequence;
    .param p7, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "key"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    .line 61
    iput p2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutType:I

    .line 62
    iput p3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mFragmentType:I

    .line 63
    iput-boolean p4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutEnabled:Z

    .line 64
    iput-object p5, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mId:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mLabel:Ljava/lang/CharSequence;

    .line 66
    iput-object p7, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object p8, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mKey:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getFragmentType()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mFragmentType:I

    return v0
.end method

.method public blacklist getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getShortcutType()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutType:I

    return v0
.end method

.method public blacklist getStateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isShortcutEnabled()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutEnabled:Z

    return v0
.end method

.method public blacklist onCheckedChanged(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->setShortcutEnabled(Z)V

    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToUserType(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optInValueToSettings(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToUserType(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 107
    :goto_0
    return-void
.end method

.method public blacklist onSelected()V
    .locals 3

    .line 85
    nop

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 87
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 95
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected shortcut type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut(Ljava/lang/String;)V

    .line 93
    return-void

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V

    .line 90
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setShortcutEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 120
    iput-boolean p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutEnabled:Z

    .line 121
    return-void
.end method

.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    .param p2, "shortcutMenuMode"    # I

    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 76
    .local v2, "isEditMenuMode":Z
    :goto_0
    iget-object v3, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mCheckBoxView:Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->isShortcutEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    iget-object v1, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mCheckBoxView:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 78
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    return-void
.end method
