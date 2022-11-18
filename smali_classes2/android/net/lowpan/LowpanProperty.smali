.class public abstract Landroid/net/lowpan/LowpanProperty;
.super Ljava/lang/Object;
.source "LowpanProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    .local p0, "this":Landroid/net/lowpan/LowpanProperty;, "Landroid/net/lowpan/LowpanProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getFromMap(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")TT;"
        }
    .end annotation

    .line 32
    .local p0, "this":Landroid/net/lowpan/LowpanProperty;, "Landroid/net/lowpan/LowpanProperty<TT;>;"
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist getName()Ljava/lang/String;
.end method

.method public abstract blacklist getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public blacklist putInMap(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "TT;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Landroid/net/lowpan/LowpanProperty;, "Landroid/net/lowpan/LowpanProperty<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method
