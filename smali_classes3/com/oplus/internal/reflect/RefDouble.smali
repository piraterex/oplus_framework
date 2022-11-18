.class public final Lcom/oplus/internal/reflect/RefDouble;
.super Lcom/oplus/internal/reflect/internal/BaseField;
.source "RefDouble.java"


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
.method public blacklist get(Ljava/lang/Object;)D
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oplus/internal/reflect/RefDouble;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

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
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public blacklist getWithDefault(Ljava/lang/Object;D)D
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # D

    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oplus/internal/reflect/RefDouble;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

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
    return-wide p2
.end method

.method public blacklist getWithException(Ljava/lang/Object;)D
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/oplus/internal/reflect/RefDouble;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist set(Ljava/lang/Object;D)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/internal/reflect/RefDouble;->setDouble(Ljava/lang/Object;D)V
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

.method public blacklist setWithException(Ljava/lang/Object;D)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/internal/reflect/RefDouble;->setDouble(Ljava/lang/Object;D)V

    .line 48
    return-void
.end method
