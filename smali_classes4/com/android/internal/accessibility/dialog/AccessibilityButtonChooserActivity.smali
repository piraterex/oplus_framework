.class public Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;
.super Landroid/app/Activity;
.source "AccessibilityButtonChooserActivity.java"


# instance fields
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
.method public constructor blacklist <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onCreate$0$com-android-internal-accessibility-dialog-AccessibilityButtonChooserActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 93
    const-string v0, "accessibility_button_target_component"

    .line 94
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "name":Ljava/lang/String;
    const-string v2, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 99
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityButtonLongPressStatus(Landroid/content/ComponentName;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "accessibility_button_target_component"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->finish()V

    .line 102
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x1090018

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->setContentView(I)V

    .line 55
    const v0, 0x1020263

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 56
    .local v0, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v0, :cond_0

    .line 57
    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_button_target_component"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "component":Ljava/lang/String;
    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    .line 64
    invoke-virtual {p0, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 65
    .local v2, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 66
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    .line 67
    .local v3, "isTouchExploreOn":Z
    const/4 v4, 0x2

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    .line 71
    .local v4, "isGestureNavigateEnabled":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 72
    const v5, 0x1020197

    invoke-virtual {p0, v5}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 73
    .local v5, "promptPrologue":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 74
    const v7, 0x10400dc

    goto :goto_1

    .line 75
    :cond_2
    const v7, 0x10400de

    .line 73
    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 78
    .end local v5    # "promptPrologue":Landroid/widget/TextView;
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 79
    const v5, 0x1020196

    invoke-virtual {p0, v5}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 80
    .local v5, "prompt":Landroid/widget/TextView;
    if-eqz v4, :cond_5

    .line 81
    if-eqz v3, :cond_4

    .line 82
    const v7, 0x10400db

    goto :goto_2

    .line 83
    :cond_4
    const v7, 0x10400dd

    .line 81
    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 85
    :cond_5
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    .end local v5    # "prompt":Landroid/widget/TextView;
    :cond_6
    iget-object v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-static {p0, v6}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    const v5, 0x1020195

    invoke-virtual {p0, v5}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    .line 91
    .local v5, "gridview":Landroid/widget/GridView;
    new-instance v6, Lcom/android/internal/accessibility/dialog/ButtonTargetAdapter;

    iget-object v7, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-direct {v6, v7}, Lcom/android/internal/accessibility/dialog/ButtonTargetAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    new-instance v6, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    return-void
.end method
