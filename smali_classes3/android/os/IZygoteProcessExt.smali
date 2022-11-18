.class public interface abstract Landroid/os/IZygoteProcessExt;
.super Ljava/lang/Object;
.source "IZygoteProcessExt.java"


# virtual methods
.method public whitelist addArgsInStartViaZygote(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    .local p2, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method
