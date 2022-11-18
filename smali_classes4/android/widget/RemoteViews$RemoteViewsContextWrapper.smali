.class Landroid/widget/RemoteViews$RemoteViewsContextWrapper;
.super Landroid/content/ContextWrapper;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsContextWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mContextForResources:Landroid/content/Context;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextForResources"    # Landroid/content/Context;

    .line 744
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 745
    iput-object p2, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    .line 746
    return-void
.end method


# virtual methods
.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .locals 1

    .line 750
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 755
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .locals 1

    .line 765
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserId()I
    .locals 1

    .line 770
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    return v0
.end method

.method public whitelist isRestricted()Z
    .locals 1

    .line 778
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    return v0
.end method
