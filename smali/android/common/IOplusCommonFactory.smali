.class public interface abstract Landroid/common/IOplusCommonFactory;
.super Ljava/lang/Object;
.source "IOplusCommonFactory.java"


# virtual methods
.method public varargs whitelist getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;
    .locals 0
    .param p2, "vars"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFeature;",
            ">(TT;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 23
    .local p1, "def":Landroid/common/IOplusCommonFeature;, "TT;"
    invoke-interface {p0, p1}, Landroid/common/IOplusCommonFactory;->verityParams(Landroid/common/IOplusCommonFeature;)V

    .line 24
    return-object p1
.end method

.method public abstract whitelist isValid(I)Z
.end method

.method public whitelist verityParams(Landroid/common/IOplusCommonFeature;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFeature;",
            ">(TT;)V"
        }
    .end annotation

    .line 30
    .local p1, "def":Landroid/common/IOplusCommonFeature;, "TT;"
    if-eqz p1, :cond_1

    .line 34
    invoke-interface {p1}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v0

    sget-object v1, Landroid/common/OplusFeatureList$OplusIndex;->End:Landroid/common/OplusFeatureList$OplusIndex;

    if-eq v0, v1, :cond_0

    .line 37
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "must override index() method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "def can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs whitelist verityParamsType(Ljava/lang/String;[Ljava/lang/Object;I[Ljava/lang/Class;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "vars"    # [Ljava/lang/Object;
    .param p3, "num"    # I
    .param p4, "types"    # [Ljava/lang/Class;

    .line 40
    if-eqz p2, :cond_3

    if-eqz p4, :cond_3

    array-length v0, p2

    if-ne v0, p3, :cond_3

    array-length v0, p4

    if-ne v0, p3, :cond_3

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 45
    aget-object v1, p2, v0

    if-eqz v1, :cond_1

    aget-object v1, p4, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 41
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " need +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
