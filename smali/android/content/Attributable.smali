.class public interface abstract Landroid/content/Attributable;
.super Ljava/lang/Object;
.source "Attributable.java"


# direct methods
.method public static blacklist setAttributionSource(Landroid/content/Attributable;Landroid/content/AttributionSource;)Landroid/content/Attributable;
    .locals 0
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/content/Attributable;",
            ">(TT;",
            "Landroid/content/AttributionSource;",
            ")TT;"
        }
    .end annotation

    .line 37
    .local p0, "attributable":Landroid/content/Attributable;, "TT;"
    if-eqz p0, :cond_0

    .line 38
    invoke-interface {p0, p1}, Landroid/content/Attributable;->setAttributionSource(Landroid/content/AttributionSource;)V

    .line 40
    :cond_0
    return-object p0
.end method

.method public static blacklist setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;
    .locals 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/content/Attributable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 46
    .local p0, "attributableList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_0

    .line 47
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 48
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Attributable;

    invoke-static {v2, p1}, Landroid/content/Attributable;->setAttributionSource(Landroid/content/Attributable;Landroid/content/AttributionSource;)Landroid/content/Attributable;

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract blacklist setAttributionSource(Landroid/content/AttributionSource;)V
.end method
