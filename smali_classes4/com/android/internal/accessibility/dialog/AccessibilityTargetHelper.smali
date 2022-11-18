.class public final Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;
.super Ljava/lang/Object;
.source "AccessibilityTargetHelper.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist arePackageNameAndLabelTheSame(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z
    .locals 5
    .param p0, "serviceTarget"    # Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    .param p1, "activityTarget"    # Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 142
    nop

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 144
    .local v0, "serviceComponentName":Landroid/content/ComponentName;
    nop

    .line 145
    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 146
    .local v1, "activityComponentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 148
    .local v2, "isSamePackageName":Z
    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 151
    .local v3, "isSameLabel":Z
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private static blacklist createAccessibilityServiceTarget(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .param p2, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 264
    invoke-static {p2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected fragment type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_0
    new-instance v0, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-object v0

    .line 269
    :pswitch_1
    new-instance v0, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-object v0

    .line 266
    :pswitch_2
    new-instance v0, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist createEnableDialogContentView(Landroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
    .param p2, "allowListener"    # Landroid/view/View$OnClickListener;
    .param p3, "denyListener"    # Landroid/view/View$OnClickListener;

    .line 280
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 283
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 286
    .local v1, "content":Landroid/view/View;
    const v2, 0x10201a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 288
    .local v2, "dialogIcon":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    const v3, 0x10201a2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 292
    .local v3, "dialogTitle":Landroid/widget/TextView;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 293
    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getServiceName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 292
    const v5, 0x10400d9

    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const v4, 0x10201a3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 297
    .local v4, "allowButton":Landroid/widget/Button;
    const v5, 0x10201a4

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 299
    .local v5, "denyButton":Landroid/widget/Button;
    new-instance v6, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    new-instance v6, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda2;

    invoke-direct {v6, p1, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    return-object v1
.end method

.method private static blacklist getAccessibilityActivityTargets(Landroid/content/Context;I)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 183
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 185
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 187
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 186
    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 188
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityShortcutInfo;>;"
    if-nez v1, :cond_0

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 192
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v2, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 194
    .local v4, "info":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    new-instance v5, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;

    invoke-direct {v5, p0, p1, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityShortcutInfo;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v4    # "info":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    goto :goto_0

    .line 197
    :cond_1
    return-object v2
.end method

.method private static blacklist getAccessibilityFilteredTargets(Landroid/content/Context;I)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 123
    nop

    .line 124
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getAccessibilityServiceTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "serviceTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    nop

    .line 126
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getAccessibilityActivityTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "activityTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 129
    .local v3, "activityTarget":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 131
    .end local v3    # "activityTarget":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    goto :goto_0

    .line 133
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v2, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    return-object v2
.end method

.method private static blacklist getAccessibilityServiceTargets(Landroid/content/Context;I)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 156
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 158
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 159
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    .line 160
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v1, :cond_0

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 164
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v2, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 166
    .local v4, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    nop

    .line 167
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 168
    .local v5, "targetSdk":I
    iget v6, v4, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 170
    .local v6, "hasRequestAccessibilityButtonFlag":Z
    :goto_1
    const/16 v7, 0x1d

    if-gt v5, v7, :cond_2

    if-nez v6, :cond_2

    if-nez p1, :cond_2

    .line 172
    goto :goto_0

    .line 175
    :cond_2
    invoke-static {p0, p1, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->createAccessibilityServiceTarget(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v4    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v5    # "targetSdk":I
    .end local v6    # "hasRequestAccessibilityButtonFlag":Z
    goto :goto_0

    .line 178
    :cond_3
    return-object v2
.end method

.method private static blacklist getAllowListingFeatureTargets(Landroid/content/Context;I)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    new-instance v9, Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;

    .line 207
    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-static {p0, p1, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    .line 209
    const v1, 0x10400df

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 210
    const v1, 0x1080320

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v5, "com.android.server.accessibility.MagnificationController"

    const-string v8, "accessibility_display_magnification_navbar_enabled"

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 213
    .local v1, "magnification":Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;
    new-instance v10, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 217
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {p0, p1, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 218
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 219
    const v2, 0x104020b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 220
    const v2, 0x108031c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const-string v9, "accessibility_display_daltonizer_enabled"

    move-object v2, v10

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 223
    .local v2, "daltonizer":Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
    new-instance v11, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object v3, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 227
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-static {p0, p1, v3}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v6

    sget-object v3, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 228
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 229
    const v3, 0x104020c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 230
    const v3, 0x108031e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v10, "accessibility_display_inversion_enabled"

    move-object v3, v11

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 233
    .local v3, "colorInversion":Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
    new-instance v12, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object v4, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 237
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-static {p0, p1, v4}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    sget-object v4, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 238
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 239
    const v4, 0x1040646

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 240
    const v4, 0x1080322

    invoke-virtual {p0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string/jumbo v11, "one_handed_mode_activated"

    move-object v4, v12

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 243
    .local v4, "oneHandedMode":Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
    new-instance v13, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object v5, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 247
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 246
    invoke-static {p0, p1, v5}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v8

    sget-object v5, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 248
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    .line 249
    const v5, 0x1040807

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 250
    const v5, 0x1080324

    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const-string/jumbo v12, "reduce_bright_colors_activated"

    move-object v5, v13

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 253
    .local v5, "reduceBrightColors":Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    return-object v0
.end method

.method static blacklist getInstalledTargets(Landroid/content/Context;I)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getAccessibilityFilteredTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getAllowListingFeatureTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    return-object v0
.end method

.method private static blacklist getServiceName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 314
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getTargets(Landroid/content/Context;I)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getInstalledTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "installedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 79
    .local v1, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, "assignedTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 84
    .local v5, "assignedTarget":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 85
    .local v7, "installedTarget":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    const-string v8, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 86
    nop

    .line 87
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 88
    .local v8, "assignedTargetComponentName":Landroid/content/ComponentName;
    nop

    .line 89
    invoke-virtual {v7}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v9

    .line 88
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 90
    .local v9, "targetComponentName":Landroid/content/ComponentName;
    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 91
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_1

    .line 95
    .end local v8    # "assignedTargetComponentName":Landroid/content/ComponentName;
    .end local v9    # "targetComponentName":Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 96
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v7    # "installedTarget":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    :cond_1
    goto :goto_1

    .line 99
    .end local v5    # "assignedTarget":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 100
    :cond_3
    return-object v3
.end method

.method static synthetic blacklist lambda$createEnableDialogContentView$1(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1
    .param p0, "target"    # Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
    .param p1, "allowListener"    # Landroid/view/View$OnClickListener;
    .param p2, "view"    # Landroid/view/View;

    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->onCheckedChanged(Z)V

    .line 301
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 302
    return-void
.end method

.method static synthetic blacklist lambda$createEnableDialogContentView$2(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1
    .param p0, "target"    # Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
    .param p1, "denyListener"    # Landroid/view/View$OnClickListener;
    .param p2, "view"    # Landroid/view/View;

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->onCheckedChanged(Z)V

    .line 305
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 306
    return-void
.end method

.method static synthetic blacklist lambda$getAccessibilityFilteredTargets$0(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z
    .locals 1
    .param p0, "activityTarget"    # Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    .param p1, "serviceTarget"    # Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 130
    invoke-static {p1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->arePackageNameAndLabelTheSame(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z

    move-result v0

    return v0
.end method
