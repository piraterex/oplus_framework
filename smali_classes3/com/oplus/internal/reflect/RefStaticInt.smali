.class public final Lcom/oplus/internal/reflect/RefStaticInt;
.super Lcom/oplus/internal/reflect/internal/BaseField;
.source "RefStaticInt.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 0
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 11
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/oplus/internal/reflect/internal/BaseField;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 12
    return-void
.end method


# virtual methods
.method public blacklist get()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/oplus/internal/reflect/RefStaticInt;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWithDefault(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    .line 35
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/oplus/internal/reflect/RefStaticInt;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    return p1
.end method

.method public blacklist getWithException()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/internal/reflect/RefStaticInt;->getInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist set(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/oplus/internal/reflect/RefStaticInt;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setWithException(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/oplus/internal/reflect/RefStaticInt;->setInt(Ljava/lang/Object;I)V

    .line 48
    return-void
.end method
