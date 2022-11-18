.class public final Landroid/media/MediaRoute2ProviderInfo$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final blacklist mRoutes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    .line 144
    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/MediaRoute2ProviderInfo;)V
    .locals 2
    .param p1, "descriptor"    # Landroid/media/MediaRoute2ProviderInfo;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const-string v0, "descriptor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    iget-object v0, p1, Landroid/media/MediaRoute2ProviderInfo;->mUniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    .line 150
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/media/MediaRoute2ProviderInfo;->mRoutes:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    .line 151
    return-void
.end method


# virtual methods
.method public blacklist addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;
    .locals 4
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 205
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v2, p1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    iget-object v3, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    .line 212
    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v2

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :goto_0
    return-object p0

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A route with the same id is already added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addRoutes(Ljava/util/Collection;)Landroid/media/MediaRoute2ProviderInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/media/MediaRoute2Info;",
            ">;)",
            "Landroid/media/MediaRoute2ProviderInfo$Builder;"
        }
    .end annotation

    .line 224
    .local p1, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    const-string v0, "routes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 228
    .local v1, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {p0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 229
    .end local v1    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_0

    .line 231
    :cond_0
    return-object p0
.end method

.method public blacklist build()Landroid/media/MediaRoute2ProviderInfo;
    .locals 1

    .line 239
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo;

    invoke-direct {v0, p0}, Landroid/media/MediaRoute2ProviderInfo;-><init>(Landroid/media/MediaRoute2ProviderInfo$Builder;)V

    return-object v0
.end method

.method public blacklist setSystemRouteProvider(Z)Landroid/media/MediaRoute2ProviderInfo$Builder;
    .locals 5
    .param p1, "isSystem"    # Z

    .line 188
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 189
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 190
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 191
    .local v2, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 192
    iget-object v3, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    new-instance v4, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v4, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 193
    invoke-virtual {v4, p1}, Landroid/media/MediaRoute2Info$Builder;->setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 194
    invoke-virtual {v4}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v4

    .line 192
    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    :cond_1
    return-object p0
.end method

.method public blacklist setUniqueId(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaRoute2ProviderInfo$Builder;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uniqueId"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    return-object p0

    .line 167
    :cond_0
    iput-object p2, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    .line 169
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 170
    .local v0, "newRoutes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/media/MediaRoute2Info;>;"
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 171
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/MediaRoute2Info;>;"
    new-instance v3, Landroid/media/MediaRoute2Info$Builder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRoute2Info;

    invoke-direct {v3, v4}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 172
    invoke-virtual {v3, p1}, Landroid/media/MediaRoute2Info$Builder;->setPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    .line 173
    invoke-virtual {v3, v4}, Landroid/media/MediaRoute2Info$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v3

    .line 175
    .local v3, "routeWithProviderId":Landroid/media/MediaRoute2Info;
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/MediaRoute2Info;>;"
    .end local v3    # "routeWithProviderId":Landroid/media/MediaRoute2Info;
    goto :goto_0

    .line 178
    :cond_1
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 179
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 180
    return-object p0
.end method
