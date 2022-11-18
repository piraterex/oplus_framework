.class Landroid/media/browse/MediaBrowser$Subscription;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Subscription"
.end annotation


# instance fields
.field private final greylist-max-o mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$SubscriptionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mOptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 1

    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    .line 1123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    .line 1124
    return-void
.end method


# virtual methods
.method public greylist-max-o getCallback(Landroid/content/Context;Landroid/os/Bundle;)Landroid/media/browse/MediaBrowser$SubscriptionCallback;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1139
    if-eqz p2, :cond_0

    .line 1140
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1142
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1143
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1, p2}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1144
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    return-object v1

    .line 1142
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1147
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$SubscriptionCallback;",
            ">;"
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o isEmpty()Z
    .locals 1

    .line 1127
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o putCallback(Landroid/content/Context;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .line 1151
    if-eqz p2, :cond_0

    .line 1152
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1154
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1155
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1, p2}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1156
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1157
    return-void

    .line 1154
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1160
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    return-void
.end method
