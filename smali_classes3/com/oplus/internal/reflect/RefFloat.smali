.class public final Lcom/oplus/internal/reflect/RefFloat;
.super Lcom/oplus/internal/reflect/internal/BaseField;
.source "RefFloat.java"


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
.method public blacklist get(Ljava/lang/Object;)F
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oplus/internal/reflect/RefFloat;->getFloat(Ljava/lang/Object;)F

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
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public blacklist getWithDefault(Ljava/lang/Object;F)F
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # F

    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oplus/internal/reflect/RefFloat;->getFloat(Ljava/lang/Object;)F

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
    return p2
.end method

.method public blacklist getWithException(Ljava/lang/Object;)F
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/oplus/internal/reflect/RefFloat;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public blacklist set(Ljava/lang/Object;F)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/internal/reflect/RefFloat;->setFloat(Ljava/lang/Object;F)V
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

.method public blacklist setWithException(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/oplus/internal/reflect/RefFloat;->setFloat(Ljava/lang/Object;F)V

    .line 48
    return-void
.end method
