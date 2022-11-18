.class public interface abstract Lcom/android/internal/os/IPowerProfileExt;
.super Ljava/lang/Object;
.source "IPowerProfileExt.java"


# virtual methods
.method public blacklist readPowerValuesFromXml(Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 24
    .local p1, "powerArrayMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Double;>;"
    .local p2, "powerItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v0, 0x0

    return v0
.end method
