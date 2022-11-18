.class public Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;
.super Landroid/app/Activity;
.source "AccessibilityShortcutChooserActivity.java"


# static fields
.field private static final blacklist KEY_ACCESSIBILITY_SHORTCUT_MENU_MODE:Ljava/lang/String; = "accessibility_shortcut_menu_mode"


# instance fields
.field private blacklist mMenuDialog:Landroid/app/AlertDialog;

.field private blacklist mPermissionDialog:Landroid/app/AlertDialog;

.field private final blacklist mShortcutType:I

.field private blacklist mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$Aisd3iCMX7zrQ7YAXZtZtuiYpUM(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onTargetSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ic6APV9nTf5hLkQcG5ScyW4IO4g(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onTargetChecked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mShortcutType:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    return-void
.end method

.method private blacklist createMenuDialog()Landroid/app/AlertDialog;
    .locals 4

    .line 168
    nop

    .line 169
    const v0, 0x10400e0

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "dialogTitle":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    .line 173
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    .line 174
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 176
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const v2, 0x104035d

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "positiveButtonText":Ljava/lang/String;
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    .end local v2    # "positiveButtonText":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private blacklist onDoneButtonClicked()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 127
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->setShortcutMenuMode(I)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    .line 133
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x104035d

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->updateDialogListeners()V

    .line 137
    return-void
.end method

.method private blacklist onEditButtonClicked()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getInstalledTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->setShortcutMenuMode(I)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    .line 145
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 146
    const v1, 0x104033f

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->updateDialogListeners()V

    .line 149
    return-void
.end method

.method private blacklist onTargetChecked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 102
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 104
    .local v0, "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    instance-of v1, v0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->isShortcutEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    check-cast v2, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    new-instance v3, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    .line 106
    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->createEnableDialogContentView(Landroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/AlertDialog;

    .line 114
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 115
    return-void

    .line 118
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->isShortcutEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->onCheckedChanged(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    .line 120
    return-void
.end method

.method private blacklist onTargetSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 96
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 97
    .local v0, "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->onSelected()V

    .line 98
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 99
    return-void
.end method

.method private blacklist updateDialogListeners()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    .line 153
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->getShortcutMenuMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 154
    .local v0, "isEditMenuMode":Z
    const v1, 0x10400e0

    .line 155
    .local v1, "selectDialogTitleId":I
    const v2, 0x10400d8

    .line 160
    .local v2, "editDialogTitleId":I
    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    const v4, 0x10400d8

    goto :goto_1

    :cond_1
    const v4, 0x10400e0

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 162
    if-eqz v0, :cond_2

    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    .line 161
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 164
    if-eqz v0, :cond_3

    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    goto :goto_3

    :cond_3
    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    .line 163
    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$createMenuDialog$5$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->finish()V

    return-void
.end method

.method synthetic blacklist lambda$onCreate$0$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 69
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->updateDialogListeners()V

    return-void
.end method

.method synthetic blacklist lambda$onTargetChecked$1$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 110
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    .line 111
    return-void
.end method

.method synthetic blacklist lambda$onTargetChecked$2$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method synthetic blacklist lambda$updateDialogListeners$3$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 162
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onDoneButtonClicked()V

    return-void
.end method

.method synthetic blacklist lambda$updateDialogListeners$4$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 162
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onEditButtonClicked()V

    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "theme":Landroid/content/res/TypedArray;
    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p0, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->requestWindowFeature(I)Z

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-static {p0, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    new-instance v1, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-direct {v1, v4}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    .line 68
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->createMenuDialog()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    .line 69
    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 70
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 72
    if-eqz p1, :cond_1

    .line 73
    nop

    .line 74
    const-string v1, "accessibility_shortcut_menu_mode"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 76
    .local v1, "restoreShortcutMenuMode":I
    if-ne v1, v3, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onEditButtonClicked()V

    .line 80
    .end local v1    # "restoreShortcutMenuMode":I
    :cond_1
    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 87
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->getShortcutMenuMode()I

    move-result v0

    const-string v1, "accessibility_shortcut_menu_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    return-void
.end method
