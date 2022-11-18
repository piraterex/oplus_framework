.class public Lcom/android/internal/app/MediaRouteChooserDialog;
.super Landroid/app/AlertDialog;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;,
        Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;,
        Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;
    }
.end annotation


# instance fields
.field private blacklist mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

.field private blacklist mAttachedToWindow:Z

.field private final blacklist mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

.field private blacklist mExtendedSettingsButton:Landroid/widget/Button;

.field private blacklist mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mListView:Landroid/widget/ListView;

.field private blacklist mRouteTypes:I

.field private final blacklist mRouter:Landroid/media/MediaRouter;

.field private final blacklist mShowProgressBarWhenEmpty:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRouter(Lcom/android/internal/app/MediaRouteChooserDialog;)Landroid/media/MediaRouter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;IZ)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "showProgressBarWhenEmpty"    # Z

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 71
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    .line 72
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback-IA;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 73
    iput-boolean p3, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mShowProgressBarWhenEmpty:Z

    .line 74
    return-void
.end method

.method static blacklist isLightTheme(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 199
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 200
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010590

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private blacklist updateExtendedSettingsButton()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    .line 168
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 167
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist getRouteTypes()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    return v0
.end method

.method public whitelist onAttachedToWindow()V
    .locals 4

    .line 174
    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    .line 177
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    iget v2, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 179
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setView(Landroid/view/View;)V

    .line 134
    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 135
    const v0, 0x1040540

    goto :goto_0

    .line 136
    :cond_0
    const v0, 0x104053f

    .line 134
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setTitle(I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x10804a6

    goto :goto_1

    .line 139
    :cond_1
    const v0, 0x10804a5

    .line 138
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setIcon(I)V

    .line 141
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "emptyView":Landroid/view/View;
    new-instance v1, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    .line 145
    const v1, 0x10203a2

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    .line 146
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 150
    const v1, 0x10203a1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    .line 151
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    .line 153
    iget-boolean v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mShowProgressBarWhenEmpty:Z

    if-nez v1, :cond_2

    .line 154
    const v1, 0x10203a3

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    nop

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 159
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 2

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    .line 184
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 186
    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    .line 187
    return-void
.end method

.method public blacklist onFilterRoute(Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 125
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist refreshRoutes()V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->update()V

    .line 196
    :cond_0
    return-void
.end method

.method public blacklist setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 107
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eq p1, v0, :cond_0

    .line 108
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 109
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    .line 111
    :cond_0
    return-void
.end method

.method public blacklist setRouteTypes(I)V
    .locals 3
    .param p1, "types"    # I

    .line 93
    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    if-eq v0, p1, :cond_1

    .line 94
    iput p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    .line 96
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 104
    :cond_1
    return-void
.end method
