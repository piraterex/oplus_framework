.class public interface abstract Landroid/bluetooth/Attributable;
.super Ljava/lang/Object;
.source "Attributable.java"


# direct methods
.method public static blacklist setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;
    .locals 0
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/bluetooth/Attributable;",
            ">(TT;",
            "Landroid/content/AttributionSource;",
            ")TT;"
        }
    .end annotation

    .line 38
    .local p0, "attributable":Landroid/bluetooth/Attributable;, "TT;"
    if-eqz p0, :cond_0

    .line 39
    invoke-interface {p0, p1}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/content/AttributionSource;)V

    .line 41
    :cond_0
    return-object p0
.end method

.method public static blacklist setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;
    .locals 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/bluetooth/Attributable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 47
    .local p0, "attributableList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_0

    .line 48
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 49
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 50
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/Attributable;

    invoke-static {v2, p1}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract blacklist setAttributionSource(Landroid/content/AttributionSource;)V
.end method
