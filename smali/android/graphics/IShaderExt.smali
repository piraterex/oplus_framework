.class public interface abstract Landroid/graphics/IShaderExt;
.super Ljava/lang/Object;
.source "IShaderExt.java"


# virtual methods
.method public blacklist getColorLongs()[J
    .locals 1

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getComposeShaderColor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setColors([J)V
    .locals 0
    .param p1, "color"    # [J

    .line 24
    return-void
.end method

.method public blacklist setComposeShaderColor(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[J>;)V"
        }
    .end annotation

    .line 35
    .local p1, "color":Ljava/util/List;, "Ljava/util/List<[J>;"
    return-void
.end method
