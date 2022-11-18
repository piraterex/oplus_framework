.class public final Lcom/oplus/util/OplusTypeCastingHelper;
.super Ljava/lang/Object;
.source "OplusTypeCastingHelper.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 23
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    return-object p1

    .line 26
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
